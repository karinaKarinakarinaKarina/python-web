import requests

s_city = "Saint Petersburg, RU"
appid = "6ec7a04a70121f78c595d46ac0deb50c"

res = requests.get("http://api.openweathermap.org/data/2.5/weather", params={'q': s_city, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
data = res.json()
print("Город:", s_city)
print("Погодные условия:", data['weather'][0]['description'])
print("Температура:", data['main']['temp'])
print("Минимальная температура:", data['main']['temp_min'])
print("Максимальная температура", data['main']['temp_max'])
print("Скорость ветра", data['wind']['speed'])
print("Видимость", data['visibility'])

res = requests.get("http://api.openweathermap.org/data/2.5/forecast", params={'q': s_city, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
data = res.json()
print("________________________________")
print("Прогноз погоды на неделю:")
for i in data['list']:
    print("Дата <", i['dt_txt'], "> \r\n Температура <",
    '{0:+3.0f}'.format(i['main']['temp']), "> \r\n Погодные условия <", i['weather'][0]['description'], "> \r\n Скорость ветра <", i['wind']['speed'], "> \r\n Видимость <", i['visibility'], ">")
    print("____________________________")
