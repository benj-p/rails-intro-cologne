class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @team_members = ['Julia', 'Oscar', 'Mariana', 'Santi', 'camila']

    if params[:member].present?
      @team_members = @team_members.select do |team_member|
        team_member == params[:member]
      end
    end
  end
end
