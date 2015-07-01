class StatesCities

	$states = {
	  OR: 'Oregon',
	  FL: 'Florida',
	  CA: 'California',
	  NY: 'New York',
	  MI: 'Michigan'
	}

	# Task 2
	$cities = {
		CA: ['Sacramento', 'Los Angeles', 'San Diego'],
		NY: ['Buffalo', 'Rochester']
	}

	# Task 4
	$taxes = {
	  OR: 5,
	  FL: 6,
	  CA: 7,
	  NY: 8,
	  MI: 9
	}

	# Task 1
	$states[:AL] = 'Montgomery'
	$states[:AZ] = 'Phoenix'

	# Task 3
	def self.describe_state(state)
		sState = ""
		iCount = 0
		aCities = []
		sCities = ""

		sSym = state.to_sym
		
		if $states.has_key?(sSym)
			sState = $states[sSym]
			iCount = $cities[sSym].count
			aCities = $cities[sSym]
			sCities = stringbuilder(aCities)
			
			return "#{sSym} is for #{sState}. It has #{iCount} major cities: #{sCities}"
		else
			return "#{sSym} not found"	
		end

	end

	# task 5
	def self.calculate_tax(state, amount = 0)
		sSym = state.to_sym
		iTax = 0
		iAmount = 0

		if $taxes.has_key?(sSym)
			iTax = ($taxes[sSym].to_f / 100).round(2)
			iAmount = (iTax * amount).round(2)
			return iAmount
		else
			return "#{sSym} not found"
		end

	end

	# task 6
	def self.find_state_for_city(city)
		$cities.each do |key, array|
			if array.include?(city)
				return key
			else
				return "#{city} not found"
			end
		end

	end

	def self.stringbuilder(aCities)
		sString = ""
		aCities.each do |x|
			sString << x + " "
		end

		return sString
	end

	#puts describe_state("CA")
	#puts calculate_tax("CA", 740)
	#puts find_state_for_city("Rochester")


end