#!/usr/bin/env ruby

ENV['DONT_ATTACH_RYPE'] = 'true'
require File.expand_path('../../config/environment',  __FILE__)
Rype.on(:chatmessage_received) do |chatmessage|
  chatmessage.chat do |skype_chat|
    chatmessage.from do |from_handle|
      chatmessage.body do |body|
        chat = Chat.find_or_create_by_name(skype_chat.chatname)
        skype_chat.topic do |topic|
          unless topic.blank?
            chat.topic = topic 
            chat.save!
          end
          Message.create!(:username => from_handle, :body => body, :chat => chat)
        end
      end
    end
  end
end

Rype.attach.join
