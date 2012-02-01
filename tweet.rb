class Tweet
  attr_accessor :person, :text

  def initialize(person, text)
    @person = person
    @text = text
  end

  def to_s
    "@#{@person.username} --> [#{@text}]"
  end
end
