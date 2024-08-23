import os
from telebot import TeleBot
from 

bot = TeleBot(token=TOKEN, parse_mode=None)

@bot.message_handler(func=lambda message: True)
def echo_all(message):
    bot.reply_to(message, "Привет!")

bot.polling()