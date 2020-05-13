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
|address_id|references|null: false, foreign_key: true|
|phone_num|integer|null: false|
|authentication_num|integer|null: false|
### Association
- belongs_to_active_hash :birth_yyyy

## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|intager|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|address1|string|null: false|
|building_name|string|
### Association
- belongs_to :user

## credit_cardsテーブル
|Column|Type|Options|
|------|----|-------|
|card_number|intager|null: false|
|expriration_year|intager|null: false|
|expriration_month|intager|null: false|
|secuurty_code|intager|null: false|
|user_id|refarence|null: false, foreign_key: true|
### Association
- belongs_to :user

## credit_cardsテーブル(pay.ja使用)
|Column|Type|Options|
|------|----|-------|
|costomer_id|intager|null: false|
|cord_id|intager|null: false|
|user_id|refarence|null: false, foreign_key: true|


## Itemssテーブル
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
|area_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to_active_hash :category
- belongs_to_active_hash :condition
- belongs_to_active_hash :size
- belongs_to_active_hash :delivery_charge
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :delivery_days
- belongs_to_active_hash :delivery_way
- belongs_to_active_hash :status
- has_many_attached :images
- belongs_to :user
- add_index :products, :name

## Categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|sub|integer|
|sub_sub|integer|
|size|integer|
|brand|integer|
### Association
- has_many :products
## Conditionテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :products
## Sizeテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
|group|integer|
### Association
- has_many :products
## DeliveryChargeテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :products
## DeliveryDaysテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
### Association
- has_many :products
## DeliveryWayテーブル
|Column|Type|Options|
|------|----|-------|
|value|string|null: false|
|charge|integer|
### Association
- has_many :products
## areaテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :products
### Association
- has_many :item