-- Example SQL queries for the MicroCT Quality Monitoring Dashboard
-- Generated from Notebook 03

====================================================================================================
-- phase_fraction_by_zone
====================================================================================================
SELECT 
            d.slice_zone,
            COUNT(*) AS n_slices,
            AVG(f.pore_fraction) AS mean_pore_fraction,
            AVG(f.resin_fraction) AS mean_resin_fraction,
            AVG(f.matrix_fraction) AS mean_matrix_fraction,
            AVG(f.heterogeneity_index) AS mean_heterogeneity_index
        FROM fact_slice_features f
        JOIN dim_slice d
            ON f.slice_id = d.slice_id
        GROUP BY d.slice_zone
        ORDER BY MIN(d.relative_depth_percent);

====================================================================================================
-- anomaly_summary_by_category
====================================================================================================
SELECT
            a.anomaly_category,
            a.anomaly_status,
            COUNT(*) AS n_slices,
            ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fact_anomaly_results), 2) AS percentage_slices,
            AVG(a.anomaly_score) AS mean_anomaly_score,
            AVG(f.pore_fraction) AS mean_pore_fraction,
            AVG(f.resin_fraction) AS mean_resin_fraction,
            AVG(f.heterogeneity_index) AS mean_heterogeneity_index
        FROM fact_anomaly_results a
        JOIN fact_slice_features f
            ON a.slice_id = f.slice_id
        GROUP BY a.anomaly_category, a.anomaly_status
        ORDER BY n_slices DESC;

====================================================================================================
-- top_anomalous_slices
====================================================================================================
SELECT
            d.slice_id,
            d.z_mm,
            d.relative_depth_percent,
            a.anomaly_score,
            a.anomaly_category,
            f.pore_fraction,
            f.resin_fraction,
            f.pore_object_count,
            f.resin_object_count,
            f.heterogeneity_index
        FROM fact_anomaly_results a
        JOIN dim_slice d
            ON a.slice_id = d.slice_id
        JOIN fact_slice_features f
            ON a.slice_id = f.slice_id
        WHERE a.anomaly_flag = 1
        ORDER BY ABS(a.anomaly_score) DESC
        LIMIT 10;

====================================================================================================
-- image_index_overview
====================================================================================================
SELECT
            image_type,
            COUNT(*) AS n_images,
            COUNT(DISTINCT slice_id) AS n_unique_slices
        FROM image_index
        GROUP BY image_type
        ORDER BY image_type;

====================================================================================================
-- object_analysis_2d_vs_3d
====================================================================================================
SELECT
            phase,
            objects_2d,
            objects_3d,
            objects_2d_per_3d_object,
            mean_equivalent_diameter_2d_um,
            mean_equivalent_diameter_3d_um,
            mean_diameter_ratio_3d_to_2d
        FROM summary_2d_3d_objects
        ORDER BY phase;

