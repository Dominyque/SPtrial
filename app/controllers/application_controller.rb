class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	def sp
		st = ['St', 'Zt', 'Ct', 'Szt', 'Sct', 'Zst', 'Zct', 'Cst', 'Czt']
		al = ['al', 'all', 'ål', 'åll','äl', 'äll','ąl', 'ąll',
				'aл', 'aлл', 'åл', 'åлл','äл', 'äлл','ąл', 'ąлл']
		ci = ['ci', 'zi', 'si', 'cи', 'zи', 'sи',
				',цi', 'цi', 'цi', 'ци', 'ци', 'ци']
		ja = ['ja', 'ya', 'ia', 'иa','я', 'ѧ']
		pre = ['Pre', 'Пre', 'Ψre', 'Ξre', 'Pрe', 'Прe', 'Ψрe', 'Ξрe',
					'Prϵ', 'Пrϵ', 'Ψrϵ', 'Ξrϵ', 'Pрϵ', 'Прϵ', 'Ψрϵ', 'Ξрϵ',
					'Prε', 'Пrε', 'Ψrε', 'Ξrε', 'Pрε', 'Прε', 'Ψрε', 'Ξрε']
		fi = ['f', 'ff', 'ф', 'φ', 'ѳ', 'þ', 'ξ']
		jota = ['i', 'и', 'ι', 'ї', 'ј']
		is = ['s', 'z', 'c', 'σ', 'ς',
				'ss', 'sz', 'sσ', 'sς', 'zs', 'cs', 'σs',
				'zz', 'zc', 'zσ', 'zς', 'cz', 'σz',
				'cc', 'cσ', 'cς', 'sc', 'σc',
				'σσ', 'σς', 'ςς',
				'ssz', 'ssσ', 'ssς', 'zss', 'css', 'σss',
				'scz']
		fis = [fi[rand(fi.length)] + jota[rand(jota.length)] + is[rand(is.length)]]
		@spreffis = st[rand(st.length)] + al[rand(al.length)] + 
						ci[rand(ci.length)] + ja[rand(ja.length)] + ' ' +
						 + pre[rand(pre.length)] + fis[rand(fis.length)]
		return @spreffis
	end
	def op
		#spreffis = sp
		sp
		render html: "welcome to\n#{@spreffis}"
	end
end
