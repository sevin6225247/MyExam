module MyExam
using PyCall
@pyimport urllib3
@pyimport urllib3.request as req
@pyimport re

print("we will try to open this url, in order to get IP Address")
url = "http://checkip.dyndns.org"
print(url)
http = urllib3.PoolManager()
r = http.request("GET", "http://checkip.dyndns.org")
htmlSource = r.data
print(htmlSource)

theIP =re.findall("IP Address: {1,3}.{1,3}.{1,3}.{1,3}.{1,3}.{1,2}", htmlSource)
print("your IP Address is: ", theIP)
end
 # module


