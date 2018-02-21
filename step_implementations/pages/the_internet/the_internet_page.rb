module TheInternetSite
  module Pages
    class TheInternetLoginPage < BasePage
      element :username, 'input[id=username]'
      element :password, 'input[id=password]'

      def fill_field(field, value)
        send(field).set value
      end
    end

    class TheInternetHoversPage < BasePage
      def hover_user(user)
        case user
        when "user1"
          find(:xpath, '//*[@id="content"]/div/div[1]/img').hover
        when "user2"
          find(:xpath, '//*[@id="content"]/div/div[2]/img').hover
        when "user3"
          find(:xpath, '//*[@id="content"]/div/div[3]/img').hover
        end
      end
    end

    class TheInternetTablesPage < BasePage
      element :table2, 'input[id=table2]'

      def click_table2_collumn_last_name
        find(:css, '#table2 thead tr th:nth-of-type(1)').click
      end

      def get_collumn_order
        names = all(:css, '#table2 tbody tr td:nth-of-type(1)')
        names_values = names.map do |name|
          name.text
        end
        names_values
      end
    end
  end
end
