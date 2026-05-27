-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "nombre_tarea" TEXT NOT NULL,
    "estadisticas" TEXT,
    "entrega_tarea" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tarea" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "prioridad" TEXT NOT NULL,
    "completado" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Tarea_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_nombre_tarea_key" ON "User"("nombre_tarea");
