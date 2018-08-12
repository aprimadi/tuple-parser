
# line 1 "lib/tuple_parser/multi_tuple_parser.rl"
=begin

# line 25 "lib/tuple_parser/multi_tuple_parser.rl"

=end

class MultiTupleParser
  def parse(data)
    data = data.unpack("c*") if data.is_a?(String)
    eof = data.length
    tuples = []
    tuple = []

    st = 0

    
# line 20 "lib/tuple_parser/multi_tuple_parser.rb"
class << self
	attr_accessor :_multi_tuple_lexer_actions
	private :_multi_tuple_lexer_actions, :_multi_tuple_lexer_actions=
end
self._multi_tuple_lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 7, 2, 
	1, 0, 2, 2, 6
]

class << self
	attr_accessor :_multi_tuple_lexer_key_offsets
	private :_multi_tuple_lexer_key_offsets, :_multi_tuple_lexer_key_offsets=
end
self._multi_tuple_lexer_key_offsets = [
	0, 0, 4, 8, 9, 10, 15, 19, 
	23, 24, 25, 30, 34
]

class << self
	attr_accessor :_multi_tuple_lexer_trans_keys
	private :_multi_tuple_lexer_trans_keys, :_multi_tuple_lexer_trans_keys=
end
self._multi_tuple_lexer_trans_keys = [
	32, 40, 9, 13, 32, 39, 9, 13, 
	39, 39, 32, 41, 44, 9, 13, 32, 
	40, 9, 13, 32, 39, 9, 13, 39, 
	39, 32, 41, 44, 9, 13, 32, 40, 
	9, 13, 32, 59, 9, 13, 0
]

class << self
	attr_accessor :_multi_tuple_lexer_single_lengths
	private :_multi_tuple_lexer_single_lengths, :_multi_tuple_lexer_single_lengths=
end
self._multi_tuple_lexer_single_lengths = [
	0, 2, 2, 1, 1, 3, 2, 2, 
	1, 1, 3, 2, 2
]

class << self
	attr_accessor :_multi_tuple_lexer_range_lengths
	private :_multi_tuple_lexer_range_lengths, :_multi_tuple_lexer_range_lengths=
end
self._multi_tuple_lexer_range_lengths = [
	0, 1, 1, 0, 0, 1, 1, 1, 
	0, 0, 1, 1, 1
]

class << self
	attr_accessor :_multi_tuple_lexer_index_offsets
	private :_multi_tuple_lexer_index_offsets, :_multi_tuple_lexer_index_offsets=
end
self._multi_tuple_lexer_index_offsets = [
	0, 0, 4, 8, 10, 12, 17, 21, 
	25, 27, 29, 34, 38
]

class << self
	attr_accessor :_multi_tuple_lexer_trans_targs
	private :_multi_tuple_lexer_trans_targs, :_multi_tuple_lexer_trans_targs=
end
self._multi_tuple_lexer_trans_targs = [
	1, 2, 1, 0, 2, 3, 2, 0, 
	5, 4, 5, 4, 5, 12, 2, 5, 
	0, 6, 7, 6, 11, 7, 8, 7, 
	11, 10, 9, 10, 9, 10, 12, 7, 
	10, 11, 1, 2, 1, 0, 12, 6, 
	12, 11, 11, 11, 11, 11, 11, 11, 
	0
]

class << self
	attr_accessor :_multi_tuple_lexer_trans_actions
	private :_multi_tuple_lexer_trans_actions, :_multi_tuple_lexer_trans_actions=
end
self._multi_tuple_lexer_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	15, 3, 1, 0, 0, 11, 0, 0, 
	0, 0, 0, 0, 13, 0, 0, 0, 
	13, 15, 3, 1, 0, 0, 11, 0, 
	0, 13, 0, 0, 0, 0, 11, 5, 
	11, 18, 13, 13, 13, 13, 13, 18, 
	0
]

class << self
	attr_accessor :_multi_tuple_lexer_to_state_actions
	private :_multi_tuple_lexer_to_state_actions, :_multi_tuple_lexer_to_state_actions=
end
self._multi_tuple_lexer_to_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 7, 0
]

class << self
	attr_accessor :_multi_tuple_lexer_from_state_actions
	private :_multi_tuple_lexer_from_state_actions, :_multi_tuple_lexer_from_state_actions=
end
self._multi_tuple_lexer_from_state_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 9, 0
]

class << self
	attr_accessor :_multi_tuple_lexer_eof_trans
	private :_multi_tuple_lexer_eof_trans, :_multi_tuple_lexer_eof_trans=
end
self._multi_tuple_lexer_eof_trans = [
	0, 0, 0, 0, 0, 0, 47, 47, 
	47, 47, 47, 0, 48
]

class << self
	attr_accessor :multi_tuple_lexer_start
end
self.multi_tuple_lexer_start = 11;
class << self
	attr_accessor :multi_tuple_lexer_first_final
end
self.multi_tuple_lexer_first_final = 11;
class << self
	attr_accessor :multi_tuple_lexer_error
end
self.multi_tuple_lexer_error = 0;

class << self
	attr_accessor :multi_tuple_lexer_en_main
end
self.multi_tuple_lexer_en_main = 11;


# line 38 "lib/tuple_parser/multi_tuple_parser.rl"
    
# line 155 "lib/tuple_parser/multi_tuple_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = multi_tuple_lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 39 "lib/tuple_parser/multi_tuple_parser.rl"
    
# line 167 "lib/tuple_parser/multi_tuple_parser.rb"
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
	_acts = _multi_tuple_lexer_from_state_actions[cs]
	_nacts = _multi_tuple_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _multi_tuple_lexer_actions[_acts - 1]
			when 4 then
# line 1 "NONE"
		begin
ts = p
		end
# line 201 "lib/tuple_parser/multi_tuple_parser.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _multi_tuple_lexer_key_offsets[cs]
	_trans = _multi_tuple_lexer_index_offsets[cs]
	_klen = _multi_tuple_lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _multi_tuple_lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _multi_tuple_lexer_trans_keys[_mid]
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
	  _klen = _multi_tuple_lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _multi_tuple_lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _multi_tuple_lexer_trans_keys[_mid+1]
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
	end
	if _goto_level <= _eof_trans
	cs = _multi_tuple_lexer_trans_targs[_trans]
	if _multi_tuple_lexer_trans_actions[_trans] != 0
		_acts = _multi_tuple_lexer_trans_actions[_trans]
		_nacts = _multi_tuple_lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _multi_tuple_lexer_actions[_acts - 1]
when 0 then
# line 5 "lib/tuple_parser/multi_tuple_parser.rl"
		begin
 tuple << data[st..p-1].pack("c*") 		end
when 1 then
# line 6 "lib/tuple_parser/multi_tuple_parser.rl"
		begin
 st = p 		end
when 2 then
# line 7 "lib/tuple_parser/multi_tuple_parser.rl"
		begin

    tuples.push(tuple)
    tuple = []
  		end
when 5 then
# line 1 "NONE"
		begin
te = p+1
		end
when 6 then
# line 23 "lib/tuple_parser/multi_tuple_parser.rl"
		begin
te = p
p = p - 1;		end
when 7 then
# line 23 "lib/tuple_parser/multi_tuple_parser.rl"
		begin
 begin p = ((te))-1; end
		end
# line 297 "lib/tuple_parser/multi_tuple_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _multi_tuple_lexer_to_state_actions[cs]
	_nacts = _multi_tuple_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _multi_tuple_lexer_actions[_acts - 1]
when 3 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 317 "lib/tuple_parser/multi_tuple_parser.rb"
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
	if _multi_tuple_lexer_eof_trans[cs] > 0
		_trans = _multi_tuple_lexer_eof_trans[cs] - 1;
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

# line 40 "lib/tuple_parser/multi_tuple_parser.rl"

    return tuples
  end
end
