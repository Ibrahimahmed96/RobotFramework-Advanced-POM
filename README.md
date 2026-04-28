#  Advanced Robot Framework Automation Suite

 Web Automation Framework built with **Robot Framework** and **Python**, following the **Page Object Model (POM)** design pattern.

##  Project Architecture & Structure

The project is structured to ensure high maintainability and scalability by separating test logic from UI locators:

text
---------------

├── Tests/                 # End-to-End Test Scenarios
│   └── PurchaseTests.robot
├── Resources/             # Framework Core Logic
│   ├── PageObjects/       # UI Locators & Page-Specific Keywords
│   │   ├── LoginPage.robot
│   │   └── InventoryPage.robot
│   ├── Libraries/         # Custom Python Extensions
│   │   └── CustomLib.py
│   └── Common.robot       # Global Setup, Teardown & Variables
├── Results/               # Test Execution Reports & Screenshots
├── .gitignore             # Git exclusion rules
└── README.md              # Project Documentation
