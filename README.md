# FastAPI template

### Dev
Create python env and then install dependencies
```
pip install -r requirements.txt
```

Run from `src` folder with

- Self-hosted run mode
```
python main.py
```

- Hosted run mode
```
uvicorn main:app --reload --host 0.0.0.0 --port 9000
```

Tests
```
# fastapi built-in test unit
pytest

# selenium ui-test unit (requires a running instance)
python test_miniui.py
```

### Docker
Tweak `docker-compose.yml` according to your setup and run
```
docker compose --project-name "template-fastapi" up --build -d
```

### Kubernetes
Build the image to your local registry
```
docker build -t template-fastapi-app .
```

Tweak `deployments.yml` according to your setup and run
```
kubectl apply -f deployments.txt
```
