-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mag 26, 2023 alle 03:56
-- Versione del server: 8.0.32
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pe`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `idUtente` int NOT NULL,
  `idProdotto` int NOT NULL,
  `qta` int NOT NULL,
  `taglia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idCart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `contatto`
--

CREATE TABLE `contatto` (
  `idForm` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `messaggio` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contatto`
--

INSERT INTO `contatto` (`idForm`, `nome`, `cognome`, `messaggio`, `email`) VALUES
(1, 'Scimmia', 'Puzzolente', 'unga bunga ', 'apo@calabria.gov'),
(2, 'Tanto', 'Scemo', 'La Juve è la squadra migliore e i miei genitori sono cugini, questa è una coincidenza', 'sempreApo@catanzaro.mafia');

-- --------------------------------------------------------

--
-- Struttura della tabella `foto`
--

CREATE TABLE `foto` (
  `idFoto` int NOT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `foto5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `foto`
--

INSERT INTO `foto` (`idFoto`, `foto1`, `foto2`, `foto3`, `foto4`, `foto5`) VALUES
(1, 'magliaNera.png', NULL, NULL, NULL, NULL),
(2, 'MagliaVerde.png', NULL, NULL, NULL, NULL),
(3, 'MagliaBlu.png', NULL, NULL, NULL, NULL),
(4, 'MagliaRossa.png', NULL, NULL, NULL, NULL),
(101, 'BerrettoBianco.png', NULL, NULL, NULL, NULL),
(102, 'BerrettoNero.png', NULL, NULL, NULL, NULL),
(103, 'CappelloPescatoreBianco.png', NULL, NULL, NULL, NULL),
(104, 'CappelloPescatoreNero.png', NULL, NULL, NULL, NULL),
(201, 'ZainoNero.png', NULL, NULL, NULL, NULL),
(202, 'tazzaNera.png', NULL, NULL, NULL, NULL),
(203, 'MarsupioNero.png', NULL, NULL, NULL, NULL),
(204, 'bandanaNera.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `login`
--

CREATE TABLE `login` (
  `idUtente` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `indirizzo` varchar(255) NOT NULL,
  `telefono` bigint NOT NULL,
  `moderatore` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `login`
--

INSERT INTO `login` (`idUtente`, `email`, `password`, `nome`, `cognome`, `indirizzo`, `telefono`, `moderatore`) VALUES
(1, 'a@a', '1', 'Mattia', 'Vestri', 'Soooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooca', 3316969696, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

CREATE TABLE `prodotto` (
  `idProdotto` int NOT NULL,
  `nome` char(255) NOT NULL,
  `prezzo` float NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `idFoto` int DEFAULT NULL,
  `idTaglia` int DEFAULT NULL,
  `colore` varchar(255) DEFAULT NULL,
  `idTipo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `prodotto`
--

INSERT INTO `prodotto` (`idProdotto`, `nome`, `prezzo`, `descrizione`, `idFoto`, `idTaglia`, `colore`, `idTipo`) VALUES
(1, 'Maglietta Nera con logo', 24.99, 'Questa maglietta è realizzata al 100% in cotone di alta qualità. Disponibile in diverse taglie è il capo perfetto per ogni occasione.', 1, 1, 'Nero', 1),
(2, 'Maglietta Verde con logo', 24.99, 'Questa maglietta è realizzata al 100% in cotone di alta qualità. Disponibile in diverse taglie è il capo perfetto per ogni occasione.', 2, 2, 'Verde', 1),
(3, 'Maglietta Blu con logo', 24.99, 'Questa maglietta è realizzata al 100% in cotone di alta qualità. Disponibile in diverse taglie è il capo perfetto per ogni occasione.', 3, 3, 'Verde', 1),
(4, 'Maglietta Rossa con logo', 24.99, 'Questa maglietta è realizzata al 100% in cotone di alta qualità. Disponibile in diverse taglie è il capo perfetto per ogni occasione.', 4, 4, 'Rosso', 1),
(101, 'Berretto Bianco con logo', 19.99, 'Un cappello di alta qualità realizzato con materiali pregiati. Confortevole da indossare e disponibile in una varietà di colori, questo cappello è un accessorio versatile che ti farà distinguere con classe.', 101, 101, 'Bianco', 2),
(102, 'Berretto Nero con logo', 19.99, 'Un cappello di alta qualità realizzato con materiali pregiati. Confortevole da indossare e disponibile in una varietà di colori, questo cappello è un accessorio versatile che ti farà distinguere con classe.', 102, 102, 'Nero', 2),
(103, 'Cap da Pescatore Bianco', 19.99, 'Un cappello di alta qualità realizzato con materiali pregiati. Confortevole da indossare e disponibile in una varietà di colori, questo cappello è un accessorio versatile che ti farà distinguere con classe.', 103, 103, 'Bianco', 2),
(104, 'Cap da Pescatore Nero', 19.99, 'Un cappello di alta qualità realizzato con materiali pregiati. Confortevole da indossare e disponibile in una varietà di colori, questo cappello è un accessorio versatile che ti farà distinguere con classe.', 104, 104, 'Nero', 2),
(201, 'Zaino Nero con logo', 45.99, 'Realizzato con materiali durevoli e resistenti all usura, questo zaino è costruito per durare nel tempo. Le cuciture rinforzate e i materiali di alta qualità garantiscono una robustezza che resiste alle sollecitazioni quotidiane, mantenendo il tuo carico ', 201, 201, 'Nero', 3),
(202, 'Tazza Nera con Logo', 7.99, 'La tazza è dotata di una superficie liscia e facile da pulire, che non assorbe odori o sapori. Puoi goderti la tua bevanda preferita senza alcuna interferenza, sapendo che la tazza manterrà il suo aspetto impeccabile anche dopo un utilizzo prolungato.', 202, 202, 'Nero', 3),
(203, 'Marsupio Nero con logo', 15.99, 'La cintura regolabile garantisce una vestibilità personalizzata, adattandosi a diverse taglie e preferenze di indossamento. Puoi scegliere di indossare il marsupio intorno alla vita o sulle spalle, a seconda delle tue esigenze e dello stile che preferisci', 203, 203, 'Nero', 3),
(204, 'Bandana nera con logo', 4.99, 'La nostra bandana è realizzata con materiali di alta qualità, garantendo durata e comfort durante l uso. La sua morbidezza e leggerezza ti permetteranno di indossarla comodamente tutto il giorno, senza compromettere il tuo stile.', 204, 204, 'Nero', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `taglie`
--

CREATE TABLE `taglie` (
  `idTaglia` int NOT NULL,
  `xl` int DEFAULT NULL,
  `l` int DEFAULT NULL,
  `m` int DEFAULT NULL,
  `s` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `taglie`
--

INSERT INTO `taglie` (`idTaglia`, `xl`, `l`, `m`, `s`) VALUES
(1, 10, 5, 4, 3),
(2, 14, 7, 18, 0),
(3, 2, 24, 17, 17),
(4, 34, 19, 6, 54),
(101, 0, 0, 43, 0),
(102, 0, 0, 5, 0),
(103, 0, 0, 13, 0),
(104, 0, 0, 11, 0),
(201, 0, 0, 42, 0),
(202, 0, 0, 27, 0),
(203, 0, 0, 32, 0),
(204, 0, 0, 15, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int NOT NULL,
  `des` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `tipo`
--

INSERT INTO `tipo` (`idTipo`, `des`) VALUES
(1, 'Magliette'),
(2, 'Cappelli'),
(3, 'Accessori');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `idProdotto` (`idProdotto`),
  ADD KEY `idUtente` (`idUtente`);

--
-- Indici per le tabelle `contatto`
--
ALTER TABLE `contatto`
  ADD PRIMARY KEY (`idForm`);

--
-- Indici per le tabelle `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`idFoto`);

--
-- Indici per le tabelle `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idUtente`);

--
-- Indici per le tabelle `prodotto`
--
ALTER TABLE `prodotto`
  ADD PRIMARY KEY (`idProdotto`),
  ADD KEY `idFoto` (`idFoto`),
  ADD KEY `idTaglia` (`idTaglia`),
  ADD KEY `idTipo` (`idTipo`);

--
-- Indici per le tabelle `taglie`
--
ALTER TABLE `taglie`
  ADD PRIMARY KEY (`idTaglia`);

--
-- Indici per le tabelle `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `contatto`
--
ALTER TABLE `contatto`
  MODIFY `idForm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `foto`
--
ALTER TABLE `foto`
  MODIFY `idFoto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT per la tabella `login`
--
ALTER TABLE `login`
  MODIFY `idUtente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la tabella `prodotto`
--
ALTER TABLE `prodotto`
  MODIFY `idProdotto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT per la tabella `taglie`
--
ALTER TABLE `taglie`
  MODIFY `idTaglia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT per la tabella `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idTipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idProdotto`) REFERENCES `prodotto` (`idProdotto`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idUtente`) REFERENCES `login` (`idUtente`);

--
-- Limiti per la tabella `prodotto`
--
ALTER TABLE `prodotto`
  ADD CONSTRAINT `prodotto_ibfk_1` FOREIGN KEY (`idFoto`) REFERENCES `foto` (`idFoto`),
  ADD CONSTRAINT `prodotto_ibfk_2` FOREIGN KEY (`idTaglia`) REFERENCES `taglie` (`idTaglia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
