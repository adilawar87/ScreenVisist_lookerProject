#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: countries_cites {
  derived_table: {
    sql: SELECT * FROM `screenvisit.Customer_Details.Countries_Cities` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_ascii {
    type: string
    sql: ${TABLE}.city_ascii ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: admin_name {
    type: string
    sql: ${TABLE}.admin_name ;;
  }

  dimension: capital {
    type: string
    sql: ${TABLE}.capital ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lng ;;
  }
  set: detail {
    fields: [
        city,
	city_ascii,
	lat,
	lng,
	country,
	iso2,
	iso3,
	admin_name,
	capital,
	population,
	id,
	location
    ]
  }
}
