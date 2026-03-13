from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def read_root():
	return {"status": "Active", "message": "MLOps Pipeline v1.0 is now Live","user": "IYKYK-45"}
