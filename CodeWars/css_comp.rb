def compare a, b
  score(a) > score(b) ? a : b
end

def score a
  a.scan('#').size * 10_000 + a.scan('.').size * 10 + a.split.select { |s| s[0] =~ /[^#\.\*]/ }.size
end
