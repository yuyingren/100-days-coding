

def minimum_movie_days(durations):
    durations.sort()
    count = 0
    leftmost = 0
    rightmost = len(durations) - 1
    print(leftmost)
    print(rightmost)
    while leftmost <= rightmost:
        count += 1
        print(count)
        if durations[leftmost] + durations[rightmost] <=3:
            leftmost += 1
            print(leftmost)
        rightmost -= 1
        print(rightmost)
    print(count)
    return count

print(minimum_movie_days([1.14,2.5,1.25,1.97,1.74]))