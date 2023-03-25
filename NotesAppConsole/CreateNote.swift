//
//  CreateNote.swift
//  NotesAppConsole
//
//  Created by Юлия Sun on 25.03.2023.
//

import Foundation

struct Note {
    let name: String
    let text: String
}


func createNote() {

    print("Вы включили режим добавления заметки в список заметок.")

    let note = Note(name: writeName(), text: writeText())

    notes.append(note)
    print("Заметка успешно записана в ваш список!")
    splitLines()
}


func writeName() -> String {
    var name = ""
    while name.isEmpty {
        print("Введите заголовок заметки")
        name = readLine() ?? name
    }
    return name
}

func writeText() -> String {
    var text = ""
    while text.isEmpty {
        print("Введите текст заметки")
        text = readLine() ?? text
    }
    return text
}





