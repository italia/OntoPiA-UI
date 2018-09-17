FROM tenforce/virtuoso:1.3.1-virtuoso7.2.2

# Add Virtuoso bin to the PATH
ENV PATH /usr/local/virtuoso-opensource/bin/:$PATH

# Add Virtuoso config
COPY virtuoso.ini /virtuoso.ini

# Add dump_nquads_procedure
COPY dump_nquads_procedure.sql /dump_nquads_procedure.sql

# Add Virtuoso log cleaning script
COPY clean-logs.sh /clean-logs.sh

# Add startup script
COPY virtuoso.sh /virtuoso.sh

# Download controlled vocabularies
WORKDIR /usr/local/virtuoso-opensource/share/virtuoso/vad/vocabularies/

RUN apt-get update \
  && apt-get install -y curl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-accommodation-facilities/accommodation-star-rating > accommodation-star-rating.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-accommodation-facilities/accommodation-typology > accommodation-typology.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-culture/subject-disciplines > subject-disciplines.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/ateco-2007 > ateco-2007.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/cofog-2009 > cofog-2009.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-organizations/legal-status > legal-status.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-people/education-level > education-level.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-people/gender > gender.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/authentication-type > authentication-type.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/channel > channel.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/interactivity-level > interactivity-level.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/life-business-event > life-business-event.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/classifications-for-public-services/service-input-output > service-input-output.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/licences > licences.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/poi-category-classification > poi-category-classification.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/public-event-types > public-event-types.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/territorial-classification > territorial-classification.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/controlled-vocabulary/theme-subtheme-mapping > theme-subtheme-mapping.ttl


# Download ontologies
WORKDIR /usr/local/virtuoso-opensource/share/virtuoso/vad/ontologies/

RUN apt-get install -y curl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/ACCO > acco.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CLV > clv.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/COV > cov.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPEV > cpev.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPV > cpv.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/Cultural-ON > cultural-on.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/IoT > iot.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/l0 > l0.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/MU > mu.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/PARK > park.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/POI > poi.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/POT > pot.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/RO > ro.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/SM > sm.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/TI > ti.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/AccessCondition > accesscondition.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/Language > language.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/CPSV > cpsv.ttl \
  && curl -L -H "Accept: text/turtle" https://w3id.org/italia/onto/PublicContract > publiccontract.ttl 

VOLUME /data
WORKDIR /data
EXPOSE 8890
EXPOSE 1111

CMD ["/bin/bash", "/virtuoso.sh"]
