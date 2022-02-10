import Foundation

public class Generator: Thread {
    private var storage: Storage
    
   public init(storage: Storage) {
        self.storage = storage
        super.init()
    }
    
    public override func main() {
         let timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { _ in
                self.storage.push(Chip.make())
            print("Chip added to storage")
        })
        RunLoop.current.add(timer, forMode: .common)
        RunLoop.current.run(until: .now + 20)
    }
}
