# AI--Projects
#Natural Language Processing project--using R language--Artificial Intelligence course.
1- Tidying the DATA To get TIDY TEXT

   install.packages("tidyverse")
   install.packages("tokenizers")

   library(tidyverse)
   library(tokenizers)

   text <- paste()

   words <- tokenize_words(text)

   print(words)

   length(words[[1]])

   tab <- table(words[[1]])
   tab <- data_frame(word = names(tab), count = as.numeric(tab))
   print(tab)

   tab <- arrange(tab, desc(count)) #arrange the data accourding to its count number.
   print(tab)
--------------------------------------------------------------------------------------------------------------------

   #The infix operator %>% is not part of base R, but is in fact defined by the package magrittr (CRAN) and is heavily used by dplyr (CRAN).

   It works like a pipe, hence the reference to Magritte's famous painting La trahison des images.

   What the function does is to pass the LHS to the first argument of the RHS.
--------------------------------------------------------------------------------------------------------------------
   
   
   data(stop_words)

   tidy_tab <- tidy_tab %>%
   anti_join(stop_words)
   
   #stop words are words that are not useful for an analysis, typically extremely common words such as “the”, “of”, “to”, 
    and so forth in English. We can remove stop words (kept in the tidytext dataset stop_words) with an anti_join().

   library(ggplot2)

  plot(x="count", y ="word" , type = "p",  xlim = NULL, ylim = NULL,
     log = "", main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
     ann = par("ann"), axes = TRUE, frame.plot = axes,
     panel.first = NULL, panel.last = NULL, asp = NA)

   
--------------------------------------------------------------------------------------------------------------------   
   sentences <- tokenize_sentences(text) #that splits a text into sentences.
   print(sentences)

   sentence_words <- tokenize_words(sentences[[1]]) #splits each sentence into words
   print(sentence_words)

   sapply(sentence_words, length) #get the length of each sentence "per words"

   #wf <- read_csv(sprintf("%s/%s", base_url, "word_frequency.csv")) 
   #wf
   
   filenametxt = “MUW.txt”

   path = “C:\Users\vip  net  2016\Desktop”

   wf<-read.table((file=file.path(path, filenametxt), header = TRUE)
   tab <- inner_join(tab, wf)
   print(tab)
   filter(tab, frequency < 0.1)



------------------------------------------------------------------------------------------------------------------------

sources : --Text Minning with R reference-- https://www.tidytextmining.com/tidytext.html
        : http://programminghistorian.github.io/ph-submissions/lessons/published/basic-text-processing-in-r
