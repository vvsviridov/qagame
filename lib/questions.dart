const List<String> questions = [
  'Любите ли вы пошалить?',
  'Это правда, что алкоголь толкает вас на безответственные поступки?',
  'Вы часто влюбляетесь с первого взгляда?',
  'Часто ли вы любуетесь своим отражением?',
  'Приходилось ли вам прятаться в шкафу?',
  'Это правда, что вы поёте во время секса?',
  'Часто ли вы пьёте за чужой счет?',
  'Любите ли вы строить козни в коллективе?',
  'Часто ли вы совершаете поступки, в которых потом раскаиваетесь?',
  'Это правда, что вы мечтаете принять участие в конкурсе «Само совершенство»?',
  'Правда, что вы пишете нецензурные выражения на стенах в подъезде?',
  'Часто ли вы изменяете своей второй половине?',
  'Нравится ли вам «валять дурака»?',
  'Любите ли вы посплетничать?',
  'Правда, что вы имеете склонность к садизму?',
  'Часто ли вы не ночуете дома?',
  'Вас посещают мысли подстричься наголо?',
  'Вы любите «совать нос» в чужие дела?',
  'Часто ли вы напиваетесь до беспамятства?',
  'Имеете ли вы привычку подхалимничать?',
  'Вам часто снятся эротические сны?',
  'Вы часто дебоширите в общественных местах?',
  'Берёте ли вы взятки?',
  'Вы позволяете себе любовь по телефону?',
  'Вы любите танцевать при луне?',
  'Приходилось ли вам качаться на люстре?',
  'Вы часто привираете?',
  'Правда, что вы любите читать нотации окружающим?',
  'Вы часто просыпаетесь посреди ночи, чтобы опустошить холодильник?',
  'Это правда, что вы имеете привычку целоваться со всеми подряд на банкетах?',
  'Вас часто одолевает лень?',
  'Вас посещает желание сфотографироваться для «Плейбоя»?',
  'Признайтесь, вы на всё готовы ради денег?',
  'Часто ли вы обнаруживаете незнакомца в своей постели?',
  'Часто ли вы посещаете эротические сайты?',
  'Это правда, что вы кидаетесь в прохожих яйцами из окна?',
  'Правда, что вы любите считать чужие деньги?',
  'Скажите честно, вы любите танцевать стриптиз?',
  'Вас часто охватывает «любовная лихорадка»?',
  'Любите ли вы следить, кто сколько съел и выпил за праздничным столом?',
  'Правда, что вы посещаете нудистский пляж?',
  'Признайтесь, часто ли вы теряете своё нижнее белье?',
  'Любите ли вы посмеяться над другими?',
  'Вы любите заниматься любовью в общественных местах?',
  'Правда, что вы любите поскандалить?',
  'Часто ли вы злорадствуете?',
  'Приходилось ли вам просыпаться в вытрезвителе?',
  'Правда, что вы любите подбивать друзей на антиобщественные поступки?',
  'Ты любишь длинную прелюдию?',
  'Ты стонешь от оргазма?',
  'Вы когда-нибудь занимались сексом на улице?',
  'У вас уже были гомосексуальные отношения?',
  'Писаете ли вы в душе?',
  'Встречались ли с женатыми мужчинами?',
  'Встречались с мужчинами, с которыми была большая разница в возрасте?',
  'Тайно влюблялся в мужчину(девушку) своей лучшей подружки(друга)?',
  'Целовалась(лся) с другими девушками(мужчинами)?',
  'Начал(а) бы встречаться с миллионером из-за его денег?',
  'Ходишь без нижнего белья, лифчика или трусиков, хоть иногда?',
  'Нюхаешь свою одежду перед тем, как ее надеть?',
  'Спишь или ходишь, по квартире, полностью обнаженным?',
  'Когда-нибудь писали в бассейн или море?',
  'Верите в религии, инопланетян или чудеса?',
  'Напивались до потери сознания и совести?',
  'Вы когда-нибудь были близки с двумя людьми одновременно?',
  'Вам когда-нибудь снился эротический сон, в котором появился кто-то из этого круга?',
  'У тебя когда-нибудь была тройка? А как тебе понравилось?',
  'Вы когда-нибудь занимались сексом с хорошим другом?',
  'Вы когда-нибудь занимались сексом с кем-то из этой группы - кроме вашего партнера?',
  'У вас когда-нибудь был киберсекс или секс по телефону ?',
  'Ты кому-нибудь давал денег, чтобы переспать с тобой?',
  'У тебя когда-нибудь был опасный секс?',
  'Вы когда-нибудь занимались сексом с незнакомцем?',
  'Ты когда-нибудь платил за секс?',
  'Вы когда-нибудь самоудовлетворялись перед сексом?',
  'Стонете ли вы в кульминации?',
  'Вы все еще девственница?',
  'Ты когда-нибудь слышал стон своей сестры / брата?',
  'Вы когда-нибудь были застигнуты мастурбацией?',
  'Ты когда-нибудь изменял кому-то?',
  'Ты всегда верен?',
  'У вас когда-нибудь был контакт с наркотиками?',
  'Вы когда-нибудь крали что-нибудь в прошлом?',
  'Ты храпишь по ночам?',
];