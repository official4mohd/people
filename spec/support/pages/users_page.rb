class UsersPage < SitePrism::Page
  set_url '/users'

  elements :toggle_admin_checkboxes, 'table#users input.admin'
  elements :user_rows, 'table#users tr'
  elements :nonbillable_signs, '.glyphicon.glyphicon-exclamation-sign.notbillable'
  elements :potential_signs, '.glyphicon.glyphicon-asterisk.potential'
end
