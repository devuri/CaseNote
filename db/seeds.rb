# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user1 = User.create(username: "guest", password: "password")
user2 = User.create(username: "cool_guy24", password: "password")
user3 = User.create(username: "awesome_gal", password: "password")
user4 = User.create(username: "jumping_joe", password: "password")
user5 = User.create(username: "amanda342", password: "password")

Opinion.destroy_all

body = "{\"ops\":[{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"},{\"attributes\":{\"color\":\"#000000\"},\"insert\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"},{\"insert\":\"\\n\\n\"}]}"

opinion1 = Opinion.create(case: "Marbury v. Madison", citation: "5 U.S. 137", body: body, date: Date.new(1803, 2, 24), transcriber_id: user1.id, judge_id: 48, court_id: 1)
opinion2 = Opinion.create(case: "Loving v. Virginia", citation: "388 U.S. 1", body: body, date: Date.new(1967, 6, 12), transcriber_id: user1.id, judge_id: 18, court_id: 1)
opinion3 = Opinion.create(case: "Gore v. Bush", citation: "531 U.S. 98", body: body, date: Date.new(2000, 12, 12), transcriber_id: user2.id, judge_id: 108, court_id: 1)
opinion4 = Opinion.create(case: "Hamdi v. Rumsfeld", citation: "542 U.S. 507", body: body, date: Date.new(2004, 6, 28), transcriber_id: user3.id, judge_id: 86, court_id: 1)
opinion5 = Opinion.create(case: "U.S. v. Korematsu", citation: "323 U.S. 214", body: body, date: Date.new(1844, 12, 18), transcriber_id: user5.id, judge_id: 36, court_id: 1)
opinion6 = Opinion.create(case: "Brown v. Board of Education", citation: "347 U.S. 483", body: body, date: Date.new(1954, 5, 17), transcriber_id: user5.id, judge_id: 18, court_id: 1)
opinion7 = Opinion.create(case: "Lawrence v. Texas", citation: "39 U.S. 558", body: body, date: Date.new(2003, 6, 26), transcriber_id: user1.id, judge_id: 4, court_id: 1)
opinion8 = Opinion.create(case: "Plessy v.Ferguson", citation: "163 U.S. 537", body: body, date: Date.new(1896, 5, 18), transcriber_id: user5.id, judge_id: 32, court_id: 1)
opinion9 = Opinion.create(case: "United States v. Kennerley", citation: "209 F. 119", body: body, date: Date.new(1913, 1, 1), transcriber_id: user5.id, judge_id: 1, court_id: 3)
opinion10 = Opinion.create(case: "Citizens United v. FEC", citation: "558 U.S. 310", body: body, date: Date.new(2010, 1, 21), transcriber_id: user2.id, judge_id: 4, court_id: 1)

Annotation.destroy_all

annotation1 = Annotation.create(start_idx: 0, length: 20, body: "{\"ops\":[{\"insert\":\"Annotation1\\n\"}]}", opinion_id: opinion1.id, user_id: user2.id)
annotation2 = Annotation.create(start_idx: 130, length: 200, body: "{\"ops\":[{\"insert\":\"Annotation2\\n\"}]}", opinion_id: opinion1.id, user_id: user3.id)
annotation3 = Annotation.create(start_idx: 40, length: 10, body: "{\"ops\":[{\"insert\":\"Annotation3\\n\"}]}", opinion_id: opinion1.id, user_id: user3.id)
annotation4 = Annotation.create(start_idx: 81, length: 20, body: "{\"ops\":[{\"insert\":\"Annotation4\\n\"}]}", opinion_id: opinion2.id, user_id: user4.id)
annotation5 = Annotation.create(start_idx: 0, length: 200, body: "{\"ops\":[{\"insert\":\"Annotation5\\n\"}]}", opinion_id: opinion3.id, user_id: user1.id)
annotation6 = Annotation.create(start_idx: 5, length: 60, body: "{\"ops\":[{\"insert\":\"Annotation6\\n\"}]}", opinion_id: opinion4.id, user_id: user1.id)
annotation7 = Annotation.create(start_idx: 230, length: 100, body: "{\"ops\":[{\"insert\":\"Annotation7\\n\"}]}", opinion_id: opinion4.id, user_id: user5.id)
annotation8 = Annotation.create(start_idx: 20, length: 20, body: "{\"ops\":[{\"insert\":\"Annotation8\\n\"}]}", opinion_id: opinion5.id, user_id: user5.id)
annotation9 = Annotation.create(start_idx: 183, length: 20, body: "{\"ops\":[{\"insert\":\"Annotation9\\n\"}]}", opinion_id: opinion6.id, user_id: user1.id)
annotation10 = Annotation.create(start_idx: 0, length: 130, body: "{\"ops\":[{\"insert\":\"Annotation10\\n\"}]}", opinion_id: opinion7.id, user_id: user4.id)
annotation11 = Annotation.create(start_idx: 290, length: 100, body: "{\"ops\":[{\"insert\":\"Annotation11\\n\"}]}", opinion_id: opinion7.id, user_id: user4.id)
annotation12 = Annotation.create(start_idx: 40, length: 10, body: "{\"ops\":[{\"insert\":\"Annotation12\\n\"}]}", opinion_id: opinion8.id, user_id: user4.id)
annotation13 = Annotation.create(start_idx: 8, length: 200, body: "{\"ops\":[{\"insert\":\"Annotation13\\n\"}]}", opinion_id: opinion9.id, user_id: user3.id)
annotation14 = Annotation.create(start_idx: 500, length: 174, body: "{\"ops\":[{\"insert\":\"Annotation14\\n\"}]}", opinion_id: opinion9.id, user_id: user3.id)
annotation15 = Annotation.create(start_idx: 10, length: 300, body: "{\"ops\":[{\"insert\":\"Annotation15\\n\"}]}", opinion_id: opinion10.id, user_id: user1.id)

Suggestion.destroy_all

suggestion1 = Suggestion.create(user_id: user4.id, annotation_id: annotation1.id, suggestion_type: "restate", body: "This restates the text!")
suggestion2 = Suggestion.create(user_id: user1.id, annotation_id: annotation6.id, suggestion_type: "other", body: "Why isn't your response in latin?")
suggestion3 = Suggestion.create(user_id: user1.id, annotation_id: annotation3.id, suggestion_type: "restate", body: "Restating the text. This is worthless")
suggestion4 = Suggestion.create(user_id: user3.id, annotation_id: annotation7.id, suggestion_type: "missing", body: "This does not actually include any content")
suggestion5 = Suggestion.create(user_id: user1.id, annotation_id: annotation8.id, suggestion_type: "restate", body: "This restates the text!")
suggestion6 = Suggestion.create(user_id: user2.id, annotation_id: annotation1.id, suggestion_type: "stretch", body: "Seems like a stretch")
suggestion7 = Suggestion.create(user_id: user3.id, annotation_id: annotation1.id, suggestion_type: "missing", body: "This is missing any indepth review")
suggestion8 = Suggestion.create(user_id: user5.id, annotation_id: annotation2.id, suggestion_type: "restate", body: "This restates the text :(")
suggestion9 = Suggestion.create(user_id: user5.id, annotation_id: annotation2.id, suggestion_type: "other", body: "Was this a mistake????")
suggestion10 = Suggestion.create(user_id: user2.id, annotation_id: annotation15.id, suggestion_type: "stretch", body: "That seems like a stretch....")
suggestion11 = Suggestion.create(user_id: user4.id, annotation_id: annotation9.id, suggestion_type: "stretch", body: "Seems like a stretch")
suggestion12 = Suggestion.create(user_id: user3.id, annotation_id: annotation9.id, suggestion_type: "missing", body: "This is missing a full review")
suggestion13 = Suggestion.create(user_id: user5.id, annotation_id: annotation10.id, suggestion_type: "restate", body: "This restates the text :( Try again!")
suggestion14 = Suggestion.create(user_id: user5.id, annotation_id: annotation11.id, suggestion_type: "other", body: "Why this.....?")
suggestion15 = Suggestion.create(user_id: user4.id, annotation_id: annotation12.id, suggestion_type: "stretch", body: "That's a stretch....")

Comment.destroy_all

comment1 = Comment.create(opinion_id: opinion1.id, user_id: user2.id, body: "Post hoc ergo propter hoc")
comment2 = Comment.create(opinion_id: opinion1.id, user_id: user4.id, body: "Habeas corpus")
comment3 = Comment.create(opinion_id: opinion2.id, user_id: user5.id, body: "forum non conveniens")
comment4 = Comment.create(opinion_id: opinion3.id, user_id: user1.id, body: "ex post facto")
comment5 = Comment.create(opinion_id: opinion4.id, user_id: user1.id, body: "lis pendens")
comment6 = Comment.create(opinion_id: opinion5.id, user_id: user3.id, body: "nolo contendere")
comment7 = Comment.create(opinion_id: opinion5.id, user_id: user5.id, body: "persona non grata")
comment8 = Comment.create(opinion_id: opinion4.id, user_id: user4.id, body: "pro bono")
comment9 = Comment.create(opinion_id: opinion6.id, user_id: user2.id, body: "lex loci")
comment10 = Comment.create(opinion_id: opinion8.id, user_id: user1.id, body: "in pari delicto")
comment11 = Comment.create(opinion_id: opinion7.id, user_id: user2.id, body: "inter alia")
comment12 = Comment.create(opinion_id: opinion9.id, user_id: user5.id, body: "jus naturale")
comment13 = Comment.create(opinion_id: opinion8.id, user_id: user4.id, body: "in pari delicto")
comment14 = Comment.create(opinion_id: opinion9.id, user_id: user3.id, body: "inter alia")
comment15 = Comment.create(opinion_id: opinion9.id, user_id: user5.id, body: "jus naturale")

Vote.destroy_all

upvote1 = Vote.create(user_id: user1.id, votable_id: annotation2.id, votable_type: "Annotation", status: 1)
upvote2 = Vote.create(user_id: user1.id, votable_id: comment2.id, votable_type: "Comment", status: 1)
upvote3 = Vote.create(user_id: user1.id, votable_id: suggestion1.id, votable_type: "Suggestion", status: 1)
downvote1 = Vote.create(user_id: user1.id, votable_id: annotation3.id, votable_type: "Annotation", status: -1)
upvote4 = Vote.create(user_id: user2.id, votable_id: suggestion1.id, votable_type: "Suggestion", status: 1)
upvote5 = Vote.create(user_id: user2.id, votable_id: annotation4.id, votable_type: "Annotation", status: 1)
upvote6 = Vote.create(user_id: user2.id, votable_id: suggestion7.id, votable_type: "Suggestion", status: 1)
downvote2 = Vote.create(user_id: user2.id, votable_id: suggestion10.id, votable_type: "Suggestion", status: -1)
downvote3 = Vote.create(user_id: user2.id, votable_id: comment6.id, votable_type: "Comment", status: -1)
downvote4 = Vote.create(user_id: user2.id, votable_id: comment12.id, votable_type: "Comment", status: -1)
downvote5 = Vote.create(user_id: user2.id, votable_id: suggestion3.id, votable_type: "Suggestion", status: -1)
upvote7 = Vote.create(user_id: user3.id, votable_id: annotation11.id, votable_type: "Annotation", status: 1)
upvote8 = Vote.create(user_id: user3.id, votable_id: comment11.id, votable_type: "Comment", status: 1)
downvote6 = Vote.create(user_id: user3.id, votable_id: annotation1.id, votable_type: "Annotation", status: -1)
upvote9 = Vote.create(user_id: user4.id, votable_id: comment11.id, votable_type: "Comment", status: 1)
upvote10 = Vote.create(user_id: user4.id, votable_id: suggestion10.id, votable_type: "Suggestion", status: 1)
upvote11 = Vote.create(user_id: user4.id, votable_id: annotation14.id, votable_type: "Annotation", status: 1)
upvote12 = Vote.create(user_id: user4.id, votable_id: annotation8.id, votable_type: "Annotation", status: 1)
downvote7 = Vote.create(user_id: user5.id, votable_id: suggestion1.id, votable_type: "Suggestion", status: -1)
downvote8 = Vote.create(user_id: user5.id, votable_id: comment10.id, votable_type: "Comment", status: -1)
downvote9 = Vote.create(user_id: user5.id, votable_id: suggestion4.id, votable_type: "Suggestion", status: -1)
downvote10 = Vote.create(user_id: user5.id, votable_id: annotation12.id, votable_type: "Annotation", status: -1)
