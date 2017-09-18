connection: "bypassro"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: orders {
  label: "Order - Locations, Items, Payments"
  join: locations {
    type: left_outer
    sql_on: ${orders.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
  join: venues {
    type: left_outer
    sql_on: ${locations.venue_id} = ${venues.id} ;;
    relationship: many_to_many
  }
  join: line_items {
    type: left_outer
    sql_on: ${line_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
  join: payments {
    type: left_outer
    sql_on: ${payments.order_id} = ${orders.id} ;;
    relationship: one_to_one
  }
}

#   joins:
#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: accountables
#   joins:
#     - join: roles
#       type: left_outer
#       sql_on: ${accountables.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${accountables.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: accountables_venues
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${accountables_venues.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: accounts
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${accounts.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: addon_categories
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${addon_categories.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: addon_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${addon_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${addon_groups.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: addon_groups_addons
#   joins:
#     - join: addons
#       type: left_outer
#       sql_on: ${addon_groups_addons.addon_id} = ${addons.id}
#       relationship: many_to_one

#     - join: addon_groups
#       type: left_outer
#       sql_on: ${addon_groups_addons.addon_group_id} = ${addon_groups.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${addons.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${addons.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${addons.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: addon_groups_items
#   joins:
#     - join: item_variants
#       type: left_outer
#       sql_on: ${addon_groups_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: addon_groups
#       type: left_outer
#       sql_on: ${addon_groups_items.addon_group_id} = ${addon_groups.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${item_variants.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: addons
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${addons.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${addons.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${addons.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: adjustment_configuration_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${adjustment_configuration_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: adjustment_configuration_snapshots
#   joins:
#     - join: adjustment_configurations
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.adjustment_configuration_id} = ${adjustment_configurations.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: line_items
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${adjustment_configurations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: adjustment_configuration_groups
#       type: left_outer
#       sql_on: ${adjustment_configurations.adjustment_configuration_group_id} = ${adjustment_configuration_groups.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: adjustment_configurations
#   joins:
#     - join: tax_groups
#       type: left_outer
#       sql_on: ${adjustment_configurations.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${adjustment_configurations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: adjustment_configuration_groups
#       type: left_outer
#       sql_on: ${adjustment_configurations.adjustment_configuration_group_id} = ${adjustment_configuration_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${tax_groups.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: adjustments
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${adjustments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: line_items
#       type: left_outer
#       sql_on: ${adjustments.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: admin_roles
#   joins:
#     - join: roles
#       type: left_outer
#       sql_on: ${admin_roles.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${admin_roles.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${admin_roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${admin_roles.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: admins
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${admins.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${admins.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: admins_venues
#   joins:
#     - join: admins
#       type: left_outer
#       sql_on: ${admins_venues.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${admins_venues.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${admins.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: ads
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${ads.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: api_accounts
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${api_accounts.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${api_accounts.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${api_accounts.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: audits
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${audits.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: booking_menus
#   joins:
#     - join: bookings
#       type: left_outer
#       sql_on: ${booking_menus.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${booking_menus.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${booking_menus.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${bookings.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${bookings.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${bookings.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${bookings.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${menus.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: bookings
#   joins:
#     - join: suites
#       type: left_outer
#       sql_on: ${bookings.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${bookings.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${bookings.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${bookings.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${suites.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: bypass_gateway_payment_details

# - explore: card_numbers

# - explore: cards
#   joins:
#     - join: accountables
#       type: left_outer
#       sql_on: ${cards.accountable_id} = ${accountables.ex_accountable_id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${accountables.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${accountables.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: cash_drops
#   joins:
#     - join: tills
#       type: left_outer
#       sql_on: ${cash_drops.till_id} = ${tills.combined_till_id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${cash_drops.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${tills.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${tills.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${events.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: cash_drops_other_amount
#   joins:
#     - join: cash_drops
#       type: left_outer
#       sql_on: ${cash_drops_other_amount.cash_drop_id} = ${cash_drops.id}
#       relationship: many_to_one

#     - join: cash_media_types
#       type: left_outer
#       sql_on: ${cash_drops_other_amount.cash_media_type_id} = ${cash_media_types.id}
#       relationship: many_to_one

#     - join: tills
#       type: left_outer
#       sql_on: ${cash_drops.till_id} = ${tills.combined_till_id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${cash_drops.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${tills.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${tills.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${events.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: cash_media_types
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${cash_media_types.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: categories
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${categories.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${categories.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: check_adjustments
#   joins:
#     - join: checks
#       type: left_outer
#       sql_on: ${check_adjustments.check_id} = ${checks.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${checks.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: check_line_items
#   joins:
#     - join: checks
#       type: left_outer
#       sql_on: ${check_line_items.check_id} = ${checks.id}
#       relationship: many_to_one

#     - join: line_items
#       type: left_outer
#       sql_on: ${check_line_items.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${checks.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: check_payment_details
#   joins:
#     - join: payments
#       type: left_outer
#       sql_on: ${check_payment_details.payment_id} = ${payments.tip_payment_id}
#       relationship: many_to_one

#     - join: checks
#       type: left_outer
#       sql_on: ${check_payment_details.check_id} = ${checks.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${payments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: merchant_accounts
#       type: left_outer
#       sql_on: ${payments.merchant_account_id} = ${merchant_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${payments.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: accounts
#       type: left_outer
#       sql_on: ${payments.account_id} = ${accounts.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: checks
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${checks.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: clockwork_database_events

# - explore: contacts

# - explore: cost_queues
#   joins:
#     - join: stock_items
#       type: left_outer
#       sql_on: ${cost_queues.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: suppliers
#       type: left_outer
#       sql_on: ${cost_queues.supplier_id} = ${suppliers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${stock_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: coupons
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${coupons.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${coupons.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${coupons.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: credit_card_authorized_signers
#   joins:
#     - join: credit_cards
#       type: left_outer
#       sql_on: ${credit_card_authorized_signers.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${credit_cards.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${credit_cards.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${users.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: credit_cards
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${credit_cards.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${credit_cards.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${users.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: credits
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${credits.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${credits.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${users.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: custom_tenders
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${custom_tenders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: customers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${customers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: customizations
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${customizations.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: toppings
#       type: left_outer
#       sql_on: ${customizations.topping_id} = ${toppings.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: deals
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${deals.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: default_transfer_source_assignments
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${default_transfer_source_assignments.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: delayed_jobs
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${delayed_jobs.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: denominations

# - explore: device_registrations
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${device_registrations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: device_subscriptions
#   joins:
#     - join: device_registrations
#       type: left_outer
#       sql_on: ${device_subscriptions.device_registration_id} = ${device_registrations.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${device_subscriptions.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${device_registrations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: emails

# - explore: event_locations
#   joins:
#     - join: events
#       type: left_outer
#       sql_on: ${event_locations.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${event_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${events.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: event_template_location_menus
#   joins:
#     - join: event_template_locations
#       type: left_outer
#       sql_on: ${event_template_location_menus.event_template_location_id} = ${event_template_locations.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${event_template_location_menus.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${event_template_locations.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${event_template_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${event_templates.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: event_template_locations
#   joins:
#     - join: event_templates
#       type: left_outer
#       sql_on: ${event_template_locations.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${event_template_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${event_templates.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: event_templates
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${event_templates.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: events
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${events.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: external_auth_users

# - explore: fulfillment_groups
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${fulfillment_groups.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${fulfillment_groups.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${fulfillment_groups.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${fulfillment_groups.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${fulfillment_groups.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: goose_db_version

# - explore: ingredients
#   joins:
#     - join: stock_items
#       type: left_outer
#       sql_on: ${ingredients.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${ingredients.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${stock_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: inventory_categories
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${inventory_categories.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${inventory_categories.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: inventory_item_audits
#   joins:
#     - join: inventory_items
#       type: left_outer
#       sql_on: ${inventory_item_audits.inventory_item_id} = ${inventory_items.id}
#       relationship: many_to_one

#     - join: audits
#       type: left_outer
#       sql_on: ${inventory_item_audits.audit_id} = ${audits.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${inventory_items.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${inventory_items.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: storage_areas
#       type: left_outer
#       sql_on: ${inventory_items.storage_area_id} = ${storage_areas.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one


# - explore: inventory_items
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${inventory_items.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${inventory_items.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: storage_areas
#       type: left_outer
#       sql_on: ${inventory_items.storage_area_id} = ${storage_areas.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one


# - explore: inventory_locations
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${inventory_locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: inventory_movements
#   joins:
#     - join: inventory_items
#       type: left_outer
#       sql_on: ${inventory_movements.inventory_item_id} = ${inventory_items.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${inventory_movements.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: standsheet_item_rows
#       type: left_outer
#       sql_on: ${inventory_movements.standsheet_item_row_id} = ${standsheet_item_rows.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${inventory_movements.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${inventory_items.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${inventory_items.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: storage_areas
#       type: left_outer
#       sql_on: ${inventory_items.storage_area_id} = ${storage_areas.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: standsheets
#       type: left_outer
#       sql_on: ${standsheet_item_rows.standsheet_id} = ${standsheets.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${standsheets.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one


# - explore: inventory_movements_lookup
#   joins:
#     - join: inventory_movements
#       type: left_outer
#       sql_on: ${inventory_movements_lookup.inventory_movement_id} = ${inventory_movements.id}
#       relationship: many_to_one

#     - join: inventory_items
#       type: left_outer
#       sql_on: ${inventory_movements.inventory_item_id} = ${inventory_items.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${inventory_movements.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: standsheet_item_rows
#       type: left_outer
#       sql_on: ${inventory_movements.standsheet_item_row_id} = ${standsheet_item_rows.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${inventory_movements.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${inventory_items.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${inventory_items.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: storage_areas
#       type: left_outer
#       sql_on: ${inventory_items.storage_area_id} = ${storage_areas.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: standsheets
#       type: left_outer
#       sql_on: ${standsheet_item_rows.standsheet_id} = ${standsheets.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${standsheets.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one


# - explore: inventory_transfers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${inventory_transfers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${inventory_transfers.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: inventory_transfers_transfer_requests

# - explore: item_option_types
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${item_option_types.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: option_types
#       type: left_outer
#       sql_on: ${item_option_types.option_type_id} = ${option_types.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: item_parts
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${item_parts.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: item_types
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${item_types.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: item_variants
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${item_variants.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: items
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: items_imports
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${items_imports.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: line_item_addons
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${line_item_addons.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: line_item_selection_groups
#       type: left_outer
#       sql_on: ${line_item_addons.line_item_selection_group_id} = ${line_item_selection_groups.id}
#       relationship: many_to_one

#     - join: addons
#       type: left_outer
#       sql_on: ${line_item_addons.addon_id} = ${addons.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: addon_groups
#       type: left_outer
#       sql_on: ${line_item_selection_groups.addon_group_id} = ${addon_groups.id}
#       relationship: many_to_one


# - explore: line_item_restaurant_details
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${line_item_restaurant_details.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: line_item_selection_groups
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${line_item_selection_groups.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: addon_groups
#       type: left_outer
#       sql_on: ${line_item_selection_groups.addon_group_id} = ${addon_groups.id}
#       relationship: many_to_one

#     - join: line_item_addons
#       type: left_outer
#       sql_on: ${line_item_selection_groups.line_item_addon_id} = ${line_item_addons.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: addons
#       type: left_outer
#       sql_on: ${line_item_addons.addon_id} = ${addons.id}
#       relationship: many_to_one


# - explore: line_item_weight_details
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${line_item_weight_details.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: line_items
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: line_items_exclusions
#   joins:
#     - join: line_items
#       type: left_outer
#       sql_on: ${line_items_exclusions.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: line_item_selection_groups
#       type: left_outer
#       sql_on: ${line_items_exclusions.line_item_selection_group_id} = ${line_item_selection_groups.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${line_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: addon_groups
#       type: left_outer
#       sql_on: ${line_item_selection_groups.addon_group_id} = ${addon_groups.id}
#       relationship: many_to_one

#     - join: line_item_addons
#       type: left_outer
#       sql_on: ${line_item_selection_groups.line_item_addon_id} = ${line_item_addons.id}
#       relationship: many_to_one

#     - join: addons
#       type: left_outer
#       sql_on: ${line_item_addons.addon_id} = ${addons.id}
#       relationship: many_to_one


# - explore: location_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${location_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: location_menus
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${location_menus.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${location_menus.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${location_menus.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${menus.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one


# - explore: location_pre_order_menus
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${location_pre_order_menus.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${location_pre_order_menus.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${location_pre_order_menus.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${menus.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one


# - explore: locations
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: login_sessions
#   joins:
#     - join: accountables
#       type: left_outer
#       sql_on: ${login_sessions.accountable_id} = ${accountables.ex_accountable_id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${accountables.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${accountables.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: loyalty_providers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${loyalty_providers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: menu_items
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${menu_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: print_groups
#       type: left_outer
#       sql_on: ${menu_items.print_group_id} = ${print_groups.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${menu_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${menu_items.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: menus
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${menus.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${menus.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: merchant_accounts
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${merchant_accounts.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${terminals.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: notifications
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${notifications.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${notifications.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one


# - explore: oauth_access_grants

# - explore: oauth_access_tokens

# - explore: oauth_applications

# - explore: offline_payment_data

# - explore: option_type_values
#   joins:
#     - join: option_types
#       type: left_outer
#       sql_on: ${option_type_values.option_type_id} = ${option_types.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${option_types.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: option_types
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${option_types.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: order_restaurant_details
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${order_restaurant_details.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: order_takers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${order_takers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: order_vending_room_details
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${order_vending_room_details.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: vendors
#       type: left_outer
#       sql_on: ${order_vending_room_details.vendor_id} = ${vendors.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one


# - explore: organizations

# - explore: par_levels

# - explore: part_counts
#   joins:
#     - join: order_takers
#       type: left_outer
#       sql_on: ${part_counts.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${order_takers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: part_transfers
#   joins:
#     - join: order_takers
#       type: left_outer
#       sql_on: ${part_transfers.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${order_takers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: partners

# - explore: payment_account_payments
#   joins:
#     - join: payments
#       type: left_outer
#       sql_on: ${payment_account_payments.payment_id} = ${payments.tip_payment_id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${payments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: merchant_accounts
#       type: left_outer
#       sql_on: ${payments.merchant_account_id} = ${merchant_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${payments.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: accounts
#       type: left_outer
#       sql_on: ${payments.account_id} = ${accounts.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: payment_batches
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${payment_batches.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${payment_batches.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: payments
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${payments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: merchant_accounts
#       type: left_outer
#       sql_on: ${payments.merchant_account_id} = ${merchant_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${payments.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: accounts
#       type: left_outer
#       sql_on: ${payments.account_id} = ${accounts.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: paypal_accounts
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${paypal_accounts.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: possible_combinations
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${possible_combinations.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${possible_combinations.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: possible_customizations
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${possible_customizations.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: toppings
#       type: left_outer
#       sql_on: ${possible_customizations.topping_id} = ${toppings.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: pre_order_adjustments
#   joins:
#     - join: pre_orders
#       type: left_outer
#       sql_on: ${pre_order_adjustments.pre_order_id} = ${pre_orders.id}
#       relationship: many_to_one

#     - join: adjustment_configuration_snapshots
#       type: left_outer
#       sql_on: ${pre_order_adjustments.adjustment_configuration_snapshot_id} = ${adjustment_configuration_snapshots.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${pre_orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${pre_orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${pre_orders.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${pre_orders.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: bookings
#       type: left_outer
#       sql_on: ${pre_orders.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${service_locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: adjustment_configurations
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.adjustment_configuration_id} = ${adjustment_configurations.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: line_items
#       type: left_outer
#       sql_on: ${adjustment_configuration_snapshots.line_item_id} = ${line_items.id}
#       relationship: many_to_one

#     - join: adjustment_configuration_groups
#       type: left_outer
#       sql_on: ${adjustment_configurations.adjustment_configuration_group_id} = ${adjustment_configuration_groups.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${line_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: sides
#       type: left_outer
#       sql_on: ${line_items.side_id} = ${sides.id}
#       relationship: many_to_one

#     - join: deals
#       type: left_outer
#       sql_on: ${line_items.deal_id} = ${deals.id}
#       relationship: many_to_one

#     - join: fulfillment_groups
#       type: left_outer
#       sql_on: ${line_items.fulfillment_group_id} = ${fulfillment_groups.id}
#       relationship: many_to_one

#     - join: item_variants
#       type: left_outer
#       sql_on: ${line_items.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one


# - explore: pre_order_item_selections
#   joins:
#     - join: addons
#       type: left_outer
#       sql_on: ${pre_order_item_selections.addon_id} = ${addons.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${addons.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${addons.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${addons.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: pre_order_items
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${pre_order_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: pre_orders
#       type: left_outer
#       sql_on: ${pre_order_items.pre_order_id} = ${pre_orders.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${pre_orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${pre_orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${pre_orders.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${pre_orders.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: bookings
#       type: left_outer
#       sql_on: ${pre_orders.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one


# - explore: pre_order_payments
#   joins:
#     - join: pre_orders
#       type: left_outer
#       sql_on: ${pre_order_payments.pre_order_id} = ${pre_orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${pre_order_payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${pre_orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${pre_orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${pre_orders.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${pre_orders.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: bookings
#       type: left_outer
#       sql_on: ${pre_orders.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${service_locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one


# - explore: pre_order_selection_groups
#   joins:
#     - join: pre_order_items
#       type: left_outer
#       sql_on: ${pre_order_selection_groups.pre_order_item_id} = ${pre_order_items.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${pre_order_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: pre_orders
#       type: left_outer
#       sql_on: ${pre_order_items.pre_order_id} = ${pre_orders.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${pre_orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${pre_orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${pre_orders.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${pre_orders.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: bookings
#       type: left_outer
#       sql_on: ${pre_orders.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one


# - explore: pre_orders
#   joins:
#     - join: service_locations
#       type: left_outer
#       sql_on: ${pre_orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${pre_orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${pre_orders.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${pre_orders.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: bookings
#       type: left_outer
#       sql_on: ${pre_orders.booking_id} = ${bookings.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${service_locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${orders.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one


# - explore: print_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${print_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: promotion_items
#   joins:
#     - join: promotions
#       type: left_outer
#       sql_on: ${promotion_items.promotion_id} = ${promotions.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${promotion_items.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${promotion_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: promotional_credits
#   joins:
#     - join: teams
#       type: left_outer
#       sql_on: ${promotional_credits.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${teams.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: promotions
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${promotions.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${promotions.item_ids} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one


# - explore: purchase_order_items
#   joins:
#     - join: purchase_orders
#       type: left_outer
#       sql_on: ${purchase_order_items.purchase_order_id} = ${purchase_orders.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${purchase_order_items.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${purchase_orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: suppliers
#       type: left_outer
#       sql_on: ${purchase_orders.supplier_id} = ${suppliers.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one


# - explore: purchase_orders
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${purchase_orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: suppliers
#       type: left_outer
#       sql_on: ${purchase_orders.supplier_id} = ${suppliers.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: recipes
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${recipes.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${recipes.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: report_templates
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${report_templates.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${report_templates.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one


# - explore: reporting_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${reporting_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${reporting_groups.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: reports
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${reports.location_ids} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${reports.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${reports.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: admins
#       type: left_outer
#       sql_on: ${reports.admin_id} = ${admins.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: roles
#       type: left_outer
#       sql_on: ${admins.role_id} = ${roles.id}
#       relationship: many_to_one


# - explore: role_permission_versions
#   joins:
#     - join: items
#       type: left_outer
#       sql_on: ${role_permission_versions.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: role_permissions
#   joins:
#     - join: roles
#       type: left_outer
#       sql_on: ${role_permissions.role_id} = ${roles.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${roles.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: roles
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${roles.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${roles.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: rows

# - explore: schema_migrations

# - explore: sequence_data

# - explore: service_locations
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${service_locations.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${service_locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: sessions

# - explore: sides
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${sides.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: signatures
#   joins:
#     - join: payments
#       type: left_outer
#       sql_on: ${signatures.payment_id} = ${payments.tip_payment_id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${payments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: merchant_accounts
#       type: left_outer
#       sql_on: ${payments.merchant_account_id} = ${merchant_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${payments.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: accounts
#       type: left_outer
#       sql_on: ${payments.account_id} = ${accounts.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: standsheet_item_rows
#   joins:
#     - join: standsheets
#       type: left_outer
#       sql_on: ${standsheet_item_rows.standsheet_id} = ${standsheets.id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${standsheet_item_rows.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${standsheets.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${standsheets.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${standsheets.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one


# - explore: standsheets
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${standsheets.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${standsheets.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${standsheets.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: stock_items
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${stock_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: storage_areas
#   joins:
#     - join: locations
#       type: left_outer
#       sql_on: ${storage_areas.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${locations.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: stored_value_systems
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${stored_value_systems.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${stored_value_systems.userid} = ${users.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${stored_value_systems.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: vendors
#       type: left_outer
#       sql_on: ${stored_value_systems.vendor_id} = ${vendors.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: suite_account_menus
#   joins:
#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${suite_account_menus.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: menus
#       type: left_outer
#       sql_on: ${suite_account_menus.menu_id} = ${menus.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${suite_account_menus.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${menus.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: suite_account_users
#   joins:
#     - join: suite_accounts
#       type: left_outer
#       sql_on: ${suite_account_users.suite_account_id} = ${suite_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${suite_account_users.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${suites.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: suite_accounts
#   joins:
#     - join: suites
#       type: left_outer
#       sql_on: ${suite_accounts.suite_id} = ${suites.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${suites.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: suites
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${suites.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: suppliers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${suppliers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: swipers
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${swipers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: taggings
#   joins:
#     - join: tags
#       type: left_outer
#       sql_on: ${taggings.tag_id} = ${tags.id}
#       relationship: many_to_one


# - explore: tags

# - explore: tax_groups
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${tax_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${tax_groups.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: tax_rates
#   joins:
#     - join: tax_groups
#       type: left_outer
#       sql_on: ${tax_rates.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${tax_groups.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${tax_groups.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: taxonomy_categories

# - explore: taxonomy_groupings
#   joins:
#     - join: taxonomy_options
#       type: left_outer
#       sql_on: ${taxonomy_groupings.taxonomy_option_id} = ${taxonomy_options.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${taxonomy_groupings.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: taxonomy_links
#   joins:
#     - join: taxonomy_groupings
#       type: left_outer
#       sql_on: ${taxonomy_links.taxonomy_grouping_id} = ${taxonomy_groupings.id}
#       relationship: many_to_one

#     - join: taxonomy_options
#       type: left_outer
#       sql_on: ${taxonomy_groupings.taxonomy_option_id} = ${taxonomy_options.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${taxonomy_groupings.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: taxonomy_options
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${taxonomy_options.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: teams
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${teams.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: terminals
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${terminals.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${terminals.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: ticket_acceptance_codes
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${ticket_acceptance_codes.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: ticketmaster_settings
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${ticketmaster_settings.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: tickets
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${tickets.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${tickets.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: tills
#   joins:
#     - join: order_takers
#       type: left_outer
#       sql_on: ${tills.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${tills.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${tills.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${order_takers.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one


# - explore: tip_details
#   joins:
#     - join: payments
#       type: left_outer
#       sql_on: ${tip_details.payment_id} = ${payments.tip_payment_id}
#       relationship: many_to_one

#     - join: orders
#       type: left_outer
#       sql_on: ${payments.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: credit_cards
#       type: left_outer
#       sql_on: ${payments.credit_card_id} = ${credit_cards.id}
#       relationship: many_to_one

#     - join: merchant_accounts
#       type: left_outer
#       sql_on: ${payments.merchant_account_id} = ${merchant_accounts.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${payments.user_id} = ${users.id}
#       relationship: many_to_one

#     - join: accounts
#       type: left_outer
#       sql_on: ${payments.account_id} = ${accounts.id}
#       relationship: many_to_one

#     - join: locations
#       type: left_outer
#       sql_on: ${orders.location_id} = ${locations.id}
#       relationship: many_to_one

#     - join: service_locations
#       type: left_outer
#       sql_on: ${orders.service_location_id} = ${service_locations.id}
#       relationship: many_to_one

#     - join: rows
#       type: left_outer
#       sql_on: ${orders.row_id} = ${rows.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${orders.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: order_takers
#       type: left_outer
#       sql_on: ${orders.order_taker_id} = ${order_takers.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${orders.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: events
#       type: left_outer
#       sql_on: ${orders.event_id} = ${events.id}
#       relationship: many_to_one

#     - join: location_groups
#       type: left_outer
#       sql_on: ${locations.location_group_id} = ${location_groups.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${locations.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: event_templates
#       type: left_outer
#       sql_on: ${events.event_template_id} = ${event_templates.id}
#       relationship: many_to_one

#     - join: terminals
#       type: left_outer
#       sql_on: ${merchant_accounts.terminal_id} = ${terminals.id}
#       relationship: many_to_one

#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one


# - explore: tooltips
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${tooltips.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: toppings
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${toppings.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: units_of_measure
#   joins:
#     - join: stock_items
#       type: left_outer
#       sql_on: ${units_of_measure.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${stock_items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${stock_items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${stock_items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one


# - explore: upsale_statistics

# - explore: upsales

# - explore: users
#   joins:
#     - join: customers
#       type: left_outer
#       sql_on: ${users.customer_id} = ${customers.id}
#       relationship: many_to_one

#     - join: teams
#       type: left_outer
#       sql_on: ${users.team_id} = ${teams.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${users.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${users.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: variant_option_values
#   joins:
#     - join: item_variants
#       type: left_outer
#       sql_on: ${variant_option_values.item_variant_id} = ${item_variants.id}
#       relationship: many_to_one

#     - join: option_type_values
#       type: left_outer
#       sql_on: ${variant_option_values.option_type_value_id} = ${option_type_values.id}
#       relationship: many_to_one

#     - join: items
#       type: left_outer
#       sql_on: ${item_variants.item_id} = ${items.external_item_id}
#       relationship: many_to_one

#     - join: stock_items
#       type: left_outer
#       sql_on: ${item_variants.stock_item_id} = ${stock_items.id}
#       relationship: many_to_one

#     - join: recipes
#       type: left_outer
#       sql_on: ${item_variants.recipe_id} = ${recipes.id}
#       relationship: many_to_one

#     - join: venues
#       type: left_outer
#       sql_on: ${items.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: reporting_groups
#       type: left_outer
#       sql_on: ${items.reporting_group_id} = ${reporting_groups.id}
#       relationship: many_to_one

#     - join: tax_groups
#       type: left_outer
#       sql_on: ${items.tax_group_id} = ${tax_groups.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${items.organization_id} = ${organizations.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: option_types
#       type: left_outer
#       sql_on: ${option_type_values.option_type_id} = ${option_types.id}
#       relationship: many_to_one


# - explore: vendors
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${vendors.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: venue_loyalty_accounts
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${venue_loyalty_accounts.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: venue_settings
#   joins:
#     - join: venues
#       type: left_outer
#       sql_on: ${venue_settings.venue_id} = ${venues.id}
#       relationship: many_to_one

#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one


# - explore: venues
#   joins:
#     - join: partners
#       type: left_outer
#       sql_on: ${venues.partner_id} = ${partners.id}
#       relationship: many_to_one

#     - join: paypal_accounts
#       type: left_outer
#       sql_on: ${venues.paypal_account_id} = ${paypal_accounts.id}
#       relationship: many_to_one

#     - join: organizations
#       type: left_outer
#       sql_on: ${venues.organization_id} = ${organizations.id}
#       relationship: many_to_one
