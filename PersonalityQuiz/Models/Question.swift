//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Kristel Maximoova on 17.01.2022.
//


struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(animal: .dog, title: "Стейк"),
                    Answer(animal: .cat, title: "Рыба"),
                    Answer(animal: .rabbit, title: "Морковь"),
                    Answer(animal: .turtle, title: "Кукуруза")
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(animal: .dog, title: "Плавать"),
                    Answer(animal: .cat, title: "Спать"),
                    Answer(animal: .rabbit, title: "Обнимать"),
                    Answer(animal: .turtle, title: "Есть")
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(animal: .cat, title: "Ненавижу"),
                    Answer(animal: .rabbit, title: "Нервничаю"),
                    Answer(animal: .turtle, title: "Не замечаю"),
                    Answer(animal: .dog, title: "Обожаю")
                ]
            )
        ]
    }
}

struct Answer {
    let animal: Animal
    let title: String
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}


