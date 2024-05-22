Monitoring System Setup with Prometheus, Grafana, Nginx, and MySQL
Overview:
This project demonstrates how to set up a comprehensive monitoring system using Prometheus, Grafana, Nginx, and MySQL. It includes Terraform scripts for provisioning Linode instances, setup scripts for installing and configuring the necessary components, as well as configurations for Nginx and Prometheus.

Components:
Terraform Scripts: Provision Linode instances for Nginx, MySQL, Prometheus, and Grafana.
Setup Scripts: Install and configure Nginx, MySQL, Prometheus, and Grafana on the provisioned instances.
Nginx: Acts as a reverse proxy for a Flask application, allowing external access and monitoring.
MySQL: Provides a database server for the Flask application and Grafana's metrics storage.
Prometheus: Collects and stores metrics from Nginx, MySQL, and other targets for monitoring.
Grafana: Visualizes metrics collected by Prometheus through customizable dashboards.

Access Components:

Nginx: http://<nginx-instance-ip>
MySQL: Use any MySQL client with <mysql-instance-ip>:3306
Prometheus: http://<prometheus-instance-ip>:9090
Grafana: http://<grafana-instance-ip>:3000 (Default credentials: admin/admin)

Configure Components:

Connect Nginx to MySQL as per application requirements.
Set up Prometheus to scrape metrics from Nginx and MySQL endpoints.
Connect Grafana to Prometheus as a data source and create dashboards for visualization.

Additional Notes:

Customize setup scripts and configurations based on specific requirements and security considerations.
Ensure proper network configurations to allow connections between components.
Test the setup thoroughly to ensure all components are functioning correctly.
