//
//  BookingView.swift
//  SportLinkup
//
//  Created by Aljwhra Alnasser on 25/12/2023.
//

import SwiftUI

struct BookingView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let arryTime = [
        
     Time(time: "1-2", price: "200"),
     Time(time: "1-3", price: "300"),
     Time(time: "1-4", price: "400"),
     Time(time: "1-5", price: "500"),
     Time(time: "1-6", price: "600"),
     Time(time: "1-7", price: "700"),
     Time(time: "1-8", price: "800"),
     Time(time: "1-9", price: "900")
     
     ]
    
    var body: some View {
        
        
        VStack{
           
                HStack(spacing: 123){
                    
                    HStack{
                        Button{
                            
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                        }
                        
                    }
                    
                    Text("Cycling")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .frame(width: 350,alignment: .leading)
                .padding(.top)
                
            ScrollView{
                
                VStack(alignment: .leading){
                    
                    Text("Select")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    
                }
                .frame(width: 350,alignment: .leading)
                .padding(.top)
                .padding(.bottom)
                CalendarView()
                PlayersStepper()
                
                Divider()
                    .background(Color("mygreen"))
                    .frame(width: 345)
                
                
               
                VStack(alignment: .leading){
                    Text("Time")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .frame(width: 350,alignment: .leading)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(arryTime) { time in
                            time
                        }
                    }.padding()
                }
                
                HStack(alignment: .center, spacing: 0) {
                    Button(action: {
                        
                    
                        
                    }, label: {
                        Text("Next")
                    })
                }
                .padding(.leading, 123)
                .padding(.trailing, 122)
                .padding(.vertical, 10)
                .frame(width: 370, alignment: .center)
                .background(Color(red: 0.82, green: 0.91, blue: 0.91))
                .cornerRadius(10)
            }
            .padding(.top)
        }
    }
}

#Preview {
    BookingView()
}