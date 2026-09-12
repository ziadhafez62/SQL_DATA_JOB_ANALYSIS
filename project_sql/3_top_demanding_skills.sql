SELECT
skills_dim.skills,
count(job_postings_fact.job_id) as skill_count

from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

where 
job_postings_fact.job_title = 'Data Scientist' AND
job_postings_fact.job_work_from_home = TRUE

group by skills_dim.skills

order by skill_count desc

limit 5