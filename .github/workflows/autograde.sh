#!/bin/bash
# Autograding script for Unit 1

POINTS=0

# Test 1: Check if completion quiz exists and has been filled out
if [ -f "unit1-completion-quiz.md" ]; then
    # Check if student name is filled in (not just underscores)
    if grep -q "Student Name: [A-Za-z]" unit1-completion-quiz.md; then
        echo "✓ Student name provided"
        POINTS=$((POINTS + 10))
    else
        echo "✗ Student name missing"
    fi
    
    # Check if questions have answers (more than just blank lines)
    ANSWER_COUNT=$(grep -c "Answer:" unit1-completion-quiz.md)
    if [ "$ANSWER_COUNT" -ge 6 ]; then
        echo "✓ All questions addressed"
        POINTS=$((POINTS + 30))
    else
        echo "✗ Not all questions answered"
    fi
    
    # Check if score is provided
    if grep -q "Score: [0-9]" unit1-completion-quiz.md; then
        echo "✓ Game score recorded"
        POINTS=$((POINTS + 20))
    else
        echo "✗ Game score not recorded"
    fi
    
    # Check if completion date is filled
    if grep -q "Completion Date: [0-9]" unit1-completion-quiz.md; then
        echo "✓ Completion date provided"
        POINTS=$((POINTS + 10))
    else
        echo "✗ Completion date missing"
    fi
    
    echo "✓ Quiz file submitted"
    POINTS=$((POINTS + 30))
else
    echo "✗ Quiz file not found"
    exit 1
fi

echo ""
echo "========================================="
echo "Total Points: $POINTS / 100"
echo "========================================="

# Exit with success if points >= 70
if [ "$POINTS" -ge 70 ]; then
    exit 0
else
    exit 1
fi
