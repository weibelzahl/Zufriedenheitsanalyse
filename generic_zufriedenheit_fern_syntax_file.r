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
attributes(data)$variable.labels[11] <- "[... der didaktischen Vermittlung des Lehrstoffs insgesamt?] Wie zufrieden sind Sie mit..."
data[, 11] <- factor(data[, 11], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[11] <- "c1_1"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[... der Qualität der verwendeten Fernlehrbriefen?] Wie zufrieden sind Sie mit..."
data[, 12] <- factor(data[, 12], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[12] <- "c1_2"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[... den angebotenen Online-Veranstaltungen?] Wie zufrieden sind Sie mit..."
data[, 13] <- factor(data[, 13], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[13] <- "c1_3"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[... den angebotenen Präsenzphasen am Studienstandort?] Wie zufrieden sind Sie mit..."
data[, 14] <- factor(data[, 14], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[14] <- "c1_4"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[... dem zusätzlichen Lehrmaterial?] Wie zufrieden sind Sie mit..."
data[, 15] <- factor(data[, 15], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[15] <- "c1_5"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[... den interdisziplinären Bezügen innerhalb des Lehrangebots (insb. zwischen verschiedenen Lehrveranstaltungen)?] Wie zufrieden sind Sie mit..."
data[, 16] <- factor(data[, 16], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[16] <- "c1_6"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[... den Möglichkeiten der individuellen fachlichen Schwerpunktsetzung im Studium / Freiheiten bei der Modulwahl?] Wie zufrieden sind Sie mit..."
data[, 17] <- factor(data[, 17], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[17] <- "c1_7"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[... der Unterstützung des Lernens durch elektronische Medien (z.B. Speed-Learnings, Videos) ?] Wie zufrieden sind Sie mit..."
data[, 18] <- factor(data[, 18], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[18] <- "c1_8"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[... der Kommunikationsplattform PFHnet ?] Wie zufrieden sind Sie mit..."
data[, 19] <- factor(data[, 19], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[19] <- "c1_9"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Was gefällt Ihnen besonders gut an der Studiengestaltung Ihres Studiengangs an der PFH (Didaktik etc.)?"
names(data)[20] <- "D1"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Was können wir besser machen?"
names(data)[21] <- "d2"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Von welcher Art Lehrformat wünschen Sie sich mehr (Onlineveranstaltung, Videos etc.)?"
names(data)[22] <- "d3"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[... dem Vermitteln von Methoden des wissenschaftlichen Arbeitens?] Wie zufrieden sind Sie mit..."
data[, 23] <- factor(data[, 23], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[23] <- "e1_1"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[... der Anregung zur eigenen kritischen Reflexion?] Wie zufrieden sind Sie mit..."
data[, 24] <- factor(data[, 24], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[24] <- "e1_2"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[... der Anleitung zu selbstständigen Forschungsaufgaben?] Wie zufrieden sind Sie mit..."
data[, 25] <- factor(data[, 25], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[25] <- "e1_3"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[... der Möglichkeit des Einblicks in aktuelle Forschungsfragen?] Wie zufrieden sind Sie mit..."
data[, 26] <- factor(data[, 26], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[26] <- "e1_4"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "Was gefällt Ihnen besonders gut an dem Wissenschaftsbezug Ihres Studiengangs an der PFH?"
names(data)[27] <- "f1"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "Was können wir besser machen?"
names(data)[28] <- "f2"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[... dem praktischen Bezug Ihres Studiengangs?] Wie zufrieden sind Sie mit..."
data[, 29] <- factor(data[, 29], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[29] <- "g1_1"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[... der Ausgewogenheit von Praxiselementen und theoretischen Inhalten?] Wie zufrieden sind Sie mit..."
data[, 30] <- factor(data[, 30], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[30] <- "g1_2"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[... der Unterstützung beim Finden von Praxis- oder Praktikumsstellen?] Wie zufrieden sind Sie mit..."
data[, 31] <- factor(data[, 31], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[31] <- "g1_5"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "Was gefällt Ihnen besonders gut an der Anwendungsorientierung Ihres Studiengangs an der PFH?"
names(data)[32] <- "h1"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "Was können wir besser machen?"
names(data)[33] <- "h2"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[... dem Verhältnis zwischen Studierenden und Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 34] <- factor(data[, 34], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[34] <- "k1_1"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[... dem Engagement der Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 35] <- factor(data[, 35], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[35] <- "k1_2"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[... der Erreichbarkeit der Lehrenden?] Wie zufrieden sind Sie mit..."
data[, 36] <- factor(data[, 36], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[36] <- "k1_3"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[... der Rückmeldung zu Prüfungs- und Studienleistungen?] Wie zufrieden sind Sie mit..."
data[, 37] <- factor(data[, 37], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[37] <- "k1_4"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[... der Qualität der Beratung und Betreuung durch die PFH (Studien Service, Prüfungsamt etc.)?] Wie zufrieden sind Sie mit..."
data[, 38] <- factor(data[, 38], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[38] <- "k1_5"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[... der Informationsvielfalt auf myPFH?] Wie zufrieden sind Sie mit..."
data[, 39] <- factor(data[, 39], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[39] <- "k1_6"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[... der Struktur auf myPFH?] Wie zufrieden sind Sie mit..."
data[, 40] <- factor(data[, 40], levels=c(2,3,4,5,6,7),labels=c("sehr unzufrieden", "unzufrieden", "eher unzufrieden", "eher zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[40] <- "k1_7"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung durch die Lehrenden an der PFH?"
names(data)[41] <- "l1"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "Was können wir besser machen?"
names(data)[42] <- "l2"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "Was gefällt Ihnen besonders gut an der Beratung und Betreuung an der PFH (Studien Service, Prüfungsamt etc.)?"
names(data)[43] <- "l3"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "Was können wir besser machen?"
names(data)[44] <- "L4"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "Haben Sie Ihren Arbeitgeber über Ihr Studium informiert?"
data[, 45] <- factor(data[, 45], levels=c("A1","A2","A3"),labels=c("ja", "nein", "trifft nicht zu"))
names(data)[45] <- "m1"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "Werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 46] <- factor(data[, 46], levels=c(1,2),labels=c("ja", "nein"))
names(data)[46] <- "M2"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[finanziell] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 47] <- factor(data[, 47], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[47] <- "m3_1"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[flexible Arbeitszeit] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 48] <- factor(data[, 48], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[48] <- "m3_2"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[Studium als Teil der Arbeitszeit] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 49] <- factor(data[, 49], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[49] <- "m3_3"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Arbeitszeitreduktion] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
data[, 50] <- factor(data[, 50], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[50] <- "m3_4"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Sonstiges] Wie werden Sie von Ihrer Arbeitsstelle im Studium unterstützt?"
names(data)[51] <- "m3_other"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "Wie viele Stunden pro Woche wenden Sie durchschnittlich für das Studium auf?"
names(data)[52] <- "m4"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "Haben Sie vor dem Studium den zeitlichen Aufwand realistisch eingeschätzt?"
data[, 53] <- factor(data[, 53], levels=c("A1","A2","A3","A4","A5"),labels=c("ja", "nein", "nein, ich habe den Aufwand unterschätzt", "nein, ich habe den Aufwand überschätzt", "weiß nicht"))
names(data)[53] <- "m5"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[.... den von Ihnen gewählten Studiengang noch einmal wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 54] <- factor(data[, 54], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[54] <- "m6_1"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[... noch einmal ein Studium an der PFH Private Hochschule Göttingen wählen?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 55] <- factor(data[, 55], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[55] <- "m6_2"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[... sagen, dass Sie an Ihrer Wunschhochschule studieren?] Mit Ihrer Erfahrung als Studierende(r) an der PFH: Würden Sie..."
data[, 56] <- factor(data[, 56], levels=c(1,2,3),labels=c("ja", "nein", "weiß nicht"))
names(data)[56] <- "m6_3"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "Warum würden Sie Ihren Studiengang nicht noch einmal wählen?"
names(data)[57] <- "m7"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "Warum würden Sie sich nicht noch einmal für die PFH entscheiden?"
names(data)[58] <- "m8"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "Würden Sie Ihren Bekannten, Freund/-innen oder Kolleg/-innen die PFH weiterempfehlen?"
data[, 59] <- factor(data[, 59], levels=c(1,2,3,4),labels=c("ja", "ja, mit Einschränkung", "nein", "weiß nicht"))
names(data)[59] <- "m9"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "Bitte begründen Sie Ihre Wahl:"
names(data)[60] <- "m10"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "Was möchten Sie uns noch mitteilen? Hier finden Sie Platz für weitere Anmerkungen (z.B. Inhalt, Vermittlung, Organisation, dieser Fragebogen)."
names(data)[61] <- "n1"
