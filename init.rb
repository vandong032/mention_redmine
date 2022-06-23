require 'redmine'

Rails.configuration.to_prepare do
  require_dependency 'redmine_mentions/hooks'
  require_dependency 'journal'
  Journal.send(:include, RedmineMentions::JournalPatch)
end
Redmine::Plugin.register :redmine_mentions do
  name 'Redmine Mentions'
  author 'Arkhitech, Dongdv'
  description 'This is a plugin for Redmine which gives suggestions on using username in comments'
  version '0.1.1'
  url 'https://github.com/vandong032/mention_redmine'
  author_url 'https://github.com/vandong032/'
  settings :default => {'trigger' => '@'}, :partial => 'settings/mention'
end
