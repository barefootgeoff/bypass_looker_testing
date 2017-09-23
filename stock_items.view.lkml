view: stock_items {
  sql_table_name: bypass_production.stock_items ;;

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
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

  dimension: organization_id {
    type: number
    hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: avg_unit_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.avg_unit_cost ;;
  }

  ### MEASURES ###

  measure: count {
    type: count
    drill_fields: [id, name, item_variants.count]
  }


  ### UNUSED ###

#   dimension: countable {
#     type: yesno
#     sql: ${TABLE}.countable ;;
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
#   dimension: default_cost {
#     type: number
#     sql: ${TABLE}.default_cost ;;
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
#   dimension: disable_cost_queues {
#     type: yesno
#     sql: ${TABLE}.disable_cost_queues ;;
#   }
#
#   dimension: enable_multiple_countables {
#     type: yesno
#     sql: ${TABLE}.enable_multiple_countables ;;
#   }
#
#   dimension: inventory_category_id {
#     type: number
#     sql: ${TABLE}.inventory_category_id ;;
#   }
#
#   dimension: plu {
#     type: string
#     sql: ${TABLE}.plu ;;
#   }
#
#   dimension: properties {
#     type: string
#     sql: ${TABLE}.properties ;;
#   }
#
#   dimension: reporting_group_id {
#     type: number
#     sql: ${TABLE}.reporting_group_id ;;
#   }
#
#   dimension: shelf_life {
#     type: number
#     sql: ${TABLE}.shelf_life ;;
#   }
#
#   dimension: sku {
#     type: string
#     sql: ${TABLE}.sku ;;
#   }
#
#   dimension: storage_area {
#     type: string
#     sql: ${TABLE}.storage_area ;;
#   }
#
#   dimension: type {
#     type: string
#     sql: ${TABLE}.type ;;
#   }
#
#   dimension: upc {
#     type: string
#     sql: ${TABLE}.upc ;;
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

}
