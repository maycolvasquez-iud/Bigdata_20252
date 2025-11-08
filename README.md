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

Para ejecutar este proyecto, se requieren las siguientes librerías de Python (generalmente incluidas en el notebook):

- pandas
- numpy
- matplotlib
- seaborn
- (Otras librerías según el análisis específico)

## Uso

1. Abrir el notebook `Vasquez_Maycol_Actividad_1.ipynb` en Jupyter Notebook o JupyterLab
2. Asegurarse de que el dataset esté en la ruta `src/static_csv/Diabetes_and_LifeStyle_Dataset .csv`
3. Ejecutar las celdas del notebook en orden

## Resultados

Los resultados del análisis incluyen:
- Diagrama Entidad-Relación (DER) de la base de datos
- Análisis de variables del dataset
- Modelado y visualización de datos relacionados con el riesgo de diabetes

## Referencias

- Dataset: Diabetes_and_LifeStyle_Dataset
- Imágenes de referencia: DER.png y variables.png

---

**Nota:** Este proyecto forma parte de la evaluación de la asignatura Big Data del Grupo 61.

