class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '和食' },
    { id: 3, name: '洋食・西洋料理' },
    { id: 4, name: '中華料理' },
    { id: 5, name: 'アジア・エスニック' },
    { id: 6, name: 'カレー' },
    { id: 7, name: '鍋' },
    { id: 8, name: '麺' },
    { id: 9, name: 'パン・サンドイッチ' },
    { id: 10, name: 'スープ' },
    { id: 11, name: 'スイーツ' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :recipes
end
