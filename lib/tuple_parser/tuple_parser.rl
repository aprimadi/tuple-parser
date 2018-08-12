=begin
%%{
  machine tuple_lexer;

  action END_TOKEN { tokens << data[st..p-1].pack("c*") }
  action START_TOKEN { st = p }

  openparen   = '(';
  closeparen  = ')';
  quote       = "'";
  comma       = ',';
  
  token       = quote . ^quote* >START_TOKEN %END_TOKEN . quote;
  raw_token   = space* . token . space*;
  
  main := |*
    space*
    openparen
    raw_token
    (comma . raw_token)*
    closeparen
    space*;
  *|;
}%%
=end

class TupleParser
  def parse(data)
    data = data.unpack("c*") if(data.is_a?(String))
    eof = data.length
    tokens = []

    st = 0

    %% write data;
    %% write init;
    %% write exec;

    return tokens
  end
end
