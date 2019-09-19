# frozen_string_literal: true

module ApplicationHelper
  def bootstrap_class_for(flash_type)
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def get_company_id(company = 'undefined')
    puts company
    if !company.nil?
      comp = Company.find_by(name: company).id
    else
      2
  end
  end
end
