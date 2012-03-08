$ ->
  $dispute_company_subform = $("#dispute_company_subform")
  updateCompanySubform = ->
    if $(this).val() == ''
      $dispute_company_subform.show()
    else
      $dispute_company_subform.hide()
  $("#dispute_company_id").change(updateCompanySubform).
    trigger("change")

