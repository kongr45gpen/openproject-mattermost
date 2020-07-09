module OpenProject::Mattermost
  class Hooks < Redmine::Hook::Listener

    def mattermost_event_notification(context = {})
      event = MattermostEvent.find_or_create_by(context)
      SendMattermostMessageJob.set(wait_until: 20.seconds.from_now).perform_later(event)
    end
  end
end
