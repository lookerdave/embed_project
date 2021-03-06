- connection: the_look

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: yesno_string

- explore: events
  joins:
    - join: users
      type: left_outer 
      sql_on: ${events.user_id} = ${users.id}
      relationship: many_to_one


- explore: inventory_items
  joins:
    - join: products
      type: left_outer 
      sql_on: ${inventory_items.product_id} = ${products.id}
      relationship: many_to_one


- explore: order_items
  joins:
    - join: orders
      type: left_outer 
      sql_on: ${order_items.order_id} = ${orders.id}
      relationship: many_to_one

    - join: inventory_items
      type: left_outer 
      sql_on: ${order_items.inventory_item_id} = ${inventory_items.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${orders.user_id} = ${users.id}
      relationship: many_to_one

    - join: products
      type: left_outer 
      sql_on: ${inventory_items.product_id} = ${products.id}
      relationship: many_to_one


- explore: orders
  joins:
    - join: users
      type: left_outer 
      sql_on: ${orders.user_id} = ${users.id}
      relationship: many_to_one


- explore: products

- explore: schema_migrations

- explore: t1
  joins:
    - join: orders
      type: left_outer 
      sql_on: ${t1.order_id} = ${orders.id}
      relationship: many_to_one

    - join: inventory_items
      type: left_outer 
      sql_on: ${t1.inventory_item_id} = ${inventory_items.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${orders.user_id} = ${users.id}
      relationship: many_to_one

    - join: products
      type: left_outer 
      sql_on: ${inventory_items.product_id} = ${products.id}
      relationship: many_to_one


- explore: user_data
  joins:
    - join: users
      type: left_outer 
      sql_on: ${user_data.user_id} = ${users.id}
      relationship: many_to_one


- explore: users

- explore: users_nn

