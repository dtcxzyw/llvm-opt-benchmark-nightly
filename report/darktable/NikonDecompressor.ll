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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec157 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %i.ac = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ac, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind159 = phi <8 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next161, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index158
  store <8 x i16> %vec.ind159, ptr %i.ad, align 2, !tbaa !18
  %index.next160 = add nuw i64 %index158, 8       ; 2 uses
  %vec.ind.next161 = add <8 x i16> %vec.ind159, splat (i16 8)
  %i.ae = icmp eq i64 %index.next160, %n.vec157
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %i.u, %n.vec157
  br i1 %cmp.n162, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069100.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec157, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30 ; 5 uses
  %i.al = zext i32 %i.ak to i64                   ; 6 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ai, %i.al
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069100 = phi i64 [ %i.ao, %.lr.ph ], [ %.069100.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = trunc i64 %.069100 to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.069100
  store i16 %i.am, ptr %i.an, align 2, !tbaa !18
  %i.ao = add nuw i64 %.069100, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !191

bb.b:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !31
  %.fr111 = freeze i16 %i.aq
  %i.ar = icmp eq i16 %.fr111, -8531              ; 3 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !32    ; 10 uses
  %i.at = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i32 %i.ag, 2                ; 3 uses
  %i.av = icmp samesign ule i32 %i.au, %i.ak
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.aw, align 1 ; 2 uses
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.ar, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.ax ; 7 uses
  store i32 %i.au, ptr %i.af, align 8, !tbaa !29
  %i.ay = zext i16 %spec.select.i.i.i.i.i.i to i32 ; 3 uses
  %i.az = icmp ugt i16 %spec.select.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = udiv i64 %i.u, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  br label %bb.e

bb.d:                                             ; preds = %.invoke152, %.invoke, %bb.v, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.c, %bb.b
  %.068 = phi i32 [ %i.bd, %bb.c ], [ 0, %bb.b ]  ; 14 uses
  br i1 %i.a, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bf = icmp eq i32 %4, 32
  %or.cond3 = or i1 %i.bf, %i.b
  %i.bg = icmp ne i32 %.068, 0
  %or.cond5 = and i1 %or.cond3, %i.bg
  br i1 %or.cond5, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bh = add nsw i32 %i.ay, -1
  %i.bi = mul i32 %.068, %i.bh                    ; 4 uses
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = add nsw i64 %i.u, -1
  %.not72 = icmp eq i64 %i.bk, %i.bj
  br i1 %.not72, label %.preheader99, label %.invoke152

.preheader99:                                     ; preds = %bb.g
  %i.bl = zext i16 %spec.select.i.i.i.i.i.i to i64 ; 5 uses
  %.not110 = icmp eq i16 %spec.select.i.i.i.i.i.i, 0
  br i1 %.not110, label %.preheader, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader99
  %i.bm = zext i32 %.068 to i64                   ; 2 uses
  %i.bn = zext i32 %i.au to i64                   ; 17 uses
  %i.bo = sub nsw i64 %i.al, %i.bn
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = add nsw i64 %i.bl, -1
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bq) ; 2 uses
  %i.bs = add nuw i64 %i.br, 1                    ; 4 uses
  %min.iters.check213 = icmp samesign ugt i64 %i.br, 31
  %ident.check194.not = icmp eq i32 %.068, 1
  %or.cond236 = and i1 %min.iters.check213, %ident.check194.not ; 2 uses
  br i1 %i.ar, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split.preheader

.lr.ph104.split.preheader:                        ; preds = %.lr.ph104
  br i1 %or.cond236, label %vector.memcheck, label %.lr.ph104.split.preheader238

vector.memcheck:                                  ; preds = %.lr.ph104.split.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = sub nsw i64 %i.al, %i.bn
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = add nsw i64 %i.bl, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bv)
  %i.bw = shl nuw i64 %umin, 1                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.j, i64 %i.bw
  %scevgep163.a = getelementptr i8, ptr %i.bx, i64 2 ; 2 uses
  %scevgep164 = getelementptr i8, ptr %i.as, i64 %i.bn ; 2 uses
  %i.by = getelementptr i8, ptr %i.as, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bn
  %scevgep165 = getelementptr i8, ptr %i.bz, i64 2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj:.noexc
  %indvars.iv121 = phi i64 [ %i.dx, %bb.h ], [ %indvars.iv121.ph, %.lr.ph104.split.us.preheader237 ] ; 2 uses
  %.067103.us = phi i64 [ %i.ec, %bb.h ], [ %.067103.us.ph, %.lr.ph104.split.us.preheader237 ] ; 2 uses
  %i.dx = add nuw nsw i64 %indvars.iv121, 2       ; 3 uses
  %.not.i.i.i.i.i.i76.us = icmp samesign ugt i64 %i.dx, %i.al
  br i1 %.not.i.i.i.i.i.i76.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph104.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv121
  %.0.copyload.i.i.i.i.i.i77.us = load i16, ptr %i.dy, align 1
  %i.dz = trunc nuw i64 %i.dx to i32
  store i32 %i.dz, ptr %i.af, align 8, !tbaa !29
  %i.ea = mul nuw nsw i64 %.067103.us, %i.bm
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ea
  store i16 %.0.copyload.i.i.i.i.i.i77.us, ptr %i.eb, align 2, !tbaa !18
  %i.ec = add nuw nsw i64 %.067103.us, 1          ; 2 uses
  %exitcond124.not = icmp eq i64 %i.ec, %i.bl
  br i1 %exitcond124.not, label %.preheader, label %.lr.ph104.split.us, !llvm.loop !202

.preheader:                                       ; preds = %bb.i, %bb.h, %.preheader99
  %.not112 = icmp eq i32 %i.bi, 0
  br i1 %.not112, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %i.ed = zext i32 %.068 to i64                   ; 3 uses
  %xtraiter = and i64 %i.bj, 1
  %i.ee = icmp eq i32 %i.bi, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter = and i64 %i.bj, 4294967294
  br label %bb.k

.lr.ph104.split:                                  ; preds = %.lr.ph104.split.preheader238, %bb.i
  %indvars.iv117 = phi i64 [ %i.ef, %bb.i ], [ %indvars.iv117.ph, %.lr.ph104.split.preheader238 ] ; 2 uses
  %.067103 = phi i64 [ %i.el, %bb.i ], [ %.067103.ph, %.lr.ph104.split.preheader238 ] ; 2 uses
  %i.ef = add nuw nsw i64 %indvars.iv117, 2       ; 3 uses
  %.not.i.i.i.i.i.i76 = icmp samesign ugt i64 %i.ef, %i.al
  br i1 %.not.i.i.i.i.i.i76, label %.split.us, label %bb.i

.split.us:                                        ; preds = %.lr.ph104.split, %.lr.ph104.split.us
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc79 unwind label %bb.j

.noexc79:                                         ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %.lr.ph104.split
  %i.eg = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv117
  %.0.copyload.i.i.i.i.i.i77 = load i16, ptr %i.eg, align 1
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i77)
  %i.ei = trunc nuw i64 %i.ef to i32
  store i32 %i.ei, ptr %i.af, align 8, !tbaa !29
  %i.ej = mul nuw nsw i64 %.067103, %i.bm
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ej
  store i16 %i.eh, ptr %i.ek, align 2, !tbaa !18
  %i.el = add nuw nsw i64 %.067103, 1             ; 2 uses
  %exitcond120.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond120.not, label %.preheader, label %.lr.ph104.split, !llvm.loop !203

bb.j:                                             ; preds = %.split.us
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge107, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.066105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.gw, %._crit_edge107.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod242 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.en = urem i64 %.066105.epil.init, %i.ed      ; 2 uses
  %i.eo = trunc nuw i64 %i.en to i32              ; 2 uses
  %i.ep = sub nuw i64 %.066105.epil.init, %i.en   ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %.068, %i.eq
  %i.es = sub nuw i32 %.068, %i.eo
  %i.et = and i64 %i.ep, 4294967295
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !18
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul i32 %i.es, %i.ew
  %i.ey = zext i32 %i.er to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !18
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul i32 %i.fb, %i.eo
  %i.fd = add i32 %i.fc, %i.ex
  %i.fe = udiv i32 %i.fd, %.068
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066105.epil.init
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !18
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  store i32 562, ptr %i.af, align 8, !tbaa !29
  %.not.i.i = icmp samesign ult i32 %i.ak, 562
  br i1 %.not.i.i, label %.invoke, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph106.new
  %.066105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.gw, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph106.new ], [ %niter.next.1, %bb.k ]
  %i.fh = urem i64 %.066105, %i.ed                ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i32              ; 2 uses
  %i.fj = sub nuw i64 %.066105, %i.fh             ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = add i32 %.068, %i.fk
  %i.fm = sub nuw i32 %.068, %i.fi
  %i.fn = and i64 %i.fj, 4294967295
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !18
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul i32 %i.fm, %i.fq
  %i.fs = zext i32 %i.fl to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !18
  %i.fv = zext i16 %i.fu to i32
  %i.fw = mul i32 %i.fv, %i.fi
  %i.fx = add i32 %i.fw, %i.fr
  %i.fy = udiv i32 %i.fx, %.068
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066105
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !18
  %i.gb = or disjoint i64 %.066105, 1             ; 3 uses
  %i.gc = urem i64 %i.gb, %i.ed                   ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = sub nuw i64 %i.gb, %i.gc                ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = add i32 %.068, %i.gf
  %i.gh = sub nuw i32 %.068, %i.gd
  %i.gi = and i64 %i.ge, 4294967295
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !18
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul i32 %i.gh, %i.gl
  %i.gn = zext i32 %i.gg to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !18
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul i32 %i.gq, %i.gd
  %i.gs = add i32 %i.gr, %i.gm
  %i.gt = udiv i32 %i.gs, %.068
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gb
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !18
  %i.gw = add nuw i64 %.066105, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge107.loopexit.unr-lcssa, label %bb.k, !llvm.loop !204

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %._crit_edge107
  %.not.i.i.i.i.i.i82 = icmp samesign ult i32 %i.ak, 564
  br i1 %.not.i.i.i.i.i.i82, label %.invoke, label %bb.l

.invoke:                                          ; preds = %._crit_edge, %_ZN8rawspeed10ByteStream11setPositionEj.exit, %._crit_edge107
  %i.gx = phi ptr [ @.str.9, %._crit_edge107 ], [ @.str.7, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @.str.7, %._crit_edge ]
  %i.gy = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %._crit_edge107 ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %._crit_edge ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy) #16
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 562
  %.0.copyload.i.i.i.i.i.i83 = load i16, ptr %i.gz, align 1 ; 2 uses
  %i.ha = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i83)
  %spec.select.i.i.i.i.i.i84 = select i1 %i.ar, i16 %.0.copyload.i.i.i.i.i.i83, i16 %i.ha
  store i32 564, ptr %i.af, align 8, !tbaa !29
  %i.hb = zext i16 %spec.select.i.i.i.i.i.i84 to i32
  store i32 %i.hb, ptr %5, align 4, !tbaa !33
  br label %.loopexit

bb.m:                                             ; preds = %bb.e
  %.not = icmp eq i32 %3, 70
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.m
  %i.hc = add i16 %spec.select.i.i.i.i.i.i, -16386
  %or.cond7 = icmp ult i16 %i.hc, -16385
  br i1 %or.cond7, label %.invoke152, label %bb.n

.invoke152:                                       ; preds = %.thread, %bb.g
  %i.hd = phi ptr [ @.str, %bb.g ], [ @.str.1, %.thread ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.hd, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj, i32 noundef %i.ay) #16
          to label %.cont153 unwind label %bb.d

.cont153:                                         ; preds = %.invoke152
  unreachable

bb.n:                                             ; preds = %.thread
  %narrow = add nuw nsw i16 %spec.select.i.i.i.i.i.i, 1
  %i.he = zext nneg i16 %narrow to i64            ; 4 uses
  %i.hf = icmp samesign ult i64 %i.u, %i.he
  br i1 %i.hf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hg = sub nuw nsw i64 %i.he, %i.u
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hg)
          to label %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge unwind label %bb.d

._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge:    ; preds = %bb.o
  %.pre127.pre = load ptr, ptr %0, align 8
  br label %.lr.ph102

bb.p:                                             ; preds = %bb.n
  %i.hh = icmp samesign ugt i64 %i.u, %i.he
  br i1 %i.hh, label %bb.q, label %.lr.ph102

bb.q:                                             ; preds = %bb.p
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.he ; 2 uses
  %.not.i.i87 = icmp eq ptr %.0.i.i.i.i.i148, %i.hi
  br i1 %.not.i.i87, label %.lr.ph102, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.hi, ptr %i.v, align 8, !tbaa !19
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge
  %.pre126 = phi ptr [ %.pre127.pre, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.hj = load i32, ptr %i.aj, align 8, !tbaa !30 ; 3 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp sgt i32 %i.hj, -1
  %wide.trip.count = zext nneg i16 %spec.select.i.i.i.i.i.i to i64
  %.pre = load i32, ptr %i.af, align 8, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph102, %bb.t
  %i.hm = phi i32 [ %.pre, %.lr.ph102 ], [ %i.hs, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = add nuw nsw i64 %i.hn, 2
  %.not.i.i.i.i.i.i89 = icmp samesign ugt i64 %i.ho, %i.hk
  br i1 %.not.i.i.i.i.i.i89, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc92 unwind label %bb.u

.noexc92:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.hp = load i16, ptr %i.ap, align 4, !tbaa !31
  %i.hq = icmp eq i16 %i.hp, -8531
  %i.hr = load ptr, ptr %1, align 8, !tbaa !32
  tail call void @llvm.assume(i1 %i.hl)
  %i.hs = add nuw nsw i32 %i.hm, 2                ; 3 uses
  %i.ht = icmp samesign ule i32 %i.hs, %i.hj
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hn
  %.0.copyload.i.i.i.i.i.i90 = load i16, ptr %i.hu, align 1 ; 2 uses
  %i.hv = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i90)
  %spec.select.i.i.i.i.i.i91 = select i1 %i.hq, i16 %.0.copyload.i.i.i.i.i.i90, i16 %i.hv
  store i32 %i.hs, ptr %i.af, align 8, !tbaa !29
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.pre126, i64 %indvars.iv
  store i16 %spec.select.i.i.i.i.i.i91, ptr %i.hw, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond116.not, label %.loopexit, label %bb.r, !llvm.loop !205

bb.u:                                             ; preds = %bb.s
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.m, %bb.l
  %6 = phi ptr [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %.pre126, %bb.t ] ; 3 uses
  %i.hy = load ptr, ptr %i.v, align 8, !tbaa !19  ; 3 uses
  %i.hz = icmp eq ptr %i.hy, %6
  br i1 %i.hz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef -1)
          to label %_ZNSt6vectorItSaItEE6resizeEm.exit97 unwind label %bb.d

bb.w:                                             ; preds = %.loopexit
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %6 to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = getelementptr i8, ptr %6, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -2     ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.hy, %i.ie
  br i1 %.not.i.i94, label %_ZNSt6vectorItSaItEE6resizeEm.exit97, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95:      ; preds = %bb.w
  store ptr %i.ie, ptr %i.v, align 8, !tbaa !19
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit97

bb.x:                                             ; preds = %bb.u, %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.be, %bb.d ], [ %i.em, %bb.j ], [ %i.hx, %bb.u ]
  %i.if = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  tail call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEE6resizeEm.exit97:             ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95, %bb.w, %bb.v
  ret void

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.y, %bb.x
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEET_j(ptr dead_on_unwind noalias writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::PrefixCode", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::HuffmanCode", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZN8rawspeed17NikonDecompressor10nikon_treeE, i64 %i.a ; 2 uses
  %i.c = invoke noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.b, i32 16)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = icmp sgt i32 %i.c, -1
  call void @llvm.assume(i1 %i.e)
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.d, i32 %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::PrefixCode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <4 x ptr>, ptr %2, align 8, !tbaa !54
  store <4 x ptr> %i.h, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load <4 x ptr>, ptr %i.j, align 8, !tbaa !54
  store <4 x ptr> %i.k, ptr %i.i, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  store ptr %i.n, ptr %i.l, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  invoke void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %3, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !56   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 17
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 17, %i.i
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.h, 68
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !60
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 31 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %scevgep = getelementptr nuw i8, ptr %i.m, i64 4
end_hunk_1
