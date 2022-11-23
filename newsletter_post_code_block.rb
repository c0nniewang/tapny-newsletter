#!/usr/bin/env ruby

website_link = "https://tap-ny.org/posts/"
event_title = "Member of the Month"
event_description = "Read on to learn more about our members"
cta = "LET'S GO"

def generate_code_block(website_link, event_title, event_description, cta)
  html = <<-HTML
    <h3 class="null">
      <span style="font-family:roboto,helvetica neue,helvetica,arial,sans-serif">
        <span style="font-size:16.4px">
        <strong style="color:inherit; font-weight:bold; text-decoration:none">
        <strong style="color:inherit; font-family:lora,georgia,times new roman,serif; font-weight:bold; text-decoration:none">
        <font color="#000000">
          <a href=#{website_link} style="color:inherit;text-decoration:none;font-weight:bold" target="_blank">
            #{event_title}
          </a>
        </font>
        </strong>
        </strong>
      </span>
      </span>
    </h3>

    <p><font color="#000000"><span style="font-family:open sans,helvetica neue,helvetica,arial,sans-serif">
      <span style="font-size:13px">
        #{event_description}
      <a href=#{website_link} target="_blank"> <span style="font-size:12px"><span style="color:#1a9e84">
      <strong>#{cta} ►</strong> </span> </span> </a></span></span></font>
    </p>
  HTML

  puts html
end

puts "--- generating post HTML block ---"
generate_code_block(website_link, event_title, event_description, cta)
puts "--- done! ---"