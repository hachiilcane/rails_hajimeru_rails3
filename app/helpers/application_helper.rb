# -*- coding: utf-8 -*-
module ApplicationHelper
  def delete_link(object)
    link_to "削除", object, {:method => :delete, :confirm => "本当に削除してしまうのですか？"}
  end
end
