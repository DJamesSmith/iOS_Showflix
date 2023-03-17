import Foundation
import UIKit
import CoreData

class DataPersistenceManager {

    enum DatabaseError: Error {
        case failedToSaveData
        case failedToFetchData
        case failedToDeleteData
    }

    static let shared = DataPersistenceManager()

    func downloadTitleWith(model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }

        let context = appDelegate.persistentContainer.viewContext
        let item = ItemTitle(context: context)

        item.id = Int64(model.id)
        item.originalTitle = model.originalTitle
        item.originalName = model.originalName
        item.overview = model.overview
        item.posterPath = model.posterPath
        item.releaseDate = model.releaseDate
        item.voteCount = Int64(model.voteCount)
        item.originalTitle = model.originalTitle

        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabaseError.failedToSaveData))
        }
    }

    func fetchingTitlesFromDataBase(completion: @escaping (Result<[ItemTitle], Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }

        let context = appDelegate.persistentContainer.viewContext

        let request: NSFetchRequest<ItemTitle>
        request = ItemTitle.fetchRequest()

        do {
            let titles = try context.fetch(request)
            completion(.success(titles))
        } catch {
            completion(.failure(DatabaseError.failedToFetchData))
        }
    }
    
    func deleteTitleWith(model: ItemTitle, completion: @escaping (Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }

        let context = appDelegate.persistentContainer.viewContext
        
        context.delete(model)     // Asking the database model to delete a certain object
        
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabaseError.failedToDeleteData))
        }
    }
}
