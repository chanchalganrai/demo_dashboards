connection: "td2bq"

# include all the views
include: "/views/**/*.view"
include: "/dashboard/**/*.dashboard"


datagroup: td2bq_dashboards_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: td2bq_dashboards_demo_default_datagroup

explore: parallel_22052020115316_10 {}
explore: parallel_ratio_22052020115316_10 {}
explore: sequential_22052020115316_3 {}
