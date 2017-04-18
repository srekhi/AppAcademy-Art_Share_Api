# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sunny = User.create(username: "sunny")
robin = User.create(username: "robin")
hope = User.create(username: "hope")

a1 = Artwork.create(title: :StarryNight, image_url: :bull, artist_id: sunny.id )
a2 = Artwork.create(title: :MonaLisa, image_url: :donkey, artist_id: robin.id )

s1 = ArtworkShare.create(artwork_id: a1.id, viewer_id: hope.id)
s2 = ArtworkShare.create(artwork_id: a2.id, viewer_id: hope.id)


c1 = Comment.create(user_id: 14, artwork_id: 2, body: "This is awful")
c2 = Comment.create(user_id: 16, artwork_id: 1, body: "This is even worse")
