//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2022/10/12.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureB",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureB",
        frameworkDependencies: [
            .project(target: "FeatureDependencies", path: .relativeToFeature("FeatureDependencies"))
        ],
        testDependencies: []
    ),
    schemes: []
)
