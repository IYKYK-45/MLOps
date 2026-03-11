from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def read_root():
	return {"Status": "MLOps environment active", "User": "garvit"}
