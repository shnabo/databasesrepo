### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".
Genre.find_by(name: "Hip Hop/Rap")
  Genre Load (1.5ms)  SELECT  "genres".* FROM "genres" WHERE "genres"."name" = $1 LIMIT $2  [["name", "Hip Hop/Rap"], ["LIMIT", 1]]

ID = 17


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre

Track.where(genre_id: 17)
  Track Load (2.3ms)  SELECT "tracks".* FROM "tracks" WHERE "tracks"."genre_id" = $1  [["genre_id", 17]]


# 2) Find the total amount of time required to listen to all the tracks in the database.

Track.sum("milliseconds")
   (9.8ms)  SELECT SUM("tracks"."milliseconds") FROM "tracks"
1378575827


# 3a) Find the highest price of any track that has the media type "MPEG audio file".

 MediaType.find_by(name: "MPEG audio file").id

  MediaType Load (0.7ms)  SELECT  "media_types".* FROM "media_types" WHERE "media_types"."name" = $1 LIMIT $2  [["name", "MPEG audio file"], ["LIMIT", 1]]

x = MediaType.find_by(name: "MPEG audio file").id
  MediaType Load (0.6ms)  SELECT  "media_types".* FROM "media_types" WHERE "media_types"."name" = $1 LIMIT $2  [["name", "MPEG audio file"], ["LIMIT", 1]]
1
  Track.where(media_type_id: x).maximum(:unit_price)
   (4.1ms)  SELECT MAX("tracks"."unit_price") FROM "tracks" WHERE "tracks"."media_type_id" = $1  [["media_type_id", 1]]
0.99

# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".

Track.find_by(media_type_id: x, unit_price: maxp)
  Track Load (0.8ms)  SELECT  "tracks".* FROM "tracks" WHERE "tracks"."media_type_id" = $1 AND "tracks"."unit_price" = $2 LIMIT $3  [["media_type_id", 1], ["unit_price", #<BigDecimal:7fe654a82108,'0.99E0',9(18)>], ["LIMIT", 1]]


# 4) Find the 2 oldest artists.

Artist.order(created_at: :asc).limit(2)
  Artist Load (9.0ms)  SELECT  "artists".* FROM "artists" ORDER BY "artists"."created_at" ASC LIMIT $1  [["LIMIT", 2]]
[
    [0] #<Artist:0x007fe6537d2a58> {
                :id => 258,
              :name => "Les Arts Florissants & William Christie",
        :created_at => Fri, 13 Feb 2004 06:08:36 UTC +00:00,
        :updated_at => Wed, 29 Jan 2014 22:10:22 UTC +00:00
    },
    [1] #<Artist:0x007fe6537d28f0> {
                :id => 31,
              :name => "Baby Consuelo",
        :created_at => Mon, 16 Feb 2004 22:04:39 UTC +00:00,
        :updated_at => Wed, 29 Jan 2014 22:10:22 UTC +00:00
    }





awesome print 
bundle install
bin/rails classify { |AwesomePrint.irb!



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
