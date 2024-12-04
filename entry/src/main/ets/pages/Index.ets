import { OpenAI } from '@iuroc/openai'

@Entry
@Component
struct Index {
    build() {
        Button('Send').onClick(() => {
            const openai = new OpenAI({
                apiKey: '',
                baseURL: ''
            })
            openai.chat.completions.create({
                model: 'gpt-4o-mini',
                messages: [
                    { role: 'user', content: '' }
                ]
            })
        })
    }
}