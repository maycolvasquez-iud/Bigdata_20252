# Evidencia de Aprendizaje 1 - Creación de una base de datos analítica

## Información del Proyecto

**Estudiante:** Maycol Alejandro Vasquez Casas  
**Asignatura:** Big Data  
**Grupo:** 61  
**Actividad:** Creación de una base de datos analítica

## Descripción

Este proyecto se enfoca en el análisis de datos relacionados con la diabetes, una enfermedad crónica con alto impacto en la salud pública. El objetivo principal es crear una base de datos analítica que permita la detección temprana y prevención efectiva de la diabetes tipo 2 mediante el análisis de variables demográficas, clínicas y de estilo de vida.

## Problema

La diabetes es una enfermedad crónica que tiene un alto impacto en la salud pública. Su detección temprana y prevención efectiva es fundamental para reducir futuras complicaciones y los altos costos sanitarios. Sin embargo, los sistemas de diagnóstico tradicionales suelen ser reactivos, fragmentados y poco personalizados.

El conjunto de datos de indicadores de salud para la diabetes responde a esta necesidad, ya que ofrece una base sólida y multidimensional, con variables demográficas, clínicas y de estilo de vida, que permite modelar el riesgo de desarrollar diabetes tipo 2 en diversas poblaciones.

## Estructura del Proyecto

```
Actividad_1/
│
├── src/
│   ├── images/
│   │   ├── DER.png          # Diagrama Entidad-Relación
│   │   └── variables.png    # Diagrama de variables
│   └── static_csv/
│       └── Diabetes_and_LifeStyle_Dataset .csv  # Dataset principal
│
└── Vasquez_Maycol_Actividad_1.ipynb  # Notebook principal con el análisis
```

## Datos

El dataset utilizado es **Diabetes_and_LifeStyle_Dataset**, que contiene información sobre:
- Variables demográficas
- Variables clínicas
- Variables de estilo de vida
- Indicadores de salud relacionados con la diabetes

## Requisitos

### Software Necesario

- Python 3.7 o superior
- Jupyter Notebook o JupyterLab
- Git (opcional, para clonar el repositorio)

### Librerías de Python

Para ejecutar este proyecto, se requieren las siguientes librerías de Python:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn sqlalchemy
```

O instalar desde el archivo requirements.txt (si está disponible):

```bash
pip install -r requirements.txt
```

**Librerías principales:**
- `pandas`: Manipulación y análisis de datos
- `numpy`: Operaciones numéricas
- `matplotlib`: Visualización de datos
- `seaborn`: Visualizaciones estadísticas avanzadas
- `scikit-learn`: Algoritmos de machine learning (si se aplica)
- `sqlalchemy`: ORM para bases de datos (si se implementa)

## Instalación

1. Clonar o descargar el repositorio:
   ```bash
   git clone <url-del-repositorio>
   cd Actividad_1
   ```

2. Crear un entorno virtual (recomendado):
   ```bash
   python -m venv venv
   source venv/bin/activate  # En Windows: venv\Scripts\activate
   ```

3. Instalar las dependencias:
   ```bash
   pip install -r requirements.txt
   ```

4. Verificar que el dataset esté en la ruta correcta:
   - Ruta esperada: `src/static_csv/Diabetes_and_LifeStyle_Dataset.csv`

## Uso

1. Abrir el notebook `Vasquez_Maycol_Actividad_1.ipynb` en Jupyter Notebook o JupyterLab:
   ```bash
   jupyter notebook Vasquez_Maycol_Actividad_1.ipynb
   ```
   O con JupyterLab:
   ```bash
   jupyter lab Vasquez_Maycol_Actividad_1.ipynb
   ```

2. Asegurarse de que el dataset esté en la ruta `src/static_csv/Diabetes_and_LifeStyle_Dataset.csv`

3. Ejecutar las celdas del notebook en orden secuencial

4. Revisar los resultados y visualizaciones generadas en el notebook

## Metodología

El proyecto sigue una metodología estructurada para la creación de una base de datos analítica:

1. **Exploración de Datos (EDA)**
   - Análisis descriptivo de las variables
   - Identificación de valores faltantes
   - Detección de outliers
   - Análisis de distribuciones

2. **Diseño de Base de Datos Analítica**
   - Diseño del modelo entidad-relación (DER)
   - Normalización de tablas
   - Definición de relaciones entre entidades
   - Optimización para consultas analíticas

3. **Transformación de Datos**
   - Limpieza de datos
   - Transformación de variables
   - Creación de nuevas características (feature engineering)
   - Preparación para el modelado

4. **Visualización y Análisis**
   - Creación de visualizaciones para identificar patrones
   - Análisis de correlaciones
   - Identificación de factores de riesgo

5. **Modelado (si aplica)**
   - Construcción de modelos predictivos
   - Evaluación de modelos
   - Interpretación de resultados

## Estructura de la Base de Datos Analítica

La base de datos analítica diseñada incluye:

- **Tablas principales**: Organizadas según el diagrama entidad-relación (DER)
- **Relaciones**: Definidas entre las diferentes entidades del modelo
- **Índices**: Optimizados para consultas analíticas eficientes
- **Vistas**: Para facilitar el análisis y la visualización de datos

El diagrama entidad-relación se encuentra en `src/images/DER.png`.

## Variables del Dataset

El dataset **Diabetes_and_LifeStyle_Dataset** contiene las siguientes categorías de variables:

### Variables Demográficas
- Edad
- Género
- Ubicación geográfica
- Otras características demográficas relevantes

### Variables Clínicas
- Niveles de glucosa en sangre
- Presión arterial
- Índice de masa corporal (IMC)
- Historial médico
- Medicamentos

### Variables de Estilo de Vida
- Nivel de actividad física
- Hábitos alimenticios
- Consumo de alcohol
- Hábitos de sueño
- Otros factores de riesgo modificables

### Variables de Resultado
- Diagnóstico de diabetes
- Nivel de riesgo
- Complicaciones relacionadas

El diagrama de variables se encuentra en `src/images/variables.png`.

## Resultados

Los resultados del análisis incluyen:

### 1. Diagrama Entidad-Relación (DER)
- Diseño completo de la base de datos analítica
- Relaciones entre entidades
- Normalización de tablas
- Ubicación: `src/images/DER.png`

### 2. Análisis Exploratorio de Datos (EDA)
- Estadísticas descriptivas
- Distribuciones de variables
- Identificación de patrones y tendencias
- Detección de valores atípicos

### 3. Visualizaciones
- Gráficos de distribución
- Análisis de correlaciones
- Visualizaciones de relaciones entre variables
- Identificación de factores de riesgo

### 4. Modelado (si aplica)
- Modelos predictivos para riesgo de diabetes
- Métricas de evaluación
- Interpretación de resultados

### 5. Base de Datos Analítica
- Estructura de tablas optimizada
- Consultas analíticas eficientes
- Datos preparados para análisis futuro

## Conclusiones

Este proyecto demuestra la importancia de crear bases de datos analíticas bien estructuradas para el análisis de datos de salud. La base de datos diseñada permite:

- **Detección temprana**: Identificación de factores de riesgo para diabetes tipo 2
- **Análisis multidimensional**: Integración de variables demográficas, clínicas y de estilo de vida
- **Prevención efectiva**: Facilitación de intervenciones personalizadas
- **Investigación futura**: Base sólida para análisis más avanzados y modelos predictivos

## Referencias

- **Dataset**: Diabetes_and_LifeStyle_Dataset
- **Imágenes de referencia**: 
  - `src/images/DER.png` - Diagrama Entidad-Relación
  - `src/images/variables.png` - Diagrama de variables
- **Documentación técnica**: Disponible en el notebook principal

## Contribuciones

Este es un proyecto académico individual. Para consultas o sugerencias, por favor contactar al autor.

## Licencia

Este proyecto es de carácter académico y forma parte de la evaluación de la asignatura Big Data del Grupo 61.

---

**Nota:** Este proyecto forma parte de la evaluación de la asignatura Big Data del Grupo 61 de la IUDIGITAL.
