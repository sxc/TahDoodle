//
//  Task.swift
//  TahDoodle
//
//  Created by Koharu on 2023/1/5.
//

import Foundation

struct Task: Equatable, Identifiable, Codable {
    let id: UUID
    
    let title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
        
    }
}
