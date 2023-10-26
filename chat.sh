#!/bin/bash

source .env
echo "API key: $OPENAI_API_KEY"

model="gpt-3.5-turbo"
prompt="You are a helpful assistant. Your answer won't over 30 words."
messages=$(jq -n '[]')
messages=$(echo $messages | jq --arg prompt "$prompt" '. + [{"role": "system", "content": $prompt}]')

echo "Enter..."

while true; do
    echo -n ">>> "
    read input

    #check if messages array is over ten item
    messages_length=$(echo $messages | jq '. | length')
    if [[ $messages_length -gt 10 ]]
    then
	  messages=$(echo $messages | jq 'del(.[1:3])')

    fi

    messages=$(echo $messages | jq --arg input "$input" '. + [{"role": "user", "content": $input}]')

    response=$(curl -s https://api.openai.com/v1/chat/completions \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $OPENAI_API_KEY" \
      -d @<(echo "{ \"model\": \"$model\", \"messages\": $messages }") \
    )

    assistant_reply=$(echo $response | jq -r '.choices[0].message.content')
    echo -e "Assistant: \n$assistant_reply"

    messages=$(echo $messages | jq --arg reply "$assistant_reply" '. + [{"role": "assistant", "content": $reply}]')
done

