- dashboard: parallel_demo
  title: Parallel Demo
  layout: newspaper
  elements:
  - title: Data
    name: Data
    model: td2bq_dashboards_demo
    explore: parallel_22052020115316_10
    type: looker_grid
    fields: [parallel_22052020115316_10.query, parallel_22052020115316_10.frequency,
      parallel_22052020115316_10.benchmark_type, parallel_22052020115316_10.avg_wall_time,
      parallel_22052020115316_10.avg_total_slot_ms, parallel_22052020115316_10.avg_query_time,
      parallel_22052020115316_10.avg_cost, parallel_22052020115316_10.row_number]
    sorts: [parallel_22052020115316_10.query]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Avg Slot Utilization (ms)
    name: Avg Slot Utilization (ms)
    model: td2bq_dashboards_demo
    explore: parallel_22052020115316_10
    type: looker_column
    fields: [parallel_22052020115316_10.row_number, avg_slot_ms]
    sorts: [avg_slot_ms desc]
    limit: 500
    dynamic_fields: [{measure: avg_slot_ms, based_on: parallel_22052020115316_10.avg_total_slot_ms,
        type: sum, label: Avg Slot Ms, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    series_types: {}
    show_null_points: true
    defaults_version: 1
    listen: {}
    row: 5
    col: 0
    width: 9
    height: 5
  - title: Avg query time vs Avg cost
    name: Avg query time vs Avg cost
    model: td2bq_dashboards_demo
    explore: parallel_22052020115316_10
    type: looker_column
    fields: [parallel_22052020115316_10.row_number, avg_query_time, avg_cost]
    sorts: [avg_query_time desc]
    limit: 500
    dynamic_fields: [{measure: avg_query_time, based_on: parallel_22052020115316_10.avg_query_time,
        type: sum, label: Avg Query Time, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: avg_cost, based_on: parallel_22052020115316_10.avg_cost, type: sum,
        label: Avg Cost, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
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
    listen: {}
    row: 5
    col: 9
    width: 7
    height: 5
  - title: Avg query time vs Avg wall time
    name: Avg query time vs Avg wall time
    model: td2bq_dashboards_demo
    explore: parallel_22052020115316_10
    type: looker_column
    fields: [parallel_22052020115316_10.row_number, avg_query_time, avg_wall_time]
    sorts: [avg_query_time desc]
    limit: 500
    dynamic_fields: [{measure: avg_query_time, based_on: parallel_22052020115316_10.avg_query_time,
        type: sum, label: Avg Query Time, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: avg_wall_time, based_on: parallel_22052020115316_10.avg_wall_time,
        type: sum, label: Avg Wall Time, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    col: 17
    width: 7
    height: 5
