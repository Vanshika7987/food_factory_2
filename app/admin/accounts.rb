ActiveAdmin.register Account do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :index, :edit, :update, :create, :destroy, :new

  permit_params :name, :address, :type, :phone_number, :email, :password, :password_confirmation

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :type, :phone_number, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

index do
  column :name
  column :email
  column :type
  column :phone_number
end
  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :type, :as => :select, :collection => Account.types.keys
      f.input :phone_number
    end
    f.actions
  end


  
  # permit_params :name, :address, :type, :phone_number
  
end
