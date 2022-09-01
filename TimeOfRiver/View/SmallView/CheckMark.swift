//
//  CheckMark.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/4/22.
//

import SwiftUI

struct CheckMark: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 1, green: 0.8117647171020508, blue: 0.4431372582912445, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.13725490868091583, green: 0.4627451002597809, blue: 0.8666666746139526, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0, y: 5.551115123125783e-17),
                        endPoint: UnitPoint(x: 1, y: 1)))
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            CheckMarkInside()
                .frame(width: 57, height: 57)
                .foregroundColor(.white)
        }
        .frame(width: 116, height: 116)
    }
}
struct CheckMarkInside: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.92621*width, y: 0.01703*height))
        path.addLine(to: CGPoint(x: 0.31746*width, y: 0.83559*height))
        path.addLine(to: CGPoint(x: 0.07379*width, y: 0.50793*height))
        path.addCurve(to: CGPoint(x: 0.05977*width, y: 0.49533*height), control1: CGPoint(x: 0.06978*width, y: 0.50254*height), control2: CGPoint(x: 0.06501*width, y: 0.49826*height))
        path.addCurve(to: CGPoint(x: 0.04323*width, y: 0.49091*height), control1: CGPoint(x: 0.05453*width, y: 0.49241*height), control2: CGPoint(x: 0.0489*width, y: 0.49091*height))
        path.addCurve(to: CGPoint(x: 0.02669*width, y: 0.49533*height), control1: CGPoint(x: 0.03755*width, y: 0.49091*height), control2: CGPoint(x: 0.03193*width, y: 0.49241*height))
        path.addCurve(to: CGPoint(x: 0.01266*width, y: 0.50793*height), control1: CGPoint(x: 0.02144*width, y: 0.49826*height), control2: CGPoint(x: 0.01667*width, y: 0.50254*height))
        path.addCurve(to: CGPoint(x: 0.00329*width, y: 0.52679*height), control1: CGPoint(x: 0.00865*width, y: 0.51333*height), control2: CGPoint(x: 0.00546*width, y: 0.51974*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.54904*height), control1: CGPoint(x: 0.00112*width, y: 0.53384*height), control2: CGPoint(x: 0, y: 0.5414*height))
        path.addCurve(to: CGPoint(x: 0.00329*width, y: 0.57128*height), control1: CGPoint(x: 0, y: 0.55667*height), control2: CGPoint(x: 0.00112*width, y: 0.56423*height))
        path.addCurve(to: CGPoint(x: 0.01266*width, y: 0.59014*height), control1: CGPoint(x: 0.00546*width, y: 0.57833*height), control2: CGPoint(x: 0.00865*width, y: 0.58474*height))
        path.addLine(to: CGPoint(x: 0.31746*width, y: height))
        path.addLine(to: CGPoint(x: 0.3786*width, y: 0.9178*height))
        path.addLine(to: CGPoint(x: 0.98734*width, y: 0.09923*height))
        path.addCurve(to: CGPoint(x: 0.99671*width, y: 0.08037*height), control1: CGPoint(x: 0.99135*width, y: 0.09383*height), control2: CGPoint(x: 0.99454*width, y: 0.08742*height))
        path.addCurve(to: CGPoint(x: width, y: 0.05813*height), control1: CGPoint(x: 0.99888*width, y: 0.07332*height), control2: CGPoint(x: width, y: 0.06576*height))
        path.addCurve(to: CGPoint(x: 0.99671*width, y: 0.03588*height), control1: CGPoint(x: width, y: 0.05049*height), control2: CGPoint(x: 0.99888*width, y: 0.04294*height))
        path.addCurve(to: CGPoint(x: 0.98734*width, y: 0.01703*height), control1: CGPoint(x: 0.99454*width, y: 0.02883*height), control2: CGPoint(x: 0.99135*width, y: 0.02242*height))
        path.addCurve(to: CGPoint(x: 0.97332*width, y: 0.00442*height), control1: CGPoint(x: 0.98333*width, y: 0.01163*height), control2: CGPoint(x: 0.97856*width, y: 0.00735*height))
        path.addCurve(to: CGPoint(x: 0.95677*width, y: 0), control1: CGPoint(x: 0.96807*width, y: 0.0015*height), control2: CGPoint(x: 0.96245*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.94023*width, y: 0.00442*height), control1: CGPoint(x: 0.9511*width, y: 0), control2: CGPoint(x: 0.94547*width, y: 0.0015*height))
        path.addCurve(to: CGPoint(x: 0.92621*width, y: 0.01703*height), control1: CGPoint(x: 0.93499*width, y: 0.00735*height), control2: CGPoint(x: 0.93022*width, y: 0.01163*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.92621*width, y: 0.01703*height))
        path.addLine(to: CGPoint(x: 0.31746*width, y: 0.83559*height))
        path.addLine(to: CGPoint(x: 0.07379*width, y: 0.50793*height))
        path.addCurve(to: CGPoint(x: 0.05977*width, y: 0.49533*height), control1: CGPoint(x: 0.06978*width, y: 0.50254*height), control2: CGPoint(x: 0.06501*width, y: 0.49826*height))
        path.addCurve(to: CGPoint(x: 0.04323*width, y: 0.49091*height), control1: CGPoint(x: 0.05453*width, y: 0.49241*height), control2: CGPoint(x: 0.0489*width, y: 0.49091*height))
        path.addCurve(to: CGPoint(x: 0.02669*width, y: 0.49533*height), control1: CGPoint(x: 0.03755*width, y: 0.49091*height), control2: CGPoint(x: 0.03193*width, y: 0.49241*height))
        path.addCurve(to: CGPoint(x: 0.01266*width, y: 0.50793*height), control1: CGPoint(x: 0.02144*width, y: 0.49826*height), control2: CGPoint(x: 0.01667*width, y: 0.50254*height))
        path.addCurve(to: CGPoint(x: 0.00329*width, y: 0.52679*height), control1: CGPoint(x: 0.00865*width, y: 0.51333*height), control2: CGPoint(x: 0.00546*width, y: 0.51974*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.54904*height), control1: CGPoint(x: 0.00112*width, y: 0.53384*height), control2: CGPoint(x: 0, y: 0.5414*height))
        path.addCurve(to: CGPoint(x: 0.00329*width, y: 0.57128*height), control1: CGPoint(x: 0, y: 0.55667*height), control2: CGPoint(x: 0.00112*width, y: 0.56423*height))
        path.addCurve(to: CGPoint(x: 0.01266*width, y: 0.59014*height), control1: CGPoint(x: 0.00546*width, y: 0.57833*height), control2: CGPoint(x: 0.00865*width, y: 0.58474*height))
        path.addLine(to: CGPoint(x: 0.31746*width, y: height))
        path.addLine(to: CGPoint(x: 0.3786*width, y: 0.9178*height))
        path.addLine(to: CGPoint(x: 0.98734*width, y: 0.09923*height))
        path.addCurve(to: CGPoint(x: 0.99671*width, y: 0.08037*height), control1: CGPoint(x: 0.99135*width, y: 0.09383*height), control2: CGPoint(x: 0.99454*width, y: 0.08742*height))
        path.addCurve(to: CGPoint(x: width, y: 0.05813*height), control1: CGPoint(x: 0.99888*width, y: 0.07332*height), control2: CGPoint(x: width, y: 0.06576*height))
        path.addCurve(to: CGPoint(x: 0.99671*width, y: 0.03588*height), control1: CGPoint(x: width, y: 0.05049*height), control2: CGPoint(x: 0.99888*width, y: 0.04294*height))
        path.addCurve(to: CGPoint(x: 0.98734*width, y: 0.01703*height), control1: CGPoint(x: 0.99454*width, y: 0.02883*height), control2: CGPoint(x: 0.99135*width, y: 0.02242*height))
        path.addCurve(to: CGPoint(x: 0.97332*width, y: 0.00442*height), control1: CGPoint(x: 0.98333*width, y: 0.01163*height), control2: CGPoint(x: 0.97856*width, y: 0.00735*height))
        path.addCurve(to: CGPoint(x: 0.95677*width, y: 0), control1: CGPoint(x: 0.96807*width, y: 0.0015*height), control2: CGPoint(x: 0.96245*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.94023*width, y: 0.00442*height), control1: CGPoint(x: 0.9511*width, y: 0), control2: CGPoint(x: 0.94547*width, y: 0.0015*height))
        path.addCurve(to: CGPoint(x: 0.92621*width, y: 0.01703*height), control1: CGPoint(x: 0.93499*width, y: 0.00735*height), control2: CGPoint(x: 0.93022*width, y: 0.01163*height))
        path.closeSubpath()
        return path
    }
}
struct CheckMark_Previews: PreviewProvider {
    static var previews: some View {
        CheckMark()
    }
}
