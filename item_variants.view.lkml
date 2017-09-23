view: item_variants {
  sql_table_name: bypass_production.item_variants ;;

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

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: item_id {
    type: number
    hidden: yes
    sql: ${TABLE}.item_id ;;
  }

  dimension: recipe_id {
    type: number
    hidden: yes
    sql: ${TABLE}.recipe_id ;;
  }

  dimension: stock_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stock_item_id ;;
  }


  ### MEASURES ###


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      stock_items.id,
      stock_items.name,
      recipes.id,
      recipes.name
    ]
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
#   dimension: deleted_at {
#     type: string
#     sql: ${TABLE}.deleted_at ;;
#   }
#
#   dimension: depth {
#     type: number
#     sql: ${TABLE}.depth ;;
#   }
#
#   dimension: height {
#     type: number
#     sql: ${TABLE}.height ;;
#   }
#
#   dimension: is_master {
#     type: yesno
#     sql: ${TABLE}.is_master ;;
#   }
#   dimension: item_weight {
#     type: number
#     sql: ${TABLE}.item_weight ;;
#   }
#
#   dimension: plu {
#     type: string
#     sql: ${TABLE}.plu ;;
#   }
#
#   dimension: position {
#     type: number
#     sql: ${TABLE}.position ;;
#   }
#
#   dimension: properties {
#     type: string
#     sql: ${TABLE}.properties ;;
#   }
#
#   dimension: sale_price {
#     type: number
#     sql: ${TABLE}.sale_price ;;
#   }
#
#   dimension: sku {
#     type: string
#     sql: ${TABLE}.sku ;;
#   }
#
#   dimension: track_inventory {
#     type: yesno
#     sql: ${TABLE}.track_inventory ;;
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
#
#   dimension: width {
#     type: number
#     sql: ${TABLE}.width ;;
#   }

}
