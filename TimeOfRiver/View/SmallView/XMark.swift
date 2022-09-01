//
//  XMark.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/4/22.
//

import SwiftUI

struct XMark: View {
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
            
            XmarkInside()
                .frame(width: 57, height: 57)
                .foregroundColor(.white)
        }
        .frame(width: 116, height: 116)
        
    }
}

struct XmarkInside: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9332*width, y: 0.99076*height))
        path.addCurve(to: CGPoint(x: 0.89256*width, y: 0.97392*height), control1: CGPoint(x: 0.91849*width, y: 0.99076*height), control2: CGPoint(x: 0.90379*width, y: 0.98515*height))
        path.addLine(to: CGPoint(x: 0.02539*width, y: 0.10673*height))
        path.addCurve(to: CGPoint(x: 0.02539*width, y: 0.02544*height), control1: CGPoint(x: 0.00293*width, y: 0.08429*height), control2: CGPoint(x: 0.00293*width, y: 0.04788*height))
        path.addCurve(to: CGPoint(x: 0.10668*width, y: 0.02544*height), control1: CGPoint(x: 0.04784*width, y: 0.00299*height), control2: CGPoint(x: 0.08422*width, y: 0.00299*height))
        path.addLine(to: CGPoint(x: 0.97385*width, y: 0.89263*height))
        path.addCurve(to: CGPoint(x: 0.97385*width, y: 0.97392*height), control1: CGPoint(x: 0.9963*width, y: 0.91507*height), control2: CGPoint(x: 0.9963*width, y: 0.95148*height))
        path.addCurve(to: CGPoint(x: 0.9332*width, y: 0.99076*height), control1: CGPoint(x: 0.96262*width, y: 0.98515*height), control2: CGPoint(x: 0.94791*width, y: 0.99076*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.06603*width, y: 0.99076*height))
        path.addCurve(to: CGPoint(x: 0.02539*width, y: 0.97392*height), control1: CGPoint(x: 0.05132*width, y: 0.99076*height), control2: CGPoint(x: 0.03662*width, y: 0.98515*height))
        path.addCurve(to: CGPoint(x: 0.02539*width, y: 0.89263*height), control1: CGPoint(x: 0.00293*width, y: 0.95148*height), control2: CGPoint(x: 0.00293*width, y: 0.91507*height))
        path.addLine(to: CGPoint(x: 0.89256*width, y: 0.02544*height))
        path.addCurve(to: CGPoint(x: 0.97385*width, y: 0.02544*height), control1: CGPoint(x: 0.91501*width, y: 0.00299*height), control2: CGPoint(x: 0.95139*width, y: 0.00299*height))
        path.addCurve(to: CGPoint(x: 0.97385*width, y: 0.10673*height), control1: CGPoint(x: 0.9963*width, y: 0.04788*height), control2: CGPoint(x: 0.9963*width, y: 0.0843*height))
        path.addLine(to: CGPoint(x: 0.10668*width, y: 0.97392*height))
        path.addCurve(to: CGPoint(x: 0.06603*width, y: 0.99076*height), control1: CGPoint(x: 0.09545*width, y: 0.98515*height), control2: CGPoint(x: 0.08074*width, y: 0.99076*height))
        path.closeSubpath()
        return path
    }
}

struct XMark_Previews: PreviewProvider {
    static var previews: some View {
        XMark()
    }
}
