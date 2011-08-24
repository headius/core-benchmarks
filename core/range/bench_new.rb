require 'benchmark'
require 'benchmark/ips'
#require File.expand_path('../shared_string.rb', __FILE__)

Benchmark.ips do |x|
  #short_sentence = $short_sentence.dup

  x.report "0..10" do |times|
    i = 0
    while i < times
      Range.new(0, 10)
      i += 1
    end
  end

  x.report "0...10" do |times|
    i = 0
    while i < times
      Range.new(0, 10, true)
      i += 1
    end
  end

  x.report "0xffff..0xfffff" do |times|
    i = 0
    while i < times
      Range.new(0xffff, 0xfffff)
      i += 1
    end
  end

  x.report "0xffff...0xfffff" do |times|
    i = 0
    while i < times
      Range.new(0xffff, 0xfffff, true)
      i += 1
    end
  end

  x.report "0.5..2.4" do |times|
    i = 0
    while i < times
      Range.new(0.5,2.4)
      i += 1
    end
  end

  x.report "0.5...2.4" do |times|
    i = 0
    while i < times
      Range.new(0.5,2.4,true)
      i += 1
    end
  end

  x.report "'a'..'j'" do |times|
    i = 0
    while i < times
      Range.new('a', 'j')
      i += 1
    end
  end

  x.report "'a'...'j'" do |times|
    i = 0
    while i < times
      Range.new('a', 'j', true)
      i += 1
    end
  end
end
