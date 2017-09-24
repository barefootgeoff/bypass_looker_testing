view: recipes {
  sql_table_name: bypass_production.recipes ;;

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: organization_id {
    type: number
    hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: venue_id {
    type: number
    hidden: yes
    sql: ${TABLE}.venue_id ;;
  }

  ### MEASURES ###

  measure: number_of_recipes {
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [id, name, items.name]
  }

  measure: cost_of_recipe {
    type: sum
    sql: ${cost} ;;
    value_format_name: usd
    drill_fields: [id,name,cost]
  }


### UNUSED ###

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
#   dimension: notes {
#     type: string
#     sql: ${TABLE}.notes ;;
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
#   dimension: yield_quantity {
#     type: number
#     sql: ${TABLE}.yield_quantity ;;
#   }
#
#   dimension: yield_stock_item_id {
#     type: number
#     sql: ${TABLE}.yield_stock_item_id ;;
#   }
#
#   dimension: yield_unit_of_measure_id {
#     type: number
#     sql: ${TABLE}.yield_unit_of_measure_id ;;
#   }

}
