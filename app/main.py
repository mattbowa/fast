from fastapi import FastAPI
from .api.routes_users import router as users_router

app = FastAPI(title="Hello FastAPI")

# Include routers
app.include_router(users_router, prefix="/api", tags=["users"])


@app.get("/")
def read_root():
    return {"message": "Hello, World!"}


@app.get("/health")
def health_check():
    return {"status": "ok"}



