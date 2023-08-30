# frozen_string_literal: true

# == Schema Information
#
# Table name: cipher_texts
#
#  id         :integer          not null, primary key
#  author     :string
#  message    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CipherText < ActiveRecord::Base
  validates :author, presence: true
  validates :message, presence: true
end
