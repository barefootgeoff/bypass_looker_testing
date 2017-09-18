view: orders {
  sql_table_name: bypass_production.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }



  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day,
      minute2
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: location_id {
    type: number
    hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: order_taker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_taker_id ;;
  }


  measure: count {
    type: count
#     drill_fields: [detail*]
  }

  measure: sum_order_items{
    type:  sum
    sql: ${line_items.count} ;;
#     drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
#   set: detail {
#     fields: [
#       created_date, locations.name, venues.name, count, sum_order_items
#     ]
#   }
}

# dimension: authorization_credit_card_id {
#   type: number
#   sql: ${TABLE}.authorization_credit_card_id ;;
# }
#
# dimension: balance_due {
#   type: number
#   sql: ${TABLE}.balance_due ;;
# }
#
# dimension_group: batch_processed {
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
#   sql: ${TABLE}.batch_processed_at ;;
# }
#
# dimension_group: claimed {
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
#   sql: ${TABLE}.claimed_at ;;
# }
#
# dimension: claimed_by {
#   type: number
#   sql: ${TABLE}.claimed_by ;;
# }
#
# dimension_group: client_created {
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
#   sql: ${TABLE}.client_created_at ;;
# }
#
# dimension: client_version {
#   type: string
#   sql: ${TABLE}.client_version ;;
# }
#
# dimension: comped_amount {
#   type: number
#   sql: ${TABLE}.comped_amount ;;
# }


# dimension: credit_card_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.credit_card_id ;;
# }
#
# dimension: credit_used {
#   type: number
#   sql: ${TABLE}.credit_used ;;
# }
#
# dimension: deducted_amount {
#   type: number
#   sql: ${TABLE}.deducted_amount ;;
# }
#
# dimension_group: deleted {
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
#   sql: ${TABLE}.deleted_at ;;
# }
#
# dimension: device {
#   type: string
#   sql: ${TABLE}.device ;;
# }
#
# dimension: device_serial_number {
#   type: string
#   sql: ${TABLE}.device_serial_number ;;
# }
#
# dimension: email {
#   type: string
#   sql: ${TABLE}.email ;;
# }
#
# dimension: event_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.event_id ;;
# }
#
# dimension: for_seat_delivery {
#   type: yesno
#   sql: ${TABLE}.for_seat_delivery ;;
# }
#
# dimension: friendly_id {
#   type: number
#   sql: ${TABLE}.friendly_id ;;
# }
#
# dimension: hold {
#   type: yesno
#   sql: ${TABLE}.hold ;;
# }
#
# dimension: instructions {
#   type: string
#   sql: ${TABLE}.instructions ;;
# }
#
#
# dimension: loyalty_account {
#   type: string
#   sql: ${TABLE}.loyalty_account ;;
# }
#
# dimension: name {
#   type: string
#   sql: ${TABLE}.name ;;
# }
#
#
# dimension: partner_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.partner_id ;;
# }
#
# dimension: placement_time {
#   type: number
#   sql: ${TABLE}.placement_time ;;
# }
#
# dimension: printed {
#   type: yesno
#   sql: ${TABLE}.printed ;;
# }
#
# dimension: refunded_amount {
#   type: number
#   sql: ${TABLE}.refunded_amount ;;
# }
#
# dimension: row_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.row_id ;;
# }
#
# dimension: seat {
#   type: string
#   sql: ${TABLE}.seat ;;
# }
#
# dimension: service_location_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.service_location_id ;;
# }
#
# dimension: sold_subtotal {
#   type: number
#   sql: ${TABLE}.sold_subtotal ;;
# }
#
# dimension: state {
#   type: string
#   sql: ${TABLE}.state ;;
# }
#
# dimension: subtotal {
#   type: number
#   sql: ${TABLE}.subtotal ;;
# }
#
# dimension: surcharge {
#   type: number
#   sql: ${TABLE}.surcharge ;;
# }
#
# dimension_group: time_fulfilled {
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
#   sql: ${TABLE}.time_fulfilled ;;
# }
#
# dimension: total {
#   type: number
#   sql: ${TABLE}.total ;;
# }
#
# dimension_group: updated {
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
#   sql: ${TABLE}.updated_at ;;
# }
#
# dimension: user_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.user_id ;;
# }
#
# dimension: uuid {
#   type: string
#   sql: ${TABLE}.uuid ;;
# }
#
# dimension: venue_id {
#   type: number
#   # hidden: yes
#   sql: ${TABLE}.venue_id ;;
# }
#
# dimension: version_code {
#   type: number
#   sql: ${TABLE}.version_code ;;
# }
#
# dimension: voided_amount {
#   type: number
#   sql: ${TABLE}.voided_amount ;;
# }
