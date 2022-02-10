import Foundation

public class Storage {
    
    private var storage = [Chip]()
    
    var isEmpty: Bool {
        storage.isEmpty
    }
    
    public func pop() -> Chip {
        storage.removeLast()
    }
    
    public func push(_ value: Chip) {
        condition.lock()
        storage.append(value)
        isOpenForChange = true
        condition.signal()
        condition.unlock()
    }
}

