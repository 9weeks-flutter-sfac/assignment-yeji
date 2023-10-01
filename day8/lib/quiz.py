import json
import requests
import jwt

# class Jwt():
#     def __init__(self, payloads, secret_key):
#         self.payloads = payloads
#         self.algorithm = "HS256"
#         self.secret_key = secret_key
#
#     def create_token(self):
#         return jwt.encode(self.payloads, key=self.secret_key, algorithm=self.algorithm)
#
#     def verify_token(self, token):
#         try:
#             payload = jwt.decode(token, key=self.secret_key, algorithms=self.algorithm)
#         except jwt.ExpiredSignatureError:
#             return "토큰 인증 만료"
#         except jwt.InvalidTokenError:
#             return "토큰 검증 실패"
#
#         return payload
#
#
# if __name__ == '__main__':
#     payload = {"id": "go1412c@gmail.com"}
#     my_jwt = Jwt(payload, "secret")
#     token = my_jwt.create_token()
#
#     print("token : ", token)
#     print("payload : ", my_jwt.verify_token(token))

for i in range(100,151):
    custom_headers = {
        'user-agent': 'SniperFactoryBrowser',
        "Content-Type": "application/json",
        'authorization' : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImdvMTQxMmNAZ21haWwuY29tIn0.vblVSaWNlmuerWonWtkeSZqVpp8yYK8K_ZvOIzwj_A8",
    }
    url = f"https://sniperfactory.com/sfac/http_assignment_{i}"
    try:
        request = requests.post(url, headers=custom_headers)
        print(request.status_code)
        # JSON 응답을 파싱
        json_data = request.json()
        print(json.dumps(json_data, indent=4, ensure_ascii=False))

    except:
        print("error")

#내가 해냄
# {
#     "result": "정답코드는 5292304입니다. 과제 제출란에 전달해주세요."
# }