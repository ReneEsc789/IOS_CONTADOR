//
//  Marcador.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct Marcador: View {
    @State private var contador1 = 0
    @State private var contador2 = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("MARCADOR")
                .bold()
                .font(.largeTitle)
            HStack(spacing: 20) {
                VStack(spacing: 24) {
                    Text("Equipo 1")
                        .font(.title2)
                        .foregroundStyle(Color.blue)
                    Text("\(contador1)")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(contador1 >= 10 ? Color.blue : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 12) {
                        Button {
                            withAnimation {
                                contador1 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 44)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador1 == 0)
                        Button {
                            withAnimation {
                                contador1 += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 44)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    if contador1 >= 10 {
                        Text("¡Llegaste a 10!")
                            .font(.headline)
                    }
                }
                VStack(spacing: 10) {
                    Text("VS")
                        .font(.title)
                        .foregroundStyle(Color.gray)
                }
                VStack(spacing: 24) {
                    Text("Equipo 2")
                        .font(.title2)
                        .foregroundStyle(Color.orange)
                    Text("\(contador2)")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(contador2 >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 12) {
                        Button {
                            withAnimation {
                                contador2 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 44)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador2 == 0)
                        Button {
                            withAnimation {
                                contador2 += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 44)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    if contador2 >= 10 {
                        Text("¡Llegaste a 10!")
                            .font(.headline)
                    }
                }
                .tint(.orange)
            }
            .tint(.blue)
            .padding()

            VStack(spacing: 18) {
                Button("Reiniciar", role: .destructive) {
                    contador2 = 0
                    contador1 = 0
                }
            }
        }
    }
}

#Preview {
    Marcador()
}
