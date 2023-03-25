//
//  main.swift
//  NotesAppConsole
//
//  Created by Юлия Sun on 25.03.2023.
//

import Foundation

var action: String?
var notes = [Note]()

let baseNote = Note(name: "Test", text: "Test")
notes.append(baseNote)

print("Здравствуйте, Вас приветствует программа для хранения заметок!\n")
showMenu()

while action != "0" {
    action = readLine()

    switch action {
        case "0": exitProgram()
        case "1": createNote()
        case "2": notesList()
        case "3": searchNote()
        case "4": showMenu()
        default: wrongAction()
    }
}


