module DateFilter
  MONTHS = %w(gener febrer març abril maig juny juliol agost setembre octubre novembre desembre)

  # {{ post.date | i18n_date }}
  def i18n_date(date)
    month = MONTHS[date.strftime("%m").to_i - 1]
    case month[0]
    when "a", "o"
      date.strftime("%-d d'#{month} del %Y")
    else
      date.strftime("%-d de #{month} del %Y")
    end
  end
end

Liquid::Template.register_filter(DateFilter)
