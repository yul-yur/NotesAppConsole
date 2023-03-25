//
//  Actions.swift
//  NotesAppConsole
//
//  Created by Юлия Sun on 25.03.2023.
//

import Foundation

func splitLines() {
    print ("#######################")
}

func exitProgram () {
    splitLines()
    print("Вы вышли из программы. Спасибо за использование, ждём Вас снова!")
    splitLines()
}

func showMenu() {
    splitLines()
    print("Наберите цифру для нужного Вам действия.")
    print("0 - Выход из программы")
    print("1 - Добавить новую заметку")
    print("2 - Вывести список всех заметок")
    print("3 - Поиск заметки")
    print("4 - Показать меню действий\n")
    splitLines()
}

func wrongAction () {
    splitLines()
    print ("Вы ввели неверную команду! Попытайтесь ещё раз. \nВведите 4 для показа меню действий ")
    splitLines()
}

func searchNote() {
    if notes.count != 0 {
        var searchResults = [Note]()
        var name = ""
        while name.isEmpty {
            print("Введите заголовок искомой заметки")
            splitLines()
            name = readLine() ?? name
        }
        for note in notes {
            if note.name == name {
                searchResults.append(note)
            }
        }
        if searchResults.count != 0 {
            for result in searchResults{
                print ("Найденные заметки:")
                printNote(result)
            }
        }
        else {
            splitLines()
            print("Ничего не найдено")
            splitLines()
        }
    }
    else {
        splitLines()
        print ("Ваш список заметок пуст.")
        splitLines()
    }
}



