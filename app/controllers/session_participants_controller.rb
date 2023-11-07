class SessionParticipantsController < ApplicationController
  def index
    matching_session_participants = SessionParticipant.all

    @list_of_session_participants = matching_session_participants.order({ :created_at => :desc })

    render({ :template => "session_participants/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_session_participants = SessionParticipant.where({ :id => the_id })

    @the_session_participant = matching_session_participants.at(0)

    render({ :template => "session_participants/show" })
  end

  def create
    the_session_participant = SessionParticipant.new
    the_session_participant.user_id = params.fetch("query_user_id")
    the_session_participant.group_id = params.fetch("query_group_id")

    if the_session_participant.valid?
      the_session_participant.save
      redirect_to("/session_participants", { :notice => "Session participant created successfully." })
    else
      redirect_to("/session_participants", { :alert => the_session_participant.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_session_participant = SessionParticipant.where({ :id => the_id }).at(0)

    the_session_participant.user_id = params.fetch("query_user_id")
    the_session_participant.group_id = params.fetch("query_group_id")

    if the_session_participant.valid?
      the_session_participant.save
      redirect_to("/session_participants/#{the_session_participant.id}", { :notice => "Session participant updated successfully."} )
    else
      redirect_to("/session_participants/#{the_session_participant.id}", { :alert => the_session_participant.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_session_participant = SessionParticipant.where({ :id => the_id }).at(0)

    the_session_participant.destroy

    redirect_to("/session_participants", { :notice => "Session participant deleted successfully."} )
  end
end
