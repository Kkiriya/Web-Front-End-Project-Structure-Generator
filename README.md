# Web Front-End Project Structure Generator

Genererates the required project structure for a Project along with the required files

PS: I'm not responsable for anything weird that could happen when running the script. I tested it and it works on my machine but thats as far as the testing goes. READ scripts and commands before using them.

## Schematic of the created structure

```
Project/
├─ client/
│ ├─ css/
│ │ └─ `style.css`
│ ├─ images/
│ ├─ js/
│ │ └─ `global.js`
│ ├─ pages/
│ └─ utilitaires/
├─ serveur/
├─ utilitaires/
│ ├─ `bootsrap-5.3.8-dist/...`
│ ├─ `bootsrap-icons-1.13.1/...`
│ └─ `jquery-4.0.0.mins.js`
└─ `index.html`
```

## Installation

1. Run in your terminal:

   ```bash
   cd ~ && git clone https://github.com/Kkiriya/Web-Front-End-Project-Structure-Generator.git web-structure-gen && cd web-structure-gen && chmod u+x install.sh generator.sh && ./install.sh
   ```

   - It will install the app in your home directory
   - It also sets permission for the scripts it runs and runs install.sh for you

## Using the App

simply run `wb-gen` in your terminal in the desired directory and the project structure will be generated right away

Feel free to change the alias in the install file to something you like more!
