use QuanLySinhVien;

select * from Subject
where Credit = (select max(Credit) from Subject);

select * from Subject
join Mark M on Subject.id = M.SubID
where Mark = (select max(Mark) from Mark);

select S.name, avg(M.Mark) as AVG from Student S
join Mark M on S.id = M.StudentID
group by name
order by AVG desc ;