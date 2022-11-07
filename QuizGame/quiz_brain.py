
class QuizBrain:
    
    def __init__(self, q_list) -> None:
        self.question_number = 0
        self.question_list = q_list
        self.score = 0
    
    def next_question(self):

        
        current_question = self.question_list[self.question_number]
        self.question_number += 1
        guess = input(f"Q.{self.question_number}: {current_question.text} True or False? ")

        self.check_answer(guess, current_question.answer)
    
    def check_answer(self, user_answer, correct_answer):
        if user_answer.lower() == correct_answer.lower():
            self.score +=1
            print(f"You got it right! Your current score is {self.score}/{self.question_number}.")
        
        else:
            print(f"You got it wrong! Your current score is {self.score}/{self.question_number}.")


    def question_remains(self):
        return self.question_number < len(self.question_list)
