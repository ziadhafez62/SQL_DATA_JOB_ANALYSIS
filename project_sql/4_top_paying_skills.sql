SELECT
skills_dim.skills,
round(avg(salary_year_avg), 0) as avg_salary


from skills_dim
inner join skills_job_dim on skills_dim.skill_id = skills_job_dim.skill_id  
inner join job_postings_fact on skills_job_dim.job_id = job_postings_fact.job_id

where 
job_postings_fact.job_title = 'Data Scientist' AND
job_postings_fact.job_work_from_home = TRUE AND
job_postings_fact.salary_year_avg IS NOT NULL

group by skills_dim.skills

order by avg_salary desc

limit 25