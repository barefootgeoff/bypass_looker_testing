view: venues {
  sql_table_name: bypass_production.venues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }



  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

#   dimension_group: created {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.created_at ;;
#   }
#
#   dimension_group: deleted {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.deleted_at ;;
#   }
#
#   dimension: discount_configuration_group_id {
#     type: number
#     sql: ${TABLE}.discount_configuration_group_id ;;
#   }
#
#   dimension: external_id {
#     type: number
#     sql: ${TABLE}.external_id ;;
#   }
#
#   dimension: gratuity_configuration_id {
#     type: number
#     sql: ${TABLE}.gratuity_configuration_id ;;
#   }
#
#   dimension: lastcall_message {
#     type: string
#     sql: ${TABLE}.lastcall_message ;;
#   }

  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: string
    sql: ${TABLE}.lng ;;
  }

#   dimension: logo_content_type {
#     type: string
#     sql: ${TABLE}.logo_content_type ;;
#   }
#
#   dimension: logo_file_name {
#     type: string
#     sql: ${TABLE}.logo_file_name ;;
#   }
#
#   dimension: logo_file_size {
#     type: number
#     sql: ${TABLE}.logo_file_size ;;
#   }
#
#   dimension_group: logo_updated {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.logo_updated_at ;;
#   }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Venue Dashboard"
      url: "/dashboards/1?Venue={{value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

#   dimension: no_alcohol {
#     type: yesno
#     sql: ${TABLE}.no_alcohol ;;
#   }
#
#   dimension: notification_email {
#     type: string
#     sql: ${TABLE}.notification_email ;;
#   }
#
#   dimension: organization_id {
#     type: number
#     sql: ${TABLE}.organization_id ;;
#   }
#
#   dimension: partner_id {
#     type: number
#     sql: ${TABLE}.partner_id ;;
#   }
#
#   dimension: paypal_account_id {
#     type: number
#     sql: ${TABLE}.paypal_account_id ;;
#   }
#
#   dimension: portrait_content_type {
#     type: string
#     sql: ${TABLE}.portrait_content_type ;;
#   }
#
#   dimension: portrait_file_name {
#     type: string
#     sql: ${TABLE}.portrait_file_name ;;
#   }
#
#   dimension: portrait_file_size {
#     type: number
#     sql: ${TABLE}.portrait_file_size ;;
#   }
#
#   dimension_group: portrait_updated {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.portrait_updated_at ;;
#   }
#
#   dimension: pos_operator_password {
#     type: string
#     sql: ${TABLE}.pos_operator_password ;;
#   }
#
#   dimension: settings {
#     type: string
#     sql: ${TABLE}.settings ;;
#   }
#
#   dimension: show_in_app {
#     type: yesno
#     sql: ${TABLE}.show_in_app ;;
#   }
#
#   dimension: sponsor_name {
#     type: string
#     sql: ${TABLE}.sponsor_name ;;
#   }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    drill_fields: [zipcode, name]
  }

#   dimension: subtle_data_location_id {
#     type: string
#     sql: ${TABLE}.subtle_data_location_id ;;
#   }
#
#   dimension: surcharge_configuration_group_id {
#     type: number
#     sql: ${TABLE}.surcharge_configuration_group_id ;;
#   }
#
#   dimension: team {
#     type: string
#     sql: ${TABLE}.team ;;
#   }
#
#   dimension: time_zone {
#     type: string
#     sql: ${TABLE}.time_zone ;;
#   }
#
#   dimension_group: updated {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.updated_at ;;
#   }
#
#   dimension: uuid {
#     type: string
#     sql: ${TABLE}.uuid ;;
#   }

  dimension: venue_category {
    type: string
    sql: ${TABLE}.venue_category ;;
  }
#
#   dimension: web_order_subdomain {
#     type: string
#     sql: ${TABLE}.web_order_subdomain ;;
#   }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
#     drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
#   set: detail {
#     fields: [
#       id,
#       portrait_file_name,
#       name,
#       logo_file_name,
#       sponsor_name,
#       braintree_merchant_nickname
#     ]
#   }
}
# dimension: active {
#   type: yesno
#   sql: ${TABLE}.active ;;
# }
#
# dimension: address {
#   type: string
#   sql: ${TABLE}.address ;;
# }
#
# dimension: archived {
#   type: yesno
#   sql: ${TABLE}.archived ;;
# }
#
# dimension_group: archived {
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   sql: ${TABLE}.archived_at ;;
# }
#
# dimension: braintree_merchant_nickname {
#   type: string
#   sql: ${TABLE}.braintree_merchant_nickname ;;
# }
#
# dimension: bypass_venue {
#   type: yesno
#   sql: ${TABLE}.bypass_venue ;;
# }
