class Person
  attr_accessor :username, :email, :followers, :following, :tweets

  def initialize(username)
    @username = username
    @email = username + "@mail.com"
    @followers = Array.new
    @following = Array.new
    @tweets = Array.new
  end

  def follows(person)
    @following << person
    person.add_follower(self)
  end

  def unfollows(person)
    @following.delete(person)
    person.remove_follower(self)
  end

  def tweet(text)
    @tweets << Tweet.new(self, text)
  end

  def add_follower(person)
    @followers << person
  end

  def remove_follower(person)
    @followers.delete(person)
  end

  def to_s
    result = "@#{@username} tweeted #{@tweets.size} times, follows #{@following.size} persons and is followed #{@followers.size} times"
    result = result + " , following: {"
    @following.each {|f| result = result + " #{f.username}"}
    result = result + " }"
    result = result + " followed by: {"
    @followers.each {|f| result = result + " #{f.username}"}
    result = result + " }"
    result
  end
end
