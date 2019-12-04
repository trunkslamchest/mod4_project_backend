class Item < ApplicationRecord

  def serializable_hash(opts)
    super(opts.merge(only: [:id, :username], include: :snacks))
  end

end
