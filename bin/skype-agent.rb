#!/usr/bin/env ruby

require File.expand_path('../../config/environment',  __FILE__)
Rype.on(:chatmessage_received) do |chatmessage|
  chatmessage.chat do |chat|
    chatmessage.body do |body|
      chatmessage.from do |from_handle|
        p [:got_message, chat.inspect, from_handle, body]
      end
    end
  end
end

Rype.attach.join
