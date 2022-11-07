
from question_model import Question
from data import question_data
from quiz_brain import QuizBrain

question_bank=[]

for question in question_data:
    q = question["text"]
    a = question["answer"]
    question_bank.append(Question(q, a))

quiz = QuizBrain(question_bank)

while quiz.question_remains():
    print(" ")
    if quiz.question_number == len(quiz.question_list)-1:
        quiz.next_question()
        print(" ")
        print(f"You've completed your quiz! Your final score is {quiz.score}/{quiz.question_number}")
        break
    else:
        quiz.next_question()
        remained_questions = len(quiz.question_list)-quiz.question_number
        print(" ")
        continue_quiz = input(f"There are {remained_questions} questions to go. Do you wanna continue the quiz? Y/N: ")
        if continue_quiz.upper() == "Y":
            continue
        else:
            print(" ")
            print(f"Your quiz score is {quiz.score}/{quiz.question_number}.")
            break
