//
//  AddButton.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/4/22.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack {
        Circle()
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 1, green: 0.8117647171020508, blue: 0.4431372582912445, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.13725490868091583, green: 0.4627451002597809, blue: 0.8666666746139526, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0, y: 5.551115123125783e-17),
                    endPoint: UnitPoint(x: 1, y: 1)))
        
            MyCustomShape()
                .frame(width: 79, height: 76)
                .foregroundColor(.white)
                .padding(.leading, 10)
                .padding(.bottom, 10)
        }
        .frame(width: 116, height: 116)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
    }
}
struct MyCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.30743*width, y: 0.55261*height))
        path.addCurve(to: CGPoint(x: 0.26161*width, y: 0.52066*height), control1: CGPoint(x: 0.28701*width, y: 0.55317*height), control2: CGPoint(x: 0.26879*width, y: 0.5407*height))
        path.addLine(to: CGPoint(x: 0.1423*width, y: 0.18751*height))
        path.addCurve(to: CGPoint(x: 0.14435*width, y: 0.15009*height), control1: CGPoint(x: 0.13787*width, y: 0.17518*height), control2: CGPoint(x: 0.138*width, y: 0.16115*height))
        path.addCurve(to: CGPoint(x: 0.17126*width, y: 0.1244*height), control1: CGPoint(x: 0.14863*width, y: 0.13801*height), control2: CGPoint(x: 0.15911*width, y: 0.1289*height))
        path.addLine(to: CGPoint(x: 0.49906*width, y: 0.00316*height))
        path.addCurve(to: CGPoint(x: 0.56116*width, y: 0.03259*height), control1: CGPoint(x: 0.52487*width, y: -0.00639*height), control2: CGPoint(x: 0.55178*width, y: 0.00636*height))
        path.addLine(to: CGPoint(x: 0.6805*width, y: 0.36572*height))
        path.addCurve(to: CGPoint(x: 0.67843*width, y: 0.40316*height), control1: CGPoint(x: 0.68491*width, y: 0.37806*height), control2: CGPoint(x: 0.68478*width, y: 0.39208*height))
        path.addCurve(to: CGPoint(x: 0.65154*width, y: 0.42883*height), control1: CGPoint(x: 0.67265*width, y: 0.4158*height), control2: CGPoint(x: 0.66369*width, y: 0.42433*height))
        path.addLine(to: CGPoint(x: 0.32371*width, y: 0.55009*height))
        path.addCurve(to: CGPoint(x: 0.30743*width, y: 0.55261*height), control1: CGPoint(x: 0.31765*width, y: 0.55232*height), control2: CGPoint(x: 0.31255*width, y: 0.55247*height))
        path.addLine(to: CGPoint(x: 0.30743*width, y: 0.55261*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.1823*width, y: 0.15526*height))
        path.addCurve(to: CGPoint(x: 0.17334*width, y: 0.16379*height), control1: CGPoint(x: 0.17775*width, y: 0.15693*height), control2: CGPoint(x: 0.17526*width, y: 0.15961*height))
        path.addCurve(to: CGPoint(x: 0.17264*width, y: 0.17628*height), control1: CGPoint(x: 0.1714*width, y: 0.16801*height), control2: CGPoint(x: 0.17098*width, y: 0.17167*height))
        path.addLine(to: CGPoint(x: 0.29197*width, y: 0.50943*height))
        path.addCurve(to: CGPoint(x: 0.31266*width, y: 0.51923*height), control1: CGPoint(x: 0.29528*width, y: 0.51867*height), control2: CGPoint(x: 0.30508*width, y: 0.52204*height))
        path.addLine(to: CGPoint(x: 0.64049*width, y: 0.39799*height))
        path.addCurve(to: CGPoint(x: 0.64946*width, y: 0.38942*height), control1: CGPoint(x: 0.64505*width, y: 0.3963*height), control2: CGPoint(x: 0.64752*width, y: 0.39364*height))
        path.addCurve(to: CGPoint(x: 0.65014*width, y: 0.37695*height), control1: CGPoint(x: 0.6514*width, y: 0.38522*height), control2: CGPoint(x: 0.6518*width, y: 0.38157*height))
        path.addLine(to: CGPoint(x: 0.53083*width, y: 0.04382*height))
        path.addCurve(to: CGPoint(x: 0.51012*width, y: 0.034*height), control1: CGPoint(x: 0.52752*width, y: 0.03456*height), control2: CGPoint(x: 0.51923*width, y: 0.03064*height))
        path.addLine(to: CGPoint(x: 0.1823*width, y: 0.15526*height))
        path.addLine(to: CGPoint(x: 0.1823*width, y: 0.15526*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.07113*width, y: height))
        path.addCurve(to: CGPoint(x: 0.02368*width, y: 0.95401*height), control1: CGPoint(x: 0.04581*width, y: 1.00021*height), control2: CGPoint(x: 0.02545*width, y: 0.98028*height))
        path.addLine(to: CGPoint(x: 0.00012*width, y: 0.60464*height))
        path.addCurve(to: CGPoint(x: 0.01199*width, y: 0.56916*height), control1: CGPoint(x: -0.00076*width, y: 0.59153*height), control2: CGPoint(x: 0.00308*width, y: 0.57805*height))
        path.addCurve(to: CGPoint(x: 0.0441*width, y: 0.55199*height), control1: CGPoint(x: 0.01921*width, y: 0.55874*height), control2: CGPoint(x: 0.0315*width, y: 0.55291*height))
        path.addLine(to: CGPoint(x: 0.39408*width, y: 0.52644*height))
        path.addCurve(to: CGPoint(x: 0.42817*width, y: 0.53879*height), control1: CGPoint(x: 0.40668*width, y: 0.52553*height), control2: CGPoint(x: 0.41962*width, y: 0.52952*height))
        path.addCurve(to: CGPoint(x: 0.44469*width, y: 0.5722*height), control1: CGPoint(x: 0.43829*width, y: 0.54794*height), control2: CGPoint(x: 0.44381*width, y: 0.55909*height))
        path.addLine(to: CGPoint(x: 0.46823*width, y: 0.92157*height))
        path.addCurve(to: CGPoint(x: 0.45638*width, y: 0.95707*height), control1: CGPoint(x: 0.46913*width, y: 0.9347*height), control2: CGPoint(x: 0.46527*width, y: 0.94816*height))
        path.addCurve(to: CGPoint(x: 0.42427*width, y: 0.97423*height), control1: CGPoint(x: 0.44758*width, y: 0.96759*height), control2: CGPoint(x: 0.43687*width, y: 0.97331*height))
        path.addLine(to: CGPoint(x: 0.07429*width, y: 0.99977*height))
        path.addLine(to: CGPoint(x: 0.07113*width, y: height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39787*width, y: 0.55913*height))
        path.addLine(to: CGPoint(x: 0.04631*width, y: 0.58479*height))
        path.addCurve(to: CGPoint(x: 0.0356*width, y: 0.59051*height), control1: CGPoint(x: 0.04157*width, y: 0.58514*height), control2: CGPoint(x: 0.03854*width, y: 0.58701*height))
        path.addCurve(to: CGPoint(x: 0.03165*width, y: 0.60234*height), control1: CGPoint(x: 0.03268*width, y: 0.59403*height), control2: CGPoint(x: 0.03132*width, y: 0.59741*height))
        path.addLine(to: CGPoint(x: 0.05521*width, y: 0.95171*height))
        path.addCurve(to: CGPoint(x: 0.07208*width, y: 0.96696*height), control1: CGPoint(x: 0.05587*width, y: 0.96157*height), control2: CGPoint(x: 0.06419*width, y: 0.96754*height))
        path.addLine(to: CGPoint(x: 0.42205*width, y: 0.94142*height))
        path.addCurve(to: CGPoint(x: 0.43275*width, y: 0.9357*height), control1: CGPoint(x: 0.42678*width, y: 0.94109*height), control2: CGPoint(x: 0.42983*width, y: 0.93922*height))
        path.addCurve(to: CGPoint(x: 0.4367*width, y: 0.92387*height), control1: CGPoint(x: 0.43569*width, y: 0.93219*height), control2: CGPoint(x: 0.43705*width, y: 0.9288*height))
        path.addLine(to: CGPoint(x: 0.41316*width, y: 0.5745*height))
        path.addCurve(to: CGPoint(x: 0.40765*width, y: 0.56336*height), control1: CGPoint(x: 0.41283*width, y: 0.56957*height), control2: CGPoint(x: 0.41103*width, y: 0.56642*height))
        path.addCurve(to: CGPoint(x: 0.39785*width, y: 0.55913*height), control1: CGPoint(x: 0.40585*width, y: 0.5602*height), control2: CGPoint(x: 0.40101*width, y: 0.55891*height))
        path.addLine(to: CGPoint(x: 0.39787*width, y: 0.55913*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.8231*width, y: 0.98676*height))
        path.addCurve(to: CGPoint(x: 0.80566*width, y: 0.98299*height), control1: CGPoint(x: 0.81661*width, y: 0.98581*height), control2: CGPoint(x: 0.81158*width, y: 0.98548*height))
        path.addLine(to: CGPoint(x: 0.4858*width, y: 0.85008*height))
        path.addCurve(to: CGPoint(x: 0.45939*width, y: 0.78517*height), control1: CGPoint(x: 0.46068*width, y: 0.83949*height), control2: CGPoint(x: 0.44923*width, y: 0.81136*height))
        path.addLine(to: CGPoint(x: 0.58837*width, y: 0.45237*height))
        path.addCurve(to: CGPoint(x: 0.61421*width, y: 0.42562*height), control1: CGPoint(x: 0.59315*width, y: 0.44004*height), control2: CGPoint(x: 0.60236*width, y: 0.42959*height))
        path.addCurve(to: CGPoint(x: 0.65063*width, y: 0.42482*height), control1: CGPoint(x: 0.62519*width, y: 0.41948*height), control2: CGPoint(x: 0.63881*width, y: 0.41985*height))
        path.addLine(to: CGPoint(x: 0.96989*width, y: 0.55929*height))
        path.addCurve(to: CGPoint(x: 0.99632*width, y: 0.62418*height), control1: CGPoint(x: 0.99501*width, y: 0.56987*height), control2: CGPoint(x: 1.00646*width, y: 0.59799*height))
        path.addLine(to: CGPoint(x: 0.86732*width, y: 0.95698*height))
        path.addCurve(to: CGPoint(x: 0.84148*width, y: 0.98373*height), control1: CGPoint(x: 0.86254*width, y: 0.96931*height), control2: CGPoint(x: 0.85333*width, y: 0.97976*height))
        path.addCurve(to: CGPoint(x: 0.82312*width, y: 0.98676*height), control1: CGPoint(x: 0.83526*width, y: 0.98649*height), control2: CGPoint(x: 0.82815*width, y: 0.98709*height))
        path.addLine(to: CGPoint(x: 0.8231*width, y: 0.98676*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.63219*width, y: 0.45468*height))
        path.addCurve(to: CGPoint(x: 0.62656*width, y: 0.45591*height), control1: CGPoint(x: 0.63071*width, y: 0.45406*height), control2: CGPoint(x: 0.62863*width, y: 0.45498*height))
        path.addCurve(to: CGPoint(x: 0.61795*width, y: 0.46482*height), control1: CGPoint(x: 0.62242*width, y: 0.45774*height), control2: CGPoint(x: 0.61974*width, y: 0.4602*height))
        path.addLine(to: CGPoint(x: 0.48896*width, y: 0.79762*height))
        path.addCurve(to: CGPoint(x: 0.49777*width, y: 0.81925*height), control1: CGPoint(x: 0.48537*width, y: 0.80687*height), control2: CGPoint(x: 0.48889*width, y: 0.81551*height))
        path.addLine(to: CGPoint(x: 0.81703*width, y: 0.95372*height))
        path.addCurve(to: CGPoint(x: 0.82916*width, y: 0.95346*height), control1: CGPoint(x: 0.82146*width, y: 0.95558*height), control2: CGPoint(x: 0.825*width, y: 0.95529*height))
        path.addCurve(to: CGPoint(x: 0.83777*width, y: 0.94453*height), control1: CGPoint(x: 0.8333*width, y: 0.95163*height), control2: CGPoint(x: 0.83598*width, y: 0.94915*height))
        path.addLine(to: CGPoint(x: 0.96676*width, y: 0.61173*height))
        path.addCurve(to: CGPoint(x: 0.95796*width, y: 0.5901*height), control1: CGPoint(x: 0.97035*width, y: 0.60249*height), control2: CGPoint(x: 0.96683*width, y: 0.59384*height))
        path.addLine(to: CGPoint(x: 0.63866*width, y: 0.45564*height))
        path.addCurve(to: CGPoint(x: 0.63216*width, y: 0.45468*height), control1: CGPoint(x: 0.63719*width, y: 0.45501*height), control2: CGPoint(x: 0.63423*width, y: 0.45377*height))
        path.addLine(to: CGPoint(x: 0.63219*width, y: 0.45468*height))
        path.closeSubpath()
        return path
    }
}


struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
