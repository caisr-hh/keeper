# AIM-FLIX: AI-driven Inventory Management for Flexible and Efficient NextGen Supply Chains

AIM-FLIX is a Swedish research and innovation project funded by Vinnova through the FFI (Strategic Vehicle Research and
Innovation) programme. It brings together Volvo Parts, Rejmes Transportfordon and Halmstad University to develop
AI-driven decision support for spare-parts supply chains in the automotive aftermarket.

Demand for vehicle spare parts is intermittent, varies by region and can spike suddenly. Many inventory management tools
still rely on static rules, fixed safety stocks and forecasts made separately at each level of the supply chain, and
these often fail to anticipate such dynamics. The results are emergency shipments, excess stock, high return rates and
unnecessary environmental impact. AIM-FLIX builds on the earlier AIM-TRUE project, which improved spare-parts demand
forecasting. It takes the next step: from better predictions to adaptive, network-wide inventory decisions.

## Project objectives

AIM-FLIX aims to build an AI-driven decision-support system that combines machine learning, reinforcement learning and
survival analysis. Its main objectives are to:

- **Optimise ordering and rebalancing policies:** Use reinforcement learning (RL) to decide when and how much to order
  from suppliers, and when to redistribute inventory across warehouses and dealers.
- **Anticipate shortages and rush orders:** Combine hierarchical demand forecasts with survival models that estimate
  when stock-outs, returns or obsolescence are likely, enabling action before shortages occur.
- **Adapt assortment planning:** Determine which parts should be stocked at each level of the network, based on local
  market conditions and demand patterns.
- **Introduce shared stocking:** Identify groups of dealers whose inventories can be managed as a shared pool, reducing
  duplication and improving availability.
- **Reduce waste and urgent transports:** Reduce rush orders by at least 20% and part scrapping and returns by at least
  15%.

## Expected results and impact

AIM-FLIX aims to contribute to a more efficient, sustainable and resilient aftermarket through several complementary
outcomes:

- **A unified data infrastructure:** integrated sales, stock, transport and logistics data supporting forecasting, risk
  modelling and optimisation.
- **Hierarchical forecasting models:** demand forecasts that are consistent across dealer, regional and global levels,
  as well as across time.
- **Risk prediction models:** estimates of the likelihood and timing of stock-outs, returns and obsolescence.
- **RL-based policies:** policies for ordering, assortment planning and rebalancing inventory across the network.
- **A shared-stocking framework:** methods for forming and adapting dealer groups that share inventory.
- **A pilot demonstrator:** an integrated decision-support prototype, validated in a test market against real-world
  indicators such as service levels, urgent transports, returns and obsolescence.

Through these results, the project expects to improve parts availability and vehicle uptime, and to lower operating
costs. It also aims to reduce the carbon footprint of emergency deliveries and scrapped parts, contributing to UN
Sustainable Development Goals 9, 12 and 13.

## Project progress

Since its launch in January 2026, the AIM-FLIX consortium has laid the data and methodological foundations for the
project.

Key activities undertaken or currently being developed include:

- **Data infrastructure:** Setting up a shared data infrastructure in the Unified Data Platform (UDP) that gives project
  members easy access to the data they need.
- **Demand forecasting baselines:** Benchmarking machine learning models for intermittent spare-parts demand, with a new
  error metric that evaluates periods with and without demand separately. The study was published at ECML PKDD 2026.
- **Risk-based clustering:** Developing K-SurvMeans, a new method for clustering survival data, to group dealers and
  parts by risk profile. It was also published at ECML PKDD 2026.
- **Hierarchical forecasting:** Implementing temporal hierarchical forecasting, which improved predictions for periods
  with sales. A probabilistic forecaster covering dealer, part and time hierarchies has been designed for the next
  stage.
- **New-part demand ("time to first hit"):** Researching how information from the first workshops in a region to use a
  new part can anticipate demand at others, reducing rush transports, especially by air.
- **Ordering policy optimisation:** An early exploration of reinforcement learning for ordering policies, in which a
  constrained RL policy reduced inventory costs by 2.5% at the same service level as the classical reorder policy.

As the project progresses, this work will feed into multi-dealer ordering and assortment policies, inventory
rebalancing, shared stocking and, finally, an integrated pilot demonstrator.

## Collaboration

AIM-FLIX is carried out by a consortium of three Swedish partners:

- **Volvo Parts** is the problem owner. It contributes domain knowledge and data, and integrates results into
  operations.
- **Rejmes Transportfordon** represents the dealer network and gives practical feedback from workshops and customers.
- **The Center for Applied Intelligent Systems Research (CAISR) at Halmstad University** is the research partner and
  project coordinator.

By combining industrial experience, dealer insight and academic expertise in AI, the consortium aims to strengthen
Sweden's position in intelligent, sustainable aftermarket logistics. The project also collaborates with the KEEPER
project on predictive maintenance.

## Publications

1. [K-Survival Means](https://arxiv.org/abs/2607.24405) NFMCP workshop, ECML PKDD 2026.

1. Machine Learning for Intermittent Demand Forecasting: A Comparative Study on Automotive Spare Parts with Decomposed
   Error Metrics (Link is Coming Soon) SOMI workshop, ECML PKDD 2026.

## Project information

- **Duration:** 19 November 2025 – 31 December 2028
- **Project Lead:** Abdallah Alabdallah
- **Participating researchers:** Saeed Gholami Shahbandi, Gamze Akyol, and Amirhossein Berenji
- **Programme:** FFI – Transport and Mobility Services (Vinnova)
- **Total budget:** 16 MSEK (8 MSEK Vinnova funding, 8 MSEK partner co-funding)
