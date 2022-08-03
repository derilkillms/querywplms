//GET COURSE AND CATEGORY WPLMS
SELECT wps.ID,wps.post_title AS course_name,wps.post_name,wtm.term_id AS cat_id,wtm.name AS category FROM wp_posts wps 
JOIN wp_term_relationships wtr ON wps.ID=wtr.object_id 
JOIN wp_terms wtm ON wtm.term_id=wtr.term_taxonomy_id 
JOIN wp_term_taxonomy wtt ON wtm.term_id=wtt.term_id WHERE wps.post_type='course' AND wtt.taxonomy='course-cat'
