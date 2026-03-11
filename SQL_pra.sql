with rn as (
  select Borough, count(zone) as zone_count,
    rank() over (order by count(zone) desc) as rnk
  from workspace.texi_data.taxi
  group by Borough
)
select * from rn
where rnk <=3;

-- select * from workspace.texi_data.taxi

