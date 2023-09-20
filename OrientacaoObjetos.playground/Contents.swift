import UIKit

enum HealthStatus {
    case healthy
    case injured
    case sick
    case critical
}

struct Body {
    var height: Double
    var weigth: Double
}

class Animal {
    var name: String
    var canFly: Bool
    var health: HealthStatus = .healthy
    var body: Body
    
    init(name: String, canFly: Bool, body: Body) {
        self.name = name
        self.canFly = canFly
        self.body = body
    }
    
    convenience init(name: String, body: Body) {
        self.init(name: name, canFly: false, body: body)
    }
    
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

class Flyable: Animal {
    init(name: String, body: Body) {
        super.init(name: name, canFly: true, body: body)
    }
    
    override func move() {
        print("\(name) está voando")
    }
}

class Bird: Flyable {
    override func communicate() {
        print("\(name) está cantando")
    }
}

var animals: [Animal] = [
    Animal(name: "gato", canFly: false, body: Body(height: 30.0, weigth: 5.0)),
    Flyable(name: "morcego", body: Body(height: 8.0, weigth: 0.5)),
    Bird(name: "Canário", body: Body(height: 0.6, weigth: 0.5))
]

for animal in animals {
    if animal.canFly {
        print("Preparando voo...")
        animal.move()
    }
}

let onlyFlyables = animals.filter { animal in
    animal.canFly
}

Task {
    for animal in onlyFlyables {
        await animal.sleep()
    }
}
