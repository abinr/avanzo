# Avanzo
## An Etude in Financial Portfolio Bean Counting

### Time
> All we have to decide is what to do with the *time* given to us.  
> *-J.R.R. Tolken, The Fellowship Of the Ring*

The Natural Numbers are rarely respected in the rythmic patterns heavenly bodies track while sluicing through gravitional interplay. Supposing the Abrahamic Diety created the Universe according to the Genesis Myth --that He created everything *before* Light-- plainly implies a Universe hostile to Integers. Once the big brights were brought on grid "...and He saw that it was good" (wouldn't the do-overs have been just as sacred?) the pervasive human ritual of pretending that astronomical events repeat in a whole number of days was guaranteed. 

So, calendars are hard. Julius Caesar's lasted 13 centuries before getting to out of whack. Easter risked being pushed backed to the Winter Soltice. The problem with time machines is that there is no way to measure time. There is NOTHING scientific about the way humans track time, in the famous words of Philip Wadler "it's invented, not discovered...and it shows." The "adjustment" from the Julian Calendar to the Gregorian calendar was on October 5th 1582 which was desigated October 15th 1582. There was a hullballoo, how much rent did you owe at month's end October 1582? ...and that was just the Catholic Countries. The US leapt from September 2 to September 14 1753. It wasn't a revolutionary innovation a .002% correction in the length of the year. Less leap years.

> Years evenly divisible by 100 are not leap years except for those divisible by 400. 

The Gregorian Calendar is a leaky abstraction. 2004-2-29 + 2 years? + 1 month?

Leaky abstractions just like floating-point numbers.

### Money
Scarcity embodied. A spooky synthetic mixing:

* A proxy of Nature's law(s) 
* Humanity's fickle collective prioritization 

Salesmen know that Money strives to become pure emotion, a radical element attaching itself to the complex molecule of whatever drives Human decision making.

### Time and Money
The Ancient Greek pantheon ruled a cool motley crue of phenomena: skies, lightening, love, the seas, war, wisdom, the hunt, wine, and the list goes on. Yet no God of Time. No God of Money. Perhaps Time and Money are Gods of recent birth, adolescents so extreme in their capriciousness they reduce even the most bizarre Pantheon scandal to pre-school naptime. Time and Money appear often together. Like a Hollywood Celebrity couple. 

The calculation of Financial Portfolio Returns are born of these irregular Gods. Time and Money forge an offspring who faithfully serve as the Patron Saint of Personal Financial Advisors the world over. Yet to the Computational Automatizationista (nee' Application Developers) the non-linearity is quite embarassing. How the advanced alien civilizations of the Galaxy must laugh over the absurdity, crop circles must surely be galactic shorthand for "Loooooooooser".

### "Any combination of Financial Risk."
No surprise that phrase doesn't appear on the brochure: "Your collection of Financial Risk is safe with us!!". Disappointing as it may be, this etude will not touch the Risk. Calculating the return of a series Risk. A Financial Portfolio is an ad hoc, non-empty set/sequence of Cash Flows, inflows are purchases with the expectation of a positive return when the principal is repaid. Valuations for Current Holdings are made with a "how much would I make if I sold today" what-if analysis.

### Cash Flow
A financial event, therefore having:

* A timestamp
* An amount. If positive, considered inflow, when negative an outflow.

blah blah

```haskell
data CashFlow = CashFlow
  { date :: UTCTime
  , amount :: Decimal
  } deriving (Eq, Show)
```

> A note about floating-point math. Decimals were chosen because...

### Time-Value of Money: Lol
The events leading up to the first negative interest rates in modern history were fascinating and humourous. As almost all of financial calculations, mathematical rigour is an optional. Assuming that Money is more valuable today than tomorrow is cute, naive and obviously false. Nevertheless, ahime, the Financial Industry would surely like to return to the days where negative rates were impossible and this etude will do the same.

Assuming investing money today will earn a (negligible risk) 10% a month, after 1 month 100 tulips will sell for 110 tulips. 110 tulips a month from now is worth 100 today. 
