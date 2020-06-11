//
//  sampleTests.swift
//  sampleTests
//
//  Created by Divya Lingam on 19/05/20.
//  Copyright © 2020 Divya Lingam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import sample

class sampleTests: QuickSpec {

    override func spec() {
        describe("LoginView .....") {
             var subject: LoginTestViewController!
            var username : String = "falsuwaidi"
           var password : String = "123456"
             beforeEach {
//                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginTestViewController") as? LoginTestViewController
//                          let v  = subject.view
                       }
                       
                             context("username and password are required for login") {
                                   //teardown
                                   afterEach {
                                     username  = ""
                                     password = ""
                                   }
                                   //setup
                                   beforeEach {
                                     username = "falsuwaidi"
                                     password = "123456"
                                     
                                   }
            }
                               fit("username can't be empty") {
                                  expect(username).toNot(equal(""))
                                }
                                
                                fit("password is equal to") {
                                  expect(password).toEventually(contain(("123456")))
                                }
                                
                                fit("password can't be less then 6 chracter") {
                                  expect(password.count).to(beGreaterThanOrEqualTo(6))
                                }
                                
            context("username and password are required for login") {
                it("login btn click"){
                    expect(subject.loginClick()).toNot(beNil())
                }
                it("10 value"){
                    expect(subject.loginClick()).toNot(beNil())
                }
                it("value"){
                    expect(subject.switchPressed()).toNot(beNil())
                }
            
            }

            
        }
    }

}
