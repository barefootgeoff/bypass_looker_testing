view: locations {
  sql_table_name: bypass_production.locations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: venue_id {
    type: number
    hidden: yes
    sql: ${TABLE}.venue_id ;;
  }

#   dimension_group: alcohol_closed {
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
#     sql: ${TABLE}.alcohol_closed_at ;;
#   }
#
#   dimension_group: closed {
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
#     sql: ${TABLE}.closed_at ;;
#   }
#
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
#   dimension: custom_in_seat_msg {
#     type: string
#     sql: ${TABLE}.custom_in_seat_msg ;;
#   }
#
#   dimension: custom_pickup_msg {
#     type: string
#     sql: ${TABLE}.custom_pickup_msg ;;
#   }
#
#   dimension: deal_percentage {
#     type: number
#     sql: ${TABLE}.deal_percentage ;;
#   }
#
#   dimension: deal_price_threshold {
#     type: number
#     sql: ${TABLE}.deal_price_threshold ;;
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
#   dimension: description {
#     type: string
#     sql: ${TABLE}.description ;;
#   }
#
#   dimension_group: dirtied {
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
#     sql: ${TABLE}.dirtied_at ;;
#   }
#
#   dimension: discount_configuration_group_id {
#     type: number
#     sql: ${TABLE}.discount_configuration_group_id ;;
#   }
#
#   dimension: external_revenue_center_id {
#     type: number
#     sql: ${TABLE}.external_revenue_center_id ;;
#   }
#
#   dimension: external_terminal_id {
#     type: number
#     sql: ${TABLE}.external_terminal_id ;;
#   }
#
#   dimension: gratuity_configuration_id {
#     type: number
#     sql: ${TABLE}.gratuity_configuration_id ;;
#   }
#
#   dimension: has_inseat {
#     type: yesno
#     sql: ${TABLE}.has_inseat ;;
#   }
#
#   dimension: has_pickup {
#     type: yesno
#     sql: ${TABLE}.has_pickup ;;
#   }
#
#   dimension: is_merchandise {
#     type: yesno
#     sql: ${TABLE}.is_merchandise ;;
#   }
#
#   dimension_group: last_checked {
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
#     sql: ${TABLE}.last_checked_at ;;
#   }
#
#   dimension: location_group_id {
#     type: number
#     sql: ${TABLE}.location_group_id ;;
#   }
#
#   dimension: menu_url {
#     type: string
#     sql: ${TABLE}.menu_url ;;
#   }
#
#   dimension: merchant_account {
#     type: string
#     sql: ${TABLE}.merchant_account ;;
#   }
#
#
#
#   dimension: open {
#     type: yesno
#     sql: ${TABLE}.open ;;
#   }
#
#   dimension: paypal_account_id {
#     type: number
#     sql: ${TABLE}.paypal_account_id ;;
#   }
#
#   dimension: position {
#     type: number
#     sql: ${TABLE}.position ;;
#   }
#
#   dimension: settings {
#     type: string
#     sql: ${TABLE}.settings ;;
#   }
#
#   dimension: signature_threshold {
#     type: number
#     sql: ${TABLE}.signature_threshold ;;
#   }
#
#   dimension: spates_url {
#     type: string
#     sql: ${TABLE}.spates_url ;;
#   }
#
#   dimension: surcharge_configuration_group_id {
#     type: number
#     sql: ${TABLE}.surcharge_configuration_group_id ;;
#   }
#
#   dimension: tender_accepted {
#     type: string
#     sql: ${TABLE}.tender_accepted ;;
#   }
#
#   dimension: type {
#     type: string
#     sql: ${TABLE}.type ;;
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
#

#
#   measure: count {
#     type: count
#     drill_fields: [id, name]
#   }
}
