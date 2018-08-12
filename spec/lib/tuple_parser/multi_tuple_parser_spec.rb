require 'spec_helper'

describe MultiTupleParser do
  let(:parser) { MultiTupleParser.new }

  it 'parses correctly' do
    expect(parser.parse("('SELF', 'QVID00000000000001', 'LI BING', 'http://www.iol.co.za/news/world/indonesia-nabs-animal-smugglers-1448390;');('SELF', 'QVID00000000000001', 'LI LING LING', 'http://www.thecitizen.co.tz/News/Woman-enjoined-in-ivory-case/-/1840340/2889756/-/txg1b1/-/index.html');('SELF', 'QVID00000000000001', 'WANG HUI', 'http://www.iol.co.za/news/africa/namibia-finds-chinese-rhino-horn-smugglers-guilty-2069305');('ORIG', 'QVID00000000004980', 'XI ZHANG', 'http://www.cfra.com/news/2016/09/09/five-charged-in-three-human-trafficking-cases');('ORIG', 'QVID00000000024444', 'QIONG WANG', 'https://cdfgnews.wordpress.com/2011/04/21/repeat-san-francisco-abalone-poacher-sentenced-to-jail/')")).to eq [
      ['SELF', 'QVID00000000000001', 'LI BING', 'http://www.iol.co.za/news/world/indonesia-nabs-animal-smugglers-1448390;'],
      ['SELF', 'QVID00000000000001', 'LI LING LING', 'http://www.thecitizen.co.tz/News/Woman-enjoined-in-ivory-case/-/1840340/2889756/-/txg1b1/-/index.html'],
      ['SELF', 'QVID00000000000001', 'WANG HUI', 'http://www.iol.co.za/news/africa/namibia-finds-chinese-rhino-horn-smugglers-guilty-2069305'],
      ['ORIG', 'QVID00000000004980', 'XI ZHANG', 'http://www.cfra.com/news/2016/09/09/five-charged-in-three-human-trafficking-cases'],
      ['ORIG', 'QVID00000000024444', 'QIONG WANG', 'https://cdfgnews.wordpress.com/2011/04/21/repeat-san-francisco-abalone-poacher-sentenced-to-jail/'],
    ]
  end
end
