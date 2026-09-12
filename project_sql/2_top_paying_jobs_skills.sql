
with top_paying_jobs as (
SELECT 
job_postings_fact.job_id,
job_postings_fact.job_title,
job_postings_fact.job_location,
job_postings_fact.job_schedule_type,
job_postings_fact.salary_year_avg,
job_postings_fact.job_posted_date,
company_dim.name as company_name

from job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id

where job_postings_fact.salary_year_avg is not null AND
job_postings_fact.job_title ='Data Scientist'
and job_location = 'Anywhere'

order by job_postings_fact.salary_year_avg desc

limit 10)

select 
top_paying_jobs.*,
skills_dim.skills

from top_paying_jobs
inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

order by top_paying_jobs.salary_year_avg desc