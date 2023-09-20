
import UIKit
import Foundation

enum HealthStatus {
    case healthy
    case injured
    case sick
    case critical
}

struct Body {
    var height: Double
    var weight: Double
}

protocol Animal {
    var name: String { get }
    var canFly: Bool { get }
    var health: HealthStatus { get set }
    var body: Body { get }
    
    func move()
    func communicate()
    func sleep() async
}

extension Animal {
    func move() {
        print("\(name) está se movimentando")
    }
    
    func communicate() {
        print("\(name) está se comunicando")
    }

    func sleep() async {
        do {
            print("\(name) está dormindo")
            try await Task.sleep(until: .now + .seconds(2), clock: .continuous)
            print("\(name) acordou")
        } catch {}
    }
}

struct FlyableAnimal: Animal {
    var name: String
    var canFly: Bool
    var health: HealthStatus
    var body: Body
    
    init(name: String, body: Body) {
        self.name = name
        self.canFly = true
        self.health = .healthy
        self.body = body
    }
    
    func move() {
        print("\(name) está voando")
    }
}

struct Bird: Animal {
    var name: String
    var canFly: Bool
    var health: HealthStatus
    var body: Body
    
    init(name: String, body: Body) {
        self.name = name
        self.canFly = true
        self.health = .healthy
        self.body = body
    }
    
    func communicate() {
        print("\(name) está cantando")
    }
}

var animals: [Animal] = [
    FlyableAnimal(name: "morcego", body: Body(height: 8.0, weight: 0.5)),
    Bird(name: "Canário", body: Body(height: 0.6, weight: 0.5))
]

for animal in animals {
    if animal.canFly {
        print("Preparando voo...")
        animal.move()
    }
}

Task {
    for animal in animals {
        await animal.sleep()
    }
}
