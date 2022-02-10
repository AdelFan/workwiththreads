import Foundation

public class Worker: Thread {
    private let storage: Storage
    
    
    public init(storage: Storage) {
        self.storage = storage
    }
    
    public override func main() {
        while (storage.isEmpty) {
            while (!isOpenForChange) {
                condition.wait()
            }
            storage.pop().soldering()
            print("Chip soldered")
            if storage.isEmpty {
                isOpenForChange = false
            }
        }
    }
}
