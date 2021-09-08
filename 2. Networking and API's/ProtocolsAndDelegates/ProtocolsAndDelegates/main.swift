//
//  main.swift
//  ProtocolsAndDelegates
//
//  Created by Genesis on 9/7/21.
//

protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

class Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("the paramedic does chest compressions. 30 per second")
    }
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("the doctor does chest compressions. 30 per second")
    }
    
    func useStethescope() {
        print("listening for heart sounds")
    }
}

class Pediatrician: Doctor {
    override func performCPR() {
        super.performCPR()
        print("sings staying alive by the BeeGees")
    }
    
    func givesCandy(){
        print("Gives candy to children")
    }
}


let emilio = EmergencyCallHandler()
//let pete = Paramedic(handler: emilio)
let fabiola = Pediatrician(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
