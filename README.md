# Projeto de Business Intelligence para análise de vendas e logística utilizando MySQL e Power BI

Este projeto consiste em uma solução de Business Intelligence, desenvolvida para analisar o faturamento e a eficiência logística de uma operação de e-commerce. O objetivo foi transformar dados brutos armazenados em um banco de dados MySQL em insights estratégicos que permitam a tomada de decisão rápida sobre faturamento e logsítica.

<img width="30%" height="780" alt="image" src="https://github.com/user-attachments/assets/cc8f53c1-55ba-4dad-8a56-7c1c65c90476" />
<img width="30%" height="782" alt="image" src="https://github.com/user-attachments/assets/7c8d3aed-872a-4cbc-9c5c-668ef295925c" />
<img width="30%" height="780" alt="image" src="https://github.com/user-attachments/assets/dfa2d107-1549-4b5b-90af-29d8ffa2714f" />

    Tecnologias Utilizadas
Banco de Dados: MySQL (Criação de Views para ETL).

Ferramenta de BI: Power BI.

Linguagens: SQL (Transformação) e DAX (Cálculo de métricas).

    Estrutura do Dashboard
O relatório está dividido em três visões principais:

Visão Principal (Financeira): Faturamento Total, Ticket Médio e Ranking de Vendas por Estado e Categoria.

Visão Logística: Monitoramento de metas de entrega, com foco na meta de 93% de pedidos dentro do prazo.

Detalhamento Operacional: Tabela granular com mais de 96 mil pedidos, permitindo a busca por ID e filtragem por status de entrega.

    Desafios e Soluções
Camada de Dados (SQL): Foi criada uma View otimizada para consolidar o preço do produto e o frete, além de tratar categorias nulas e padronizar formatos de data.

Geolocalização: Tratamento de siglas de estados brasileiros para garantir a precisão do mapa, corrigindo divergências de localização global, sendo necessária uma nova coluna de ajuste.

UX & Metas: Implementação de formatação condicional dinâmica via DAX, sinalizando em preto as regiões e períodos que operam abaixo da meta de 93% de eficiência.

        Principais Insights
Concentração de Receita: O estado de São Paulo detém a maior fatia do faturamento, enquanto a categoria "Beleza e Saúde" lidera as vendas.

Gargalos Logísticos: Estados como Alagoas (AL) e Maranhão (MA) apresentam as menores taxas de entrega no prazo, impactando a média geral da operação.

Evolução Temporal: Identificada uma queda de performance logística no início de 2018, permitindo uma análise retroativa de causas operacionais.
