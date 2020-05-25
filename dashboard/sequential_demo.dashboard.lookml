- dashboard: sequential_demo
  title: Sequential Demo
  layout: newspaper
  elements:
  - title: Data
    name: Data
    model: td2bq_dashboards_demo
    explore: sequential_22052020115316_3
    type: looker_grid
    fields: [sequential_22052020115316_3.query, sequential_22052020115316_3.row_number,
      sequential_22052020115316_3.frequency, sequential_22052020115316_3.benchmark_type,
      sequential_22052020115316_3.avg_wall_time, sequential_22052020115316_3.avg_total_slot_ms,
      sequential_22052020115316_3.avg_query_time, sequential_22052020115316_3.avg_cost]
    sorts: [sequential_22052020115316_3.query]
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
    height: 4
  - title: Average Slot Utilization
    name: Average Slot Utilization
    model: td2bq_dashboards_demo
    explore: sequential_22052020115316_3
    type: looker_column
    fields: [sequential_22052020115316_3.row_number, avg_total_slot_ms]
    sorts: [sequential_22052020115316_3.row_number]
    limit: 500
    dynamic_fields: [{measure: count_of_avg_total_slot_ms, based_on: sequential_22052020115316_3.avg_total_slot_ms,
        type: count_distinct, label: Count of Avg Total Slot Ms, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: avg_total_slot_ms, based_on: sequential_22052020115316_3.avg_total_slot_ms,
        type: sum, label: Avg Total Slot Ms, expression: !!null '', value_format: !!null '',
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
    y_axes: [{label: Avg slot utilization(ms), orientation: left, series: [{axisId: sum_of_avg_total_slot_ms,
            id: sum_of_avg_total_slot_ms, name: Sum of Avg Total Slot Ms}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    row: 4
    col: 0
    width: 8
    height: 5
  - title: Avg cost vs Query time
    name: Avg cost vs Query time
    model: td2bq_dashboards_demo
    explore: sequential_22052020115316_3
    type: looker_column
    fields: [sequential_22052020115316_3.row_number, avg_cost, avg_query_time]
    sorts: [avg_cost desc]
    limit: 500
    dynamic_fields: [{measure: avg_query_time, based_on: sequential_22052020115316_3.avg_query_time,
        type: sum, label: Avg Query Time, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: avg_cost, based_on: sequential_22052020115316_3.avg_cost, type: sum,
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
    row: 4
    col: 8
    width: 8
    height: 5
  - title: Avg runtime vs Walltime
    name: Avg runtime vs Walltime
    model: td2bq_dashboards_demo
    explore: sequential_22052020115316_3
    type: looker_column
    fields: [sequential_22052020115316_3.row_number, avg_query_time, avg_wall_time]
    sorts: [avg_query_time desc]
    limit: 500
    dynamic_fields: [{measure: avg_query_time, based_on: sequential_22052020115316_3.avg_query_time,
        type: sum, label: Avg Query Time, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: avg_wall_time, based_on: sequential_22052020115316_3.avg_wall_time,
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
    row: 4
    col: 16
    width: 8
    height: 5
