-- Agregar columna tecnico_asignado_id a la tabla mantenimientos
ALTER TABLE mantenimientos ADD COLUMN tecnico_asignado_id INT NULL;

-- Agregar índice para mejorar búsquedas
ALTER TABLE mantenimientos ADD INDEX idx_tecnico_asignado (tecnico_asignado_id);

-- Agregar constraint de clave foránea (opcional, descomenta si quieres forzar integridad referencial)
-- ALTER TABLE mantenimientos ADD CONSTRAINT fk_tecnico_asignado FOREIGN KEY (tecnico_asignado_id) REFERENCES usuarios(id) ON DELETE SET NULL;
