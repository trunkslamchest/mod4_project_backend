dorothy = User.create(username: "dorothy.vaughan", password: "nasa")
sandi = User.create(username: "sandi.metz", password: "poodr")
alan = User.create(username: "alan.turing", password: "enigma")
grace = User.create(username: "grace.hopper", password: "univac")

Item.create(name: 'test_item1', img_url: "https://assets.pernod-ricard.com/nz/media_images/test.jpg?hUV74FvXQrWUBk1P2.fBvzoBUmjZ1wct", category: "test_category1", price: "50.00", description: "test_description1", quantity: "1")
Item.create(name: 'test_item2', img_url: "https://assets.pernod-ricard.com/nz/media_images/test.jpg?hUV74FvXQrWUBk1P2.fBvzoBUmjZ1wct", category: "test_category2", price: "100.00", description: "test_description2", quantity: "2")






