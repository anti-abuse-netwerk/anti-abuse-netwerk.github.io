#!/bin/bash
gem install html-proofer
htmlproofer \
	--allow-hash-href  \
	--url-ignore="" _site