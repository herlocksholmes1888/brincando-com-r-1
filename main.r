notas_fisica <- c(2, 4, 8, 0, 2, 0, 3, 5, 7, 4)
notas_direito <- c(6, 7, 10, 7, 8, 10, 4, 9, 5, 5)
nome_alunos <- c("Luisa", "Chris", "Vinicius", "Daniel", "Andrey", "Marianna", "Jhonathan", "Maria", "Matheus", "Gustavo")
names(notas_fisica) <- nome_alunos
names(notas_direito) <- nome_alunos

selecao_notas_fisica <- notas_fisica[c(3:5)]
selecao_notas_fisica

selecao_notas_direito <- notas_direito[c("Luisa", "Chris", "Vinicius")]
selecao_notas_direito

media <- mean(notas_fisica)
media2 <- mean(notas_direito)

png(file="histogramacerto.png")
hist(notas_fisica, main="Média das notas NP1 Física", xlab="Notas", ylab="Frequência", xlim=c(0,10), ylim=c(0,10), col="pink", border="blue", breaks=10)
dev.off()

# Está errado, porque você fez o histograma baseado em um único valor: o valor da média aritmética!
png(file="histogramabizarro.png")
hist(media, main="Média das notas NP1 Física", xlab="Notas", ylab="Frequência", xlim=c(0,10), ylim=c(0,10), col="pink", border="blue", breaks=10)
dev.off()
