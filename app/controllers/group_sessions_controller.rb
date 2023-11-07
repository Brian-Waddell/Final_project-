class GroupSessionsController < ApplicationController
  def index
    matching_group_sessions = GroupSession.all

    @list_of_group_sessions = matching_group_sessions.order({ :created_at => :desc })

    render({ :template => "group_sessions/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_group_sessions = GroupSession.where({ :id => the_id })

    @the_group_session = matching_group_sessions.at(0)

    render({ :template => "group_sessions/show" })
  end

  def create
    the_group_session = GroupSession.new
    the_group_session.owner_id = params.fetch("query_owner_id")
    the_group_session.book_id = params.fetch("query_book_id")
    the_group_session.name_of_group = params.fetch("query_name_of_group")
    the_group_session.list_of_members = params.fetch("query_list_of_members")

    if the_group_session.valid?
      the_group_session.save
      redirect_to("/group_sessions", { :notice => "Group session created successfully." })
    else
      redirect_to("/group_sessions", { :alert => the_group_session.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_group_session = GroupSession.where({ :id => the_id }).at(0)

    the_group_session.owner_id = params.fetch("query_owner_id")
    the_group_session.book_id = params.fetch("query_book_id")
    the_group_session.name_of_group = params.fetch("query_name_of_group")
    the_group_session.list_of_members = params.fetch("query_list_of_members")

    if the_group_session.valid?
      the_group_session.save
      redirect_to("/group_sessions/#{the_group_session.id}", { :notice => "Group session updated successfully."} )
    else
      redirect_to("/group_sessions/#{the_group_session.id}", { :alert => the_group_session.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_group_session = GroupSession.where({ :id => the_id }).at(0)

    the_group_session.destroy

    redirect_to("/group_sessions", { :notice => "Group session deleted successfully."} )
  end
end
