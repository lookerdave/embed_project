- view: order_items
  sql_table_name: demo_db.order_items
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: inventory_item_id
    type: number
    # hidden: true
    sql: ${TABLE}.inventory_item_id

  - dimension: order_id
    type: number
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension_group: returned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.returned_at

  - dimension: sale_price
    type: number
    sql: ${TABLE}.sale_price

  - measure: count
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
    

  - dimension: count_of_antiemetics_given 
    view_label: "Case Drugs"
    type: number
    sql: count(${id})


  - measure: mips_430_numerator 
    label: "MIPS 430: Numerator"
    description: "Antiemetics given value >= 2 items selected from pick list"
    view_label: "Quality Outcomes"
    type: count
    filters: 
      count_of_antiemetics_given: '>2'


