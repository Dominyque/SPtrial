class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def sp
	s = ['S', 'Z', 'C', 'S']
	t = ['t', 'zt', 'ct', 'st']
	a = ['a', 'å', 'ä', 'ą']
	l = ['l', 'll', 'л', 'лл', 'lъ', 'llъ', 'лъ', 'ллъ',]
	c = ['c', 'z', 's', 'c', 'z', 'ц']
	i = ['i', '', 'и']
	ja = ['ja', 'ya', 'ia', 'иa','я', 'ѧ']
	space = [' ', ' ', ' ', '-', '_', '*', '|', '||']
	pre = ['Pre', 'Пre', 'Ψre', 'Ξre', 'Pрe', 'Прe', 'Ψрe', 'Ξрe',
				'Prϵ', 'Пrϵ', 'Ψrϵ', 'Ξrϵ', 'Pрϵ', 'Прϵ', 'Ψрϵ', 'Ξрϵ',
				'Prε', 'Пrε', 'Ψrε', 'Ξrε', 'Pрε', 'Прε', 'Ψрε', 'Ξрε']
	fi = ['f', 'ff', 'ф', 'φ', 'ѳ', 'þ', 'ξ']
	jota = ['i', 'и', 'ι', 'ї', 'ј']
	is = ['s', 'z', 'c', 'σ', 'ς',
			'ss', 'sz', 'sσ', 'sς', 'zs', 'cs', 'σs',
			'zz', 'zc', 'zσ', 'zς', 'cz', 'σz',
			'cc', 'cσ', 'cς','sc', 'σc',
			'σσ', 'σς', 'ςς',
			'ssz', 'ssσ', 'ssς', 'zss', 'css', 'σss',
			'scz']
	sparray = [s, t, a, l, c, i, ja, space, pre, fi, jota, is]
	cilibles = []
	for i in sparray
		cilibles.push(i[rand(i.length)])
	end
	@spreffis = cilibles.join
	end
	def op
		sp
		render html: @spreffis
	end
end
