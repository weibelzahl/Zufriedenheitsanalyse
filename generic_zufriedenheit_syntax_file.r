# data <- read.csv("aa_zu.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, encoding="UTF-8")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "An welchem PFH-Campus studieren Sie?"
data[, 5] <- factor(data[, 5], levels=c("A1","A2","A3"),labels=c("Göttingen", "Berlin", "Stade"))
names(data)[5] <- "G1Q00001"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "In welchem Studiengang sind Sie eingeschrieben?"
#data[, 6] <- factor(data[, 6], levels=c("A1","A3","A4","A6","A2","A7","A5"),labels=c("Bachelor General Management", "Bachelor Business Administration", "Bachelor Orthobionik", "Bachelor Verbundwerkstoffe/Composites", "Master General Management", "Master Medizinische Orthobionik", "Master Verbundwerkstoffe/Composites"))
data[, 6] <- factor(data[, 6], levels=c("A1","A3","A4","A6","A2","A7","A5"),labels=c("BScGM", "BScBA", "BScO", "BScV", "MScGM", "MScMO", "MScV"))
names(data)[6] <- "G1Q00002"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "In welchem Semester studieren Sie?"
data[, 7] <- factor(data[, 7], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9"),labels=c("1. Semester", "2. Semester", "3. Semester", "4. Semester", "5. Semester", "6. Semester", "7. Semester", "8. Semester", "9. Semester\n und höher"))
names(data)[7] <- "G1Q00003"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "[... dem Berufsfeld- und Praxisbezug der Lehrveranstaltungen?] Wie zufrieden sind Sie mit ...."
data[, 8] <- factor(data[, 8], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[8] <- "G2Q00001_SQ002"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "[... der inhaltlichen Ausrichtung des Lehrangebots (z.B. Themen)?] Wie zufrieden sind Sie mit ...."
data[, 9] <- factor(data[, 9], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[9] <- "G2Q00001_SQ003"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "[... den interdisziplinären Bezügen innerhalb des Studiengangs?] Wie zufrieden sind Sie mit ...."
data[, 10] <- factor(data[, 10], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[10] <- "G2Q00001_SQ004"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[... dem verwendeten Lehrmaterial?] Wie zufrieden sind Sie mit ...."
data[, 11] <- factor(data[, 11], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[11] <- "G2Q00001_SQ005"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "[... der didaktischen Vermittlung des Lehrstoffs insgesamt?] Wie zufrieden sind Sie mit ...."
data[, 12] <- factor(data[, 12], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[12] <- "G2Q00001_SQ006"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[... den Möglichkeiten der individuellen fachlichen Schwerpunktsetzung im Studium/Freiheiten bei der Modulwahl?] Wie zufrieden sind Sie mit ...."
data[, 13] <- factor(data[, 13], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[13] <- "G2Q00001_SQ007"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[... den Auswahlmöglichkeiten im Wahlpflichtbereich?] Wie zufrieden sind Sie mit ...."
data[, 14] <- factor(data[, 14], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[14] <- "G2Q00001_SQ008"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[... dem Niveau des Lehrangebots?] Wie zufrieden sind Sie mit ...."
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[15] <- "G2Q00001_SQ009"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[... der zeitlichen Belastung durch Veranstaltungsvor-/nachbereitung und Prüfungen?] Wie zufrieden sind Sie mit ...."
data[, 16] <- factor(data[, 16], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[16] <- "G2Q00001_SQ010"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[... der Gestaltung des Stundenplans? (inkl. Informationen über Verschiebungen; Ausfall)] Wie zufrieden sind Sie mit ...."
data[, 17] <- factor(data[, 17], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[17] <- "G2Q00001_SQ011"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[... den Möglichkeiten der internationalen Vernetzung während Ihres Studiums (Auslandssemester, Auslandshochschulpartner,Auslandspraktika, etc.) ] Wie zufrieden sind Sie mit ...."
data[, 18] <- factor(data[, 18], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[18] <- "G2Q00001_SQ012"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "Was gefällt Ihnen besonders gut an der Studiengestaltung Ihres Studiengangs an der PFH?"
names(data)[19] <- "G2Q00002"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Was können wir besser machen?"
names(data)[20] <- "G2Q00003"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[... der Vermittlung von Methoden des wissenschaftlichen Arbeitens?] Wie zufrieden sind Sie mit ..."
data[, 21] <- factor(data[, 21], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[21] <- "G3Q00001_SQ001"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[... der Schulung von wissenschaftlichem Denken allgemein?] Wie zufrieden sind Sie mit ..."
data[, 22] <- factor(data[, 22], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[22] <- "G3Q00001_SQ009"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[... der Vermittlung von interessantem und überraschendem Wissen?] Wie zufrieden sind Sie mit ..."
data[, 23] <- factor(data[, 23], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[23] <- "G3Q00001_SQ002"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[... der Anregung zur eigenen kritischen Reflexion?] Wie zufrieden sind Sie mit ..."
data[, 24] <- factor(data[, 24], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[24] <- "G3Q00001_SQ003"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[... der Bezugnahme auf zentrale und innovative Forschungsergebnisse?] Wie zufrieden sind Sie mit ..."
data[, 25] <- factor(data[, 25], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[25] <- "G3Q00001_SQ004"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[... der Möglichkeit an Forschung innerhalb der Hochschule teilzunehmen?] Wie zufrieden sind Sie mit ..."
data[, 26] <- factor(data[, 26], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[26] <- "G3Q00001_SQ006"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[... der Anleitung zu selbstständigen Forschungsaufgaben?] Wie zufrieden sind Sie mit ..."
data[, 27] <- factor(data[, 27], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[27] <- "G3Q00001_SQ007"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "Was gefällt Ihnen besonders gut an dem Wissenschaftsbezug Ihres Studiengangs an der PFH?"
names(data)[28] <- "G3Q00002"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "Was können wir besser machen?"
names(data)[29] <- "G3Q00003"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[... der Möglichkeit Einblicke in die Praxis zu gewinnen? (z.B. über Praktika, Projekte usw.)] Wie zufrieden sind Sie mit ..."
data[, 30] <- factor(data[, 30], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[30] <- "G4Q00001_SQ001"
# LimeSurvey Field type: A
data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[... dem Verhältnis von Praxiselementen und theoretischen Inhalten?] Wie zufrieden sind Sie mit ..."
data[, 31] <- factor(data[, 31], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[31] <- "G4Q00001_SQ002"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[... der Unterstützung bei der Suche nach Praktikumsstellen?] Wie zufrieden sind Sie mit ..."
data[, 32] <- factor(data[, 32], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[32] <- "G4Q00001_SQ004"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[... der Qualität der Praxiselemente?] Wie zufrieden sind Sie mit ..."
data[, 33] <- factor(data[, 33], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[33] <- "G4Q00001_SQ003"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "[... der Organisation der Praxisphase(n)? (angemessene Dauer, zeitliche Integration in das Studium)] Wie zufrieden sind Sie mit ..."
data[, 34] <- factor(data[, 34], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[34] <- "G4Q00001_SQ006"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[... der Vor- und Nachbereitung der Praxisphase(n)?] Wie zufrieden sind Sie mit ..."
data[, 35] <- factor(data[, 35], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[35] <- "G4Q00001_SQ007"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[... den Stellenangeboten für Praktika auf myPFH (interner Bereich)?] Wie zufrieden sind Sie mit ..."
data[, 36] <- factor(data[, 36], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[36] <- "G4Q00001_SQ010"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[... dem praktische Bezug Ihres Studiengangs? ] Wie zufrieden sind Sie mit ..."
data[, 37] <- factor(data[, 37], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[37] <- "G4Q00001_SQ011"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "Was gefällt Ihnen besonders gut an dem Praxisbezug Ihres Studiengangs an der PFH?"
names(data)[38] <- "G4Q00002"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "Was können wir besser machen?"
names(data)[39] <- "G4Q00003"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[... der Berufsrelevanz der vermittelten Kompetenzen?] Wie zufrieden sind Sie mit ..."
data[, 40] <- factor(data[, 40], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[40] <- "G5Q00001_SQ001"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[... der Berufsrelevanz des angestrebten Abschlusses?] Wie zufrieden sind Sie mit ..."
data[, 41] <- factor(data[, 41], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[41] <- "G5Q00001_SQ003"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[... der Unterstützung beim Übergang in den Beruf? (Career Services etc.)] Wie zufrieden sind Sie mit ..."
data[, 42] <- factor(data[, 42], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[42] <- "G5Q00001_SQ002"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[... den Informationsveranstaltungen über Berufsfelder? (Jobbörsen, Gastvorträge etc.)] Wie zufrieden sind Sie mit ..."
data[, 43] <- factor(data[, 43], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[43] <- "G5Q00001_SQ004"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[... den Rahmenbedingungen, die Sie an der PFH zur Ihrer Persönlichkeitsentwicklung vorfinden? (Soft Skills, ehrenamtlichen Engagement, Sprachtraining, Projektarbeit etc.)] Wie zufrieden sind Sie mit ..."
data[, 44] <- factor(data[, 44], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[44] <- "G5Q00001_SQ005"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[.. dem Fördern sozialer Kompetenzen? (Softskilltrainigs etc.)] Wie zufrieden sind Sie mit ..."
data[, 45] <- factor(data[, 45], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[45] <- "G5Q00001_SQ006"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[...dem Fördern von Fremdsprachenkompetenzen?] Wie zufrieden sind Sie mit ..."
data[, 46] <- factor(data[, 46], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[46] <- "G5Q00001_SQ007"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[.. dem Fördern von IT-Kompetenzen?] Wie zufrieden sind Sie mit ..."
data[, 47] <- factor(data[, 47], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[47] <- "G5Q00001_SQ008"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[... dem Fördern von Projektmanagement-Konzepten?] Wie zufrieden sind Sie mit ..."
data[, 48] <- factor(data[, 48], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[48] <- "G5Q00001_SQ009"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "Welche Aspekte zum Fördern des Berufsfelds- und Arbeitsmarktbezugs beziehungsweise der Angebote zur beruflichen Orientierung gefallen Ihnen besonders gut an der PFH?"
names(data)[49] <- "G5Q00002"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "Was können wir besser machen?"
names(data)[50] <- "G5Q00003"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[... dem Verhältnis zwischen Studierenden und Lehrenden?] Wie zufrieden sind Sie mit ..."
data[, 51] <- factor(data[, 51], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[51] <- "G6Q00001_SQ001"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[... dem Engagement der Lehrenden?] Wie zufrieden sind Sie mit ..."
data[, 52] <- factor(data[, 52], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[52] <- "G6Q00001_SQ002"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[... der Erreichbarkeit der Lehrenden?] Wie zufrieden sind Sie mit ..."
data[, 53] <- factor(data[, 53], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[53] <- "G6Q00001_SQ003"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "[... der Qualität der Beratung und Betreuung durch die PFH? (Studienservice; Prüfungsamt etc.)] Wie zufrieden sind Sie mit ..."
data[, 54] <- factor(data[, 54], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[54] <- "G6Q00001_SQ004"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "[... Rückmeldungen zu Klausuren, Hausarbeiten, Präsentationen etc.?] Wie zufrieden sind Sie mit ..."
data[, 55] <- factor(data[, 55], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[55] <- "G6Q00001_SQ005"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[... Skripte und Lehrmaterialien?] Wie zufrieden sind Sie mit ..."
data[, 56] <- factor(data[, 56], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[56] <- "G6Q00001_SQ006"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[… der Informationsvielfalt auf myPFH (interner Bereich)?] Wie zufrieden sind Sie mit ..."
data[, 57] <- factor(data[, 57], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[57] <- "G6Q00001_SQ007"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[… der Struktur auf myPFH (interner Bereich) ?] Wie zufrieden sind Sie mit ..."
data[, 58] <- factor(data[, 58], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[58] <- "G6Q00001_SQ009"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "[... der Vielfalt der Stipendienangebote?] Wie zufrieden sind Sie mit ..."
data[, 59] <- factor(data[, 59], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[59] <- "G6Q00001_SQ008"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "[... der Organisation und Betreuung durch das International Office-Team?] Wie zufrieden sind Sie mit ..."
data[, 60] <- factor(data[, 60], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[60] <- "G6Q00001_SQ010"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[... mit den Informationen, die Sie auf der International-Office-Website finden?] Wie zufrieden sind Sie mit ..."
data[, 61] <- factor(data[, 61], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[61] <- "G6Q00001_SQ011"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung durch die Lehrenden an der PFH?"
names(data)[62] <- "G6Q00002"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "Was können wir besser machen?"
names(data)[63] <- "G6Q00003"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung durch die PFH (Studienservice, Prüfungsamt etc.)?"
names(data)[64] <- "G6Q00004"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "Was können wir besser machen?"
names(data)[65] <- "G6Q00005"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "[... dem Umfang der zur Verfügung gestellten Literatur (Bibliothek, ebsco, Statistia, SUB)] Wie zufrieden sind Sie mit ..."
data[, 66] <- factor(data[, 66], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[66] <- "G6Q00006_SQ001"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "[... der Erreichbarkeit der zur Verfügung gestellten Literatur] Wie zufrieden sind Sie mit ..."
data[, 67] <- factor(data[, 67], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("sehr zufrieden", "zufrieden", "eher zufrieden", "eher unzufrieden", "unzufrieden", "sehr unzufrieden"))
names(data)[67] <- "G6Q00006_SQ002"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "Was können wir besser machen?"
names(data)[68] <- "G6Q00007"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "[.... den von Ihnen gewählten Studiengang noch einmal wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 69] <- factor(data[, 69], levels=c("A1","A2","A3"),labels=c("ja", "nein", "weiß nicht"))
names(data)[69] <- "G7Q00001_SQ001"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "[... noch einmal ein Studium an der PFH Private Hochschule Göttingen wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 70] <- factor(data[, 70], levels=c("A1","A2","A3"),labels=c("ja", "nein", "weiß nicht"))
names(data)[70] <- "G7Q00001_SQ002"
# LimeSurvey Field type: A
data[, 71] <- as.character(data[, 71])
attributes(data)$variable.labels[71] <- "[... sagen, dass Sie an Ihrer Wunschhochschule studieren?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 71] <- factor(data[, 71], levels=c("A1","A2","A3"),labels=c("ja", "nein", "weiß nicht"))
names(data)[71] <- "G7Q00001_SQ003"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "Warum würden Sie den Studiengang nicht noch einmal wählen?"
names(data)[72] <- "G7Q00002"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- "Warum würden Sie nicht noch einmal ein Studium an der PFH Private Hochschule Göttingen wählen?"
names(data)[73] <- "G7Q00003"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "Würden Sie Ihren Bekannten, Freund/-innen oder Kolleg/-innen die PFH weiterempfehlen?"
data[, 74] <- factor(data[, 74], levels=c("A1","A2","A3","A4"),labels=c("ja", "ja, mit Einschränkung", "nein", "weiß nicht"))
names(data)[74] <- "G7Q00004"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "Warum würden Sie die PFH nicht bzw. nur eingeschränkt weiterempfehlen?"
names(data)[75] <- "G7Q00005"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "Haben Sie einen Abbruch des Studiums schon einmal ernsthaft in Betracht gezogen?"
data[, 76] <- factor(data[, 76], levels=c(1,2),labels=c("Ja", "Nein"))
names(data)[76] <- "G8Q00001"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Vorstellung der Studieninhalte wurden nicht erfüllt] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 77] <- factor(data[, 77], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[77] <- "G8Q00002_1"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[Studienunlust] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 78] <- factor(data[, 78], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[78] <- "G8Q00002_2"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Persönliche Gründe] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 79] <- factor(data[, 79], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[79] <- "G8Q00002_3"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Finanzielle Schwierigkeiten] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 80] <- factor(data[, 80], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[80] <- "G8Q00002_4"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Überlastung] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 81] <- factor(data[, 81], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[81] <- "G8Q00002_5"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Schwierigkeiten mit dem Lehrpersonal oder Kommilitonen] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 82] <- factor(data[, 82], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[82] <- "G8Q00002_6"
# LimeSurvey Field type: F
data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Schlechte Noten] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 83] <- factor(data[, 83], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[83] <- "G8Q00002_7"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Jobangebot erhalten] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
data[, 84] <- factor(data[, 84], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[84] <- "G8Q00002_8"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[Sonstiges] Warum haben Sie schon einmal ernsthaft einen Studienabbruch in Betracht gezogen?"
names(data)[85] <- "G8Q00002_other"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "Was möchten Sie uns noch mitteilen? Hier finden Sie Platz für weitere Anmerkungen (z. B. Inhalt, Vermittlung, Organisation, dieser Fragebogen)."
names(data)[86] <- "G9Q00001"
