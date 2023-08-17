//
//  Post.swift
//  Navigation
//
//  Created by Nikolay on 25.07.2023.
//

import Foundation

struct PostFeed {
    //title only for old homework with PostViewController
    var title: String
}

struct Post {
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

let postExamples: [Post] = [
    Post(author: "Ведьмак",
         description: "ПРОЩАЙ, СТАРЫЙ ДРУГ! Самый первый и последний кадр с Генри Кавиллом в образе Геральта из сериала «Ведьмак».",
         image: "Vedmak",
         likes: 110,
         views: 2321),
    Post(author: "Нетология",
         description: "Я учусь на нетологии",
         image: "Netology",
         likes: 120,
         views: 312),
]
