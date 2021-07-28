#!/bin/bash
gem install html-proofer
echo "*** Internal link check ***"
htmlproofer \
	--disable_external \
	--allow-hash-href  \
	--url-ignore="" _site
echo "*** External link check ***"
(set +e ; htmlproofer \
	--allow-hash-href \
	--url-ignore="/www.linkedin.com/","/twitter.com/","/#menu/" _site || exit 0 )