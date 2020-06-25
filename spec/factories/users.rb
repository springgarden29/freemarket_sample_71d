FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000"}
    password_confirmation {"0000000"}
    firstname             {"夏"}
    lastname              {"佐々木"}
    firstname_kana        {"ナツ"}
    lastname_kana         {"ササキ"}
    birth_year            {"2020"}
    birth_month           {"6"}
    birth_day             {"25"}
    tel_number            {"09000000000"}

    post_number           {"111-1111"}
    prefecture            {"東京都"}
    city                  {"渋谷区"}
    address               {"1-1-1"}
  end

end