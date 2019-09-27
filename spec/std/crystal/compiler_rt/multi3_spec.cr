require "spec"

# Ported from compiler-rt:test/builtins/Unit/modti3_test.c

private def test__modti3(a : Int128, b : Int128, expected : Int128, file = __FILE__, line = __LINE__)
  it "passes compiler-rt builtins unit tests" do
    __modti3(a, b).eq expected
  end
end

private HEX_0_81985529216486895 = 0x81985529216486895.to_i128!
private HEX_0_3037000499 = 0x3037000499.to_i128!
private HEX_0_9223372030926249001 = 0x9223372030926249001.to_i128!
private HEX_0_4398046511103 = 0x4398046511103.to_i128!
private HEX_0_2097152 = 0x2097152.to_i128!
private HEX_0_9223372036852678656 = 0x9223372036852678656.to_i128!
private HEX_0_00000000000000B504F333F9DE5BE000 = 0x00000000000000B504F333F9DE5BE000.to_i128!
private HEX_0_000000000000000000B504F333F9DE5B = 0x000000000000000000B504F333F9DE5B.to_i128!
private HEX_0_7FFFFFFFFFFFF328DF915DA296E8A000 = 0x7FFFFFFFFFFFF328DF915DA296E8A000.to_i128!

describe "__modti3" do
test__multi3(0_i128, 0_i128, 0_i128)
test__multi3(0_i128, 1_i128, 0_i128)
test__multi3(1_i128, 0_i128, 0_i128)
test__multi3(0_i128, 10_i128, 0_i128)
test__multi3(10_i128, 0_i128, 0_i128)
test__multi3(0_i128, HEX_0_81985529216486895, 0_i128)
test__multi3(HEX_0_81985529216486895, 0_i128, 0_i128)
test__multi3(0_i128, -1_i128, 0_i128)
test__multi3(-1_i128, 0_i128, 0_i128)
test__multi3(0_i128, -10_i128, 0_i128)
test__multi3(-10_i128, 0_i128, 0_i128)
test__multi3(0_i128, -HEX_0_81985529216486895, 0_i128)
test__multi3(-HEX_0_81985529216486895, 0_i128, 0_i128)
test__multi3(1_i128, 1_i128, 1_i128)
test__multi3(1_i128, 10_i128, 10_i128)
test__multi3(10_i128, 1_i128, 10_i128)
test__multi3(1_i128, HEX_0_81985529216486895, HEX_0_81985529216486895)
test__multi3(HEX_0_81985529216486895, 1_i128, HEX_0_81985529216486895)
test__multi3(1_i128, -1_i128, -1_i128)
test__multi3(1_i128, -10_i128, -10_i128)
test__multi3(-10_i128, 1_i128, -10_i128)
test__multi3(1_i128, -HEX_0_81985529216486895, -HEX_0_81985529216486895)
test__multi3(-HEX_0_81985529216486895, 1_i128, -HEX_0_81985529216486895)
test__multi3(HEX_0_3037000499, HEX_0_3037000499, HEX_0_9223372030926249001)
test__multi3(-HEX_0_3037000499, HEX_0_3037000499, -HEX_0_9223372030926249001)
test__multi3(HEX_0_3037000499, -HEX_0_3037000499, -HEX_0_9223372030926249001)
test__multi3(-HEX_0_3037000499, -HEX_0_3037000499, HEX_0_9223372030926249001)
test__multi3(HEX_0_4398046511103, HEX_0_2097152, HEX_0_9223372036852678656)
test__multi3(-HEX_0_4398046511103, HEX_0_2097152, -HEX_0_9223372036852678656)
test__multi3(HEX_0_4398046511103, -HEX_0_2097152, -HEX_0_9223372036852678656)
test__multi3(-HEX_0_4398046511103, -HEX_0_2097152, HEX_0_9223372036852678656)
test__multi3(HEX_0_2097152, HEX_0_4398046511103, HEX_0_9223372036852678656)
test__multi3(-HEX_0_2097152, HEX_0_4398046511103, -HEX_0_9223372036852678656)
test__multi3(HEX_0_2097152, -HEX_0_4398046511103, -HEX_0_9223372036852678656)
test__multi3(-HEX_0_2097152, -HEX_0_4398046511103, HEX_0_9223372036852678656)
test__multi3(HEX_0_00000000000000B504F333F9DE5BE000, HEX_0_000000000000000000B504F333F9DE5B, HEX_0_7FFFFFFFFFFFF328DF915DA296E8A000)
end
