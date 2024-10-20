# map_botanic

A Flutter application to map the **Botanical Garden of Universidad de Caldas**, showcasing its points of interest, flora, and fauna.

## Project Overview

This project aims to provide an interactive map of the Botanical Garden, allowing users to explore various points of interest and learn about the flora and fauna present in the garden. The app will feature:

- An interactive map with navigation and zoom capabilities.
- Markers for key points of interest within the garden (e.g., rare plant species, research areas).
- Detailed information on flora and fauna, including descriptions and images.
- A user-friendly interface for easy navigation.

## Architecture

### Recommended Architecture: **MVVM (Model-View-ViewModel)**

To ensure scalability, maintainability, and ease of testing, this Flutter app will follow the **MVVM architecture**. Here’s how the components are structured:

1. **Model**: This layer contains the data structure of the app (e.g., information about plants, animals, and locations). It will interact with services (e.g., APIs, databases) to fetch or store data.
   
   - Example: `PlantModel`, `AnimalModel`, `LocationModel`

2. **View**: The View layer consists of the UI components that users interact with. In Flutter, these are the widgets that will render the map and display details about the points of interest, flora, and fauna.

   - Example: `MapScreen`, `PlantDetailScreen`, `AnimalDetailScreen`

3. **ViewModel**: The ViewModel acts as a bridge between the Model and the View. It handles the business logic and processes data before passing it to the View. It also responds to user inputs and updates the View accordingly.

   - Example: `MapViewModel`, `PlantViewModel`, `AnimalViewModel`

This architecture allows you to separate concerns, making it easier to maintain and scale the project.

### State Management

For managing state between the View and the ViewModel, **Provider** is recommended. It allows the app to manage state efficiently and helps in notifying the UI of data changes.

## Key Features

- **Interactive Map**: A Flutter map widget (e.g., `flutter_map` or `google_maps_flutter`) will be integrated, allowing users to zoom in/out, pan, and click on markers for more information.
  
- **Points of Interest**: Key areas within the Botanical Garden will be marked, and users can tap on markers to access more information about the location.

- **Flora and Fauna Database**: The app will have a comprehensive database of plant and animal species, each with detailed descriptions, scientific names, and images.

- **User Interface**: The app will have a simple, intuitive interface with a home screen that directs users to explore the map or browse flora and fauna categories.

## Setup and Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/camian0/botanical-garden-app.git
  
