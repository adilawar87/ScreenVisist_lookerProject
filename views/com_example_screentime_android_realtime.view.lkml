view: com_example_screentime_android_realtime {
  sql_table_name: `firebase_crashlytics.com_example_screentime_ANDROID_REALTIME` ;;

  dimension: app_orientation {
    type: string
    description: "The orientation of the application at time of the event. PORTRAIT, LANDSCAPE, FACE_UP, or FACE_DOWN."
    sql: ${TABLE}.app_orientation ;;
  }
  dimension: application__build_version {
    type: string
    description: "The build version of the application. E.g. 1523456."
    sql: ${TABLE}.application.build_version ;;
    group_label: "Application"
    group_item_label: "Build Version"
  }
  dimension: application__display_version {
    type: string
    description: "The display version of the application. E.g. 4.1.7."
    sql: ${TABLE}.application.display_version ;;
    group_label: "Application"
    group_item_label: "Display Version"
  }
  dimension: blame_frame__address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.blame_frame.address ;;
    group_label: "Blame Frame"
    group_item_label: "Address"
  }
  dimension: blame_frame__blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blame_frame.blamed ;;
    group_label: "Blame Frame"
    group_item_label: "Blamed"
  }
  dimension: blame_frame__file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.blame_frame.file ;;
    group_label: "Blame Frame"
    group_item_label: "File"
  }
  dimension: blame_frame__library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.blame_frame.library ;;
    group_label: "Blame Frame"
    group_item_label: "Library"
  }
  dimension: blame_frame__line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.blame_frame.line ;;
    group_label: "Blame Frame"
    group_item_label: "Line"
  }
  dimension: blame_frame__offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.blame_frame.offset ;;
    group_label: "Blame Frame"
    group_item_label: "Offset"
  }
  dimension: blame_frame__owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.blame_frame.owner ;;
    group_label: "Blame Frame"
    group_item_label: "Owner"
  }
  dimension: blame_frame__symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.blame_frame.symbol ;;
    group_label: "Blame Frame"
    group_item_label: "Symbol"
  }
  dimension: breadcrumbs {
    hidden: yes
    sql: ${TABLE}.breadcrumbs ;;
  }
  dimension: bundle_identifier {
    type: string
    description: "The bundle identifier. E.g. com.google.gmail."
    sql: ${TABLE}.bundle_identifier ;;
  }
  dimension: crashlytics_sdk_version {
    type: string
    description: "The version of the Crashlytics SDK used to generate this event, e.g. 2.1.2."
    sql: ${TABLE}.crashlytics_sdk_version ;;
  }
  dimension: custom_keys {
    hidden: yes
    sql: ${TABLE}.custom_keys ;;
  }
  dimension: device__architecture {
    type: string
    description: "The architecture: X86_32, X86_64, ARMV7, ARM64, ARMV7S, or ARMV7K."
    sql: ${TABLE}.device.architecture ;;
    group_label: "Device"
    group_item_label: "Architecture"
  }
  dimension: device__manufacturer {
    type: string
    description: "The maker of the device."
    sql: ${TABLE}.device.manufacturer ;;
    group_label: "Device"
    group_item_label: "Manufacturer"
  }
  dimension: device__model {
    type: string
    description: "The model of the device."
    sql: ${TABLE}.device.model ;;
    group_label: "Device"
    group_item_label: "Model"
  }
  dimension: device_orientation {
    type: string
    description: "The orientation of the device at time of the event. PORTRAIT, LANDSCAPE, FACE_UP, or FACE_DOWN."
    sql: ${TABLE}.device_orientation ;;
  }
  dimension: error_type {
    type: string
    description: "Error type of the event. E.g. FATAL, NON_FATAL, ANR."
    sql: ${TABLE}.error_type ;;
  }
  dimension: errors {
    hidden: yes
    sql: ${TABLE}.errors ;;
  }
  dimension: event_id {
    type: string
    description: "The unique ID of this event."
    sql: ${TABLE}.event_id ;;
  }
  dimension_group: event_timestamp {
    type: time
    description: "The time of the event occurrence."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_timestamp ;;
  }
  dimension: exceptions {
    hidden: yes
    sql: ${TABLE}.exceptions ;;
  }
  dimension: installation_uuid {
    type: string
    description: "Installation ID from the device. Identifies a unique app + device installation."
    sql: ${TABLE}.installation_uuid ;;
  }
  dimension: issue_id {
    type: string
    description: "The issue associated with this event."
    sql: ${TABLE}.issue_id ;;
  }
  dimension: issue_subtitle {
    type: string
    description: "The issue subtitle."
    sql: ${TABLE}.issue_subtitle ;;
  }
  dimension: issue_title {
    type: string
    description: "The issue title."
    sql: ${TABLE}.issue_title ;;
  }
  dimension: logs {
    hidden: yes
    sql: ${TABLE}.logs ;;
  }
  dimension: memory__free {
    type: number
    description: "The free bytes of memory."
    sql: ${TABLE}.memory.free ;;
    group_label: "Memory"
    group_item_label: "Free"
  }
  dimension: memory__used {
    type: number
    description: "The used bytes of memory."
    sql: ${TABLE}.memory.used ;;
    group_label: "Memory"
    group_item_label: "Used"
  }
  dimension: native_crash_info__memory_error__canonical_cause_message {
    type: string
    description: "Aggregated memory error cause message stripped of any memory addresses"
    sql: ${TABLE}.native_crash_info.memory_error.canonical_cause_message ;;
    group_label: "Native Crash Info Memory Error"
    group_item_label: "Canonical Cause Message"
  }
  dimension: native_crash_info__memory_error__causes {
    hidden: yes
    sql: ${TABLE}.native_crash_info.memory_error.causes ;;
    group_label: "Native Crash Info Memory Error"
    group_item_label: "Causes"
  }
  dimension: native_crash_info__memory_error__error_type {
    type: string
    description: "Indicates whether Memory Error was collected by GWP-Asan, MTE, etc"
    sql: ${TABLE}.native_crash_info.memory_error.error_type ;;
    group_label: "Native Crash Info Memory Error"
    group_item_label: "Error Type"
  }
  dimension: operating_system__device_type {
    type: string
    description: "The type of device. E.g. MOBILE, TABLET, TV"
    sql: ${TABLE}.operating_system.device_type ;;
    group_label: "Operating System"
    group_item_label: "Device Type"
  }
  dimension: operating_system__display_version {
    type: string
    description: "The display version of the operating system. E.g. 10.2.1."
    sql: ${TABLE}.operating_system.display_version ;;
    group_label: "Operating System"
    group_item_label: "Display Version"
  }
  dimension: operating_system__modification_state {
    type: string
    description: "The modification state of the device. MODIFIED or UNMODIFIED.iOS devices are considered MODIFIED when jailbroken. Android devicesare considered MODIFIED when rooted."
    sql: ${TABLE}.operating_system.modification_state ;;
    group_label: "Operating System"
    group_item_label: "Modification State"
  }
  dimension: operating_system__name {
    type: string
    description: "The name of the operating system version."
    sql: ${TABLE}.operating_system.name ;;
    group_label: "Operating System"
    group_item_label: "Name"
  }
  dimension: operating_system__type {
    type: string
    description: "The type of operating system on device. E.g. IOS, MACOS"
    sql: ${TABLE}.operating_system.type ;;
    group_label: "Operating System"
    group_item_label: "Type"
  }
  dimension: platform {
    type: string
    description: "The platform. ANDROID or IOS."
    sql: ${TABLE}.platform ;;
  }
  dimension: process_state {
    type: string
    description: "The state of the process at time of the event. BACKGROUND or FOREGROUND."
    sql: ${TABLE}.process_state ;;
  }
  dimension_group: received_timestamp {
    type: time
    description: "The time the event was received from the device."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.received_timestamp ;;
  }
  dimension: storage__free {
    type: number
    description: "The free bytes of storage."
    sql: ${TABLE}.storage.free ;;
    group_label: "Storage"
    group_item_label: "Free"
  }
  dimension: storage__used {
    type: number
    description: "The used bytes of storage."
    sql: ${TABLE}.storage.used ;;
    group_label: "Storage"
    group_item_label: "Used"
  }
  dimension: threads {
    hidden: yes
    sql: ${TABLE}.threads ;;
  }
  dimension: unity_metadata__debug_build {
    type: yesno
    description: "If this is a debug build"
    sql: ${TABLE}.unity_metadata.debug_build ;;
    group_label: "Unity Metadata"
    group_item_label: "Debug Build"
  }
  dimension: unity_metadata__graphics_copy_texture_support {
    type: string
    description: "Support for copying graphics texture as defined in the Unity API https://docs.unity3d.com/ScriptReference/Rendering.CopyTextureSupport.html"
    sql: ${TABLE}.unity_metadata.graphics_copy_texture_support ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Copy Texture Support"
  }
  dimension: unity_metadata__graphics_device_id {
    type: number
    description: "The identifier of the graphics device"
    sql: ${TABLE}.unity_metadata.graphics_device_id ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device ID"
  }
  dimension: unity_metadata__graphics_device_name {
    type: string
    description: "The name of the graphics device"
    sql: ${TABLE}.unity_metadata.graphics_device_name ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device Name"
  }
  dimension: unity_metadata__graphics_device_type {
    type: string
    description: "The type of the graphics device"
    sql: ${TABLE}.unity_metadata.graphics_device_type ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device Type"
  }
  dimension: unity_metadata__graphics_device_vendor {
    type: string
    description: "The vendor of the graphics device"
    sql: ${TABLE}.unity_metadata.graphics_device_vendor ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device Vendor"
  }
  dimension: unity_metadata__graphics_device_vendor_id {
    type: number
    description: "The identifier of the graphics processor's vendor"
    sql: ${TABLE}.unity_metadata.graphics_device_vendor_id ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device Vendor ID"
  }
  dimension: unity_metadata__graphics_device_version {
    type: string
    description: "The version of the graphics device"
    sql: ${TABLE}.unity_metadata.graphics_device_version ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Device Version"
  }
  dimension: unity_metadata__graphics_max_texture_size {
    type: number
    description: "The maximum size dedicated to rendering texture"
    sql: ${TABLE}.unity_metadata.graphics_max_texture_size ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Max Texture Size"
  }
  dimension: unity_metadata__graphics_memory_size_mb {
    type: number
    description: "The graphics memory in MB"
    sql: ${TABLE}.unity_metadata.graphics_memory_size_mb ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Memory Size Mb"
  }
  dimension: unity_metadata__graphics_render_target_count {
    type: number
    description: "The number of graphical rendering targets"
    sql: ${TABLE}.unity_metadata.graphics_render_target_count ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Render Target Count"
  }
  dimension: unity_metadata__graphics_shader_level {
    type: number
    description: "The shader level of the graphics"
    sql: ${TABLE}.unity_metadata.graphics_shader_level ;;
    group_label: "Unity Metadata"
    group_item_label: "Graphics Shader Level"
  }
  dimension: unity_metadata__processor_count {
    type: number
    description: "The number of processors"
    sql: ${TABLE}.unity_metadata.processor_count ;;
    group_label: "Unity Metadata"
    group_item_label: "Processor Count"
  }
  dimension: unity_metadata__processor_frequency_mhz {
    type: number
    description: "The frequency of the processor(s) in MHz"
    sql: ${TABLE}.unity_metadata.processor_frequency_mhz ;;
    group_label: "Unity Metadata"
    group_item_label: "Processor Frequency Mhz"
  }
  dimension: unity_metadata__processor_type {
    type: string
    description: "The type of the processor"
    sql: ${TABLE}.unity_metadata.processor_type ;;
    group_label: "Unity Metadata"
    group_item_label: "Processor Type"
  }
  dimension: unity_metadata__screen_refresh_rate_hz {
    type: number
    description: "The refresh rate of the screen in Hz"
    sql: ${TABLE}.unity_metadata.screen_refresh_rate_hz ;;
    group_label: "Unity Metadata"
    group_item_label: "Screen Refresh Rate Hz"
  }
  dimension: unity_metadata__screen_resolution_dpi {
    type: string
    description: "The DPI of the screen as a floating point number"
    sql: ${TABLE}.unity_metadata.screen_resolution_dpi ;;
    group_label: "Unity Metadata"
    group_item_label: "Screen Resolution Dpi"
  }
  dimension: unity_metadata__screen_size_px {
    type: string
    description: "The size of the screen in pixels, formatted as width x height"
    sql: ${TABLE}.unity_metadata.screen_size_px ;;
    group_label: "Unity Metadata"
    group_item_label: "Screen Size Px"
  }
  dimension: unity_metadata__system_memory_size_mb {
    type: number
    description: "The size of the system's memory in MB"
    sql: ${TABLE}.unity_metadata.system_memory_size_mb ;;
    group_label: "Unity Metadata"
    group_item_label: "System Memory Size Mb"
  }
  dimension: unity_metadata__unity_version {
    type: string
    description: "The version of unity running on this device"
    sql: ${TABLE}.unity_metadata.unity_version ;;
    group_label: "Unity Metadata"
    group_item_label: "Unity Version"
  }
  dimension: user__email {
    type: string
    description: "The email address of the end-user."
    sql: ${TABLE}.user.email ;;
    group_label: "User"
    group_item_label: "Email"
  }
  dimension: user__id {
    type: string
    description: "The app-owned ID of the end-user."
    sql: ${TABLE}.user.id ;;
    group_label: "User"
    group_item_label: "ID"
  }
  dimension: user__name {
    type: string
    description: "The name of the end-user."
    sql: ${TABLE}.user.name ;;
    group_label: "User"
    group_item_label: "Name"
  }
  dimension: variant_id {
    type: string
    description: "The issue variant associated with this event (if at all)."
    sql: ${TABLE}.variant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [user__name, operating_system__name, unity_metadata__graphics_device_name]
  }
}

view: com_example_screentime_android_realtime__logs {

  dimension: com_example_screentime_android_realtime__logs {
    type: string
    description: "The timestamped log messages generated by the application, if the Crashlytics logger was used."
    hidden: yes
    sql: com_example_screentime_android_realtime__logs ;;
  }
  dimension: message {
    type: string
    description: "The log message itself."
    sql: message ;;
  }
  dimension_group: timestamp {
    type: time
    description: "The time when the log was written by the application."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: timestamp ;;
  }
}

view: com_example_screentime_android_realtime__errors {

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the error."
    sql: blamed ;;
  }
  dimension: code {
    type: number
    description: "Error code of the applications's custom logged NSError."
    sql: code ;;
  }
  dimension: com_example_screentime_android_realtime__errors {
    type: string
    description: "iOS only non-fatal errors."
    hidden: yes
    sql: com_example_screentime_android_realtime__errors ;;
  }
  dimension: frames {
    hidden: yes
    sql: frames ;;
  }
  dimension: queue_name {
    type: string
    description: "The queue that the thread was running on."
    sql: queue_name ;;
  }
  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: subtitle ;;
  }
  dimension: title {
    type: string
    description: "The title of this thread."
    sql: title ;;
  }
}

view: com_example_screentime_android_realtime__threads {

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the crash or error."
    sql: blamed ;;
  }
  dimension: com_example_screentime_android_realtime__threads {
    type: string
    description: "Stacktraces for the other threads that were part of the process at the time of the crash."
    hidden: yes
    sql: com_example_screentime_android_realtime__threads ;;
  }
  dimension: crash_address {
    type: number
    description: "The address of the signal that caused the application to crash. Only present on crashed native threads."
    sql: crash_address ;;
  }
  dimension: crashed {
    type: yesno
    description: "Whether the thread crashed."
    sql: crashed ;;
  }
  dimension: frames {
    hidden: yes
    sql: frames ;;
  }
  dimension: queue_name {
    type: string
    description: "The queue name. Only present on iOS."
    sql: queue_name ;;
  }
  dimension: signal_code {
    type: string
    description: "The code of the signal that caused the application to crash. Only present on crashed native threads."
    sql: signal_code ;;
  }
  dimension: signal_name {
    type: string
    description: "The name of the signal that caused the application to crash. Only present on crashed native threads."
    sql: signal_name ;;
  }
  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: subtitle ;;
  }
  dimension: thread_name {
    type: string
    description: "The thread name."
    sql: thread_name ;;
  }
  dimension: title {
    type: string
    description: "The title of this thread."
    sql: title ;;
  }
}

view: com_example_screentime_android_realtime__exceptions {

  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the error."
    sql: blamed ;;
  }
  dimension: com_example_screentime_android_realtime__exceptions {
    type: string
    description: "Android only. Exceptions that occurred during this event (only present on Android). For events that include a crash (i.e. the presence of threads) there may also be an exception present. Exceptions may have nested causes. The 0th record in the exceptions array represents the outer-most exception, nested will be false for it. Subsequent records in this array represent the nested exceptions in nesting order (i.e. the last entry was the first exception to be thrown)."
    hidden: yes
    sql: com_example_screentime_android_realtime__exceptions ;;
  }
  dimension: exception_message {
    type: string
    description: "The message included in the exception."
    sql: exception_message ;;
  }
  dimension: frames {
    hidden: yes
    sql: frames ;;
  }
  dimension: nested {
    type: yesno
    description: "Whether this exception is nested within its neighbor."
    sql: nested ;;
  }
  dimension: subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: subtitle ;;
  }
  dimension: title {
    type: string
    description: "The title of this thread."
    sql: title ;;
  }
  dimension: type {
    type: string
    description: "The type of the exception. E.g. java.lang.IllegalStateException."
    sql: type ;;
  }
}

view: com_example_screentime_android_realtime__custom_keys {

  dimension: com_example_screentime_android_realtime__custom_keys {
    type: string
    description: "Key-value pairs defined by the developer."
    hidden: yes
    sql: com_example_screentime_android_realtime__custom_keys ;;
  }
  dimension: key {
    type: string
    description: "The key."
    sql: key ;;
  }
  dimension: value {
    type: string
    description: "The value."
    sql: value ;;
  }
}

view: com_example_screentime_android_realtime__breadcrumbs {

  dimension: com_example_screentime_android_realtime__breadcrumbs {
    type: string
    description: "The timestamped Google Analytics breadcrumbs, if present."
    hidden: yes
    sql: com_example_screentime_android_realtime__breadcrumbs ;;
  }
  dimension: name {
    type: string
    description: "The name."
    sql: name ;;
  }
  dimension: params {
    hidden: yes
    sql: params ;;
  }
  dimension_group: timestamp {
    type: time
    description: "The time when the breadcrumb was written by the application."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: timestamp ;;
  }
}

view: com_example_screentime_android_realtime__errors__frames {

  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address ;;
  }
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed ;;
  }
  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file ;;
  }
  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library ;;
  }
  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line ;;
  }
  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset ;;
  }
  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner ;;
  }
  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol ;;
  }
}

view: com_example_screentime_android_realtime__threads__frames {

  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address ;;
  }
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed ;;
  }
  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file ;;
  }
  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library ;;
  }
  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line ;;
  }
  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset ;;
  }
  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner ;;
  }
  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol ;;
  }
}

view: com_example_screentime_android_realtime__exceptions__frames {

  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address ;;
  }
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed ;;
  }
  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file ;;
  }
  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library ;;
  }
  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line ;;
  }
  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset ;;
  }
  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner ;;
  }
  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol ;;
  }
}

view: com_example_screentime_android_realtime__breadcrumbs__params {

  dimension: key {
    type: string
    description: "The key."
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    description: "The value."
    sql: ${TABLE}.value ;;
  }
}

view: com_example_screentime_android_realtime__native_crash_info__memory_error__causes {

  dimension: allocating_thread__blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the crash or error."
    sql: ${TABLE}.allocating_thread.blamed ;;
    group_label: "Allocating Thread"
    group_item_label: "Blamed"
  }
  dimension: allocating_thread__crash_address {
    type: number
    description: "The address of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.allocating_thread.crash_address ;;
    group_label: "Allocating Thread"
    group_item_label: "Crash Address"
  }
  dimension: allocating_thread__crashed {
    type: yesno
    description: "Whether the thread crashed."
    sql: ${TABLE}.allocating_thread.crashed ;;
    group_label: "Allocating Thread"
    group_item_label: "Crashed"
  }
  dimension: allocating_thread__frames {
    hidden: yes
    sql: ${TABLE}.allocating_thread.frames ;;
    group_label: "Allocating Thread"
    group_item_label: "Frames"
  }
  dimension: allocating_thread__queue_name {
    type: string
    description: "The queue name. Only present on iOS."
    sql: ${TABLE}.allocating_thread.queue_name ;;
    group_label: "Allocating Thread"
    group_item_label: "Queue Name"
  }
  dimension: allocating_thread__signal_code {
    type: string
    description: "The code of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.allocating_thread.signal_code ;;
    group_label: "Allocating Thread"
    group_item_label: "Signal Code"
  }
  dimension: allocating_thread__signal_name {
    type: string
    description: "The name of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.allocating_thread.signal_name ;;
    group_label: "Allocating Thread"
    group_item_label: "Signal Name"
  }
  dimension: allocating_thread__subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: ${TABLE}.allocating_thread.subtitle ;;
    group_label: "Allocating Thread"
    group_item_label: "Subtitle"
  }
  dimension: allocating_thread__thread_name {
    type: string
    description: "The thread name."
    sql: ${TABLE}.allocating_thread.thread_name ;;
    group_label: "Allocating Thread"
    group_item_label: "Thread Name"
  }
  dimension: allocating_thread__title {
    type: string
    description: "The title of this thread."
    sql: ${TABLE}.allocating_thread.title ;;
    group_label: "Allocating Thread"
    group_item_label: "Title"
  }
  dimension: deallocating_thread__blamed {
    type: yesno
    description: "Whether analysis blames this stacktrace as the cause of the crash or error."
    sql: ${TABLE}.deallocating_thread.blamed ;;
    group_label: "Deallocating Thread"
    group_item_label: "Blamed"
  }
  dimension: deallocating_thread__crash_address {
    type: number
    description: "The address of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.deallocating_thread.crash_address ;;
    group_label: "Deallocating Thread"
    group_item_label: "Crash Address"
  }
  dimension: deallocating_thread__crashed {
    type: yesno
    description: "Whether the thread crashed."
    sql: ${TABLE}.deallocating_thread.crashed ;;
    group_label: "Deallocating Thread"
    group_item_label: "Crashed"
  }
  dimension: deallocating_thread__frames {
    hidden: yes
    sql: ${TABLE}.deallocating_thread.frames ;;
    group_label: "Deallocating Thread"
    group_item_label: "Frames"
  }
  dimension: deallocating_thread__queue_name {
    type: string
    description: "The queue name. Only present on iOS."
    sql: ${TABLE}.deallocating_thread.queue_name ;;
    group_label: "Deallocating Thread"
    group_item_label: "Queue Name"
  }
  dimension: deallocating_thread__signal_code {
    type: string
    description: "The code of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.deallocating_thread.signal_code ;;
    group_label: "Deallocating Thread"
    group_item_label: "Signal Code"
  }
  dimension: deallocating_thread__signal_name {
    type: string
    description: "The name of the signal that caused the application to crash. Only present on crashed native threads."
    sql: ${TABLE}.deallocating_thread.signal_name ;;
    group_label: "Deallocating Thread"
    group_item_label: "Signal Name"
  }
  dimension: deallocating_thread__subtitle {
    type: string
    description: "The subtitle of this thread."
    sql: ${TABLE}.deallocating_thread.subtitle ;;
    group_label: "Deallocating Thread"
    group_item_label: "Subtitle"
  }
  dimension: deallocating_thread__thread_name {
    type: string
    description: "The thread name."
    sql: ${TABLE}.deallocating_thread.thread_name ;;
    group_label: "Deallocating Thread"
    group_item_label: "Thread Name"
  }
  dimension: deallocating_thread__title {
    type: string
    description: "The title of this thread."
    sql: ${TABLE}.deallocating_thread.title ;;
    group_label: "Deallocating Thread"
    group_item_label: "Title"
  }
  dimension: message {
    type: string
    description: "Indicates the cause of message"
    sql: ${TABLE}.message ;;
  }
}

view: com_example_screentime_android_realtime__native_crash_info__memory_error__causes__allocating_thread__frames {

  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address ;;
  }
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed ;;
  }
  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file ;;
  }
  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library ;;
  }
  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line ;;
  }
  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset ;;
  }
  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner ;;
  }
  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol ;;
  }
}

view: com_example_screentime_android_realtime__native_crash_info__memory_error__causes__deallocating_thread__frames {

  dimension: address {
    type: number
    description: "The address in the binary image which contains the code."
    sql: ${TABLE}.address ;;
  }
  dimension: blamed {
    type: yesno
    description: "Whether analysis blames this frame as the cause of the crash or error."
    sql: ${TABLE}.blamed ;;
  }
  dimension: file {
    type: string
    description: "The filename of the frame."
    sql: ${TABLE}.file ;;
  }
  dimension: library {
    type: string
    description: "The display name of the library that includes this frame."
    sql: ${TABLE}.library ;;
  }
  dimension: line {
    type: number
    description: "Line number within the file of the frame."
    sql: ${TABLE}.line ;;
  }
  dimension: offset {
    type: number
    description: "The byte offset into the binary image which contains the code."
    sql: ${TABLE}.offset ;;
  }
  dimension: owner {
    type: string
    description: "The component of a mobile runtime that owns the frame. DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM."
    sql: ${TABLE}.owner ;;
  }
  dimension: symbol {
    type: string
    description: "The hydrated symbol, or the raw symbol if it's unhydrateable."
    sql: ${TABLE}.symbol ;;
  }
}
