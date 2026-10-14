Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NikonDecompressor?download=true
inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [16 x i8] }
%"struct.std::array.0" = type { [2 x %"struct.std::array"] }
%"struct.std::array.77" = type { [8192 x i8] }
%"struct.std::array.110" = type { [32 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::PrefixCodeLUTDecoder" = type { %"class.rawspeed::PrefixCodeLookupDecoder", %"class.std::vector.17" }
%"class.rawspeed::PrefixCodeLookupDecoder" = type { %"class.rawspeed::AbstractPrefixCodeDecoder", %"class.std::vector", %"class.std::vector" }
%"class.rawspeed::AbstractPrefixCodeDecoder" = type { %"class.rawspeed::AbstractPrefixCodeTranscoder" }
%"class.rawspeed::AbstractPrefixCodeTranscoder" = type { i8, i8, %"class.rawspeed::PrefixCode" }
%"class.rawspeed::PrefixCode" = type { %"class.rawspeed::AbstractPrefixCode", %"class.std::vector.7", %"class.std::vector.12" }
%"class.rawspeed::AbstractPrefixCode" = type { %"class.std::vector.2" }
%"class.std::vector.2" = type { %"struct.std::_Vector_base.3" }
%"struct.std::_Vector_base.3" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl" }
%"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl" = type { %"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.rawspeed::HuffmanCode" = type { %"class.rawspeed::AbstractPrefixCode", %"class.std::vector.7" }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.74" }
%"struct.std::_Head_base.74" = type { ptr }
%"struct.std::array.108" = type { [257 x i8] }
%"struct.std::array.109" = type { [257 x i16] }
%"class.rawspeed::(anonymous namespace)::NikonLASDecompressor" = type { i8, i8, [6 x i8], %"struct.rawspeed::(anonymous namespace)::NikonLASDecompressor::PrefixCodeDecoder" }
%"struct.rawspeed::(anonymous namespace)::NikonLASDecompressor::PrefixCodeDecoder" = type <{ %"struct.std::array.103", %"struct.std::array.104", %"struct.std::array.105", [2 x i8], %"struct.std::array.106", %"struct.std::array.107", [2 x i8], %"struct.std::array.104", [4 x i8], %"class.std::vector.17", i8, [7 x i8] }>
%"struct.std::array.103" = type { [17 x i32] }
%"struct.std::array.105" = type { [17 x i16] }
%"struct.std::array.106" = type { [18 x i32] }
%"struct.std::array.107" = type { [17 x i16] }
%"struct.std::array.104" = type { [256 x i32] }
%"struct.std::array.23" = type { [2 x i32] }
%"class.rawspeed::RawImageCurveGuard" = type <{ ptr, ptr, i8, [7 x i8] }>
%"class.rawspeed::BitStreamerMSB" = type { %"class.rawspeed::BitStreamer" }
%"class.rawspeed::BitStreamer" = type { %"struct.rawspeed::BitStreamCacheRightInLeftOut", %"struct.rawspeed::BitStreamerForwardSequentialReplenisher" }
%"struct.rawspeed::BitStreamCacheRightInLeftOut" = type { %"struct.rawspeed::BitStreamCacheBase.base", [4 x i8] }
%"struct.rawspeed::BitStreamCacheBase.base" = type <{ i64, i32 }>
%"struct.rawspeed::BitStreamerForwardSequentialReplenisher" = type { %"struct.rawspeed::BitStreamerReplenisherBase.base", [4 x i8] }
%"struct.rawspeed::BitStreamerReplenisherBase.base" = type { %"class.rawspeed::Array1DRef.75", i32 }
%"class.rawspeed::Array1DRef.75" = type <{ ptr, i32, [4 x i8] }>

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE = comdat any

$_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb = comdat any

$_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii = comdat any

$_ZN8rawspeed18RawImageCurveGuardD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt6vectorItSaItEE17_M_default_appendEm = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv = comdat any

$_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE19generateCodeSymbolsEv = comdat any

$_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE = comdat any

$_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv = comdat any

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb = comdat any

$_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

$_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE = comdat any

@_ZN8rawspeed17NikonDecompressor10nikon_treeE = hidden constant { <{ %"struct.std::array.0", %"struct.std::array.0", { <{ { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array" }> }, %"struct.std::array.0", %"struct.std::array.0", { <{ { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array" }> } }> } { <{ %"struct.std::array.0", %"struct.std::array.0", { <{ { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array" }> }, %"struct.std::array.0", %"struct.std::array.0", { <{ { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array" }> } }> <{ %"struct.std::array.0" { [2 x %"struct.std::array"] [%"struct.std::array" { [16 x i8] c"\00\01\05\01\01\01\01\01\01\02\00\00\00\00\00\00" }, %"struct.std::array" { [16 x i8] c"\05\04\03\06\02\07\01\00\08\09\0B\0A\0C\00\00\00" }] }, %"struct.std::array.0" { [2 x %"struct.std::array"] [%"struct.std::array" { [16 x i8] c"\00\01\05\01\01\01\01\01\01\02\00\00\00\00\00\00" }, %"struct.std::array" { [16 x i8] c"9Z8'\16\05\04\03\02\01\00\0B\0C\0C\00\00" }] }, { <{ { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array" }> } { <{ { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array" }> <{ { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 4, i8 2, i8 3, i8 1, i8 2, [9 x i8] zeroinitializer }> }, %"struct.std::array" { [16 x i8] c"\05\04\06\03\07\02\08\01\09\00\0A\0B\0C\00\00\00" } }> }, %"struct.std::array.0" { [2 x %"struct.std::array"] [%"struct.std::array" { [16 x i8] c"\00\01\04\03\01\01\01\01\01\02\00\00\00\00\00\00" }, %"struct.std::array" { [16 x i8] c"\05\06\04\07\08\03\09\02\01\00\0A\0B\0C\0D\0E\00" }] }, %"struct.std::array.0" { [2 x %"struct.std::array"] [%"struct.std::array" { [16 x i8] c"\00\01\05\01\01\01\01\01\01\01\02\00\00\00\00\00" }, %"struct.std::array" { [16 x i8] c"\08\\K:)\07\06\05\04\03\02\01\00\0D\0E\00" }] }, { <{ { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array" }> } { <{ { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array" }> <{ { <{ [8 x i8], [8 x i8] }> } { <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\00\01\04\02\02\03\01\02", [8 x i8] zeroinitializer }> }, %"struct.std::array" { [16 x i8] c"\07\06\08\05\09\04\0A\03\0B\0C\02\00\01\0D\0E\00" } }> } }> }, align 1
@.str = private unnamed_addr constant [43 x i8] c"%s, line 407: Bad curve segment count (%u)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj = private unnamed_addr constant [126 x i8] c"static std::vector<uint16_t> rawspeed::NikonDecompressor::createCurve(ByteStream &, uint32_t, uint32_t, uint32_t, uint32_t *)\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"%s, line 430: Don't know how to compute curve! csize = %u\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s, line 478: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj = private unnamed_addr constant [79 x i8] c"rawspeed::NikonDecompressor::NikonDecompressor(RawImage, ByteStream, uint32_t)\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%s, line 483: Unexpected image dimensions found: (%d; %d)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s, line 490: Invalid bpp found: %u\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Nef version v0:%u, v1:%u\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.77" zeroinitializer, comdat, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s, line 55: Malformed code\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE = private unnamed_addr constant [149 x i8] c"rawspeed::PrefixCode<rawspeed::BaselineCodeTag>::PrefixCode(std::vector<CodeSymbol>, std::vector<CodeValueTy>) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%s, line 183: Empty code alphabet?\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorIhSaIhEE = private unnamed_addr constant [140 x i8] c"rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::AbstractPrefixCode(std::vector<CodeValueTy>) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%s, line 79: Too many codes of of length %lu.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv = private unnamed_addr constant [112 x i8] c"void rawspeed::PrefixCode<rawspeed::BaselineCodeTag>::verifyCodeSymbols() [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"%s, line 93: Code symbols are not globally ordered\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s, line 100: Not prefix codes!\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB]\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.77" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [46 x i8] c"%s, line 111: Codes-per-length table is empty\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE = private unnamed_addr constant [124 x i8] c"uint32_t rawspeed::HuffmanCode<rawspeed::BaselineCodeTag>::setNCodesPerLength(Buffer) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s, line 119: Too big code-values table\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"%s, line 132: Corrupt Huffman. Can never have %u codes in %lu-bit len\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"%s, line 139: Corrupt Huffman. Can only fit %u out of %u codes in %lu-bit len\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s, line 115: Corrupt Huffman\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb = private unnamed_addr constant [271 x i8] c"void rawspeed::PrefixCodeLUTDecoder<rawspeed::BaselineCodeTag, rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>>::setup(bool, bool) [CodeTag = rawspeed::BaselineCodeTag, BackendPrefixCodeDecoder = rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>]\00", align 1
@_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE = linkonce_odr hidden constant i16 -1, comdat, align 2
@.str.26 = private unnamed_addr constant [71 x i8] c"%s, line 55: Corrupt Huffman code: difference length %u longer than %u\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv = private unnamed_addr constant [148 x i8] c"void rawspeed::AbstractPrefixCodeTranscoder<rawspeed::BaselineCodeTag>::verifyCodeValuesAsDiffLengths() const [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB>::getInput() [Tag = rawspeed::BitStreamerMSB]\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s, line 155: bad Huffman code: %u (len: %u)\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_ = private unnamed_addr constant [255 x i8] c"std::pair<typename Base::CodeSymbol, int> rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>::finishReadingPartialSymbol(BIT_STREAM &, typename Base::CodeSymbol) const [CodeTag = rawspeed::BaselineCodeTag, BIT_STREAM = rawspeed::BitStreamerMSB]\00", align 1
@.str.29 = private unnamed_addr constant [89 x i8] c"%s, line 131: LJpegDecoder::createPrefixCodeDecoder: Code length too long. Corrupt data.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor23createPrefixCodeDecoderEv = private unnamed_addr constant [86 x i8] c"void rawspeed::(anonymous namespace)::NikonLASDecompressor::createPrefixCodeDecoder()\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"%s, line 176: createPrefixCodeDecoder: Code length too long. Corrupt data.\00", align 1
@_ZN8rawspeed12_GLOBAL__N_17bitMaskE = internal unnamed_addr constant %"struct.std::array.110" { [32 x i32] [i32 -1, i32 2147483647, i32 1073741823, i32 536870911, i32 268435455, i32 134217727, i32 67108863, i32 33554431, i32 16777215, i32 8388607, i32 4194303, i32 2097151, i32 1048575, i32 524287, i32 262143, i32 131071, i32 65535, i32 32767, i32 16383, i32 8191, i32 4095, i32 2047, i32 1023, i32 511, i32 255, i32 127, i32 63, i32 31, i32 15, i32 7, i32 3, i32 1] }, align 4
@.str.32 = private unnamed_addr constant [75 x i8] c"%s, line 205: createPrefixCodeDecoder: Code length too long. Corrupt data.\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"%s, line 357: Corrupt JPEG data: bad Huffman code:%d\0A\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE = private unnamed_addr constant [94 x i8] c"int rawspeed::(anonymous namespace)::NikonLASDecompressor::decodeDifference(BitStreamerMSB &)\00", align 1

@_ZN8rawspeed17NikonDecompressorC1ENS_8RawImageENS_10ByteStreamEj = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = icmp eq i32 %3, 68                       ; 2 uses
  %i.b = icmp eq i32 %4, 64                       ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  %i.c = add i32 %2, -2
  %spec.select = select i1 %or.cond, i32 %i.c, i32 %2 ; 2 uses
  %i.d = shl nuw i32 1, %spec.select
  %i.e = and i32 %i.d, 32767                      ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = shl nuw nsw i64 %i.g, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 32 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  store i16 0, ptr %i.j, align 2, !tbaa !18
  %i.m = getelementptr i8, ptr %i.j, i64 2        ; 4 uses
  %i.n = icmp ugt i32 %spec.select, 14
  br i1 %i.n, label %.thread145, label %bb.a

.thread145:                                       ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !19
  br label %iter.check

bb.a:                                             ; preds = %.noexc
  %i.p = shl nuw nsw i32 %i.e, 1
  %.idx.i.i.i.i.i.i.i = zext nneg i32 %i.p to i64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = add nuw nsw i64 %.idx.i.i.i.i.i.i.i, 2
  %i.t = lshr exact i64 %i.s, 1
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %.thread145
  %i.u = phi i64 [ 1, %.thread145 ], [ %i.t, %bb.a ] ; 13 uses
  %i.v = phi ptr [ %i.o, %.thread145 ], [ %i.r, %bb.a ] ; 3 uses
  %.0.i.i.i.i.i148 = phi ptr [ %i.m, %.thread145 ], [ %i.q, %bb.a ]
  %min.iters.check = icmp samesign ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check156 = icmp samesign ult i64 %i.u, 64
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.u, 56
  %n.vec = and i64 %i.u, 9223372036854775744      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <16 x i16> %vec.ind, splat (i16 16)
  %step.add.2 = add <16 x i16> %vec.ind, splat (i16 32)
  %step.add.3 = add <16 x i16> %vec.ind, splat (i16 48)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <16 x i16> %vec.ind, ptr %i.x, align 2, !tbaa !18
  store <16 x i16> %step.add, ptr %i.y, align 2, !tbaa !18
  store <16 x i16> %step.add.2, ptr %i.z, align 2, !tbaa !18
  store <16 x i16> %step.add.3, ptr %i.aa, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add <16 x i16> %vec.ind, splat (i16 64)
  %i.ab = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@_ZN8rawspeed17NikonDecompressorC2ENS_8RawImageENS_10ByteStreamEj:bb.a
  %i.bm = add nuw nsw i64 %i.bl, 2
  %.not.i.i.i.i.i.i30 = icmp samesign ugt i64 %i.bm, %i.bb
  br i1 %.not.i.i.i.i.i.i30, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = add nuw nsw i32 %i.at, 4                ; 2 uses
  %i.bo = icmp samesign ule i32 %i.bn, %i.aa
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bl
  %.0.copyload.i.i.i.i.i.i31 = load i16, ptr %i.bp, align 1 ; 2 uses
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i31)
  %spec.select.i.i.i.i.i.i32 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i31, i16 %i.bq
  %i.br = zext i16 %spec.select.i.i.i.i.i.i32 to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !33
  %i.bt = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 2
  %.not.i.i.i.i.i.i35 = icmp samesign ugt i64 %i.bu, %i.bb
  br i1 %.not.i.i.i.i.i.i35, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = add nuw nsw i32 %i.at, 6                ; 2 uses
  %i.bw = icmp samesign ule i32 %i.bv, %i.aa
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bt
  %.0.copyload.i.i.i.i.i.i36 = load i16, ptr %i.bx, align 1 ; 2 uses
  %i.by = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i36)
  %spec.select.i.i.i.i.i.i37 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i36, i16 %i.by
  %i.bz = zext i16 %spec.select.i.i.i.i.i.i37 to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !33
  %i.cb = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 2
  %.not.i.i.i.i.i.i40 = icmp samesign ugt i64 %i.cc, %i.bb
  br i1 %.not.i.i.i.i.i.i40, label %.invoke, label %bb.ac

.invoke:                                          ; preds = %bb.r, %bb.o, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.cd = phi ptr [ @.str.7, %bb.aa ], [ @.str.7, %bb.z ], [ @.str.7, %bb.y ], [ @.str.7, %bb.ab ], [ @.str.7, %bb.o ], [ @.str.9, %bb.r ]
  %i.ce = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.aa ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.z ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.y ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.ab ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.o ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.r ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce) #16
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cf = add nuw nsw i32 %i.at, 8                ; 2 uses
  %i.cg = icmp samesign ule i32 %i.cf, %i.aa
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cb
  %.0.copyload.i.i.i.i.i.i41 = load i16, ptr %i.ch, align 1 ; 2 uses
  %i.ci = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i41)
  %spec.select.i.i.i.i.i.i42 = select i1 %i.be, i16 %.0.copyload.i.i.i.i.i.i41, i16 %i.ci
  store i32 %i.cf, ptr %i.x, align 8, !tbaa !29
  %i.cj = zext i16 %spec.select.i.i.i.i.i.i42 to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.av, i32 noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.f)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  %i.co = load <2 x ptr>, ptr %4, align 16, !tbaa !243
  store <2 x ptr> %i.co, ptr %i.g, align 8, !tbaa !243
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !16
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !16
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNSt6vectorItSaItEEaSEOS1_.exit

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.ad
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ct) #24
  %.pr = load ptr, ptr %4, align 16, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %i.cu = load ptr, ptr %i.cp, align 16, !tbaa !16
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %.pr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cx) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.ad, %_ZNSt6vectorItSaItEEaSEOS1_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cy = load i32, ptr %i.f, align 8, !tbaa !90
  %i.cz = load ptr, ptr %0, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !155
  %.not19 = icmp ult i32 %i.cy, %i.db
  br i1 %.not19, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  store i32 0, ptr %i.f, align 8, !tbaa !90
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %_ZNSt6vectorItSaItEED2Ev.exit
  ret void

bb.ai:                                            ; preds = %bb.s, %bb.ag, %bb.t, %bb.f
  %.pn20 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.ar, %bb.s ], [ %i.dc, %bb.ag ], [ %i.as, %bb.t ]
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorItSaItEED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !16
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit46

_ZNSt6vectorItSaItEED2Ev.exit46:                  ; preds = %bb.ai, %bb.aj
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn20
}

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !162, !inline_history !244
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !164, !inline_history !244
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !165

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor10decompressENS_10Array1DRefIKhEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.sroa.0.i.i.i.i.i = alloca i32, align 4        ; 5 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 5 uses
  %5 = alloca %"struct.std::array.108", align 1   ; 16 uses
  %6 = alloca %"struct.std::array.109", align 2   ; 8 uses
  %7 = alloca %"class.rawspeed::(anonymous namespace)::NikonLASDecompressor", align 8 ; 26 uses
  %8 = alloca %"struct.std::array.23", align 8    ; 5 uses
  %9 = alloca %"class.rawspeed::RawImageCurveGuard", align 8 ; 7 uses
  %10 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = zext i1 %3 to i8
  store ptr %0, ptr %9, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 %i.b, ptr %i.d, align 8, !tbaa !170
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @_ZN8rawspeed12RawImageData8setTableERKSt6vectorItSaItEEb(ptr noundef nonnull align 8 dereferenceable(624) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.f = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %10, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.g, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !176
  %i.j = icmp samesign ult i32 %2, 4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #16
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %1, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i) ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw i64 %i.l, 32
  store i64 %i.m, ptr %10, align 8, !tbaa !172
  store i32 32, ptr %i.g, align 8, !tbaa !173
  store i32 4, ptr %i.i, align 8, !tbaa !176
  %i.n = lshr i32 %i.k, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !267
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !90   ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !155  ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0, i32 noundef %i.u)
          to label %bb.be unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i, %.invoke.i.i, %bb.d, %bb.h, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.qr, %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN8rawspeed18RawImageCurveGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %i.q, %i.u
  tail call void @llvm.assume(i1 %i.w)
  invoke void @_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0, i32 noundef %i.q)
          to label %iter.check unwind label %bb.g

iter.check:                                       ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = add i32 %i.y, 1                          ; 5 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !89
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !90  ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  store i8 1, ptr %7, align 8, !tbaa !279, !alias.scope !268
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.ae, align 1, !tbaa !280, !alias.scope !268
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 2272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !268
  %i.ag = zext i32 %i.z to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr @_ZN8rawspeed17NikonDecompressor10nikon_treeE, i64 %i.ag ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !33, !alias.scope !268
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.aj, align 8, !tbaa !33, !alias.scope !268
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !61, !noalias !268
  %i.am = zext i8 %i.al to i32                    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !33, !alias.scope !268
  %i.ao = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !61, !noalias !268
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !33, !alias.scope !268
  %i.at = add nuw nsw i32 %i.ao, %i.ar            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !61, !noalias !268
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !33, !alias.scope !268
  %i.ay = add nuw nsw i32 %i.at, %i.aw            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !61, !noalias !268
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !33, !alias.scope !268
  %i.bd = add nuw nsw i32 %i.ay, %i.bb            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !61, !noalias !268
  %i.bg = zext i8 %i.bf to i32                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !33, !alias.scope !268
  %i.bi = add nuw nsw i32 %i.bd, %i.bg            ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !61, !noalias !268
  %i.bl = zext i8 %i.bk to i32                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !33, !alias.scope !268
  %i.bn = add nuw nsw i32 %i.bi, %i.bl            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !61, !noalias !268
  %i.bq = zext i8 %i.bp to i32                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !33, !alias.scope !268
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !61, !noalias !268
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !33, !alias.scope !268
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !61, !noalias !268
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !33, !alias.scope !268
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.cc = add nuw nsw i32 %i.bn, %i.bq            ; 3 uses
  %i.cd = add nuw nsw i32 %i.cc, %i.bu            ; 4 uses
  %i.ce = add nuw nsw i32 %i.cd, %i.by            ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ce to i64 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ca, i8 0, i64 20, i1 false), !alias.scope !268
  %min.iters.check = icmp ult i32 %i.ce, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp ult i32 %i.ce, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %wide.trip.count.i.i.i, 24
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %wide.load = load <8 x i8>, ptr %i.ch, align 1, !tbaa !61, !noalias !268
  %wide.load78 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !61, !noalias !268
  %wide.load79 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !61, !noalias !268
  %wide.load80 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !61, !noalias !268
  %i.cl = zext <8 x i8> %wide.load to <8 x i32>
  %i.cm = zext <8 x i8> %wide.load78 to <8 x i32>
  %i.cn = zext <8 x i8> %wide.load79 to <8 x i32>
  %i.co = zext <8 x i8> %wide.load80 to <8 x i32>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store <8 x i32> %i.cl, ptr %i.cp, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.cm, ptr %i.cq, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.cn, ptr %i.cr, align 4, !tbaa !33, !alias.scope !268
  store <8 x i32> %i.co, ptr %i.cs, align 4, !tbaa !33, !alias.scope !268
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index82
  %wide.load83 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !61, !noalias !268
  %i.cv = zext <8 x i8> %wide.load83 to <8 x i32>
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index82
  store <8 x i32> %i.cv, ptr %i.cw, align 4, !tbaa !33, !alias.scope !268
  %index.next84 = add nuw i64 %index82, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n85 = icmp eq i64 %n.vec81, %wide.trip.count.i.i.i
  br i1 %cmp.n85, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec81, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !61, !noalias !268
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i
  store i32 %i.da, ptr %i.db, align 4, !tbaa !33, !alias.scope !268
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.split.i.2.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !252

.lr.ph.split.i.2.i.i.i:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !268
  store i8 2, ptr %5, align 1, !noalias !268
  %scevgep.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dd = add nsw i32 %i.am, -1
  %i.de = call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %narrow36.i.i.i = add nuw nsw i32 %i.de, 1
  %i.df = zext nneg i32 %narrow36.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.2.i.i.i, i8 3, i64 %i.df, i1 false), !tbaa !61, !noalias !268
  %i.dg = zext nneg i32 %i.ao to i64
  %scevgep.i.3.i.i.i = getelementptr i8, ptr %5, i64 %i.dg
  %i.dh = xor i32 %i.am, 255                      ; 2 uses
  %i.di = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.dj = call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.di)
  %narrow.i.i = add nuw nsw i32 %i.dj, 1
  %i.dk = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.3.i.i.i, i8 4, i64 %i.dk, i1 false), !tbaa !61, !noalias !268
  %.not136.i.3.i.i.i = icmp ugt i32 %i.dh, %i.di
  br i1 %.not136.i.3.i.i.i, label %.lr.ph.split.i.3.i.i.i, label %.invoke.i.i

.lr.ph.split.i.3.i.i.i:                           ; preds = %.lr.ph.split.i.2.i.i.i
  %i.dl = zext nneg i32 %i.at to i64
  %scevgep.i.4.i.i.i = getelementptr i8, ptr %5, i64 %i.dl
  %i.dm = call i32 @llvm.usub.sat.i32(i32 256, i32 %i.at) ; 2 uses
  %i.dn = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.do = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dn)
  %narrow12.i.i = add nuw nsw i32 %i.do, 1
  %i.dp = zext nneg i32 %narrow12.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.4.i.i.i, i8 5, i64 %i.dp, i1 false), !tbaa !61, !noalias !268
  %.not136.i.4.i.i.i = icmp ugt i32 %i.dm, %i.dn
  br i1 %.not136.i.4.i.i.i, label %.lr.ph.split.i.4.i.i.i, label %.invoke.i.i

.lr.ph.split.i.4.i.i.i:                           ; preds = %.lr.ph.split.i.3.i.i.i
  %i.dq = zext nneg i32 %i.ay to i64
end_hunk_1
begin_hunk_2_@_ZN8rawspeed17NikonDecompressor10decompressENS_10Array1DRefIKhEEb:bb.a
vec.epilog.scalar.ph99:                           ; preds = %vec.epilog.scalar.ph99.preheader, %vec.epilog.scalar.ph99
  %indvars.iv113.i.i.i.i = phi i64 [ %indvars.iv.next114.i.i.i.i, %vec.epilog.scalar.ph99 ], [ %indvars.iv113.i.i.i.i.ph, %vec.epilog.scalar.ph99.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv113.i.i.i.i
  store i32 %i.hu, ptr %i.ij, align 4, !tbaa !33, !alias.scope !268
  %indvars.iv.next114.i.i.i.i = add nuw nsw i64 %indvars.iv113.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next114.i.i.i.i to i32
  %exitcond116.not.i.i.i.i = icmp eq i32 %i.hw, %lftr.wideiv.i.i.i.i
  br i1 %exitcond116.not.i.i.i.i, label %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i, label %vec.epilog.scalar.ph99, !llvm.loop !257

_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i:       ; preds = %vec.epilog.scalar.ph99, %middle.block94, %vec.epilog.middle.block109, %bb.n
  %indvars.iv.next118.i.i.i.i = add nuw nsw i64 %indvars.iv117.i.i.i.i, 1 ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %indvars.iv.next118.i.i.i.i, %i.eu
  br i1 %exitcond121.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i, label %bb.n, !llvm.loop !258

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i:     ; preds = %_ZNSt5arrayIjLm256EE4fillERKj.exit.i.i.i.i
  %i.ik = invoke noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #23
          to label %.noexc11 unwind label %bb.g   ; 9 uses

.noexc11:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.ik, i8 0, i64 65536, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 1168
  %i.im = load i32, ptr %i.il, align 8            ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.ae, %.noexc11
  %indvars.iv61.i.i.i.i.i = phi i64 [ 0, %.noexc11 ], [ %indvars.iv.next62.i.i.i.i.i, %bb.ae ] ; 7 uses
  %.045.tr.i.i.i.i.i = trunc i64 %indvars.iv61.i.i.i.i.i to i16 ; 2 uses
  %i.in = shl nuw i16 %.045.tr.i.i.i.i.i, 2       ; 2 uses
  %i.io = lshr i16 %.045.tr.i.i.i.i.i, 6          ; 2 uses
  %i.ip = zext nneg i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !33, !alias.scope !268 ; 2 uses
  %i.is = and i32 %i.ir, 15                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.it = lshr i32 %i.ir, 4
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.iu = zext nneg i16 %i.io to i32              ; 3 uses
  %i.iv = icmp slt i32 %i.im, %i.iu
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.iw = zext i16 %i.in to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.u ] ; 3 uses
  %.04453.i.i.i.i.i = phi i32 [ %i.iu, %.lr.ph.i.i.i.i.i ], [ %i.jd, %bb.u ]
  %i.ix = icmp samesign ult i64 %indvars.iv.i.i.i.i.i, 16
  call void @llvm.assume(i1 %i.ix)
  %i.iy = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.iz = xor i32 %i.iy, 15
  %i.ja = lshr i32 %i.iw, %i.iz
  %i.jb = and i32 %i.ja, 1
  %i.jc = shl i32 %.04453.i.i.i.i.i, 1
  %i.jd = or disjoint i32 %i.jb, %i.jc            ; 3 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !33, !alias.scope !268
  %i.jg = icmp sgt i32 %i.jd, %i.jf
  br i1 %i.jg, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !259

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %i.jh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.t
  %.046.lcssa.i.i.i.i.i = phi i32 [ 8, %bb.t ], [ %i.jh, %._crit_edge.loopexit.i.i.i.i.i ]
  %.044.lcssa.i.i.i.i.i = phi i32 [ %i.iu, %bb.t ], [ %i.jd, %._crit_edge.loopexit.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i64 [ 8, %bb.t ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %.lcssa.i.i.i.i.i
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !18, !alias.scope !268 ; 2 uses
  %i.jk = icmp eq i16 %i.jj, 255
  br i1 %i.jk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.jl, align 4, !tbaa !33
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.jm = sext i16 %i.jj to i32
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %.lcssa.i.i.i.i.i
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !18, !alias.scope !268
  %i.jp = zext i16 %i.jo to i32
  %i.jq = add i32 %.044.lcssa.i.i.i.i.i, %i.jm
  %i.jr = sub i32 %i.jq, %i.jp
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !33, !alias.scope !268
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.047.i.i.i.i.i = phi i32 [ %i.it, %bb.s ], [ %i.ju, %bb.w ] ; 5 uses
  %.1.i.i.i.i.i = phi i32 [ %i.is, %bb.s ], [ %.046.lcssa.i.i.i.i.i, %bb.w ] ; 3 uses
  %i.jv = icmp eq i32 %.047.i.i.i.i.i, 16
  br i1 %i.jv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  %i.jx = or disjoint i32 %.1.i.i.i.i.i, -8388608
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !33
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.jy = add i32 %.1.i.i.i.i.i, %.047.i.i.i.i.i  ; 4 uses
  %i.jz = icmp ugt i32 %i.jy, 14
  br i1 %i.jz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 255, ptr %i.ka, align 4, !tbaa !33
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %.not50.i.i.i.i.i = icmp eq i32 %.047.i.i.i.i.i, 0
  br i1 %.not50.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kb = sub nuw nsw i32 16, %i.jy
  %i.kc = icmp ne i32 %i.jy, 0
  call void @llvm.assume(i1 %i.kc)
  %i.kd = zext i16 %i.in to i32
  %i.ke = lshr i32 %i.kd, %i.kb
  %notmask.i.i.i.i.i = shl nsw i32 -1, %.047.i.i.i.i.i
  %i.kf = xor i32 %notmask.i.i.i.i.i, -1          ; 2 uses
  %i.kg = and i32 %i.ke, %i.kf                    ; 2 uses
  %i.kh = add nsw i32 %.047.i.i.i.i.i, -1
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = and i32 %i.kg, %i.ki
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = select i1 %i.kk, i32 %i.kf, i32 0
  %spec.select.i.i.i.i.i = sub nsw i32 %i.kg, %i.kl
  %i.km = shl i32 %spec.select.i.i.i.i.i, 8
  %i.kn = or disjoint i32 %i.km, %i.jy
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !33
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv61.i.i.i.i.i
  store i32 %.1.i.i.i.i.i, ptr %i.kp, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.v
  %indvars.iv.next62.i.i.i.i.i = add nuw nsw i64 %indvars.iv61.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next62.i.i.i.i.i, 16384
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i, label %bb.r, !llvm.loop !260

_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !268
  %i.kq = load ptr, ptr %0, align 8, !tbaa !81    ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 568
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !177, !noalias !281
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 592
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !154, !noalias !281
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 608
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !178, !noalias !281
  %i.kx = mul nsw i32 %i.kw, %i.ku                ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !179, !noalias !281
  %i.la = ashr i32 %i.kz, 1                       ; 2 uses
  %i.lb = icmp sgt i32 %i.kx, -1
  call void @llvm.assume(i1 %i.lb)
  %i.lc = icmp sge i32 %i.la, %i.kx
  call void @llvm.assume(i1 %i.lc)
  %i.ld = and i32 %i.kx, 1
  %i.le = icmp eq i32 %i.ld, 0
  call void @llvm.assume(i1 %i.le)
  %i.lf = icmp ne i32 %i.kx, 0
  call void @llvm.assume(i1 %i.lf)
  %i.lg = icmp slt i32 %i.aa, %i.ad
  br i1 %i.lg, label %.lr.ph.i, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kq, i64 612
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !180, !noalias !281
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kq, i64 616
  %i.ll = zext i32 %i.aa to i64
  %i.lm = zext nneg i32 %i.la to i64
  %i.ln = zext nneg i32 %i.kx to i64
  %i.lo = zext nneg i32 %i.li to i64
  %i.lp = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !181 ; 8 uses
  %i.lq = icmp sgt i32 %i.lp, 3
  call void @llvm.assume(i1 %i.lq)
  %i.lr = add nuw nsw i32 %i.lp, 8                ; 2 uses
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !173
  %.pre26.pre = load i32, ptr %i.i, align 8, !tbaa !176
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %.pre26 = phi i32 [ %.pre26.pre, %.lr.ph.i ], [ %.pre2628, %bb.ag ] ; 2 uses
  %.pre = phi i32 [ %.pre.pre, %.lr.ph.i ], [ %i.qm, %bb.ag ]
  %indvars.iv80.i = phi i64 [ %i.ll, %.lr.ph.i ], [ %indvars.iv.next81.i, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ls = and i64 %indvars.iv80.i, 1
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.ls ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 4, !tbaa !61
  store i64 %i.lu, ptr %8, align 8, !tbaa !61
  %i.lv = icmp samesign ult i64 %indvars.iv80.i, %i.lo
  %i.lw = mul nuw nsw i64 %indvars.iv80.i, %i.lm
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.lw
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.ly = trunc nuw nsw i64 %indvars.iv.next81.i to i32
  %i.lz = icmp sgt i32 %i.ad, %i.ly
  br i1 %i.lz, label %bb.af, label %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit, !llvm.loop !263

bb.ah:                                            ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i, %bb.af
  %.pre2631 = phi i32 [ %.pre26, %bb.af ], [ %.pre2628, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ]
  %i.ma = phi i32 [ %.pre26, %bb.af ], [ %i.ql, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 6 uses
  %i.mb = phi i32 [ %.pre, %bb.af ], [ %i.qm, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i ] ; 4 uses
  %i.mc = icmp samesign ult i32 %i.mb, 65
  call void @llvm.assume(i1 %i.mc)
  %i.md = icmp sgt i32 %i.ma, -1
  call void @llvm.assume(i1 %i.md)
  %.not.i.i.i7 = icmp samesign ult i32 %i.mb, 32
  br i1 %.not.i.i.i7, label %bb.ai, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i: ; preds = %bb.ah
  %.pre.i.i = load i64, ptr %10, align 8, !tbaa !172
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.me = add nuw nsw i32 %i.ma, 4                ; 4 uses
  %.not.i.i.i24.i = icmp samesign ugt i32 %i.me, %i.lp
  br i1 %.not.i.i.i24.i, label %bb.ak, label %bb.aj, !prof !165

bb.aj:                                            ; preds = %bb.ai
  %i.mf = zext nneg i32 %i.ma to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.mf
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.mh = icmp samesign ugt i32 %i.ma, %i.lr
  br i1 %i.mh, label %.invoke.i, label %bb.al, !prof !165

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ma) ; 3 uses
  %i.mi = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.mi)
  %i.mj = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.mk = icmp samesign ult i32 %i.mj, 5
  call void @llvm.assume(i1 %i.mk)
  %i.ml = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ml
  %i.mn = zext nneg i32 %i.mj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.mm, i64 %i.mn, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.al, %bb.aj
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.al ], [ %i.mg, %bb.aj ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.promoted8.i.i.i.i = load i64, ptr %10, align 8
  %i.mo = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.mp = zext i32 %i.mo to i64
  %i.mq = or disjoint i32 %i.mb, 32
  %i.mr = sub nuw nsw i32 32, %i.mb
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = shl nuw i64 %i.mp, %i.ms
  %i.mu = or i64 %i.mt, %.promoted8.i.i.i.i
  store i32 %i.me, ptr %i.i, align 8, !tbaa !176
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i
  %.pre2630 = phi i32 [ %.pre2631, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.me, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.mv = phi i32 [ %i.ma, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.me, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 7 uses
  %i.mw = phi i64 [ %.pre.i.i, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 5 uses
  %i.mx = phi i32 [ %i.mb, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.i ], [ %i.mq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ] ; 3 uses
  %i.my = lshr i64 %i.mw, 50
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33 ; 2 uses
  %i.nb = and i32 %i.na, 255                      ; 4 uses
  %.not.i.i8 = icmp eq i32 %i.nb, 255
  br i1 %.not.i.i8, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.nc = icmp samesign ult i32 %i.nb, 33
  call void @llvm.assume(i1 %i.nc)
  %i.nd = sub nuw nsw i32 %i.mx, %i.nb            ; 2 uses
  store i32 %i.nd, ptr %i.g, align 8, !tbaa !173
  %i.ne = zext nneg i32 %i.nb to i64
  %i.nf = shl i64 %i.mw, %i.ne
  store i64 %i.nf, ptr %10, align 8, !tbaa !172
  %i.ng = ashr i32 %i.na, 8
  br label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i

bb.an:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.nh = lshr i64 %i.mw, 56                      ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !33 ; 2 uses
  %i.nk = and i32 %i.nj, 15                       ; 3 uses
  %.not46.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not46.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nl = sub nuw nsw i32 %i.mx, %i.nk            ; 2 uses
  store i32 %i.nl, ptr %i.g, align 8, !tbaa !173
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = shl i64 %i.mw, %i.nm                    ; 2 uses
  store i64 %i.nn, ptr %10, align 8, !tbaa !172
  %i.no = ashr i32 %i.nj, 4
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.np = trunc nuw nsw i64 %i.nh to i32          ; 3 uses
  %i.nq = add nsw i32 %i.mx, -8                   ; 3 uses
  store i32 %i.nq, ptr %i.g, align 8, !tbaa !173
  %i.nr = shl i64 %i.mw, 8                        ; 3 uses
  store i64 %i.nr, ptr %10, align 8, !tbaa !172
  %i.ns = icmp slt i32 %i.im, %i.np
  br i1 %i.ns, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 8, %bb.ap ] ; 2 uses
  %i.nt = phi i64 [ %i.oa, %.lr.ph.i.i ], [ %i.nr, %bb.ap ] ; 2 uses
  %i.nu = phi i32 [ %i.nz, %.lr.ph.i.i ], [ %i.nq, %bb.ap ] ; 3 uses
  %.04053.i.i = phi i32 [ %i.oc, %.lr.ph.i.i ], [ %i.np, %bb.ap ]
  %i.nv = icmp samesign ult i32 %i.nu, 65
  call void @llvm.assume(i1 %i.nv)
  %i.nw = icmp ne i32 %i.nu, 0
  call void @llvm.assume(i1 %i.nw)
  %i.nx = lshr i64 %i.nt, 63
  %i.ny = trunc nuw nsw i64 %i.nx to i32
  %i.nz = add nsw i32 %i.nu, -1                   ; 3 uses
  %i.oa = shl i64 %i.nt, 1                        ; 3 uses
  %i.ob = shl i32 %.04053.i.i, 1
  %i.oc = or disjoint i32 %i.ob, %i.ny            ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %.lr.ph.i.i, label %bb.aq, !llvm.loop !264

bb.aq:                                            ; preds = %.lr.ph.i.i
  store i32 %i.nz, ptr %i.g, align 8, !tbaa !173
  store i64 %i.oa, ptr %10, align 8, !tbaa !172
  %i.og = icmp samesign ugt i64 %indvars.iv.i.i, 15
  br i1 %i.og, label %bb.ar, label %.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.oh = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE, i32 noundef %i.oh) #16
          to label %.noexc25.i unwind label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i

.noexc25.i:                                       ; preds = %bb.ar
  unreachable

.thread.i.i:                                      ; preds = %bb.aq, %bb.ap
  %.lcssa82.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.aq ], [ 8, %bb.ap ] ; 2 uses
  %.040.lcssa81.i.i = phi i32 [ %i.oc, %bb.aq ], [ %i.np, %bb.ap ]
  %i.oi = phi i32 [ %i.nz, %bb.aq ], [ %i.nq, %bb.ap ]
  %.pre.i6480.i.i = phi i64 [ %i.oa, %bb.aq ], [ %i.nr, %bb.ap ]
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %.lcssa82.i.i
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !18
  %i.ol = sext i16 %i.ok to i32
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %.lcssa82.i.i
  %i.on = load i16, ptr %i.om, align 2, !tbaa !18
  %i.oo = zext i16 %i.on to i32
  %i.op = add i32 %.040.lcssa81.i.i, %i.ol
  %i.oq = sub i32 %i.op, %i.oo
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %.thread.i.i, %bb.ao
  %.promoted8.i.i.i.i.i = phi i64 [ %i.nn, %bb.ao ], [ %.pre.i6480.i.i, %.thread.i.i ] ; 2 uses
  %i.ou = phi i32 [ %i.nl, %bb.ao ], [ %i.oi, %.thread.i.i ] ; 5 uses
  %.042.i.i = phi i32 [ %i.no, %bb.ao ], [ %i.ot, %.thread.i.i ] ; 3 uses
  %i.ov = icmp eq i32 %.042.i.i, 16
  br i1 %i.ov, label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ow = and i32 %.042.i.i, 15                   ; 4 uses
  %i.ox = ashr i32 %.042.i.i, 4                   ; 4 uses
  %i.oy = sub nsw i32 %i.ow, %i.ox                ; 5 uses
  %i.oz = icmp ne i32 %i.ow, %i.ox
  call void @llvm.assume(i1 %i.oz)
  %i.pa = icmp samesign ult i32 %i.oy, 33
  call void @llvm.assume(i1 %i.pa)
  %.not.i.i50.i.i = icmp samesign ult i32 %i.ou, %i.oy
  br i1 %.not.i.i50.i.i, label %bb.au, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.pb = add nuw nsw i32 %i.mv, 4                ; 4 uses
  %.not.i.i.i.i23.i = icmp samesign ugt i32 %i.pb, %i.lp
  br i1 %.not.i.i.i.i23.i, label %bb.aw, label %bb.av, !prof !165

bb.av:                                            ; preds = %bb.au
  %i.pc = zext nneg i32 %i.mv to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.pc
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.pe = icmp samesign ugt i32 %i.mv, %i.lr
  br i1 %i.pe, label %.invoke.i, label %bb.ax, !prof !165

.invoke.i:                                        ; preds = %bb.aw, %bb.ak
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #16
          to label %.cont.i unwind label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.mv) ; 3 uses
  %i.pf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.pf)
  %i.pg = sub nsw i32 %.sroa.speculated.i.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i.i ; 2 uses
  %i.ph = icmp samesign ult i32 %i.pg, 5
  call void @llvm.assume(i1 %i.ph)
  %i.pi = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.i to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.pi
  %i.pk = zext nneg i32 %i.pg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i.i, ptr align 1 %i.pj, i64 %i.pk, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i: ; preds = %bb.ax, %bb.av
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i.i, %bb.ax ], [ %i.pd, %bb.av ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.pl = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.i)
  %i.pm = zext i32 %i.pl to i64
  %i.pn = add nuw nsw i32 %i.ou, 32
  %i.po = sub nuw nsw i32 32, %i.ou
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = shl nuw i64 %i.pm, %i.pp
  %i.pr = or i64 %i.pq, %.promoted8.i.i.i.i.i
  store i32 %i.pb, ptr %i.i, align 8, !tbaa !176
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i, %bb.at
  %.pre2629 = phi i32 [ %i.pb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i ], [ %.pre2630, %bb.at ] ; 2 uses
  %i.ps = phi i32 [ %i.pb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i ], [ %i.mv, %bb.at ] ; 2 uses
  %i.pt = phi i64 [ %i.pr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i ], [ %.promoted8.i.i.i.i.i, %bb.at ] ; 2 uses
  %i.pu = phi i32 [ %i.pn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i.i ], [ %i.ou, %bb.at ]
  %i.pv = sub nuw nsw i32 64, %i.oy
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = lshr i64 %i.pt, %i.pw
  %i.py = trunc nuw i64 %i.px to i32
  %i.pz = sub nuw nsw i32 %i.pu, %i.oy            ; 3 uses
  store i32 %i.pz, ptr %i.g, align 8, !tbaa !173
  %i.qa = zext nneg i32 %i.oy to i64
  %i.qb = shl i64 %i.pt, %i.qa
  store i64 %i.qb, ptr %10, align 8, !tbaa !172
  %i.qc = shl i32 %i.py, 1
  %i.qd = or disjoint i32 %i.qc, 1
  %i.qe = shl i32 %i.qd, %i.ox
  %i.qf = lshr i32 %i.qe, 1                       ; 3 uses
  %i.qg = add nsw i32 %i.ow, -1
  %i.qh = shl nuw nsw i32 1, %i.qg
  %i.qi = and i32 %i.qf, %i.qh
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.ay, label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i

bb.ay:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i
  %.neg48.i.i = shl nsw i32 -1, %i.ow
  %.not47.i.i = icmp eq i32 %i.ox, 0
  %.neg.neg.i.i = zext i1 %.not47.i.i to i32
  %.neg49.i.i = add nsw i32 %.neg48.i.i, %.neg.neg.i.i
  %i.qk = add nsw i32 %.neg49.i.i, %i.qf
  br label %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i

_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i: ; preds = %bb.ay, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i, %bb.as, %bb.am
  %.pre2628 = phi i32 [ %.pre2630, %bb.am ], [ %.pre2630, %bb.as ], [ %.pre2629, %bb.ay ], [ %.pre2629, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i ] ; 2 uses
  %i.ql = phi i32 [ %i.mv, %bb.am ], [ %i.mv, %bb.as ], [ %i.ps, %bb.ay ], [ %i.ps, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i ]
  %i.qm = phi i32 [ %i.nd, %bb.am ], [ %i.ou, %bb.as ], [ %i.pz, %bb.ay ], [ %i.pz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i ] ; 2 uses
  %.043.i.i = phi i32 [ %i.ng, %bb.am ], [ -32768, %bb.as ], [ %i.qk, %bb.ay ], [ %i.qf, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.i ]
  %i.qn = and i64 %indvars.iv.i, 1                ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.qn ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !33
  %i.qo = add nsw i32 %12, %.043.i.i              ; 3 uses
  store i32 %i.qo, ptr %11, align 4, !tbaa !33
  %i.qp = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.qp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.qn
  store i32 %i.qo, ptr %i.qq, align 4, !tbaa !33
  br label %bb.ba

_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressorD2Ev.exit28.i: ; preds = %.invoke.i, %bb.ar
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 65536) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

bb.ba:                                            ; preds = %bb.az, %_ZN8rawspeed12_GLOBAL__N_120NikonLASDecompressor16decodeDifferenceERNS_14BitStreamerMSBE.exit.i
  call void @llvm.assume(i1 %i.lv)
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %indvars.iv.i
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.qo, i32 0)
  %i.qt = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 32767) ; 2 uses
  %i.qu = trunc nuw nsw i32 %i.qt to i16
  %i.qv = load ptr, ptr %i.lk, align 8, !tbaa !182 ; 3 uses
  %.not.i.i29.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i29.i, label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !184, !range !73, !noundef !74
  %i.qy = trunc nuw i8 %i.qx to i1
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.ra = zext nneg i32 %i.qt to i64              ; 2 uses
  %i.rb = load ptr, ptr %i.qz, align 8, !tbaa !15 ; 2 uses
  br i1 %i.qy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.idx.i.i = shl nuw nsw i64 %i.ra, 2
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.idx.i.i ; 2 uses
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !18
  %i.rg = zext i16 %i.rf to i32
  %i.rh = load i32, ptr %i.o, align 8, !tbaa !33  ; 3 uses
  %i.ri = and i32 %i.rh, 2047
  %i.rj = mul nuw nsw i32 %i.ri, %i.rg
  %i.rk = add nuw nsw i32 %i.rj, 1024
  %i.rl = lshr i32 %i.rk, 12
  %i.rm = and i32 %i.rh, 65535
  %i.rn = mul nuw nsw i32 %i.rm, 15700
  %i.ro = lshr i32 %i.rh, 16
  %i.rp = add nuw nsw i32 %i.rn, %i.ro
  store i32 %i.rp, ptr %i.o, align 8, !tbaa !33
  %i.rq = trunc nuw nsw i32 %i.rl to i16
  %i.rr = add i16 %i.rd, %i.rq
  br label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.rb, i64 %i.ra
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !18
  br label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i

_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit.i: ; preds = %bb.bd, %bb.bc, %bb.ba
  %.sink.i.i = phi i16 [ %i.rt, %bb.bd ], [ %i.rr, %bb.bc ], [ %i.qu, %bb.ba ]
  store i16 %.sink.i.i, ptr %i.qs, align 2, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ln
  br i1 %exitcond.not.i, label %bb.ag, label %bb.ah, !llvm.loop !265

_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit: ; preds = %bb.ag, %_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_12_GLOBAL__N_120NikonLASDecompressorEEET_j.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 65536) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.be

bb.be:                                            ; preds = %_ZN8rawspeed17NikonDecompressor10decompressINS_12_GLOBAL__N_120NikonLASDecompressorEEEvRNS_14BitStreamerMSBEii.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ru = load ptr, ptr %0, align 8, !tbaa !81    ; 2 uses
  br i1 %3, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8rawspeed12RawImageData8setTableERKSt6vectorItSaItEEb(ptr noundef nonnull align 8 dereferenceable(624) %i.ru, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext false)
          to label %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit unwind label %bb.bk

bb.bg:                                            ; preds = %bb.be
  store ptr null, ptr %4, align 8, !tbaa !185
  invoke void @_ZN8rawspeed12RawImageData8setTableESt10unique_ptrINS_11TableLookUpESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(624) %i.ru, ptr noundef nonnull align 8 %4)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.rv = load ptr, ptr %4, align 8, !tbaa !182   ; 4 uses
  %.not.i.i12 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i12, label %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !16
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sc) #24
  br label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i: ; preds = %bb.bj, %bb.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef 40) #24
  br label %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit

bb.bk:                                            ; preds = %bb.bg, %bb.bf
  %i.sd = landingpad { ptr, i32 }
          catch ptr null
  %i.se = extractvalue { ptr, i32 } %i.sd, 0
  call void @__clang_call_terminate(ptr %i.se) #27
  unreachable

_ZN8rawspeed18RawImageCurveGuardD2Ev.exit:        ; preds = %bb.bf, %bb.bh, %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed17NikonDecompressor10decompressINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEEvRNS_14BitStreamerMSBEii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %4 = alloca %"class.rawspeed::PrefixCodeLUTDecoder", align 8 ; 24 uses
  %5 = alloca %"struct.std::array.23", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  call void @_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEET_j(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %4, i32 noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177, !noalias !289
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.g = load i32, ptr %i.f, align 8, !tbaa !154, !noalias !289
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.i = load i32, ptr %i.h, align 8, !tbaa !178, !noalias !289
  %i.j = mul nsw i32 %i.i, %i.g                   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !179, !noalias !289
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sgt i32 %i.j, -1
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.j
  call void @llvm.assume(i1 %i.o)
  %i.p = and i32 %i.j, 1
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i32 %i.j, 0
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.u = load i32, ptr %i.t, align 4, !tbaa !180, !noalias !289
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.aj = zext i32 %2 to i64
  %i.ak = zext nneg i32 %i.m to i64
  %i.al = zext nneg i32 %i.j to i64
  %i.am = zext nneg i32 %i.u to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.i, %.._crit_edge_crit_edge
  %i.an = phi ptr [ %.pre82, %.._crit_edge_crit_edge ], [ %i.cf, %bb.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i.i

_ZNSt6vectorItSaItEED2Ev.exit.i.i:                ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit2.i.i

_ZNSt6vectorItSaItEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorItSaItEED2Ev.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !55
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorItSaItEED2Ev.exit2.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i:            ; preds = %bb.f, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i.i
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #24
  br label %_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev.exit

_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv79 = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next80, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cc = and i64 %indvars.iv79, 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 4, !tbaa !61
  store i64 %i.ce, ptr %5, align 8, !tbaa !61
  %i.cf = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.cg = load ptr, ptr %i.ac, align 8
  %i.ch = load ptr, ptr %i.ab, align 8
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = add nsw i64 %i.cl, -1                   ; 3 uses
  %i.cn = icmp ugt i64 %i.cm, 11
  %i.co = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cp = load ptr, ptr %i.ae, align 8
  %i.cq = load ptr, ptr %i.af, align 8
  %i.cr = load i8, ptr %i.ag, align 1, !range !73
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = icmp samesign ult i64 %indvars.iv79, %i.am
  %i.cu = mul nuw nsw i64 %indvars.iv79, %i.ak
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.cu
  br label %bb.j

bb.i:                                             ; preds = %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next80 to i32
  %i.cx = icmp sgt i32 %3, %i.cw
  br i1 %i.cx, label %bb.h, label %._crit_edge, !llvm.loop !284

bb.j:                                             ; preds = %bb.h, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit ] ; 4 uses
  %i.cy = load i32, ptr %i.w, align 8, !tbaa !173 ; 5 uses
  %i.cz = icmp samesign ult i32 %i.cy, 65
  call void @llvm.assume(i1 %i.cz)
  %i.da = load i32, ptr %i.x, align 8, !tbaa !181 ; 5 uses
  %i.db = icmp sgt i32 %i.da, 3
  call void @llvm.assume(i1 %i.db)
  %i.dc = load i32, ptr %i.y, align 8, !tbaa !176 ; 5 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  %.not.i21 = icmp samesign ult i32 %i.cy, 32
  br i1 %.not.i21, label %bb.k, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.j
  %.pre = load i64, ptr %1, align 8, !tbaa !172
  br label %.noexc

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.de = add nuw nsw i32 %i.dc, 4                ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.de, %i.da
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !165

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !54, !noalias !290
  %i.df = zext nneg i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.df
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.dh = add nuw nsw i32 %i.da, 8
  %i.di = icmp samesign ugt i32 %i.dc, %i.dh
  br i1 %i.di, label %bb.n, label %bb.o, !prof !165

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #16
          to label %.noexc22 unwind label %bb.z

.noexc22:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.z, align 8, !tbaa !54
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %i.da, i32 %i.dc) ; 3 uses
  %i.dj = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.da, i32 %i.dj)
  %i.dk = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.dl = icmp samesign ult i32 %i.dk, 5
  call void @llvm.assume(i1 %i.dl)
  %i.dm = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dm
  %i.do = zext nneg i32 %i.dk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i: ; preds = %bb.o, %bb.l
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.o ], [ %i.dg, %bb.l ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.promoted8.i.i = load i64, ptr %1, align 8
  %i.dp = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i)
  %i.dq = zext i32 %i.dp to i64
  %i.dr = or disjoint i32 %i.cy, 32               ; 2 uses
  %i.ds = sub nuw nsw i32 32, %i.cy
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 %i.dq, %i.dt
  %i.dv = or i64 %i.du, %.promoted8.i.i           ; 2 uses
  store i64 %i.dv, ptr %1, align 8, !tbaa !172
  store i32 %i.dr, ptr %i.w, align 8, !tbaa !173
  store i32 %i.de, ptr %i.y, align 8, !tbaa !176
  br label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i
  %i.dw = phi i64 [ %i.dv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ], [ %.pre, %..noexc_crit_edge ] ; 2 uses
  %i.dx = phi i32 [ %i.dr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ], [ %i.cy, %..noexc_crit_edge ]
  %i.dy = lshr i64 %i.dw, 53                      ; 3 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32          ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dy
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 4 uses
  %i.ec = ashr i32 %i.eb, 9                       ; 2 uses
  %i.ed = and i32 %i.eb, 255                      ; 4 uses
  %i.ee = icmp samesign ult i32 %i.ed, 33
  call void @llvm.assume(i1 %i.ee)
  %i.ef = sub nuw nsw i32 %i.dx, %i.ed            ; 3 uses
  store i32 %i.ef, ptr %i.w, align 8, !tbaa !173
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = shl i64 %i.dw, %i.eg                    ; 3 uses
  store i64 %i.eh, ptr %1, align 8, !tbaa !172
  %i.ei = and i32 %i.eb, 256
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.p, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit

bb.p:                                             ; preds = %.noexc
  %.not17.i = icmp eq i32 %i.eb, 0
  br i1 %.not17.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = trunc i32 %i.ec to i8                   ; 2 uses
  %i.ek = icmp ne i8 %i.ej, 0
  call void @llvm.assume(i1 %i.ek)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.el = icmp eq i32 %i.ed, 0
  call void @llvm.assume(i1 %i.el)
  %i.em = add nsw i32 %i.ef, -11                  ; 3 uses
  store i32 %i.em, ptr %i.w, align 8, !tbaa !173
  %i.en = shl i64 %i.eh, 11                       ; 3 uses
  store i64 %i.en, ptr %1, align 8, !tbaa !172
  %.sroa.0.018.i = trunc nuw nsw i64 %i.dy to i16 ; 2 uses
  br i1 %i.cn, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.r, %.critedge2.i
  %i.eo = phi i32 [ %i.ez, %.critedge2.i ], [ %i.em, %bb.r ] ; 4 uses
  %i.ep = phi i64 [ %i.ff, %.critedge2.i ], [ 11, %bb.r ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.018.i, %bb.r ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ %i.fe, %.critedge2.i ], [ 11, %bb.r ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.fd, %.critedge2.i ], [ %i.dz, %bb.r ] ; 2 uses
  %i.eq = phi i64 [ %i.fa, %.critedge2.i ], [ %i.en, %bb.r ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ep
  %i.es = load i16, ptr %i.er, align 2, !tbaa !18 ; 2 uses
  %i.et = icmp eq i16 %i.es, -1
  %i.eu = icmp ult i16 %i.es, %.sroa.0.021.i
  %or.cond.i = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.ev = icmp samesign ult i32 %i.eo, 65
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp ne i32 %i.eo, 0
  call void @llvm.assume(i1 %i.ew)
  %i.ex = lshr i64 %i.eq, 63
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = add nsw i32 %i.eo, -1                   ; 3 uses
  store i32 %i.ez, ptr %i.w, align 8, !tbaa !173
  %i.fa = shl i64 %i.eq, 1                        ; 3 uses
  store i64 %i.fa, ptr %1, align 8, !tbaa !172
  %i.fb = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.fc = and i32 %i.fb, 131070
  %i.fd = or disjoint i32 %i.fc, %i.ey            ; 3 uses
  %i.fe = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.fd to i16           ; 2 uses
  %i.ff = zext i8 %i.fe to i64                    ; 3 uses
  %i.fg = icmp ugt i64 %i.cm, %i.ff
  br i1 %i.fg, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !287

.critedge.i.loopexit:                             ; preds = %.lr.ph.i, %.critedge2.i
  %i.fh = phi i64 [ %i.eq, %.lr.ph.i ], [ %i.fa, %.critedge2.i ]
  %i.fi = phi i32 [ %i.eo, %.lr.ph.i ], [ %i.ez, %.critedge2.i ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %.sroa.0.0.in19.i, %.lr.ph.i ], [ %i.fd, %.critedge2.i ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %.sroa.8.020.i, %.lr.ph.i ], [ %i.fe, %.critedge2.i ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.021.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ]
  %.lcssa17.i.ph = phi i64 [ %i.ep, %.lr.ph.i ], [ %i.ff, %.critedge2.i ]
  %i.fj = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.r
  %i.fk = phi i64 [ %i.en, %bb.r ], [ %i.fh, %.critedge.i.loopexit ]
  %i.fl = phi i32 [ %i.em, %bb.r ], [ %i.fi, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.dz, %bb.r ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.r ], [ %i.fj, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.r ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.r ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.fm = icmp ult i64 %i.cm, %.lcssa17.i
  br i1 %i.fm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.lcssa17.i
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !18
  %i.fp = icmp ult i16 %i.fo, %.sroa.0.0.lcssa.i
  br i1 %i.fp, label %bb.t, label %.noexc20

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %i.fq = and i32 %.sroa.0.0.in.lcssa.i, 65535
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.fq, i32 noundef %.sroa.8.0.lcssa.i) #16
          to label %.noexc23 unwind label %bb.z

.noexc23:                                         ; preds = %bb.t
  unreachable

.noexc20:                                         ; preds = %bb.s
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.lcssa17.i
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !18
  %.tr.i = zext i16 %i.fs to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.ft = zext i32 %.narrow.i to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %.noexc20, %bb.q
  %i.fw = phi i64 [ %i.fk, %.noexc20 ], [ %i.eh, %bb.q ] ; 4 uses
  %i.fx = phi i32 [ %i.fl, %.noexc20 ], [ %i.ef, %bb.q ] ; 6 uses
  %.075 = phi i8 [ %i.fv, %.noexc20 ], [ %i.ej, %bb.q ] ; 5 uses
  %i.fy = icmp ult i8 %.075, 17
  call void @llvm.assume(i1 %i.fy)
  switch i8 %.075, label %bb.x [
    i8 16, label %bb.v
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %i.cs, label %bb.w, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit

bb.w:                                             ; preds = %bb.v
  %i.fz = icmp samesign ult i32 %i.fx, 65
  call void @llvm.assume(i1 %i.fz)
  %i.ga = icmp samesign ugt i32 %i.fx, 15
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nsw i32 %i.fx, -16
  store i32 %i.gb, ptr %i.w, align 8, !tbaa !173
  %i.gc = shl i64 %i.fw, 16
  store i64 %i.gc, ptr %1, align 8, !tbaa !172
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit

bb.x:                                             ; preds = %bb.u
  %i.gd = zext nneg i8 %.075 to i32               ; 4 uses
  %i.ge = icmp samesign ult i32 %i.fx, 65
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ne i8 %.075, 0
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp samesign uge i32 %i.fx, %i.gd
  call void @llvm.assume(i1 %i.gg)
  %i.gh = sub nuw nsw i32 64, %i.gd
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = lshr i64 %i.fw, %i.gi
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = sub nuw nsw i32 %i.fx, %i.gd
  store i32 %i.gl, ptr %i.w, align 8, !tbaa !173
  %i.gm = zext nneg i8 %.075 to i64
  %i.gn = shl i64 %i.fw, %i.gm
  store i64 %i.gn, ptr %1, align 8, !tbaa !172
  %i.go = icmp sgt i64 %i.fw, -1
  %notmask.i.i = shl nsw i32 -1, %i.gd
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.gp = select i1 %i.go, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.gp, %i.gk
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.noexc
  %.0.i = phi i32 [ %i.ec, %.noexc ], [ -32768, %bb.v ], [ -32768, %bb.w ], [ %.0.i.i, %bb.x ], [ 0, %bb.u ]
  %i.gq = and i64 %indvars.iv, 1                  ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gq ; 2 uses
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %i.gr = add nsw i32 %7, %.0.i                   ; 3 uses
  store i32 %i.gr, ptr %6, align 4, !tbaa !33
  %i.gs = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.gs, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.gq
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !33
  br label %bb.aa

bb.z:                                             ; preds = %bb.t, %bb.n
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.gu

bb.aa:                                            ; preds = %bb.y, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE16decodeDifferenceINS_14BitStreamerMSBEEEiRT_.exit
  call void @llvm.assume(i1 %i.ct)
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gr, i32 0)
  %i.gw = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 32767) ; 2 uses
  %i.gx = trunc nuw nsw i32 %i.gw to i16
  %i.gy = load ptr, ptr %i.ai, align 8, !tbaa !182 ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i26, label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !184, !range !73, !noundef !74
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hd = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !15 ; 2 uses
  br i1 %i.hb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.idx.i = shl nuw nsw i64 %i.hd, 2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx.i ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !18
  %i.hj = zext i16 %i.hi to i32
  %i.hk = load i32, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %i.hl = and i32 %i.hk, 2047
  %i.hm = mul nuw nsw i32 %i.hl, %i.hj
  %i.hn = add nuw nsw i32 %i.hm, 1024
  %i.ho = lshr i32 %i.hn, 12
  %i.hp = and i32 %i.hk, 65535
  %i.hq = mul nuw nsw i32 %i.hp, 15700
  %i.hr = lshr i32 %i.hk, 16
  %i.hs = add nuw nsw i32 %i.hq, %i.hr
  store i32 %i.hs, ptr %i.ah, align 8, !tbaa !33
  %i.ht = trunc nuw nsw i32 %i.ho to i16
  %i.hu = add i16 %i.hg, %i.ht
  br label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit

bb.ad:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.hd
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !18
  br label %_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit

_ZN8rawspeed15RawImageDataU1613setWithLookUpEtPSt4bytePj.exit: ; preds = %bb.aa, %bb.ac, %bb.ad
  %.sink.i = phi i16 [ %i.hw, %bb.ad ], [ %i.hu, %bb.ac ], [ %i.gx, %bb.aa ]
  store i16 %.sink.i, ptr %i.gv, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !288
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed18RawImageCurveGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !169
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291, !nonnull !74, !align !292
  invoke void @_ZN8rawspeed12RawImageData8setTableERKSt6vectorItSaItEEb(ptr noundef nonnull align 8 dereferenceable(624) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !185
  invoke void @_ZN8rawspeed12RawImageData8setTableESt10unique_ptrINS_11TableLookUpESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(624) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !182    ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #24
  br label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !157
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !157
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #28
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

end_hunk_2
