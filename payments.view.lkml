view: payments {

  sql_table_name: bypass_production.payments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: venue_id {
    type: number
    hidden: yes
    sql: ${TABLE}.venue_id ;;
  }
  dimension: payment_type {
    type:  string
    sql:  ${TABLE}.payment_type ;;
  }
  dimension: amount {
    type:  number
    sql:  ${TABLE}.amount ;;
  }
  dimension: refunded_amount {
    type:  number
    sql:  ${TABLE}.refunded_amount ;;
  }
  dimension: voided_amount {
    type:  number
    sql:  ${TABLE}.voided_amount ;;
  }
  dimension: card_type {
    type:  string
    sql:  ${TABLE}.card_type ;;
  }
  dimension: tip_amount {
    type: number
    sql:  ${TABLE}.tip_amount ;;
  }
  dimension: failed_amount {
    type:  number
    sql:  ${TABLE}.failed_amount ;;
  }
  dimension: state {
    type:  string
    sql:  ${TABLE}.state ;;
  }

## MEASURES ##

  measure: sum_amount {
    type: sum
    sql:  ${amount};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: gross_payments {
    type: sum
    sql:  ${amount};;
    value_format_name: usd
    filters: {
      field: state
      value: "captured, completed, closed"
    }
    drill_fields: [detail*]
  }

  measure: total_tip_amount {
    type: sum
    sql:  ${tip_amount};;
    value_format_name: usd
    filters: {
      field: state
      value: "captured, completed, closed"
    }
    drill_fields: [detail*]
  }

  measure: total_payments {
    type: number
    value_format_name:  usd
    sql:  ${gross_payments} + ${total_tip_amount} ;;
    drill_fields: [individual_payment*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      locations.name, venues.name, sum_amount
    ]
  }

  set: individual_payment {
    fields: [
      payment_type,amount,card_type,tip_amount,order_id
    ]
  }


## UNUSED ##

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: payments {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
