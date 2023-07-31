# Sailing ships by James Mitchell (Mouse)

Wind and steam powered ships for OpenTTD. Copyright J Mitchell 2012.

Refit-at-station support, Russian translation, rebalancing to match SQUID ships and some other changes by sevenfm.
Norwegian Bokmal translation by leifbk.
Git repo and new BaNaNaS release by cmcaine. 

## Ship catalogue

Note that exact introduction dates, capacities, etc may be different in the game. These are the figures from v0.62.

***Clipper***

Introduced 	~1820
Expires		~1885
Model based on Cutty Sark (1869)

Notes
- Length ~60m
- Capacity 170t goods refittable (actual 1700t)
- Fast medium capacity sailing ship. 
- Expensive but can give a good return on goods services compared to early rail

***Paddle Steamer***

Introduced 	~1830
Expires		~1860
Model based on RMS Brittania (1840)

Notes
- Length ~60m
- Capacity 130 passengers (actual 115 or 225t cargo)
- Slow mail/passenger ship
- Expensive running costs mean good route selection is critical.
- Can be unreliable!

***Merchantman***
Introduced 	~1750
Expires		~1850
Model based on 'Amsterdam' Fully rigged Dutch East Indiaman (1749)

Notes
- Length ~50m
- Capacity 100t goods refittable 
- Slow bulk carrier


***Barque***
Introduced	~1790
Expires		~1850
Re-rigged merchantman.

Notes
- Length ~50m
- Capacity 110t goods refittable
- Slower than merchantman, but cheaper running cost.

***Brig***
Introduced ~1700
Expires ~1850

Notes
- Length ~30m
- 50t Goods refittable

***Schooner***
Introduced ~1800
Expires ~1890
Fore-Aft rigged vessel - can steer further into wind (Made faster to simulate)

Notes
- Fast but small capacity
- Length ~20m
- Capacity 40t goods refittable.


***Steamship***
Introduced ~1850
Expires ~1900
Faster screw powered passenger/mail steamer with full rig.
Model based on SS Britannic (1873)

Notes
- Fast, mail/passengers only.
- length ~140m
- Capacity 260 passengers (actual 1300, scaled down for gameplay)

***Windjammer*** 
Introduced ~1870
Expires ~1920
Large, Fast ship with low running costs

Notes
- Cheap bulk transport.
- length ~80m
- Capacity 250t coal (refittable)

## Acknowledgements:

Created using NML.
Thanks to anyone who has contributed by commenting on the development thread
Special thanks to Andythenorth and Planetmaker for expertise beyond my capabilities!

As always, suggestions and constructive comments welcome. 
http://www.tt-forums.net/viewtopic.php?f=26&t=49040

## Changelog

v 0.73
- added norwegian bokmal translation by leifbk
- changed default parameters for all options to be numerically 0 to workaround [OpenTTD#10549](https://github.com/OpenTTD/OpenTTD/issues/10549)
  - this makes upgrading from v0.62 (the last BaNaNaS release) easier and upgrading from version 0.7 or 0.72 slightly less nice (those users will have to fix the GRF parameters)

[v 0.72 by sevenfm][v0.72]
- added option to have historical or balanced ship introduction dates
  -  Only 2 ships are affected - Barque and Schooner, with historical dates they appear in 1790 and 1800, with balanced dates in 1740 and 1700, which makes early game in 1700s less boring
  - historical option also allows passengers and mail cargo for Brig and Barque as otherwise player will have no pass/mail sea transportation before 1800 when Schooner arrives

[v 0.7 by sevenfm][v0.7]:
- added Russian translation
- ship bell sound replaced with less annoying
- fixed image offset bug for ships in dock
- changed starting dates for some ships
- some ship properties changes for better balance
- ship autorefitting enabled for convenience
- cargo_age_period value changed to match value in Squid ate Fish, also it's different for ships - cargo will decay faster in small ships
- ship introduction dates changed: Brig and Schooner start at the same time, next Barque and Merchantman appear in the middle of 17xx, starting dates for other ships are not changed.
- ship balance was reworked to fit better with Squid ships set. I found that in original Sailing Ships set Schooner and Clipper were too effective making other ships useless.
- big ships (Clipper, Windjammer, Steamship) have reduced speed on rivers/canals,
- loading speed was reduced for big ships.
- more differentiation in cargo:
  - Brig and Barque are good for cheap bulk cargo transport but less effective for quick decaying cargo because of slow speed, and they cannot transport mail/passengers.
  - Schooner and Merchantman are faster and can transport various goods and also mail/passengers, but not bulk cargo, also they have higher running costs than Brig and Barque.
  - Clipper is good for transportation on medium/long range but has higher running cost than Merchantman and reduced loading speed.
  - Steamship and Windjammer are good for long range transportation and can be better than early ships from Squid starting from 1860, but they cost more.

v 0.62
 - Reliability decay tweaked

V 0.61
 - Graphical glitch fixed

v 0.6
 - Cargo graphics updated for bulk and passenger on larger ships

v 0.5
 - Steamship added
 - Windjammer added
 - Some graphics updated for different cargoes

V 0.4
 - Brig added
 - Schooner added
 - Steamer sails re-textured
 - Cargo availability changed

V 0.3
 - Merchantman added
 - Barque added
 - Clipper graphics re-sized
 - Ships sped up slightly, running costs re-balanced

V 0.2
 - Graphics on clipper and paddle steamer changed
 - Steamer renamed paddle steamer
 - Steamer now only takes mail and passengers
 - General balancing of stats to make use more challenging
 - Sound added
 - 2CC added

[v0.7]: https://www.tt-forums.net/viewtopic.php?p=1192285#p1192285
[v0.72]: https://www.tt-forums.net/viewtopic.php?p=1258971#p1258971
