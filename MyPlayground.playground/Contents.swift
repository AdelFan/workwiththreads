import UIKit

public var condition = NSCondition()
public var isOpenForChange = false

let storage = Storage()
let generationThread = Generator(storage: storage)
let workingThread = Worker(storage: storage)
generationThread.start()
workingThread.start()
