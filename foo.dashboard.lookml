- dashboard: foo
  title: Foo
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: add_a_unique_name_1470697101
    title: Untitled Visualization
    type: looker_column
    model: model_for_sso_embed
    explore: order_items
    dimensions: [products.category]
    measures: [order_items.count]
    sorts: [order_items.count desc]
    limit: '500'
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    ordering: none
    show_null_labels: false

