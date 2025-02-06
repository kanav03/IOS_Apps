/*:
## App Exercise - Step Competition

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 Below is a `User` struct and three `User` instances. These will be used throughout the exercises below to simulate competition in the fitness tracking app.
 */
struct User {
    var name: String
    var stepsToday: Int

    init(name: String, stepsToday: Int) {
        self.name = name
        self.stepsToday = stepsToday
    }
    init?(name: String?, stepsToday: Int?) {
        guard let name = name, let stepsToday = stepsToday else { return nil }
            self.name = name
            self.stepsToday = stepsToday

    }
}

/*:
 The function below takes an array of `User` objects and returns the `User` object that has taken the most steps. The body of the function first declares a variable that is an optional `User`, then loops through all of the users in the array. Inside each iteration of the loop, it will check if `topCompetitor` has a value or not by unwrapping it. If `topCompetitor` doesn't have a value, then the current user in the iteration is assumed to have the highest score and is assigned to `topCompetitor`. If `topCompetitor` has a value, there is code to check whether the current user in the iteration has taken more steps than the user that is assigned to `topCompetitor`.

 At that point, the goal is to assign the user with the higher score to `topCompetitor`. However, the code generates a compiler error because, due to improper variable shadowing, `topCompetitor` has a narrower scope than it should if it is going to be reassigned. Fix the compiler error below and call `getWinner(competitors:)`, passing in the array `competitors`. Print the `name` property of the returned `User` object. You'll know that you fixed the function properly if the user returned is `activeSitter`.
 */
for competitor in competitors {
        if let topCompetitor = topCompetitor {
            if competitor.stepsToday > topCompetitor.stepsToday {
        if let topComp = topCompetitor {
            if competitor.stepsToday > topComp.stepsToday {
                topCompetitor = competitor
            }
        } else {
func getWinner(competitors: [User]) -> User? {
    }
    return topCompetitor
}




/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 2 of 2
 */
