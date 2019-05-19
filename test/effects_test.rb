require 'minitest/autorun'
require '../lib/effects'

class EffectsTest < MiniTest::Test 
  def test_reverse
    assert Effects
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end

  def test_lpud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')

    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end
end