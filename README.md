# analyzer-quick-start

This is a quick start guide for [kube-efficient's analyzer] to analyze your kubernetes cluster.



## Analyzer

The Kubernetes Resource Analyzer Tool provides insight into the resource usage and efficiency of your Kubernetes cluster. It is particularly useful for those managing large clusters and wanting to optimize their resources.

This tool offers the following features:

- An analysis of the nodes in the cluster, breaking down the percentage of spot and on-demand instances.
- CPU and Memory usage statistics, including the total available, percentage used, and the bin packing efficiency.
- It uses the current Kubernetes context set in the `KUBECONFIG` environment variable to connect to your cluster.


## Usage
```
curl -fsSL https://raw.githubusercontent.com/kubeefficient/analyzer-quick-start/main/download.sh | bash -s -- --run
```

This command will print the analysis report to stdout.

```
------
Total: 64 nodes
Spot : 93.75%
OnDemand : 6.25%
------
Total CPU: 1600
CPU Binpacking: 100.00%
CPU Used: 28.93%
------
Total Memory: 12363Gi
Memory Binpacking: 94.62%
Memory Used: 46.63%
```

Please remember that the KUBECONFIG environment variable needs to point to the correct Kubernetes config file.
