# -*- coding: utf-8 -*-
module BooksHelper
  def links_for(book)
    links = []
    links << link_to("修正", [ :edit, book ])
    if book.checked_out?
      links << link_to("返却", [ :check_in, book ],
                       {:method => :put, :confirm => "返却しますか？"})
    else
      links << link_to("貸し出し", [ :check_out, book ],
                       {:method => :put, :confirm => "貸し出しにしますか？"})
    end
    links << delete_link(book)
    raw(links.join("／"))
  end
end
