- view: products
  sql_table_name: demo_db.products
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: brand
    type: string
    sql: ${TABLE}.brand
    drill_fields: [item_name]

  - dimension: category
    type: string
    sql: ${TABLE}.category

  - dimension: department
    type: string
    sql: ${TABLE}.department

  - dimension: item_name
    type: string
    sql: ${TABLE}.item_name

  - dimension: rank
    type: number
    sql: ${TABLE}.rank

  - dimension: retail_price
    type: number
    sql: ${TABLE}.retail_price

  - dimension: sku
    type: string
    sql: ${TABLE}.sku
    
  - dimension: products_yesno
    type: yesno
    sql: ${products.count} > 1000

  - measure: count
    type: count
    drill_fields: [id, item_name, inventory_items.count]

