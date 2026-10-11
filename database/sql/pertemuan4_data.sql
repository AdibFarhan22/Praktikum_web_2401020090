USE praktikum_web_2401020090;

INSERT INTO program_studi (nama_prodi) VALUES
('Teknik Kelautan'),
('Teknik Perkapalan');

INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES
('2401020001', 'Fajar Sidik', 'fajar@example.com', 20, 1),
('2401020002', 'Dewi Lestari', 'dewi@example.com', 19, 1),
('2401020003', 'Hendra Gunawan', 'hendra@example.com', 21, 2),
('2401020099', 'Mahasiswa Sementara', 'sementara@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'fajar.sidik@example.com'
WHERE nim = '2401020001';

DELETE FROM mahasiswa
WHERE nim = '2401020099';

SELECT m.nim, m.nama, m.email, m.usia, p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
ON p.id = m.program_studi_id
ORDER BY m.nim;