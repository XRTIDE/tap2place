//
//  ContentView.swift
//  tap2place
//
//  Created by yyx on 2024/02/06.
//

import RealityKit
import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      ARViewContainer().edgesIgnoringSafeArea(.all)
      Text("こんにちは、ARXR")
        .font(.largeTitle)
        .background(Color.white.opacity(0.7))
        .cornerRadius(10)
    }
  }
}
struct ARViewContainer: UIViewRepresentable {
  func makeUIView(context: Context) -> ARView {

    let arView = ARView(frame: .zero)

    // Create a cube model
    let mesh = MeshResource.generateBox(size: 0.1, cornerRadius: 0.005)

    let material = SimpleMaterial(color: .gray, roughness: 0.15, isMetallic: true)
    let model = ModelEntity(mesh: mesh, materials: [material])
    model.transform.translation.y = 0.05

    // Create horizontal plane anchor for the content
    let anchor = AnchorEntity(
      .plane(.horizontal, classification: .any, minimumBounds: SIMD2<Float>(0.2, 0.2)))
    anchor.children.append(model)

    // Add the horizontal plane anchor to the scene
    arView.scene.anchors.append(anchor)

    return arView

  }

  func updateUIView(_ uiView: ARView, context: Context) {
    test()
  }

}

func test() {
  // 直接访问C++代码
  let person: Person = Person(name: "yyx", age: 18)
  for person in allPerson() {
    print(person.name, person.age)
  }

}

#Preview {
  ContentView()
}
