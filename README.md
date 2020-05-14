[![Image from Gyazo](https://i.gyazo.com/164447c0ef483dc2411ccf71061cce6f.png)](https://gyazo.com/164447c0ef483dc2411ccf71061cce6f)
# freemarket_sample_74b
フリマアプリのクローンサイト。

## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image|string||
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_day_year|integer|null: false|
|birth_day_month|integer|null: false|
|birth_day_day|integer|null: false|
|introduuction|string||
|phone_number|integer|null: false|
|address_id|references|null: false, foreign_key: true|
### Association
- belongs_to_active_hash :birth_day_year
- belongs_to_active_hash :birth_day_month
- belongs_to_active_hash :birth_day_day
- belongs_to_active_hash :prefecture
- has_many :items
- has_many :Comment
- has_one :Credit_cards, (pay.ja使用)
- has_one :Address

## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|intager|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|address1（番地）|string|null: false|
|building_name|string|
|user_id|refarence|null: false, foreign_key: true|
### Association
- belongs_to :users

## Credit_cardsテーブル(pay.ja使用)
|Column|Type|Options|
|------|----|-------|
|costomer_id|intager|null: false|
|cord_id|intager|null: false|
|user_id|refarence|null: false, foreign_key: true|
### Association
- belongs_to :users

## Commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|refarence|null: false, foreign_key: true|
|items_id|refarence|null: false, foreign_key: true|
|commtnt|text|null: false|

### Association
- belongs_to :users
- belongs_to :items

## Likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|refarence|null: false, foreign_key: true|
|items_id|refarence|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :items

## Itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|null: false|
|price|integer|null: false|
|brand_id|refarence|foreign_key: true|
|item_condition_id(商品状態)|reference|null: false, foreign_key: true|
|size_id|refarence|null: false|
|delivery_charge|reference|null: false, foreign_key: true|
|delivery_day_id|reference|null: false, foreign_key: true|
|delivery_way_id|reference|null: false, foreign_key: true|
|prefecture_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to_active_hash :item_condition
- belongs_to_active_hash :delivery_charge
- belongs_to_active_hash :delivery_day
- belongs_to_active_hash :delivery_way
- belongs_to_active_hash :delivery_way
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :category
- belongs_to_active_hash :size
- has_many_attached :images
- belongs_to :user
- add_index :items, :name

## Categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|sub|integer|
|sub_sub|integer|
|size|integer|
|brand|integer|
### Association
- has_many :items

## Item_Conditionテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :items

## Sizeテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
|group|integer|
### Association
- has_many :items

## DeliveryChargeテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :items

## DeliveryDaysテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :items

## DeliveryWayテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
|charge|integer|
### Association
- has_many :items

## Areaテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items

## Brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items

## Item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, foreign_key: true|
|item_images|string|null: false|
### Association
- has_many :items



