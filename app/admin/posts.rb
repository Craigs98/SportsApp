ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  index do
    selectable_column
      column :id
      column :title
      column :published?
      column :user
      column :created_at
    actions
    end


   permit_params :title, :body, :conclusion, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :conclusion, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
