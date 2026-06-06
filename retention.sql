with dt as (
  select
    user_id,
    date_trunc(min(date(order_date)), month) as cohort_date
  from `data_mart.orders` 
  where status = 'Complete'
  group by 1
),p as (
  select
    o.user_id,
    dt.cohort_date,
    date_trunc(date(order_date), month) as next_month_purchase,
    date_diff(date_trunc(date(order_date), month), cohort_date, month) as delta_date
  from `data_mart.orders` as o inner join dt on o.user_id = dt.user_id 
  where status = 'Complete'
)
  select 
    p.cohort_date,
    count(distinct p.user_id) as total_acquisition,
    count(distinct case when p.delta_date = 0 then p.user_id end)/count(distinct p.user_id) as month_0,
    count(distinct case when p.delta_date = 1 then p.user_id end)/count(distinct p.user_id) as month_1,
    count(distinct case when p.delta_date = 2 then p.user_id end)/count(distinct p.user_id) as month_2,
    count(distinct case when p.delta_date = 3 then p.user_id end)/count(distinct p.user_id) as month_3,
    count(distinct case when p.delta_date = 4 then p.user_id end)/count(distinct p.user_id) as month_4
  from p
  group by 1;

  -- mencari kategori mana yang paling bertumbuh di bulan ke delapannya 
 with fd as(
  select 
    user_id,
    date_trunc(min(date(order_date)), month) as first_date
  from `data_mart.order_items`
  where status = 'Complete'
  group by 1
  ), pd as(
  select
    p.category,
    fd.user_id,
    o.order_date,
    sum(sale_price) as revenue,
    count(p.product_id) as qty_sold,
    fd.first_date,
    date_trunc(date(o.order_date),month) as present_month
  from fd left  join `data_mart.order_items` as o on fd.user_id = o.user_id left join `data_mart.products_old` as p on o.product_id = p.product_id
  where o.status = 'Complete'  
  group by 1,2,3,6,7
  ) 
  select
    user_id,
    date(order_date) as order_date,
    category as product_category,
    revenue,
    qty_sold,
    pd.first_date,
    present_month,
    date_diff(pd.present_month, pd.first_date, month) as diff
  from pd
  

  


    




