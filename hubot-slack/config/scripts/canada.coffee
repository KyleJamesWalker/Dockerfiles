# Description:
#   Great White North 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   canada
#
# Author:
#   Ethan Holmes

canada = [
    'http://www.acoa-apeca.gc.ca/eng/investment/InvestmentHome/PublishingImages/Canada_flag.jpg',
    'http://upload.wikimedia.org/wikipedia/de/a/a9/Mountie_horse.jpg',
    'http://upload.wikimedia.org/wikipedia/commons/6/68/Canada_flag_halifax_9_-04.JPG',
    'http://canadatopia.net/wp-content/uploads/2012/07/canadas-pants.jpg',
    'http://www.waterwarcrimes.com/uploads/3/6/3/8/3638406/7010_orig.jpg',
    'http://www.heliummm.com/hh/wp-content/uploads/2014/01/canadian-olympic-team-pom-pom-toque-20-cdn.jpg',
    'http://www.rosssea.info/pix/big/Canadian-Geese.jpg',
    'http://images.hellobc.com/mgen/tbccw/production/TBCCWDisplay.ms?img=%2Fgetmedia%2F4149a8de-fc5d-4e54-b659-5282486fa973%2F2-200291313-001-Vancouver-skyline.jpg.aspx&tl=1&sID=1&c=public%2Cmax-age%3D172802%2Cpost-check%3D7200%2Cpre-check%3D43200&bid=4_5',
    'http://media.trb.com/media/photo/2011-04/60677173.jpg',
    'http://canadaalive.files.wordpress.com/2013/04/bobanddoug1.jpg',
    'http://robfordmustresign.com/sites/default/files/banner/RobFord2.jpeg',
    'http://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Political_map_of_Canada.png/650px-Political_map_of_Canada.png',
    'http://www.nwsportsbeat.com/wp-content/uploads/2013/07/Roberto-Luongo.jpg',
    'http://postmediaedmonton.files.wordpress.com/2013/05/christanevedmontonoilersvvancouvercanucksaggackwnzkzx.jpg',
    'http://cdn.agilitycms.com/hockey-canada/Corporate/Partnerships/Logos/canada_640.jpg',
    'https://pbs.twimg.com/media/BFlJJvyCUAA7tD8.jpg',
    'http://rlv.zcache.ca/red_maple_leaf_photo_cut_out-rd679be6c5ae7482d9856e9581082443e_x7saw_8byvr_512.jpg',
    'http://coinsblog.ws/wp-content/uploads/2013/12/Loonie-Toonie.jpg'
]

module.exports = (robot) ->
    robot.hear /canada/i, (msg) ->
        msg.send msg.random canada