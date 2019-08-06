# Task:
1. Write a ruby script that:
    * Receives a log as argument (webserver.log is provided) e.g.: ./parser.rb webserver.log
    * Returns the following:
        * list of webpages with most page views ordered from most pages views to less page views e.g.:\
          /home 90 visits /index 80 visits etc
        * list of webpages with most unique page views also ordered e.g.:\
          /about/2 8 unique views
    * Feel free to make changes or design something if you think it meets the
     criteria above, but would produce better outcomes

# Run script:
Result: ruby parser.rb webserver.log\
Tests: rspec -> Coverage 100%

# Result:
Total visits:\
/about/2 90 visits\
/contact 89 visits\
/index 82 visits\
/about 81 visits\
/help_page/1 80 visits\
/home 78 visits\

Uniq visits:\
/index 23 uniq visits\
/home 23 uniq visits\
/contact 23 uniq visits\
/help_page/1 23 uniq visits\
/about/2 22 uniq visits\
/about 21 uniq visits
