package v3

import (
	v3 "envoyproxy.io/deps/cncf/xds/go/xds/core/v3"
)

#Matcher: {
	matcher_list?: #Matcher_MatcherList
	matcher_tree?: #Matcher_MatcherTree
	on_no_match?:  #Matcher_OnMatch
}

#Matcher_OnMatch: {
	matcher?: #Matcher
	action?:  v3.#TypedExtensionConfig
}

#Matcher_MatcherList: {
	matchers?: [...#Matcher_MatcherList_FieldMatcher]
}

#Matcher_MatcherTree: {
	input?:            v3.#TypedExtensionConfig
	exact_match_map?:  #Matcher_MatcherTree_MatchMap
	prefix_match_map?: #Matcher_MatcherTree_MatchMap
	custom_match?:     v3.#TypedExtensionConfig
}

#Matcher_MatcherList_Predicate: {
	single_predicate?: #Matcher_MatcherList_Predicate_SinglePredicate
	or_matcher?:       #Matcher_MatcherList_Predicate_PredicateList
	and_matcher?:      #Matcher_MatcherList_Predicate_PredicateList
	not_matcher?:      #Matcher_MatcherList_Predicate
}

#Matcher_MatcherList_FieldMatcher: {
	predicate?: #Matcher_MatcherList_Predicate
	on_match?:  #Matcher_OnMatch
}

#Matcher_MatcherList_Predicate_SinglePredicate: {
	input?:        v3.#TypedExtensionConfig
	value_match?:  #StringMatcher
	custom_match?: v3.#TypedExtensionConfig
}

#Matcher_MatcherList_Predicate_PredicateList: {
	predicate?: [...#Matcher_MatcherList_Predicate]
}

#Matcher_MatcherTree_MatchMap: {
	map?: [string]: #Matcher_OnMatch
}
