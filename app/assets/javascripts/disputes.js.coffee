$ ->
  $dispute_company_subform = $("#dispute_company_subform")
  updateCompanySubform = ->
    if $(this).val() == ''
      $dispute_company_subform.show().
        find("input, textarea").removeAttr("disabled")
    else
      $dispute_company_subform.hide().
        find("input, textarea").attr("disabled", "disabled")
  $("#dispute_company_id").change(updateCompanySubform).
    trigger("change")

