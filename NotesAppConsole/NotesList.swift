//
//  NotesList.swift
//  NotesAppConsole
//
//  Created by Юлия Sun on 25.03.2023.
//

import Foundation

func printNote (_ note: Note) {
    splitLines()
    print ("Заголовок: \(note.name)")
    print("Содержание: \(note.text)")
    splitLines()

}
func notesList() {
    if notes.count != 0 {
        for note in notes {
            printNote(note)
        }
    } else {
        splitLines()
        print("Ваш список заметок пуст. \nЧтобы добавить заметку в список, введите 1. \nДля вызова меню действий введите 4")
        splitLines()
    }
}
