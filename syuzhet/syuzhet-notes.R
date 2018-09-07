text_lau014 <- readLines("texts/lau-014.txt")

sentences_lau014 <- get_sentences(text_lau014)

sentiment_vector_lau014 <- get_sentiment(sentences_lau014, method="bing")

plot(sentiment_vector_lau014, type="l", main="Syuzhet Plot for LAU-014", xlab = "Narration", ylab= "Emotional Valence")

percent_vals_anc_088 <- get_percentage_values(sentiment_vector)
str(sentences)

# Longest Legend?

text_loh164 <- readLines("texts/loh-164.txt")
text_loh165 <- readLines("texts/loh-165.txt")

sentences_loh164 <- get_sentences(text_loh164)
sentences_loh165 <- get_sentences(text_loh165)
str(sentences_loh164)
str(sentences_loh165)
ft_values_lau_014 <- get_transformed_values(sentiment_vector_lau014, low_pass_size = 3, x_reverse_len = 100,scale_vals = TRUE, scale_range = FALSE)
plot(ft_values_lau_014, type ="h", main ="LAU 014 Using Transformed Values", xlab = "Narration", ylab = "Emotional Valence", col = "red")

sentiment_vector_loh_164 <- get_sentiment(sentences_loh164, method="bing")
ft_values_loh_164 <- get_transformed_values(sentiment_vector_loh_164, low_pass_size = 3, x_reverse_len = 100,scale_vals = TRUE, scale_range = FALSE)
plot(ft_values_loh_164, type ="h", main ="LOH 164 Using Transformed Values", xlab = "Narration", ylab = "Emotional Valence", col = "red")
