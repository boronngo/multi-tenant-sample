class TenantsController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
    @tenant_name = params[:name]
    Tenant.create(name: @tenant_name)
    Apartment::Tenant.create(@tenant_name)
    # Apartment::Tenant.migrate(@tenant_name)
  end

  def switch
    @tenant_name = params[:name]
    Apartment::Tenant.switch!(@tenant_name)
  end
end
