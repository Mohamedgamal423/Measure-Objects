//
//  ARSCNView.swift
//  Measure
//
//  Created by moh on 8/9/17.
//  Copyright © 2017 moh. All rights reserved.
//

import SceneKit
import ARKit

extension ARSCNView {
    func realWorldVector(screenPosition: CGPoint) -> SCNVector3? {
        let results = self.hitTest(screenPosition, types: [.featurePoint])
        guard let result = results.first else { return nil }
        return SCNVector3.positionFromTransform(result.worldTransform)
    }
}
