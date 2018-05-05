class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :sp

	#def initialize
	#	sp
	#end

	def sp
		# --Stallция Preφιcς--
		s = ['S', 'Z', 'C', 'S']
		t = ['t', 'zt', 'ct', 'st']
		a = ['a', 'å', 'ä', 'ą']
		l = ['l', 'll', 'л', 'лл', 'lъ', 'llъ', 'лъ', 'ллъ',]
		c = ['c', 'z', 's', 'c', 'z', 'ц']
		i = ['i', '', 'и']
		ja = ['a', 'ja', 'ya', 'ia', 'иa','я', 'ѧ']
		space = [' ', ' ', ' ', '-', '_', '*', '|', '||']
		pp = ['P', 'П', 'Ψ', 'Ξ']
		r = ['r', 'р']
		e = ['e', 'ϵ', 'ε']
		fi = ['f', 'ff', 'ф', 'φ', 'ѳ', 'þ', 'ξ']
		jota = ['i', 'и', 'ι', 'ї', 'ј']
		is = ['s', 'z', 'c', 'σ', 'ς',
				'ss', 'sz', 'sσ', 'sς', 'zs', 'cs', 'σs',
				'zz', 'zc', 'zσ', 'zς', 'cz', 'σz',
				'cc', 'cσ', 'cς', 'sc', 'σc',
				'σσ', 'σς', 'ςς',
				'ssz', 'ssσ', 'ssς', 'zss', 'css', 'σss',
				'scz']
		sparray = [s, t, a, l, c, i, ja, space, pp, r, e, fi, jota, is]
		cilibles = []
		for i in sparray
			cilibles.push(i[rand(i.length)])
		end
		@spreffis = cilibles.join
		@spinitial = cilibles[0] + cilibles[8]
	end
	#def op
	#	sp
	#	render html: @spreffis
	#end
end
