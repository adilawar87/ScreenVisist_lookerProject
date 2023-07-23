connection: "firebase_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: screenvist_projectnew_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: screenvist_projectnew_default_datagroup

explore: events_intraday {
  join: events_20230721__items {
    view_label: "Events : Items"
    sql: LEFT JOIN UNNEST(${events_intraday.items}) as events_20230721__items ;;
    relationship: one_to_many
  }
  join: events_20230721__event_params {
    view_label: "Events : Event Params"
    sql: LEFT JOIN UNNEST(${events_intraday.event_params}) as events_20230721__event_params ;;
    relationship: one_to_many
  }
  join: events_20230721__user_properties {
    view_label: "Events : User Properties"
    sql: LEFT JOIN UNNEST(${events_intraday.user_properties}) as events_20230721__user_properties ;;
    relationship: one_to_many
  }
}
