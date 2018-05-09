class UserMessageSerializer < ActiveModel::Serializer
  attributes :content, :created_at
end
