class RolesController < ApplicationController
  def index
    @roles = Role.all
    render("roles/index.html.erb")
  end

  def show
    @role = Role.find(params[:id])

      render("roles/show_details.html.erb")
  end

  def new_form
      render("roles/new_form.html.erb")
  end

  def create_row
    @role = Role.new

    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

    render("roles/show_details.html.erb")
  end

  def edit_form
    @role = Role.find(params[:id])
  end

  def update_row
    @role = Role.find(params[:id])

    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

      render("roles/show_details.html.erb")
  end

  def destroy
    @role = Role.find(params[:id])

    @role.destroy

    redirect_to("/roles")
  end
end
