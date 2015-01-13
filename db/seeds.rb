# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

# Begin:Two users that would create a match
    u1 = User.create(username: "fakeuser1" , email: "fakeusersemail1@user.com", password: "fakepass", gender: "male", about_me: "I may be fake but I still wish i could learn skills for free!")
    u2 = User.create(username: "fakeuser2" , email: "fakeusersemail2@user.com", password: "fakepass", gender: "male", about_me: "I may be fake but I still wish i could learn skills for free!")
    skill1 = Skill.create(name: "Japanese", category: "Language" , description: "A language spoken in Japan" , url: "http://en.wikipedia.org/wiki/Japanese_language")
    skill2 = Skill.create(name: "Ruby", category: "Programming Languages" , description: "A elegant and syntatically clear programming language." , url: "http://en.wikipedia.org/wiki/Japanese_language")
    us1 = HadSkill.create(skill_id: skill1.id, user_id: u1.id, expertise_level: "Novice")
    us2 = WantedSkill.create(skill_id: skill1.id, user_id: u1.id)
    us3 = HadSkill.create(skill_id: skill2.id, user_id: u2.id, expertise_level: "Novice")
    us4 = WantedSkill.create(skill_id: skill2.id, user_id: u2.id)
# End:Two users that would create a match
