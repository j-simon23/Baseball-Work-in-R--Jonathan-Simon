### Brewers Research & Development Questions ###

## Problem 1
#Player X... mean= 2 WAR; SD= 2 WAR
#Player Y... mean= 1 WAR; SD= 3 WAR

# Part A:
1-pnorm(1,3)

# Part B:
print(paste("A team might prefer to acquire Player Y because that player supplies the team with potentially a larger benefit; however, Player Y also has a larger variability in their performance, and thus, is the riskier option. Therefore, a team might prefer Player Y when they are trying to make a playoff push, and is hoping that this player will be the difference maker.")) 


## Problem 2
Prob_Steal_or_Not <- matrix(0:0, ncol = 3, nrow=3)
colnames(Prob_Steal_or_Not)<-c("Steal","No Steal","Totals")
rownames(Prob_Steal_or_Not)<- c("Injured","Healthy", "Totals")
Prob_Steal_or_Not[1,1]<-.1
Prob_Steal_or_Not[1,2]<-.1
Prob_Steal_or_Not[1,3]<-.2
Prob_Steal_or_Not[2,1]<-.7
Prob_Steal_or_Not[2,2]<-.1
Prob_Steal_or_Not[2,3]<-.8
Prob_Steal_or_Not[3,1]<-.8
Prob_Steal_or_Not[3,2]<-.2
Prob_Steal_or_Not[3,3]<-1
Prob_Steal_or_Not

Prob_InjuredGivenNoSteal= .1/.2
Prob_InjuredGivenNoSteal #using Bayes' Theorem

# Problem 3

# Part A:
log_odds<- -2.76178-0.02271*(95)+0.97980*(1)+0.94462*(2.5)-0.35231*(1*2.5)
odds<- exp(log_odds)
prob<- odds/(1+odds)
predicted_prob<- prob
predicted_prob

# Part B: # keeping all assumptions from part A the same, except the horizontal location
log_odds_Xof0<- -2.76178-0.02271*(95)+0.97980*(0)+0.94462*(2.5)-0.35231*(1*2.5)
odds_Xof0<- exp(log_odds_Xof0)
prob_Xof0<- odds_Xof0/(1+odds_Xof0)
predicted_prob_Xof0<- prob_Xof0
predicted_prob_Xof0

print(paste("The effect is stronger for pitches thrown with a horizontal location of 1ft than a horizontal location of 0ft. Because 1ft has a predicted probability of", predicted_prob,", while the predicted probability with a horizontal location of 0ft is", predicted_prob_Xof0))

# Part C: # keeping all assumptions from part A the same, except MPH
log_odds_90MPH<- -2.76178-0.02271*(90)+0.97980*(1)+0.94462*(2.5)-0.35231*(1*2.5)
odds_90MPH<- exp(log_odds_90MPH)
prob_90MPH<- odds_90MPH/(1+odds_90MPH)
predicted_prob_90MPH<- prob_90MPH
predicted_prob_90MPH

print(paste("The effect is stronger for pitches thrown at 90MPH than at 95MPH.  Because 95MPH has a predicted probability of", predicted_prob,", while the predicted probability with a 90MPH pitch is", predicted_prob_90MPH))

# Part D:
print(paste("I believe that controlling for a specific player's homerun percentage will help give a better determinant of a specific home run probability for a player. With the current model, the probability of a home run on a certain pitch is biased since the individual player’s likeliness to hit a home run, on any given pitch, is omitted."))


# Problem 4
# answer is in the document


# Problem 5
# answer is in the document

# Problem 6
print(paste("I would run a linear regression of the plate appearance outcome on certain variables listed above. Firstly, I would do preliminary analysis for the model by producing a scatter plot for each variable (X) and the plate appearance outcome (Y). From the scatterplots, I can test for normality (the random variable should follow a normal distribution), exogeneity (the x-values are either fixed or independent- showing no visible pattern), homoscedasticity (do not want any change in the variance depending on the x-values), and independence (do not want to see any pattern in the data). If the variables pass preliminary analysis, then I can begin creating my model. Using R, I can use backward-elimination in order to select the variables that are most relevant to my model and reach the highest adjusted R^2 amount possible with these variables. To do backward-elimination, I would use the package “StepReg” and a stepwise function from that package. Following the construction of the model, I would then determine if any other modifications need to be made by looking at the coefficients that I get from the linear regression model. Finally, I would determine the significance of the model to see if it will provide me with accurate information in determining the outcome of a plate appearance. I would do this by ensuring that the R^2 and adjusted R^2 were larger than 0.1. Also, I would look at the p-value of the F-statistic to see if the model is significant. For the model to be significant, this p-value would need to be less than 0.5 (a 95% confidence level). If the model comes back as significant, then it will likely supply accurate predictions in regard to plate appearance outcomes between a batter and a pitcher."))

# Problem 7
print(paste("I would recommend that the Brewers sign the Free Agent outfielder to 2 years, $20 million. I assume that this player is a veteran in the league, which explains the large per year price. However, the player does not have much success left, as his WAR quickly falls from 3.1 to 0.6. I chose the second contract because the player will not be beneficial to the team after year 2. Additionally, I chose to not select the first contract because the player still has a high enough WAR to be a good starter for the team through the 2023 season and should be worth the high price tag for the 2023 season. In 2024, the player quickly falls off and would likely fall to being a role player. Therefore, I rejected the third contract because this would entail paying the player $11 million more, with a large decrease in output. Furthermore, contract four was rejected because the player will supply almost no output, given the 0.6 WAR, and it will cost $15 million during the 2025 season. Although the player will likely continue to supply the indirect benefits to the team, like drawing more fans to the stadium since he is likely a well-known veteran player, this player’s indirect benefits will not nearly make up for his lack of output after 2023."))

# Problem 8
print(paste("The implementation of an automated ball-strike calling system would lead teams to evaluate data and then construct rosters with more pitch selective hitters, and pitchers that can consistently throw strikes. Firstly, in regard to the team-building strategy for hitters, it would be preferable to have a roster full of very pitch selective hitters. Hitters that are less selective will immediately have less value with an automated system, since balls will no longer have the potential to be called strikes and vice versa. Unselective hitters, waste opportunities to walk or work more pitches out of the pitcher. Additionally, the game strategy for hitters could be very refined to only hunt the hitter’s best pitch and take all other pitches to increase your probability of making solid contact or at least increasing the pitchers pitch count. Models would need to be established taking into account the removal of the variable for human error behind the plate regarding each pitcher and line ups constructed to maximize probability of hitter contact. For pitchers, the team should look to fill its roster with pitchers consistently throw strikes and/or have the ability to throw pitches that move out of the zone very late. Sliders, cutters, and change ups will be more valuable off speed pitches as they most resemble a fast ball to entice a swing even if they land outside the strike zone. Curve ball pitchers will have a more difficult time and could prove less valuable because the pitch is easier to recognize from the pitchers hand, and thus, less likely to induce a swing with the more selective hitters. Pitch framing will no longer be a valued metric when signing or rostering a catcher. Catchers blocking ability will still have value to prevent runners from taking an extra base."))


