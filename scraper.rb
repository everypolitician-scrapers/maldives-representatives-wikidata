#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Maldivian politicians', 'en').member_titles |
     WikiData::Category.new('Category:Maldivian women in politics', 'en').member_titles |
     WikiData::Category.new('Category:Government ministers of the Maldives', 'en').member_titles |
     WikiData::Category.new('Category:Foreign Ministers of the Maldives', 'en').member_titles |
     WikiData::Category.new('Category:Prime Ministers of the Maldives', 'en').member_titles |
     WikiData::Category.new('Category:Members of the People\'s Majlis', 'en').member_titles |
     WikiData::Category.new('Category:Speakers of the People\'s Majlis', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

