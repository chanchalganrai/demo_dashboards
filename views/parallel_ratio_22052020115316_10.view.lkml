view: parallel_ratio_22052020115316_10 {
  sql_table_name: `performance.Parallel_ratio_22052020115316_10`
    ;;

  dimension: avg_cost {
    type: number
    sql: ${TABLE}.avg_cost ;;
  }

  dimension: avg_query_time {
    type: number
    sql: ${TABLE}.avg_query_time ;;
  }

  dimension: avg_total_slot_ms {
    type: number
    sql: ${TABLE}.avg_total_slot_ms ;;
  }

  dimension: avg_wall_time {
    type: number
    sql: ${TABLE}.avg_wall_time ;;
  }

  dimension: benchmark_type {
    type: string
    sql: ${TABLE}.benchmark_type ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}.ratio ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.row_number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
