from requests import get


class LineBot:
	def __init__(self):
		self.url = "https://asia-northeast1-linebot-toefl.cloudfunctions.net/push_message"

	def print(self, message):
		return get(self.url, params={"message": message})
