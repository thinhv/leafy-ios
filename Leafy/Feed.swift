//
//  Feed.swift
//  Leafy
//
//  Created by Thinh Vo on 6.10.2020.
//

import Foundation

struct Feed: Identifiable {
    let id: UUID = UUID()
    let name: String
    let profileImage: String
    let image: String
    let likes: Int
    let comments: Int
    let isLiked: Bool
    let time: String
}

let feeds = [
    Feed(name: "Ballari Qacha", profileImage: "profile-image-1", image: "plant1", likes: 12, comments: 2, isLiked: false, time: "3 months"),
    Feed(name: "David Alaba", profileImage: "profile-image-2", image: "plant2", likes: 32, comments: 1, isLiked: true, time: "1 year"),
    Feed(name: "Thierry Henry", profileImage: "profile-image-3", image: "plant3", likes: 22, comments: 12, isLiked: true, time: "3 days"),
    Feed(name: "Nicolas Anelka", profileImage: "profile-image-4", image: "plant4", likes: 11, comments: 23, isLiked: false, time: "1 month"),
    Feed(name: "Andrea Rajacic", profileImage: "profile-image-5", image: "plant5", likes: 8, comments: 22, isLiked: true, time: "4 months"),
    Feed(name: "Arsène Wenger", profileImage: "profile-image-6", image: "plant6", likes: 31, comments: 23, isLiked: false, time: "2 years"),
    Feed(name: "Aubameyang", profileImage: "profile-image-7", image: "plant7", likes: 51, comments: 42, isLiked: true, time: "5 months"),
    Feed(name: "Janne Ahonen", profileImage: "profile-image-8", image: "plant8", likes: 30, comments: 0, isLiked: false, time: "1 week"),
    Feed(name: "Antti Niemi", profileImage: "profile-image-9", image: "plant9", likes: 30, comments: 2, isLiked: true, time: "5 weeks"),
    Feed(name: "Kari Lehtonen", profileImage: "profile-image-10", image: "plant10", likes: 30, comments: 12, isLiked: false, time: "3 months"),
    Feed(name: "Taylor Momsen", profileImage: "profile-image-11", image: "plant11", likes: 30, comments: 17, isLiked: false, time: "2 weeks"),
]
