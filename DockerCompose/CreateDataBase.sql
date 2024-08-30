 -- create database Desafio_Ods_Comunidades


CREATE TABLE "Secretaria" (
    "SiglaSecretaria" VARCHAR(20) PRIMARY KEY,
    "NomeSecretaria" VARCHAR(45) UNIQUE NOT NULL,
    "Active" Boolean 
);

CREATE TABLE "Responsavel" (
    "Email" VARCHAR(50) PRIMARY KEY,
    "Nome" VARCHAR(45) NOT NULL,
    "Celular" VARCHAR(45) UNIQUE NOT NULL,
    "Ativo" Boolean,    
    "SiglaSecretaria" VARCHAR(20) NOT NULL REFERENCES "Secretaria"("SiglaSecretaria") ON DELETE CASCADE
);

CREATE TABLE "Indicadores" (
    "IdCodigoArquivo" FLOAT,
    "IdCodigoValor" FLOAT,
    "ValorIndicador" DOUBLE PRECISION,
    "Mediana" DOUBLE PRECISION,
    "DesvioPadrao" DOUBLE PRECISION,
    "LimiteSuperior" DOUBLE PRECISION,
    "LimiteInferior" DOUBLE PRECISION,
    "IdOds" INT,
    "DescricaoOds" TEXT,
    "Email" VARCHAR(50) NOT NULL REFERENCES "Responsavel"("Email") ON DELETE CASCADE,
    "SiglaSecretaria" VARCHAR(20) NOT NULL REFERENCES "Secretaria"("SiglaSecretaria") ON DELETE CASCADE,
    PRIMARY KEY ("IdCodigoArquivo", "IdCodigoValor")
);

