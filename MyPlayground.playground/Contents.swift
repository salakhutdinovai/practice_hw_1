import Foundation

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func carInfo() {
        print("Марка: \(brand), Модель: \(model), Год выпуска: \(year)")
    }
}

class CarWithEngine: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, year: Int, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year)
    }
}

func createCars() -> [CarWithEngine] {
    let cars = [
        CarWithEngine(brand: "Car1", model: "Model1", year: 2020, enginePower: 250, fuelConsumption: 9.8),
        CarWithEngine(brand: "Car2", model: "Model2", year: 2019, enginePower: 300, fuelConsumption: 11.5),
        CarWithEngine(brand: "Car3", model: "Model3", year: 2018, enginePower: 200, fuelConsumption: 8.8),
        CarWithEngine(brand: "Car4", model: "Model4", year: 2021, enginePower: 350, fuelConsumption: 12.3)
    ]
    
    return cars
}

func race(cars: [CarWithEngine]) {
    for i in stride(from: 0, to: cars.count, by: 2) {
        let car1 = cars[i]
        let car2 = cars[i + 1]
        
        print("Гонка между:")
        car1.carInfo()
        print("и")
        car2.carInfo()
        
        let winner = car1.enginePower >= car2.enginePower ? car1 : car2
        print("Победитель: \(winner.brand) \(winner.model)")
        print("\n")
    }
}

let cars = createCars()
race(cars: cars)
