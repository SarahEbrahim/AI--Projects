
library(tidyverse)
library(tokenizers)
library(tidytext)
library(dplyr)
library(ggplot2)
text <- paste("Neural Network Spam Filter !", "Your project should do this !",
              
              "AI Lab Starting this week we will run the AI lab in a mini projects format Your job will be to apply 
              the basic concepts from the literature in your lab assignments 
              You will be requested to apply the R language in solving the following problems Search  CSP MDP NLP
              You can pick a problem on your own that addresses the above mentioned problems You may work in groups Good Luck Dr Saleh", 
              
              "Your project should do this !",
              
              "Nice book to read try to download or you can ask for a soft copy right after class on Wednesday !
              Artificial Intelligence Foundations of Computational Agents 2nd Edition Kindle Edition",
              
              "MDPs PDF Slides !", "Adversarial Search PDF Slides !",
              
              "MiniMax with Alpha Beta Pruning !",
              
              "CS 161 Notes Minimax with Alpha Beta Pruning",
              
              "Trace Example Minimax Please try it out",
              
              "CSP topic material !",
              
              "AI final exam 2017 model answer key ! ! Dr Saleh",
              
              "CSP Slides Chapter 5 AIMA Book",
              
              "The CSP constraint jar file",
              
              "AI Prolog lab Take home project The 8puzzle problem is a puzzle invented and popularized by Noyes Palmer Chapman in the 1870s. 
              It is played on a 3 by 3 grid with 8 square blocks labeled 1 through 8 and a blank square. Your goal is to rearrange the blocks so that 
              they are in order. You are permitted to slide blocks horizontally or vertically into the blank square 
              The following shows a sequence of legal moves from an initial board position left to the goal position right 
              Your job is to solve the 8puzzle problem in prolog using using one of the uninformed search algorithms described in class. Dr Saleh",
              
              "AI Class Terminologies Homework means theory analysis tracing algorithms problem formulation problem solving Project means all the above coding Dr Saleh",
              
              "Informed Search Strategy Reading material",
              
              "AI Lab For the AI Lab assignments we will use SWI Prolog for the sessions SWI Prolog can be downloaded from",
              
              "Why do AI course usually adopt LISP or Prolog Please read the attached 2 page PDF document",
              
              "AI Study material Uninformed search Please read carefully Dr Saleh",
              
              "Graph Search vs Tree Search",
              
              "Homework & Projects Batch 1 extension Folks I decided to extend the deadline of batch one homework and projects till Tuesday Oct 10th Good Luck Dr Saleh",
              
              "First Programming assignment You need to implement the following algorithms using the Berkeley pac man project Depth First Search
              Breadth First Search Uniform Cost Search You can work in max group size of two Both students should write their names down on the projects documents
              Project1 due next Thursday You can download the search package startup code search.zip from",
              
              "AI Prolog Lab A farmer went to the market and bought a fox a goose, and a bag of beans on his way home he realizes that he has to cross a river, 
              there's a boat that can take him from one side to the other, but there's a problem The boat is only big enough for him and one of his belongings, 
              How can the farmer cross the river knowing that he cannot leave the fox and the goose alone because the fox will eat the goose nor the goose and the bag of beans 
              because the goose will eat the beans Your job is to find a solution for this problem using one of the search algorithms described in class in PROLOG. 
              You need to fomalulate the problem using the 5 key parameters described in class. You also need to show the search space and the algorithm you used 
              to implement solution. And finally you should measure the performance of your algorithm in terms of the 4 parameters described 
              in class Completeness, Optimality, Space, and Time complexity Dr Saleh",
              
              "Homework 1 Write a 5 page summary chapter2 AIMA book, Solve the following problems on page 112 of the AIMA book. Due Thursday",
              
              "Lecture HW In this problem you need to solve the TSP problem for a salesman traveling from Arad to Bucharest. 
              In your solution you need to find a PATH and a COST for the trip using the following search algorithms BFS, DFS, UCS. 
              This is a group project max group size 2 Due Thursday, Dr Mohamed Saleh",
              
              "Why do AI course usually adopt LISP or Prolog Please read the attached 2 page PDF document,",
              
              "AI Lab For the AI Lab assignments we will use SWI Prolog for the sessions. SWI Prolog can be downloaded from",
              
              "Background reading material for the current upcoming AI Prolog labs Example 1 Missionaries and Cannibals 47
              Improving the Representation 49 Example 2 The Traveling Salesman 50 Example 3 The Towers of Hanoi 54
              Please read through. Good Luck ! Dr. Saleh",
              
              "Definition uninformed search Overview. An uninformed a.k.a. blind , brute force search algorithm generates the search tree without using 
              any domain specific knowledge. The two basic approaches differ as to whether you check for a goal when a node is generated or when it is expanded.",
              
              "AI Study material Uninformed search ! ! Please read carefully Dr Saleh",
              
              "Prolog Lab for Next week Towers of Hanoi puzzle. The objective of this famous puzzle is to move N disks from the left peg to the right peg 
              using the center peg as an auxiliary holding peg. At no time can a larger disk be placed upon a smaller disk. The following diagram depicts 
              the starting setup for N=3 disks. You job is implement a solution to the Towers of Hanoi problem in Prolog during the upcoming lab session. 
              You need to write, test, and execute the code during the lab. No after lab submissions.",
              
              "Homework & Projects Batch 1 extension Folks I decided to extend the deadline of batch one homework and projects till Tuesday Oct. 10th - 11:59 pm.
              Good Luck Dr. Saleh",
              
              "In two weeks time we will cover most of the AI search algorithms. The week after we will have in class 1 hour written Quiz/Exam from 11-11:55 am. 
              Then we will continue with the class material in lecture 3 @ 12:30 pm. Dr. Saleh",
              
              
              "Study Reading material for this week official course document Uninformed Search Strategies Dr Saleh",
              
              "PAC MAN project Important note All of your search functions need to return a list of actions that will lead the agent from 
              the start to the goal These actions all have to be legal moves valid directions, no moving through walls Hint Each algorithm is very similar. Algorithms for DFS, BFS, 
              UCS, and A differ only in the details of how the fringe is managed So, concentrate on getting DFS right and the rest should be relatively straightforward.
              Implement the depth first search DFS algorithm in the depthFirstSearch function in search py To make your algorithm complete, 
              write the graph search version of DFS, which avoids expanding any already visited states Good Luck !",
              
              "Homework Project deliverables for Thursday Homework should be done individually and programming assignments could be 
              done in a max group size of 2. Please NO late submissions You need to create a tar file with all your work divided into subfolders
              Your file name should follow the standard file naming convention of first name last name section tar Good Luck !",
              
              "Simple intro to AI search techniques ! ! Dr. Saleh",
              
              "A good prolog book in case if you still looking for one. The art of Prolog Book by Leon Sterling MIT Press Dr. Mohamed Saleh",
              
              "Reading Material Since we are currently working on algorithms perhaps you should read the MATHEMATICAL BACKGROUND appendices at the end of 
              the AIMA book. Attached in PDF Dr Saleh",
              
              "Folks Please make sure your name is listed in the attached PDF file for the AI Class 2017/18. If your name is not listed, or if you already passed 
              the course, write your name down in a comment. Dr. Saleh",
              
              "Folks Make sure to start working on your AI assignments: HW Project Lab Section. I will start grading asynchronously this year. Hence I will update 
              the year work EXCEL file weekly and I will not be able to role back to old assignments. The # hashtag for the batch 1 of homework assignments is shown below
              #AI_B1_HU_2017 Dr. Saleh",
              
              "Regarding your PROLOG programing labs you are expected to submit in lab Problem analysis document Algorithmic formulation of the problem
              Prolog code Trace  Test document Dr. Saleh",
              
              "Brief introduction to complexity classes !",
              
              "The AI Intro warm-up slides.",
              
              "The AI pacman project at Berkeley Please read and download the python package.",
              
              "SWI Prolog Tutorial",
              
              "Web link to the PDF version of a python text book. You will need one once you start implementing your paceman search algorithms ! !",
              
              "Folks You're asked to work on the prolog subject this week during the sections and the labs with your TAs. 
              My recommendations will be to start worming up with the concept and the basics of the Prolog language. You can try to get the prolog basic 
              concept in section before you start the hands on sessions during the AI lab this week. Best Dr. Saleh",
              
              "Please read the attached AI Report: AI & Technology",
              
              "If you would like to warm up and learn more about prolog try to run the following exercise",
              
              "AIMA 3ed supporting code and data files Please download ! !",
              
              "Helwan University Computer Engineering 
              AI 2017  Course Syllabus
              Textbook: Artificial Intelligence A Modern Approach Third edition by Stuart Russell and Peter Norvig
              Part I Artificial Intelligence
              Chapter 1 Introduction  1
              Chapter 2 Intelligent Agents 34
              Part II Problem solving
              Chapter 3 Solving Problems by Searching  64
              Chapter 4 Beyond Classical Search  120
              Chapter 5 Adversarial Search  161
              Chapter 6 Constraint Satisfaction Problems  202
              Part III Knowledge, reasoning, and planning
              Chapter 7 Logical Agents  234
              Chapter 8 First-Order Logic  285
              Chapter 9 Inference in First-Order Logic 322
              Chapter 10 Classical Planning 366
              Chapter 11 Planning and Acting in the Real World 401
              Chapter 12 Knowledge Representation 437
              Part IV Uncertain knowledge and reasoning
              Chapter 13 Quantifying Uncertainty  480
              Chapter 14 Probabilistic Reasoning  510
              Chapter 15 Probabilistic Reasoning over Time  566
              Chapter 16 Making Simple Decisions  610
              Chapter 17 Making Complex Decisions  645
              Part V Learning
              Chapter 18 Learning from Examples  693
              Chapter 19 Knowledge in Learning  768
              Chapter 20 Learning Probabilistic Models  802
              Chapter 21 Reinforcement Learning  830
              Part VI Communicating, perceiving, and acting
              Chapter 22 Natural Language Processing  860
              Chapter 23 Natural Language for Communication  888
              Chapter 24 Perception  928
              Chapter 25 Robotics  971
              Programming Languages will chosen and agreed upon for each individual assignment project. 
              Course certified languages are R, Python, and Prolog
              Homework done individually.
              Projects max group of 3 max
              Grade distribution
              Written Final 90 Pts.
              Year Work 60 Pts.
              Year Work includes Attendance, HW, Labs, Midterm, Projects, Oral Exam
              Good Luck ! Dr. Mohamed Saleh",
              
              "Week 1
              Wed Sept 20th Lecture 2 AI Introduction & Class Policy
              Wed Sept 20th Lecture 3 Solving Problems by Searching
              Good Luck ! Dr. Saleh",
              
              "AI Textbooks 1 Artificial Intelligence A Modern Approach 3rd Edition
              Optional textbooks
              2. Artificial Intelligence Structures and Strategies for Complex Problem Solving 5th Edition 
              3, Introduction to Algorithms, MIT Press 3rd Edition
              4. An Introduction to Statistical Learning with Applications in R Springer Texts in Statistics 1st Edition
              Programming Languages
              1. Prolog
              2. Python
              3. R
              Assessment 
              Homework, Reports, Projects, Programming Assignments, Quizzes, Group Presentation, Midterm, Oral Exam, and Written Final",

"AI Course Description
The discipline of artificial intelligence ai is concerned with building systems that think and act like humans or rationally on some absolute scale. 
This course is an introduction to the field, with special emphasis on sound modern methods. The topics include knowledge representation, 
problem solving via search, constraint satisfaction problems, game playing, logical and probabilistic reasoning, planning, machine learning 
decision trees, neural nets, reinforcement learning, and genetic algorithms and Hidden Markov Models. Programming exercises will concretize 
the key methods. The course targets graduate students and advanced undergraduates. Evaluation is based on programming assignments, homework, oral exam, 
a midterm exam, and a final exam.",

"HW 1 textbook AIMA Chapter one 
Critical reading and comprehensive summary. 
Max 5 pages written in your own words. 
Due September 20 th
Good luck ! Dr. Saleh",

"It simply means don't always go hard on your self")


words <- tokenize_words(text)

#show(words)

length(words[[1]])

tab <- table(words[[1]])
tab <- data_frame(word = names(tab), count = as.numeric(tab))
print(tab)

tab <- arrange(tab, desc(count))
print(tab)

data(stop_words)

tidy_tab <- tab %>%
  anti_join(stop_words)
cat("^^ Words after using Stop_Words Function ^^ \n")
print(tidy_tab)

#frequently used data
data <- filter(tidy_tab, count > 11)
cat(" ^^ After Using Filter to select words with count no. ABOVE 11 ^^ \n")
show(data)

most_used <- data %>%
  mutate(word = reorder(word, count)) %>%
  ggplot(aes(word, count)) +
  geom_col() +
  xlab(NULL) +
  coord_flip()
show(most_used)
