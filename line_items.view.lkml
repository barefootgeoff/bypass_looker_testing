view: line_items {
  sql_table_name: bypass_production.line_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }


  dimension: order_id {
    type: number
    hidden: yes
    sql: ${TABLE}.order_id ;;
  }


  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: item_id {
    type: number
    hidden:  yes
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_variant_id {
    type: number
    hidden: yes
    sql: ${TABLE}.item_variant_id ;;
  }

### MEASURES ###

  measure: number_of_items_sold {
    type: sum
    sql: ${count} ;;
    drill_fields: [id, items.name,line_items.count]
  }

  measure: count_of_unique_items {
    type: count_distinct
    sql: ${item_id} ;;
    drill_fields: [items.id,items.name]
  }

# measure: number_sold {
#   type: count
# #   sql_distinct_key: ${item_id} ;;
# #   sql: ${count} ;;
#   drill_fields: [items.name,count]
# }

### DRILL DOWNS ###

#   set:  ordered_items_detail{
#     fields: [
#       orders.id, number_of_items_in_order
#     ]
#   }



### CURRENTLY UNUSED FIELDS
#
#   dimension: cancelled {
#     type: yesno
#     sql: ${TABLE}.cancelled ;;
#   }
#
#   dimension: cost {
#     type: number
#     sql: ${TABLE}.cost ;;
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
#   dimension: deal_id {
#     type: number
#     sql: ${TABLE}.deal_id ;;
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
#   dimension: fulfillment_group_id {
#     type: number
#     sql: ${TABLE}.fulfillment_group_id ;;
#   }
#
#   dimension: gross_price {
#     type: number
#     sql: ${TABLE}.gross_price ;;
#   }
#
#   dimension: hold {
#     type: yesno
#     sql: ${TABLE}.hold ;;
#   }
#
#   dimension: notes {
#     type: string
#     sql: ${TABLE}.notes ;;
#   }
#
#   dimension: printer_name {
#     type: string
#     sql: ${TABLE}.printer_name ;;
#   }
#
#   dimension: refunded {
#     type: yesno
#     sql: ${TABLE}.refunded ;;
#   }
#
#   dimension: refunded_payment_uuid {
#     type: string
#     sql: ${TABLE}.refunded_payment_uuid ;;
#   }
#
#   dimension: return_to_inventory {
#     type: yesno
#     sql: ${TABLE}.return_to_inventory ;;
#   }
#
#   dimension: side_id {
#     type: number
#     sql: ${TABLE}.side_id ;;
#   }
#
#   dimension: tax_inclusive {
#     type: yesno
#     sql: ${TABLE}.tax_inclusive ;;
#   }
#
#   dimension: unit_price {
#     type: number
#     sql: ${TABLE}.unit_price ;;
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
#   dimension: upsale_parent_id {
#     type: number
#     sql: ${TABLE}.upsale_parent_id ;;
#   }
#
#   dimension: uuid {
#     type: string
#     sql: ${TABLE}.uuid ;;
#   }
#
}
