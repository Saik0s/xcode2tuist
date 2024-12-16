import ProjectDescription

let project = Project(
    name: "Sample",
    targets: [
        .target(
            name: "Sample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Sample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sample/Sources/**"],
            resources: ["Sample/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SampleTests",
            infoPlist: .default,
            sources: ["Sample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Sample")]
        ),
    ]
)
