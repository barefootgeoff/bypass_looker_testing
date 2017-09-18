view: payments {
  sql_table_name: bypass_production.payments ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  measure: count {
    type: count
    drill_fields: [tip_payment_id, name]
  }

  dimension: failed_amount {
    type: number
    sql: ${TABLE}.failed_amount ;;
  }

  dimension: last_four_digits {
    type: string
    sql: ${TABLE}.last_four_digits ;;
  }

  dimension: expiration {
    type: string
    sql: ${TABLE}.expiration ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: tip_payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tip_payment_id ;;
  }


# UNUSED
#
####
#
#   dimension: account_id {
#     type: number
#     sql: ${TABLE}.account_id ;;
#   }
#
#   dimension: account_reference {
#     type: string
#     sql: ${TABLE}.account_reference ;;
#   }
#
#   dimension: approval_code {
#     type: string
#     sql: ${TABLE}.approval_code ;;
#   }
#
#   dimension: authorization_total {
#     type: number
#     sql: ${TABLE}.authorization_total ;;
#   }
#
#   dimension: batch_id {
#     type: string
#     sql: ${TABLE}.batch_id ;;
#   }
#
#   dimension_group: batched {
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
#     sql: ${TABLE}.batched_at ;;
#   }
#
#   dimension: card_type {
#     type: string
#     sql: ${TABLE}.card_type ;;
#   }
#
#   dimension: change_due {
#     type: number
#     sql: ${TABLE}.change_due ;;
#   }
#
#   dimension_group: client_created {
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
#     sql: ${TABLE}.client_created_at ;;
#   }
#
#   dimension: comped_amount {
#     type: number
#     sql: ${TABLE}.comped_amount ;;
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
#   dimension: credit_card_id {
#     type: number
#     sql: ${TABLE}.credit_card_id ;;
#   }
#
#   dimension: device_serial_number {
#     type: string
#     sql: ${TABLE}.device_serial_number ;;
#   }
#
#   dimension: email {
#     type: string
#     sql: ${TABLE}.email ;;
#   }
#
#
#
#   dimension: id {
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: is_tip {
#     type: yesno
#     sql: ${TABLE}.is_tip ;;
#   }
#
#
#   dimension: merchant_account_id {
#     type: number
#     sql: ${TABLE}.merchant_account_id ;;
#   }
#
#
#   dimension: original_transaction_id {
#     type: string
#     sql: ${TABLE}.original_transaction_id ;;
#   }
#
#   dimension: parent_payment_uuid {
#     type: string
#     sql: ${TABLE}.parent_payment_uuid ;;
#   }
#
#
#   dimension: processor {
#     type: string
#     sql: ${TABLE}.processor ;;
#   }
#
#   dimension: refunded_amount {
#     type: number
#     sql: ${TABLE}.refunded_amount ;;
#   }
#
#   dimension: state {
#     type: string
#     sql: ${TABLE}.state ;;
#   }
#
#   dimension: status_code {
#     type: string
#     sql: ${TABLE}.status_code ;;
#   }
#
#   dimension: status_message {
#     type: string
#     sql: ${TABLE}.status_message ;;
#   }
#
#   dimension: stored_value_code {
#     type: string
#     sql: ${TABLE}.stored_value_code ;;
#   }
#
#
#   dimension: token {
#     type: string
#     sql: ${TABLE}.token ;;
#   }
#
#   dimension: transaction_id {
#     type: string
#     sql: ${TABLE}.transaction_id ;;
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
#   dimension: user_id {
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: uuid {
#     type: string
#     sql: ${TABLE}.uuid ;;
#   }
#
#   dimension: voided_amount {
#     type: number
#     sql: ${TABLE}.voided_amount ;;
#   }
#
}
