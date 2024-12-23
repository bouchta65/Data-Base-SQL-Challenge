# SaleOrder-Challenge SQL

## Objectif

Ce projet consiste à configurer une base de données, créer des tables, manipuler des données, exécuter des requêtes SQL et gérer des modifications. 

## Instructions

1. **Utilisez SQL** pour réaliser les tâches décrites.
2. **Créez une base de données** et implémentez toutes les tables et requêtes demandées.
3. **Soumettez vos scripts SQL** ainsi que des **captures d'écran des résultats obtenus** pour chaque requête.

---

## Tâches à Réaliser

### Partie 1 : Configuration de la Base de Données
1. Créez une base de données nommée `SaleOrderQuiz`.
2. Activez l’utilisation de la base de données `SaleOrderQuiz`.

### Partie 2 : Création des Tables
Créez les tables suivantes avec les champs et contraintes spécifiées :

#### Table `Customer` (Client)
| Champ              | Type         | Contraintes      |
|--------------------|--------------|------------------|
| `CustomerID`       | INT          | NOT NULL, PRIMARY KEY |
| `CustomerFirstName`| VARCHAR(50)  | NOT NULL         |
| `CustomerLastName` | VARCHAR(50)  | NOT NULL         |
| `CustomerAddress`  | VARCHAR(50)  | NOT NULL         |
| `CustomerCity`     | VARCHAR(50)  | NOT NULL         |
| `CustomerPostCode` | CHAR(4)      | NULL             |
| `CustomerPhoneNumber` | CHAR(12)  | NULL             |

#### Table `Inventory` (Inventaire)
| Champ                 | Type         | Contraintes      |
|-----------------------|--------------|------------------|
| `InventoryID`         | TINYINT      | NOT NULL, PRIMARY KEY |
| `InventoryName`       | VARCHAR(50)  | NOT NULL         |
| `InventoryDescription`| VARCHAR(255) | NULL             |

#### Table `Employee` (Employé)
| Champ               | Type         | Contraintes      |
|---------------------|--------------|------------------|
| `EmployeeID`        | TINYINT      | NOT NULL, PRIMARY KEY |
| `EmployeeFirstName` | VARCHAR(50)  | NOT NULL         |
| `EmployeeLastName`  | VARCHAR(50)  | NOT NULL         |
| `EmployeeExtension` | CHAR(4)      | NULL             |

#### Table `Sale` (Vente)
| Champ               | Type         | Contraintes      |
|---------------------|--------------|------------------|
| `SaleID`            | TINYINT      | NOT NULL, PRIMARY KEY |
| `CustomerID`        | INT          | NOT NULL, FOREIGN KEY REFERENCES `Customer(CustomerID)` |
| `InventoryID`       | TINYINT      | NOT NULL, FOREIGN KEY REFERENCES `Inventory(InventoryID)` |
| `EmployeeID`        | TINYINT      | NOT NULL, FOREIGN KEY REFERENCES `Employee(EmployeeID)` |
| `SaleDate`          | DATE         | NOT NULL         |
| `SaleQuantity`      | INT          | NOT NULL         |
| `SaleUnitPrice`     | SMALLMONEY   | NOT NULL         |

---

### Partie 3 : Manipulation des Données
1. Insérez **au moins 3 lignes** de données dans chaque table.
2. Écrivez des requêtes SQL pour :
   - Afficher tous les clients depuis la table `Customer`.
   - Lister toutes les ventes avec leurs montants totaux (`SaleQuantity * SaleUnitPrice`) par ordre décroissant.
   - Afficher tous les employés ayant réalisé au moins une vente, ainsi que le montant total des ventes pour chacun.

---

### Partie 4 : Modifications des Tables
1. Ajoutez une nouvelle colonne `CustomerEmail` à la table `Customer`.
2. Mettez à jour la colonne `CustomerEmail` pour l’un des clients.
3. Supprimez un enregistrement client dont la ville (`CustomerCity`) est "New York".

---

### Partie 5 : Requêtes Avancées
1. Écrivez une requête pour afficher toutes les ventes réalisées au cours des **30 derniers jours**.
2. Affichez tous les clients ayant acheté plus de **5 articles en une seule vente**.
3. Calculez le revenu total des ventes, regroupé par `InventoryName`.

---

### Partie 6 : Bonus
1. Créez une vue nommée `CustomerSalesView` pour afficher les informations suivantes :
   - `CustomerFirstName`, `CustomerLastName`, `SaleDate`, `InventoryName`, `SaleQuantity`, et `TotalAmount` (montant total de la vente).
2. Créez une **procédure stockée** permettant de récupérer toutes les ventes pour un client spécifique en fonction de son `CustomerID`.

---

## Outils Recommandés
- visual paradigm
- SQL Server Management Studio
- DBeaver

---

