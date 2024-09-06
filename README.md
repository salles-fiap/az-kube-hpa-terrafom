# az-kube-hpa-terrafom

First Project with Kubernetes and Terraform

# Projeto de CI/CD com Terraform e Kubernetes

Este projeto configura um pipeline de CI/CD usando GitHub Actions para gerenciar recursos de infraestrutura com Terraform e implantar aplicativos em um cluster Kubernetes.

## Estrutura do Projeto

- `main.tf`: Arquivo principal do Terraform para configurar o HPA (Horizontal Pod Autoscaler) no Kubernetes.
- `deployment.tf`: Arquivo Terraform para criar um deployment de exemplo.
- `deployment.yaml`: Configuração do Deployment do Kubernetes para o Nginx.
- `service.yaml`: Configuração do Service do Kubernetes para expor o Nginx.
- `ingress.yaml`: Configuração do Ingress do Kubernetes para roteamento de tráfego.
- `hpa.yaml`: Configuração do Horizontal Pod Autoscaler do Kubernetes.
- `secret.yaml`: Configuração de um Secret no Kubernetes.
- `certificate.yaml`: Configuração de um Certificate no Kubernetes usando o cert-manager.
- `cluster-issuer.yaml`: Configuração do ClusterIssuer para o cert-manager.

## Configuração

1. **Instalação do Terraform**:
   - Siga as instruções para instalar o Terraform em [terraform.io](https://www.terraform.io/downloads).

2. **Instalação do `kubectl`**:
   - Siga as instruções para instalar o `kubectl` em [kubernetes.io](https://kubernetes.io/docs/tasks/tools/).

3. **Configuração do ambiente**:
   - Configure suas credenciais do Azure e do Kubernetes.
   - Certifique-se de que o arquivo `~/.kube/config` está configurado corretamente para acessar o cluster Kubernetes.

## Uso

1. **Inicie o Terraform**:
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve
