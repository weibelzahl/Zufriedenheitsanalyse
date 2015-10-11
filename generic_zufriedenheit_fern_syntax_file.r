# data <- read.csv("survey_779967_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)

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
attributes(data)$variable.labels[5] <- "In welchem Studiengang sind Sie eingeschrieben?"
data[, 5] <- factor(data[, 5], levels=c("A1","A2","A3","A4","A5","A9","A6","A7","A8"),labels=c("BABWL", "MABWL", "MAAM", "MBA", "BScPsy", "MScPsy", "BAWPsy", "MAWPsy", "MAAPsyW"))
names(data)[5] <- "a1"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Wie alt sind Sie?"
data[, 6] <- factor(data[, 6], levels=c("A2","A3","A4","A5"),labels=c("< 20 Jahre", "21 - 30 Jahre", "31 - 49 Jahre", "> 50 Jahre"))
names(data)[6] <- "a2"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "Welches ist Ihr Studienstandort?"
data[, 7] <- factor(data[, 7], levels=c(1,2,3,4,5,6,7,8,9,10,11,12),labels=c("Berlin", "Dortmund", "Göttingen", "Hannover", "Heidelberg", "Ludwigshafen", "München", "Ratingen/Düsseldorf", "Regensburg", "Springe", "Stade", "Austria"))
names(data)[7] <- "a3"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "In welchem Semester sind Sie aktuell?"
data[, 8] <- factor(data[, 8], levels=c(1,2,3,4,5,6,7,8,9),labels=c("1. Semester", "2. Semester", "3. Semester", "4. Semester", "5. Semester", "6. Semester", "7. Semester", "8. Semester", "9. Semester\n oder höher"))
names(data)[8] <- "a4"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Studieren Sie in der regulären oder in der verkürzten Studienzeitvariante?"
data[, 9] <- factor(data[, 9], levels=c("A1","A2"),labels=c("reguläre Variante", "verkürzte Variante"))
names(data)[9] <- "a5"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Sind Sie an der PFH als Erstsemester gestartet oder als Quereinsteiger?"
data[, 10] <- factor(data[, 10], levels=c("A1","A2"),labels=c("Erstsemester", "Quereinsteiger"))
names(data)[10] <- "a6"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "[... dem Verhältnis zwischen Studierenden und Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 11] <- factor(data[, 11], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[11] <- "k1_1"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[... dem Engagement der Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 12] <- factor(data[, 12], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[12] <- "k1_2"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[... der Erreichbarkeit der Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 13] <- factor(data[, 13], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[13] <- "k1_3"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[... der Rückmeldung zu Prüfungs- und Studienleistungen?] Wie zufrieden sind Sie mit..."
data[, 14] <- factor(data[, 14], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[14] <- "k1_4"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[... der Qualität der Beratung und Betreuung durch die PFH (Studien Service, Prüfungsamt etc.)?] Wie zufrieden sind Sie mit..."
data[, 15] <- factor(data[, 15], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[15] <- "k1_5"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[... der Informationsvielfalt auf myPFH?] Wie zufrieden sind Sie mit..."
data[, 16] <- factor(data[, 16], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[16] <- "k1_6"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[... der Struktur auf myPFH?] Wie zufrieden sind Sie mit..."
data[, 17] <- factor(data[, 17], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[17] <- "k1_7"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung durch die Lehrenden an der PFH?"
names(data)[18] <- "l1"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "Was können wir besser machen?"
names(data)[19] <- "l2"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung an der PFH (Studien Service, Prüfungsamt etc.)?"
names(data)[20] <- "l3"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Was können wir besser machen?"
names(data)[21] <- "L4"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Haben Sie Ihren Arbeitgeber über Ihr Studium informiert?"
data[, 22] <- factor(data[, 22], levels=c("A1","A2","A3"),labels=c("ja", "nein", "trifft nicht zu"))
names(data)[22] <- "m1"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "Werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 23] <- factor(data[, 23], levels=c(1,2),labels=c("ja", "nein"))
names(data)[23] <- "M2"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[finanziell] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 24] <- factor(data[, 24], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[24] <- "m3_1"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[flexible Arbeitszeit] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 25] <- factor(data[, 25], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[25] <- "m3_2"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Studium als Teil der Arbeitszeit] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 26] <- factor(data[, 26], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[26] <- "m3_3"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Arbeitszeitreduktion] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 27] <- factor(data[, 27], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[27] <- "m3_4"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[Sonstiges] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
names(data)[28] <- "m3_other"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "Wie viele Stunden pro Woche wenden Sie durchschnittlich für das Studium auf?"
names(data)[29] <- "m4"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "Haben Sie vor dem Studium den zeitlichen Aufwand realistisch eingeschätzt?"
data[, 30] <- factor(data[, 30], levels=c("A1","A2","A3","A4","A5"),labels=c("ja", "nein", "nein, ich habe den Aufwand unterschätzt", "nein, ich habe den Aufwand überschätzt", "weiß nicht"))
names(data)[30] <- "m5"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[.... den von Ihnen gewählten Studiengang noch einmal wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 31] <- factor(data[, 31], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[31] <- "m6_1"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[... noch einmal ein Studium an der PFH Private Hochschule Göttingen wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 32] <- factor(data[, 32], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[32] <- "m6_2"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[... sagen, dass Sie an Ihrer Wunschhochschule studieren?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 33] <- factor(data[, 33], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[33] <- "m6_3"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "Warum würden Sie Ihren Studiengang nicht noch einmal wählen?"
names(data)[34] <- "m7"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "Warum würden Sie sich nicht noch einmal für die PFH entscheiden?"
names(data)[35] <- "m8"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "Würden Sie Ihren Bekannten, Freund/-innen oder Kolleg/-innen die PFH weiterempfehlen?"
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4),labels=c("ja", "ja, mit Einschränkung", "nein", "weiß nicht"))
names(data)[36] <- "m9"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "Bitte begründen Sie Ihre Wahl:"
names(data)[37] <- "m10"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[... der didaktischen Vermittlung des Lehrstoffs insgesamt?] Wie zufrieden sind Sie mit..."
data[, 38] <- factor(data[, 38], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[38] <- "c1_1"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[... der Qualität der verwendeten Fernlehrbriefen?] Wie zufrieden sind Sie mit..."
data[, 39] <- factor(data[, 39], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[39] <- "c1_2"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[... den angebotenen Online-Veranstaltungen?] Wie zufrieden sind Sie mit..."
data[, 40] <- factor(data[, 40], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[40] <- "c1_3"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[... den angebotenen Präsenzphasen am Studienstandort?] Wie zufrieden sind Sie mit..."
data[, 41] <- factor(data[, 41], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[41] <- "c1_4"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[... dem zusätzlichen Lehrmaterial?] Wie zufrieden sind Sie mit..."
data[, 42] <- factor(data[, 42], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[42] <- "c1_5"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[... den interdisziplinären Bezügen innerhalb des Lehrangebots (insb. zwischen verschiedenen Lehrveranstaltungen)?] Wie zufrieden sind Sie mit..."
data[, 43] <- factor(data[, 43], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[43] <- "c1_6"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[... den Möglichkeiten der individuellen fachlichen Schwerpunktsetzung im Studium / Freiheiten bei der Modulwahl?] Wie zufrieden sind Sie mit..."
data[, 44] <- factor(data[, 44], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[44] <- "c1_7"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[... der Unterstützung des Lernens durch elektronische Medien (z.B. Speed-Learnings, Videos)] Wie zufrieden sind Sie mit..."
data[, 45] <- factor(data[, 45], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[45] <- "c1_8"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "Was gefällt Ihnen besonders gut an der Studiengestaltung Ihres Studiengangs an der PFH (Didaktik etc.)?"
names(data)[46] <- "D1"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "Was können wir besser machen?"
names(data)[47] <- "d2"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "Von welcher Art Lehrformat wünschen Sie sich mehr (Onlineveranstaltung, Videos etc.)?"
names(data)[48] <- "d3"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[... dem Vermitteln von Methoden des wissenschaftlichen Arbeitens?] Wie zufrieden sind Sie mit..."
data[, 49] <- factor(data[, 49], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[49] <- "e1_1"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[... der Anregung zur eigenen kritischen Reflexion?] Wie zufrieden sind Sie mit..."
data[, 50] <- factor(data[, 50], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[50] <- "e1_2"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[... der Anleitung zu selbstständigen Forschungsaufgaben?] Wie zufrieden sind Sie mit..."
data[, 51] <- factor(data[, 51], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[51] <- "e1_3"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[... der Möglichkeit des Einblicks in aktuelle Forschungsfragen?] Wie zufrieden sind Sie mit..."
data[, 52] <- factor(data[, 52], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[52] <- "e1_4"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "Was gefällt Ihnen besonders gut an dem Wissenschaftsbezug Ihres Studiengangs an der PFH?"
names(data)[53] <- "f1"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "Was können wir besser machen?"
names(data)[54] <- "f2"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[... dem praktischen Bezug Ihres Studiengangs?] Wie zufrieden sind Sie mit..."
data[, 55] <- factor(data[, 55], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[55] <- "g1_1"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[... der Ausgewogenheit von Praxiselementen und theoretischen Inhalten?] Wie zufrieden sind Sie mit..."
data[, 56] <- factor(data[, 56], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[56] <- "g1_2"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[... der Unterstützung beim Finden von Praxis- oder Praktikumsstellen?] Wie zufrieden sind Sie mit..."
data[, 57] <- factor(data[, 57], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[57] <- "g1_5"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "Was gefällt Ihnen besonders gut an der Anwendungsorientierung Ihres Studiengangs an der PFH?"
names(data)[58] <- "h1"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "Was können wir besser machen?"
names(data)[59] <- "h2"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "Was möchten Sie uns noch mitteilen? Hier finden Sie Platz für weitere Anmerkungen (z.B. Inhalt, Vermittlung, Organisation, dieser Frageboden)."
names(data)[60] <- "n1"
