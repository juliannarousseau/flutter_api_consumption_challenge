# 📱 **Flutter API Consumption Challenge**
## Public API — Posts Listing

### 📌 Context

This project simulates a real-world technical interview challenge inspired by common frontend/mobile exercises used by companies.

The goal is to evaluate how a candidate consumes an external API while applying **Clean Architecture**, proper separation of concerns, and clear business reasoning — not UI sophistication.

---
## 🌐 API Reference

This project consumes the public JSONPlaceholder API.

**Base URL**
```
https://jsonplaceholder.typicode.com
```

**Endpoint used**
```
GET /posts
```

### API documentation: [JSON Placeholder](https://jsonplaceholder.typicode.com)

---

## 🎯 Problem Statement

The application must consume a public REST API and display a list of items retrieved from the backend.

The focus is on demonstrating the ability to:

* structure the project correctly,
* isolate business rules,
* handle async data,
* manage UI states cleanly.

---

## ✅ Solution Overview

This project implements a **Posts Listing** feature consuming the **JSONPlaceholder API**.

The user can:

* load a list of posts from an API,
* visualize loading and success states,
* handle empty or error scenarios.

The solution prioritizes:

* clean separation of responsibilities,
* architecture clarity,
* testability and extensibility.

---

## 🧩 Functional Requirements

* Fetch posts from a remote API
* Each post contains:
  * id
  * title
  * body
* Handle UI states:
  * loading
  * success
  * empty
  * error

---

## 🧱 Technical Decisions

* Flutter
* Clean Architecture principles
* Stateless Widgets only
* No business logic in UI
* Models isolated from entities
* Public API (no authentication)
* State managed outside the view (Cubit)

---

## 🏗️ Architecture Overview

```
presentation
 └── cubit
 └── states
 └── pages

domain
 └── entities
 └── repositories
 └── usecases

data
 └── datasources
 └── models
 └── repository implementations
```

**Key principle:**

The domain layer is fully independent from Flutter, HTTP clients, or external frameworks.

---

## 🔄 Data Flow

1. UI triggers data loading
2. Cubit calls the Use Case
3. Use Case invokes the Repository
4. Repository fetches data from Remote Datasource
5. Data is converted to Domain Entities
6. UI reacts to emitted states

---

## 🧪 Testing Strategy

Unit tests focused on:

* Use cases
* Repository behavior
* Data mapping (Model → Entity)

Widget tests are optional and limited to critical flows.

The priority is validating **business behavior**, not UI rendering.

---

## 🚀 Possible Extensions

This structure supports future evolution such as:

* pagination
* post detail screen
* error retry logic
* caching or offline-first strategy
* authenticated APIs
* backend replacement without UI changes

---

## 🗣️ Interview & Pair Programming Mindset

This challenge is designed to encourage:

* clear explanation of decisions,
* discussion about trade-offs,
* collaboration and iteration,
* focus on simplicity and maintainability.

---

## 📝 Notes

This repository is **not a production-ready app**.

It is an evaluation and training exercise focused on:

* reasoning,
* architectural discipline,
* communication,
* real-world development practices.

