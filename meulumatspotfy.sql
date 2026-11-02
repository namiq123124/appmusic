
CREATE DATABASE IF NOT EXISTS spotify_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE spotify_db;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    album VARCHAR(255) NOT NULL,
    cover_url TEXT,
    audio_path VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO songs (title, album, cover_url, audio_path) VALUES
('Flört - Manolya', 'Türk Parçalar', 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=300&h=300&fit=crop', 'Flört - Manolya [uvbg0l9SpUA].mp3'),
('Söz Olmasaydı (Piano)', 'Retro Azərbaycan', 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=300&h=300&fit=crop', 'Söz Olmasaydı (Piano Müşayiətində) [qI2jD712b-I].mp3');