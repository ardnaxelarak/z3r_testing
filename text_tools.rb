$MAP = {}

def load_map(filename)
  File.open(filename).each do |line|
    pieces = line.split("=")
    if pieces.length == 2
      $MAP[pieces[1].to_i(16)] = pieces[0]
    else
      STDERR.puts("Invalid line: #{line}")
    end
  end
end

def decode(text)
  pieces = text.split
  ret = ""
  pieces.each do |piece|
    ipiece = piece.to_i(16)
    if $MAP[ipiece]
      ret += $MAP[ipiece]
    else
      ret += "[#{piece}]"
    end
  end
  return ret
end

if __FILE__ == $0
  if ARGV.length < 2
    STDERR.puts("Usage: #{$0} textmap text")
    exit 1
  end

  load_map(ARGV[0])
  puts decode(ARGV[1])
end
