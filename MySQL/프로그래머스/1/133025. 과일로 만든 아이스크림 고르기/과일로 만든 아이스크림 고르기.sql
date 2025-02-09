-- 코드를 입력하세요
select i.flavor
from icecream_info as i
inner join first_half as f on i.flavor = f.flavor
where f.total_order >= 3000
and i.ingredient_type = 'fruit_based'