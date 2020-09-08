---
layout: publicatie
title: "Ongewenste configuraties, kwetsbaarheden en misbruik: een taxonomie voor 'abuse van techniek'"
date: 2020-09-08
excerpt: Abuse betekent letterlijk vertaald ‘misbruik’, maar wat bedoelen we eigenlijk met de term “abuse” in de context van AAN, het Anti Abuse Netwerk? Welke vormen van abuse zijn er en hoe zorgen we dat we elkaar begrijpen? In dit artikel presenteert AAN een taxonomie voor ‘abuse van techniek’.
author: Frank Breedijk, werkgroep informatievoorziening
---

Abuse betekent letterlijk vertaald ‘misbruik’, maar wat bedoelen we eigenlijk met de term “abuse” in de context van AAN, het Anti Abuse Netwerk? Welke vormen van abuse zijn er en hoe zorgen we dat we elkaar begrijpen? In dit artikel presenteert AAN een taxonomie voor ‘abuse van techniek’.

## Verschillende soorten ‘abuse’
Met abuse bedoelen we in de context van AAN: alle vormen van misbruik van het internet zoals deze typisch wordt afgehandeld door partijen die internetdiensten leveren. Deze partijen zijn bijvoorbeeld hosters, ISPs en managed service providers. Zij krijgen te maken met veel zaken die typisch in een van de volgende drie gebieden vallen:
* Abuse van techniek
* Ongewenste content
* Het lekken van persoonsgegevens

Dit artikel richt zich op abuse van de techniek en de berichten die bij het oplossen en tegengaan van dit soort abuse uitgewisseld worden.

## Onderverdeling naar onderwerp
De taxonomie maakt gebruik van kenmerken om de verschillende soorten meldingen van abuse van elkaar te onderscheiden. Het eerste kenmerk waar deze taxonomie naar kijkt is het onderwerp. Waarover gaat de melding? We onderkennen hierin drie onderwerpen: ongewenste configuraties, kwetsbaarheden en ongewenst gebruik.

![Schema van de drie topcis in techniek](/assets/img/techniek_topics.png)

### Ongewenste configuraties
Bij een ‘ongewenste configuratie’ is het voor een kwaadwillende mogelijk een systeem te misbruiken. Hierbij wordt echter geen misbruik gemaakt van softwarefouten om het systeem iets te laten doen waarvoor het niet bedoeld is, maar is het systeem zo ingesteld dat er op een ongewenste manier gebruik van gemaakt kan worden.

Een bekend voorbeeld van een ongewenste configuratie is een zogenaamde “Open DNS resolver”. Een Open DNS resolver is een DNS server die iedereen op het internet toestaat om een domeinnaam om te zetten in een IP-adres. Op zich is het technisch gezien een valide configuratie waarvoor ook legitieme toepassingen zijn. Zo bieden aanbieders als OpenDNS, CloudFlare, Google, Comodo, Quad9 en Verisign [gratis publieke DNS diensten](https://www.techradar.com/news/best-dns-server) aan die niet mogelijk zouden zijn zonder Open DNS Relay. 

Het is echter ook mogelijk om deze configuratie te misbruiken voor het uitvoeren van DDoS aanvallen. Door een zogenaamde [DNS Amplification Attack](https://www.youtube.com/watch?v=xTKjHWkDwP0) uit te voeren kan een kwaadwillende met relatief weinig bandbreedte een systeem overspoelen met verkeer.

De Shadow Server Foundation, scant al sinds 2013 op het internet naar ongewenste configuraties. Sinds die tijd is het aantal Open DNS Relays gedaald van ruim bijna 12 miljoen in Juni van 2013 tot bijna 2.5 miljoen in Augustus van 2020.

### Kwetsbaarheden
Als een systeem een kwetsbaarheid bevat, dan is er meestal sprake van een technische fout, waardoor een kwaadwillende misbruik kan maken van het systeem door het iets anders te laten doen dan waarvoor het origineel bedoeld was. Een kwetsbaarheid in een systeem ontstaat vaak door een fout (bug) in de software of door een verkeerde implementatie van features in de software. Vaak kan de kwetsbaarheid door middel van een patch verholpen worden.

Een voorbeeld van een kwetsbaarheid was die in het Citrix ADC product van eind 2019 begin 2020. Door een fout in de code van deze software was het voor een aanvaller mogelijk deze systemen over te nemen.


### Ongewenst gebruik
Van ‘ongewenst gebruik’ van een systeem is sprake als een systeem wordt gebruikt voor het uitvoeren van activiteiten die ongewenst of zelfs illegaal zijn. Denk hierbij aan het versturen van spam, uitvoeren van DDoS aanvallen of onderdeel zijn van een botnet. Vaak is ‘ongewenst gebruik’ het gevolg van misbruik van een systeem via een kwetsbaarheid of een ongewenste configuratie, maar een kwaadwillende kan bijvoorbeeld ook een computer huren bij een hoster en hiermee gaan spammen. In dit geval maakt hij misbruik van een legitieme dienst.

## Onderverdeling op specificiteit
Het tweede kenmerk waar deze taxonomie naar kijkt is de specificiteit. Gaat het bericht over het fenomeen in generieke zin, of is het een bericht dat gaat over het voorkomen van het fenomeen op één of meerdere specifieke systemen. Laten weer de Citrix ADC kwetsbaarheid als voorbeeld nemen.

### Generieke berichten
Generieke berichten beschrijven een fenomeen, bijvoorbeeld een kwetsbaarheid in algemene zin, maar doen geen uitspraak of deze voorkomt op een specifiek, aanwijsbaar, systeem. Het NCSC heeft, net als vele andere organisaties en Citrix zelf, verschillende [generieke berichten over deze kwetsbaarheid](https://www.ncsc.nl/actueel/advisory?id=NCSC-2019-0979) gepubliceerd. In dit bericht staat onder andere een technische beschrijving van de kwetsbaarheid, welke producten en productversies het betreft en wat de gevolgen van misbruik van de kwetsbaarheid kunnen zijn. Dit soort berichten worden in de regel ‘advisories’ genoemd.

### Specifieke berichten
Specifieke berichten gaan over het voorkomen van een fenomeen, bijvoorbeeld een kwetsbaarheid, op een specifiek, aanwijsbaar, system. Het is dus, bijvoorbeeld de mededeling dat de Citrix ADC server op url https://vdi.example.com daadwerkelijk kwetsbaar is. Dit wordt soms ook wel ‘slachtoffer notificatie’ genoemd.

## De taxonomie
![Schema van taxonomie](/assets/img/techniek_taxonomie.png)

De volledige taxonomie van technical abuse zie er momenteel zo uit:
* Configuration advisory: algemeene beschrijving van een ongewenste configuratie
* Misconfiguration notification: bericht dat een specifiek systeem op een bepaald moment een specifieke ongewenste configuratie bevat
* Advisory: algemene beschrijving van een kwetsbaarheid
* Vulnerability notification: bericht dat een specifiek systeem op een bepaald moment een specifieke kwetsbaarheid bevat
* Indicator of compromise: een algemeen bericht dat beschrijft hoe kan worden vastgesteld dat een systeem op een ongewenste manier gebruikt wordt
* Abuse notification: bericht dat op een specifiek systeem op een bepaald moment op een ongewenste manier gebruikt wordt

## Vervolgstappen
Deze taxonomie is een eerste stap om te komen tot een betere onderlinge communicatie in het ecosysteem voor de aanpak van Internet abuse in Nederland. Naast techniek zijn voor wat betreft inhoud ook de onderwerpen ‘content’ en ‘mens’ geïdentificeerd, maar nog niet in detail uitgewerkt. Zodra deze gebieden zijn uitgewerkt, zullen we ze aan deze taxonomie toevoegen. In de toekomst zullen we per type bericht het huidige landschap van partijen en hun rollen in kaart brengen en knelpunten in het huidige landschap identificeren.
