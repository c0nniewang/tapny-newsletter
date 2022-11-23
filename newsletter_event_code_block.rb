#!/usr/bin/env ruby

website_link = "https://tap-ny.org/events/"
event_title = "Dinner series"
event_description = "join us for dinner!"
location_name = "lower manhattan"
location_link = "https://google.com"
event_day_of_week = "TUES"
event_date = "Nov 22, 2022"
event_time = "7-8:30 pm"
cta = "LET'S DINE"

def construct_location_block(location_link, location_name)
  html = if location_link == ""
    <<-HTML
      <strong style="font-size:11px; font-weight:bold">#{location_name}</strong>
    HTML
  else
    <<-HTML
      <a
        href=#{location_link}
        target="_blank"
        style="word-wrap: break-word;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #1a9e84;font-weight: normal;text-decoration: none;"
      >
        <span style="color:#000000">
        <strong style="font-size:11px; font-weight:bold">#{location_name}</strong>
        </span>
      </a>
    HTML
  end
  html
end

def generate_code_block(website_link, event_title, event_description, location_name, location_link, event_day_of_week, event_date, event_time, cta)
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

    <p style="font-weight:bold;font-size:11px;text-transform:uppercase;">
      <font color="#000000">
        <span style="color:#000000">
          #{construct_location_block(location_link, location_name)}
        </span>&nbsp;&nbsp;
        <span style="font-family:open sans,helvetica neue,helvetica,arial,sans-serif">
          <span style="color:#A9A9A9">
            <span style="font-size:11px">
              /&nbsp; &nbsp; #{event_day_of_week} &middot; #{event_date}, #{event_time}
            </span>
          </span>
        </span>
      </font>
    </p>

    <p><font color="#000000"><span style="font-family:open sans,helvetica neue,helvetica,arial,sans-serif">
      <span style="font-size:13px">
        #{event_description}
      <a href=#{website_link} target="_blank"> <span style="font-size:12px"><span style="color:#1a9e84">
      <strong>#{cta} ►</strong> </span> </span> </a></span></span></font>
    </p>
  HTML

  puts html
end

puts "--- generating event HTML block ---"
generate_code_block(website_link, event_title, event_description, location_name, location_link, event_day_of_week, event_date, event_time, cta)
puts "--- done! ---"