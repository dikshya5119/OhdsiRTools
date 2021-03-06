IF OBJECT_ID('tempdb..#cohort_inclusion', 'U') IS NOT NULL 
  DROP TABLE #cohort_inclusion;
  
IF OBJECT_ID('tempdb..#cohort_inc_result', 'U') IS NOT NULL 
  DROP TABLE #cohort_inc_result;
  
IF OBJECT_ID('tempdb..#cohort_inc_stats', 'U') IS NOT NULL 
  DROP TABLE #cohort_inc_stats;
  
IF OBJECT_ID('tempdb..#cohort_summary_stats', 'U') IS NOT NULL 
  DROP TABLE #cohort_summary_stats;

CREATE TABLE #cohort_inclusion (
	cohort_definition_id INT NOT NULL,
	rule_sequence INT NOT NULL,
	name VARCHAR(255) NULL,
	description VARCHAR(1000) NULL
	);

CREATE TABLE #cohort_inc_result (
	cohort_definition_id INT NOT NULL,
	inclusion_rule_mask BIGINT NOT NULL,
	person_count BIGINT NOT NULL
	);

CREATE TABLE #cohort_inc_stats (
	cohort_definition_id INT NOT NULL,
	rule_sequence INT NOT NULL,
	person_count BIGINT NOT NULL,
	gain_count BIGINT NOT NULL,
	person_total BIGINT NOT NULL
	);

CREATE TABLE #cohort_summary_stats (
	cohort_definition_id INT NOT NULL,
	base_count BIGINT NOT NULL,
	final_count BIGINT NOT NULL
	);
