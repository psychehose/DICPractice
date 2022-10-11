//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureA",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureA",
        frameworkDependencies: [
            .project(target: "FeatureDependencies", path: .relativeToFeature("FeatureDependencies"))
        ],
        testDependencies: []
    ),
    schemes: []
)

