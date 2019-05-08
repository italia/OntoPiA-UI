#!/bin/bash

mkdir -p virtuoso/vocabularies

cd virtuoso/vocabularies

curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-accommodation-facilities/accommodation-star-rating > accommodation-star-rating.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-accommodation-facilities/accommodation-typology > accommodation-typology.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-culture/subject-disciplines > subject-disciplines.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/ateco-2007 > ateco-2007.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/cofog-2009 > cofog-2009.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/legal-status > legal-status.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/S13 > S13.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-people/education-level > education-level.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-people/sex > sex.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/authentication-type > authentication-type.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/channel > channel.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/interactivity-level > interactivity-level.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/life-business-event/life-event > life-event.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/life-business-event/business-event > business-event.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/service-input-output > service-input-output.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/licences > licences.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/poi-category-classification > poi-category-classification.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/public-event-types > public-event-types.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/territorial-classifications/countries/italy > italy.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/territorial-classifications/regions > regions.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/territorial-classifications/provinces > provinces.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/territorial-classifications/geographical-distribution > geographical-distribution.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/theme-subtheme-mapping > theme-subtheme-mapping.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-routes/route-types > route-types.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-transparency/transparency-titulus > transparency-titulus.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-universities/documents-titulus > documents-titulus.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-universities/academic-disciplines > academic-disciplines.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-people/person-title > person-title.ttl
cd -

mkdir -p virtuoso/ontologies

cd virtuoso/ontologies

curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/ACCO > acco.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/AtlasOfPaths > aop.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CLV > clv.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/COV > cov.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPEV > cpev.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPV > cpv.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/Cultural-ON > cultural-on.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CulturalHeritage > ch.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/IoT > iot.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/l0 > l0.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/MU > mu.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/PARK > park.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/POI > poi.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/POT > pot.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/RO > ro.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/SM > sm.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/TI > ti.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/AccessCondition > accesscondition.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/Language > language.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPSV > cpsv.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/PublicContract > publiccontract.ttl
curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/Route > route.ttl

cd -
