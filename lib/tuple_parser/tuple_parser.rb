
# line 1 "lib/tuple_parser/tuple_parser.rl"
=begin

# line 24 "lib/tuple_parser/tuple_parser.rl"

=end

class TupleParser
  def parse(data)
    data = data.unpack("c*") if(data.is_a?(String))
    eof = data.length
    tokens = []

    st = 0

    
# line 19 "lib/tuple_parser/tuple_parser.rb"
class << self
	attr_accessor :_tuple_lexer_actions
	private :_tuple_lexer_actions, :_tuple_lexer_actions=
end
self._tuple_lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 2, 1, 0
]

class << self
	attr_accessor :_tuple_lexer_key_offsets
	private :_tuple_lexer_key_offsets, :_tuple_lexer_key_offsets=
end
self._tuple_lexer_key_offsets = [
	0, 0, 4, 8, 9, 10, 15, 19
]

class << self
	attr_accessor :_tuple_lexer_trans_keys
	private :_tuple_lexer_trans_keys, :_tuple_lexer_trans_keys=
end
self._tuple_lexer_trans_keys = [
	32, 40, 9, 13, 32, 39, 9, 13, 
	39, 39, 32, 41, 44, 9, 13, 32, 
	40, 9, 13, 32, 9, 13, 0
]

class << self
	attr_accessor :_tuple_lexer_single_lengths
	private :_tuple_lexer_single_lengths, :_tuple_lexer_single_lengths=
end
self._tuple_lexer_single_lengths = [
	0, 2, 2, 1, 1, 3, 2, 1
]

class << self
	attr_accessor :_tuple_lexer_range_lengths
	private :_tuple_lexer_range_lengths, :_tuple_lexer_range_lengths=
end
self._tuple_lexer_range_lengths = [
	0, 1, 1, 0, 0, 1, 1, 1
]

class << self
	attr_accessor :_tuple_lexer_index_offsets
	private :_tuple_lexer_index_offsets, :_tuple_lexer_index_offsets=
end
self._tuple_lexer_index_offsets = [
	0, 0, 4, 8, 10, 12, 17, 21
]

class << self
	attr_accessor :_tuple_lexer_indicies
	private :_tuple_lexer_indicies, :_tuple_lexer_indicies=
end
self._tuple_lexer_indicies = [
	0, 2, 0, 1, 2, 3, 2, 1, 
	5, 4, 7, 6, 8, 9, 2, 8, 
	1, 0, 2, 0, 1, 9, 9, 10, 
	0
]

class << self
	attr_accessor :_tuple_lexer_trans_targs
	private :_tuple_lexer_trans_targs, :_tuple_lexer_trans_targs=
end
self._tuple_lexer_trans_targs = [
	1, 0, 2, 3, 4, 5, 4, 5, 
	5, 7, 6
]

class << self
	attr_accessor :_tuple_lexer_trans_actions
	private :_tuple_lexer_trans_actions, :_tuple_lexer_trans_actions=
end
self._tuple_lexer_trans_actions = [
	0, 0, 0, 0, 3, 11, 0, 1, 
	0, 0, 9
]

class << self
	attr_accessor :_tuple_lexer_to_state_actions
	private :_tuple_lexer_to_state_actions, :_tuple_lexer_to_state_actions=
end
self._tuple_lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 5, 0
]

class << self
	attr_accessor :_tuple_lexer_from_state_actions
	private :_tuple_lexer_from_state_actions, :_tuple_lexer_from_state_actions=
end
self._tuple_lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 7, 0
]

class << self
	attr_accessor :_tuple_lexer_eof_trans
	private :_tuple_lexer_eof_trans, :_tuple_lexer_eof_trans=
end
self._tuple_lexer_eof_trans = [
	0, 0, 0, 0, 0, 0, 0, 11
]

class << self
	attr_accessor :tuple_lexer_start
end
self.tuple_lexer_start = 6;
class << self
	attr_accessor :tuple_lexer_first_final
end
self.tuple_lexer_first_final = 6;
class << self
	attr_accessor :tuple_lexer_error
end
self.tuple_lexer_error = 0;

class << self
	attr_accessor :tuple_lexer_en_main
end
self.tuple_lexer_en_main = 6;


# line 36 "lib/tuple_parser/tuple_parser.rl"
    
# line 145 "lib/tuple_parser/tuple_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = tuple_lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 37 "lib/tuple_parser/tuple_parser.rl"
    
# line 157 "lib/tuple_parser/tuple_parser.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_acts = _tuple_lexer_from_state_actions[cs]
	_nacts = _tuple_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _tuple_lexer_actions[_acts - 1]
			when 3 then
# line 1 "NONE"
		begin
ts = p
		end
# line 191 "lib/tuple_parser/tuple_parser.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _tuple_lexer_key_offsets[cs]
	_trans = _tuple_lexer_index_offsets[cs]
	_klen = _tuple_lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _tuple_lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _tuple_lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _tuple_lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _tuple_lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _tuple_lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _tuple_lexer_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _tuple_lexer_trans_targs[_trans]
	if _tuple_lexer_trans_actions[_trans] != 0
		_acts = _tuple_lexer_trans_actions[_trans]
		_nacts = _tuple_lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _tuple_lexer_actions[_acts - 1]
when 0 then
# line 5 "lib/tuple_parser/tuple_parser.rl"
		begin
 tokens << data[st..p-1].pack("c*") 		end
when 1 then
# line 6 "lib/tuple_parser/tuple_parser.rl"
		begin
 st = p 		end
when 4 then
# line 22 "lib/tuple_parser/tuple_parser.rl"
		begin
te = p
p = p - 1;		end
# line 271 "lib/tuple_parser/tuple_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _tuple_lexer_to_state_actions[cs]
	_nacts = _tuple_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _tuple_lexer_actions[_acts - 1]
when 2 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 291 "lib/tuple_parser/tuple_parser.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _tuple_lexer_eof_trans[cs] > 0
		_trans = _tuple_lexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 38 "lib/tuple_parser/tuple_parser.rl"

    return tokens
  end
end
