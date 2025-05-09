from telegram.ext import Updater, CommandHandler
import os

TOKEN = os.getenv("TOKEN")

def start(update, context):
    update.message.reply_text("مرحبًا! أنا بوت المذكر")

updater = Updater(TOKEN)
updater.dispatcher.add_handler(CommandHandler("start", start))
updater.start_polling()
updater.idle()
