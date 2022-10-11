//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "DICPractice",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.appTargets(
        name: "DICPractice",
        appDependencies: [
            .project(
                target: "Features",
                path: .relativeToFeature("Features")
            )
        ],
        testDependencies: []
    ),
    schemes: [],
    additionalFiles: []
)
