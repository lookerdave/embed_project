- view: yesno_string

  derived_table:
    sql: |
        SELECT
          1 as id
          , "Yes" as string
        UNION
        SELECT
          2 as id
          , "No" as string
       

  fields:
    - dimension: id
      type: number
      sql: ${TABLE}.id
      
    - dimension: string
      type: string
      sql: ${TABLE}.string
      
    - dimension: string_yesno
      type: yesno
      sql: (${string} = 1)
      

# # You can specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.yesno_string
#
#  fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: id
#       type: number
#       sql: ${TABLE}.id
#
#     - dimension: created
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.created_at
#
#     - measure: count
#       type: count


# # Or, you could make this view a derived table, like this:
#   derived_table:
#     sql: |
#       SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#
#  fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: lifetime_orders
#       type: number
#       sql: ${TABLE}.lifetime_orders
#
#     - dimension: most_recent_purchase
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.most_recent_purchase_at
#
#     - measure: total_lifetime_orders
#       type: sum
#       sql: ${lifetime_orders}
