from fastapi import FastAPI, Request
import uvicorn
import socket

app = FastAPI()

@app.get("/api/v0/ip")
async def get_pod_ip(request: Request):
    # return the internal IP of the default interface
    pod_ip = socket.gethostbyname(socket.gethostname())
    return {"pod_ip": pod_ip}



if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8000)