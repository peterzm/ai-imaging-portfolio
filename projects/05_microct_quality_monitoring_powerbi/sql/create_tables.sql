-- SQLite schema for the MicroCT Quality Monitoring Dashboard
-- Generated from Notebook 03

-- Table: dim_slice
CREATE TABLE "dim_slice" (
"slice_id" INTEGER,
  "z_um" REAL,
  "z_mm" REAL,
  "relative_depth_percent" REAL,
  "slice_zone" TEXT
);

-- Table: fact_anomaly_results
CREATE TABLE "fact_anomaly_results" (
"slice_id" INTEGER,
  "PC1" REAL,
  "PC2" REAL,
  "is_anomaly" INTEGER,
  "anomaly_score" REAL,
  "anomaly_category" TEXT,
  "anomaly_flag" INTEGER,
  "anomaly_status" TEXT,
  "anomaly_score_abs" REAL
);

-- Table: fact_slice_features
CREATE TABLE "fact_slice_features" (
"slice_id" INTEGER,
  "pore_fraction" REAL,
  "resin_fraction" REAL,
  "matrix_fraction" REAL,
  "assigned_fraction" REAL,
  "mean_intensity" REAL,
  "std_intensity" REAL,
  "mean_intensity_pores" REAL,
  "mean_intensity_resin" REAL,
  "mean_intensity_matrix" REAL,
  "pore_object_count" INTEGER,
  "mean_pore_area_um2" REAL,
  "median_pore_area_um2" REAL,
  "mean_pore_equivalent_diameter_um" REAL,
  "median_pore_equivalent_diameter_um" REAL,
  "resin_object_count" INTEGER,
  "mean_resin_area_um2" REAL,
  "median_resin_area_um2" REAL,
  "mean_resin_equivalent_diameter_um" REAL,
  "median_resin_equivalent_diameter_um" REAL,
  "heterogeneity_index" REAL,
  "phase_fraction_sum" REAL,
  "unassigned_fraction" REAL
);

-- Table: image_index
CREATE TABLE "image_index" (
"slice_id" INTEGER,
  "image_type" TEXT,
  "image_path" TEXT,
  "image_filename" TEXT,
  "z_um" REAL,
  "z_mm" REAL,
  "relative_depth_percent" REAL,
  "slice_zone" TEXT,
  "pore_fraction" REAL,
  "resin_fraction" REAL,
  "matrix_fraction" REAL,
  "heterogeneity_index" REAL,
  "anomaly_flag" INTEGER,
  "anomaly_status" TEXT,
  "anomaly_score" REAL,
  "anomaly_category" TEXT
);

-- Table: summary_2d_3d_objects
CREATE TABLE "summary_2d_3d_objects" (
"phase" TEXT,
  "objects_2d" INTEGER,
  "objects_3d" INTEGER,
  "objects_2d_per_3d_object" REAL,
  "mean_equivalent_diameter_2d_um" REAL,
  "median_equivalent_diameter_2d_um" REAL,
  "std_equivalent_diameter_2d_um" REAL,
  "mean_equivalent_diameter_3d_um" REAL,
  "median_equivalent_diameter_3d_um" REAL,
  "std_equivalent_diameter_3d_um" REAL,
  "objects_3d_from_summary" INTEGER,
  "mean_volume_3d_voxels" REAL,
  "median_volume_3d_voxels" REAL,
  "mean_volume_3d_mm3" REAL,
  "median_volume_3d_mm3" REAL,
  "mean_equivalent_diameter_3d_summary_um" REAL,
  "median_equivalent_diameter_3d_summary_um" REAL,
  "std_equivalent_diameter_3d_summary_um" REAL,
  "mean_intensity_3d" REAL,
  "median_intensity_3d" REAL,
  "object_count_reduction_factor_2d_to_3d" REAL,
  "mean_diameter_ratio_3d_to_2d" REAL,
  "median_diameter_ratio_3d_to_2d" REAL
);

-- Table: summary_anomaly_categories
CREATE TABLE "summary_anomaly_categories" (
"anomaly_category" TEXT,
  "anomaly_status" TEXT,
  "n_slices" INTEGER,
  "mean_anomaly_score" REAL,
  "median_anomaly_score" REAL,
  "mean_pc1" REAL,
  "mean_pc2" REAL,
  "percentage_slices" REAL
);

-- Table: summary_phase_fractions
CREATE TABLE "summary_phase_fractions" (
"phase" TEXT,
  "phase_fraction_metric" TEXT,
  "count" REAL,
  "mean" REAL,
  "std" REAL,
  "min" REAL,
  "25%" REAL,
  "50%" REAL,
  "75%" REAL,
  "max" REAL,
  "coefficient_of_variation" REAL
);

