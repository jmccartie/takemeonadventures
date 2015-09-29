module Jekyll
  module RegexFilter
    def replace_regex(input, reg_str, repl_str)
      re = Regexp.new reg_str

      # This will be returned
      input.gsub re, repl_str
    end

    def regex_first(input, reg_str)
      re = Regexp.new reg_str
      Regexp.new(reg_str).match(input)[1]
    end

  end
end

Liquid::Template.register_filter(Jekyll::RegexFilter)
