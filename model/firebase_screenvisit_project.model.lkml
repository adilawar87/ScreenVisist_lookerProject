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


explore: countries_cites {}

explore: com_example_screentime_android_realtime {
  join: com_example_screentime_android_realtime__logs {
    view_label: "Com Example Screentime Android Realtime: Logs"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.logs}) as com_example_screentime_android_realtime__logs ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__errors {
    view_label: "Com Example Screentime Android Realtime: Errors"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.errors}) as com_example_screentime_android_realtime__errors ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__threads {
    view_label: "Com Example Screentime Android Realtime: Threads"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.threads}) as com_example_screentime_android_realtime__threads ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__exceptions {
    view_label: "Com Example Screentime Android Realtime: Exceptions"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.exceptions}) as com_example_screentime_android_realtime__exceptions ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__custom_keys {
    view_label: "Com Example Screentime Android Realtime: Custom Keys"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.custom_keys}) as com_example_screentime_android_realtime__custom_keys ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__breadcrumbs {
    view_label: "Com Example Screentime Android Realtime: Breadcrumbs"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.breadcrumbs}) as com_example_screentime_android_realtime__breadcrumbs ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__errors__frames {
    view_label: "Com Example Screentime Android Realtime: Errors Frames"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__errors.frames}) as com_example_screentime_android_realtime__errors__frames ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__threads__frames {
    view_label: "Com Example Screentime Android Realtime: Threads Frames"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__threads.frames}) as com_example_screentime_android_realtime__threads__frames ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__exceptions__frames {
    view_label: "Com Example Screentime Android Realtime: Exceptions Frames"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__exceptions.frames}) as com_example_screentime_android_realtime__exceptions__frames ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__breadcrumbs__params {
    view_label: "Com Example Screentime Android Realtime: Breadcrumbs Params"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__breadcrumbs.params}) as com_example_screentime_android_realtime__breadcrumbs__params ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__native_crash_info__memory_error__causes {
    view_label: "Com Example Screentime Android Realtime: Native Crash Info Memory Error Causes"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime.native_crash_info__memory_error__causes}) as com_example_screentime_android_realtime__native_crash_info__memory_error__causes ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__native_crash_info__memory_error__causes__allocating_thread__frames {
    view_label: "Com Example Screentime Android Realtime: Native Crash Info Memory Error Causes Allocating Thread Frames"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__native_crash_info__memory_error__causes.allocating_thread__frames}) as com_example_screentime_android_realtime__native_crash_info__memory_error__causes__allocating_thread__frames ;;
    relationship: one_to_many
  }
  join: com_example_screentime_android_realtime__native_crash_info__memory_error__causes__deallocating_thread__frames {
    view_label: "Com Example Screentime Android Realtime: Native Crash Info Memory Error Causes Deallocating Thread Frames"
    sql: LEFT JOIN UNNEST(${com_example_screentime_android_realtime__native_crash_info__memory_error__causes.deallocating_thread__frames}) as com_example_screentime_android_realtime__native_crash_info__memory_error__causes__deallocating_thread__frames ;;
    relationship: one_to_many
  }
}
