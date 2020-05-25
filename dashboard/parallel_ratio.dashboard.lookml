- dashboard: parallel_ratio
  title: Parallel Ratio
  layout: newspaper
  elements:
  - title: Untitled
    name: Untitled
    model: td2bq_dashboards_demo
    explore: parallel_ratio_22052020115316_10
    type: looker_grid
    fields: [parallel_ratio_22052020115316_10.row_number, parallel_ratio_22052020115316_10.ratio,
      parallel_ratio_22052020115316_10.query, parallel_ratio_22052020115316_10.frequency,
      parallel_ratio_22052020115316_10.benchmark_type, parallel_ratio_22052020115316_10.avg_wall_time,
      parallel_ratio_22052020115316_10.avg_total_slot_ms, parallel_ratio_22052020115316_10.avg_query_time,
      parallel_ratio_22052020115316_10.avg_cost]
    sorts: [parallel_ratio_22052020115316_10.ratio desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    column_order: ["$$$_row_numbers_$$$", parallel_ratio_22052020115316_10.row_number,
      parallel_ratio_22052020115316_10.query, parallel_ratio_22052020115316_10.ratio,
      parallel_ratio_22052020115316_10.frequency, parallel_ratio_22052020115316_10.benchmark_type,
      parallel_ratio_22052020115316_10.avg_wall_time, parallel_ratio_22052020115316_10.avg_total_slot_ms,
      parallel_ratio_22052020115316_10.avg_query_time, parallel_ratio_22052020115316_10.avg_cost]
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Untitled
    name: Untitled (2)
    model: td2bq_dashboards_demo
    explore: parallel_ratio_22052020115316_10
    type: looker_column
    fields: [parallel_ratio_22052020115316_10.ratio, sum_of_avg_query_time, sum_of_avg_wall_time]
    filters:
      parallel_ratio_22052020115316_10.query: ''
    sorts: [sum_of_avg_query_time desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_avg_query_time, based_on: parallel_ratio_22052020115316_10.avg_query_time,
        expression: '', label: Sum of Avg Query Time, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_avg_wall_time, based_on: parallel_ratio_22052020115316_10.avg_wall_time,
        expression: '', label: Sum of Avg Wall Time, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 5
    col: 0
    width: 8
    height: 6
  filters:
  - name: Query
    title: Query
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: td2bq_dashboards_demo
    explore: parallel_ratio_22052020115316_10
    listens_to_filters: []
    field: parallel_ratio_22052020115316_10.query
