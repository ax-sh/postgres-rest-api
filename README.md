# POC testing postgres postgrest with bruno


### 1. **Check the Docker Compose File**
Ensure your updated file is valid and free of syntax errors by running:
   ```bash
   docker-compose config
   ```
This command validates the `docker-compose.yml` and will show any errors or warnings, making sure your changes are correct before applying them.

### 2. **Recreate Containers**
If you've made changes to service definitions (e.g., image, environment variables, volumes), you'll need to recreate the containers. Use:
   ```bash
   docker-compose up -d --build
   ```
Key points:
- `-d`: Runs containers in detached mode (in the background).
- `--build`: Rebuilds images before starting the containers to account for any updates in the Dockerfile or service definitions.

### 3. **Remove Unused Containers**
If the services have changed significantly or you're worried about orphaned containers (leftover containers that are no longer part of the updated configuration), you should remove them:
   ```bash
   docker-compose down --remove-orphans
   ```
This command stops and removes containers, networks, volumes, and images created by `docker-compose up` that are no longer referenced in the updated file.

### 4. **View Logs (Optional)**
If you want to monitor the behavior of your services immediately after updating, you can tail the logs with:
   ```bash
   docker-compose logs -f
   ```
This command is useful for debugging or ensuring that your services are running as expected after the update.

### 5. **Check Running Containers**
Verify that your updated containers are running as expected:
   ```bash
   docker-compose ps
   ```

### Automation Option: Zero Downtime Deployment
If you're aiming for zero downtime during updates, you can use strategies like **rolling updates** (if using `docker-compose` with Docker Swarm) or a load balancer with multiple instances of services to avoid interruptions.

---

### Recap:
1. Validate the `docker-compose.yml` with `docker-compose config`.
2. Apply the update by recreating the containers with `docker-compose up -d --build`.
3. Remove unused containers with `docker-compose down --remove-orphans`.
4. (Optional) Tail logs using `docker-compose logs -f`.
5. Confirm the status of containers with `docker-compose ps`.

This flow ensures a smooth and efficient update process.