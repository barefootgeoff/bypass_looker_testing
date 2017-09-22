view: items {
  sql_table_name: bypass_production.items ;;

  dimension: external_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.external_item_id ;;
  }

  dimension: id {
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

  dimension: alcohol {
    type: yesno
    hidden: yes
    sql: ${TABLE}.alcohol ;;
  }

## MEASURES ##
  measure: count {
    type: count
    drill_fields: [name, alcohol]
  }


## UNUSED ##

#   dimension: archived {
#     type: yesno
#     sql: ${TABLE}.archived ;;
#   }
#
#   dimension_group: archived {
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
#     sql: ${TABLE}.archived_at ;;
#   }
#
#   dimension: base_price {
#     type: number
#     sql: ${TABLE}.base_price ;;
#   }
#
#   dimension: by_weight {
#     type: yesno
#     sql: ${TABLE}.by_weight ;;
#   }
#
#   dimension: catalog {
#     type: string
#     sql: ${TABLE}.catalog ;;
#   }
#
#   dimension: category_id {
#     type: number
#     sql: ${TABLE}.category_id ;;
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
#   dimension: description {
#     type: string
#     sql: ${TABLE}.description ;;
#   }
#
#   dimension: display_color {
#     type: string
#     sql: ${TABLE}.display_color ;;
#   }
#
#
#
#   dimension: image_content_type {
#     type: string
#     sql: ${TABLE}.image_content_type ;;
#   }
#
#   dimension: image_file_name {
#     type: string
#     sql: ${TABLE}.image_file_name ;;
#   }
#
#   dimension: image_file_size {
#     type: number
#     sql: ${TABLE}.image_file_size ;;
#   }
#
#   dimension_group: image_updated {
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
#     sql: ${TABLE}.image_updated_at ;;
#   }
#
#   dimension: menu_name {
#     type: string
#     sql: ${TABLE}.menu_name ;;
#   }
#
#
#
#
#   dimension: alternate_price {
#     type: number
#     sql: ${TABLE}.alternate_price ;;
#   }
#
#   dimension: alternate_price_day {
#     type: number
#     sql: ${TABLE}.alternate_price_day ;;
#   }
#   dimension: organization_id {
#     type: number
#     sql: ${TABLE}.organization_id ;;
#   }
#
#   dimension: position {
#     type: number
#     sql: ${TABLE}.position ;;
#   }
#
#   dimension: reporting_group_id {
#     type: number
#     sql: ${TABLE}.reporting_group_id ;;
#   }
#
#   dimension: sides_group_id {
#     type: number
#     sql: ${TABLE}.sides_group_id ;;
#   }
#
#   dimension: sku_prefix {
#     type: number
#     sql: ${TABLE}.sku_prefix ;;
#   }
#
#   dimension: sync_hash {
#     type: string
#     sql: ${TABLE}.sync_hash ;;
#   }
#
#   dimension: tare_weight {
#     type: number
#     sql: ${TABLE}.tare_weight ;;
#   }
#
#   dimension: tax_group_id {
#     type: number
#     sql: ${TABLE}.tax_group_id ;;
#   }
#
#   dimension: toppings_group_id {
#     type: number
#     sql: ${TABLE}.toppings_group_id ;;
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
#   dimension: upsale_frequency {
#     type: string
#     sql: ${TABLE}.upsale_frequency ;;
#   }
#
#
#   dimension: weight {
#     type: number
#     sql: ${TABLE}.weight ;;
#   }
#
}
