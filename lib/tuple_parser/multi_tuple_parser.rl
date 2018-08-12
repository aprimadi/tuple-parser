=begin
%%{
  machine multi_tuple_lexer;

  action END_TOKEN    { tuple << data[st..p-1].pack("c*") }
  action START_TOKEN  { st = p }
  action END_TUPLE    {
    tuples.push(tuple)
    tuple = []
  }

  openparen  = '(';
  closeparen = ')';
  quote      = "'";
  comma      = ',';
  semicolon  = ';';

  token      = quote . ^quote* >START_TOKEN %END_TOKEN . quote;
  raw_token  = space* . token . space*;
  tuple      = space* . openparen . raw_token . (comma . raw_token)* . closeparen . space* %END_TUPLE;

  main := |*
    tuple . (semicolon . tuple)*;
  *|;
}%%
=end

class MultiTupleParser
  def parse(data)
    data = data.unpack("c*") if data.is_a?(String)
    eof = data.length
    tuples = []
    tuple = []

    st = 0

    %% write data;
    %% write init;
    %% write exec;

    return tuples
  end
end
