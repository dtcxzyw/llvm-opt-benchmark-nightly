Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PentaxDecompressor?download=true
inline.NumInlined: 1087
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.1" = type { [1 x %"struct.std::array.0"] }
%"struct.std::array.0" = type { [2 x %"struct.std::array"] }
%"struct.std::array" = type { [16 x i8] }
%"struct.std::array.101" = type { [8192 x i8] }
%"class.rawspeed::Optional" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<rawspeed::ByteStream>::_Storage", i8 }>
%"union.std::_Optional_payload_base<rawspeed::ByteStream>::_Storage" = type { %"class.rawspeed::ByteStream" }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%"class.rawspeed::PrefixCodeLUTDecoder" = type { %"class.rawspeed::PrefixCodeLookupDecoder", %"class.std::vector.17" }
%"class.rawspeed::PrefixCodeLookupDecoder" = type { %"class.rawspeed::AbstractPrefixCodeDecoder", %"class.std::vector.12", %"class.std::vector.12" }
%"class.rawspeed::AbstractPrefixCodeDecoder" = type { %"class.rawspeed::AbstractPrefixCodeTranscoder" }
%"class.rawspeed::AbstractPrefixCodeTranscoder" = type { i8, i8, %"class.rawspeed::PrefixCode" }
%"class.rawspeed::PrefixCode" = type { %"class.rawspeed::AbstractPrefixCode", %"class.std::vector.2", %"class.std::vector.7" }
%"class.rawspeed::AbstractPrefixCode" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.2" = type { %"struct.std::_Vector_base.3" }
%"struct.std::_Vector_base.3" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl" }
%"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl" = type { %"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol, std::allocator<rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::CodeSymbol>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.rawspeed::Optional.83" = type { %"class.std::optional.84" }
%"class.std::optional.84" = type { %"struct.std::_Optional_base.85" }
%"struct.std::_Optional_base.85" = type { %"struct.std::_Optional_payload.87" }
%"struct.std::_Optional_payload.87" = type { %"struct.std::_Optional_payload.base.91", [7 x i8] }
%"struct.std::_Optional_payload.base.91" = type { %"struct.std::_Optional_payload_base.base.90" }
%"struct.std::_Optional_payload_base.base.90" = type <{ %"union.std::_Optional_payload_base<rawspeed::HuffmanCode<rawspeed::BaselineCodeTag>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<rawspeed::HuffmanCode<rawspeed::BaselineCodeTag>>::_Storage" = type { %"class.rawspeed::HuffmanCode" }
%"class.rawspeed::HuffmanCode" = type { %"class.rawspeed::AbstractPrefixCode", %"class.std::vector.2" }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.std::array.82" = type { [16 x i32] }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev = comdat any

$_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb = comdat any

$_ZN8rawspeed8OptionalINS_11HuffmanCodeINS_15BaselineCodeTagEEEED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv = comdat any

$_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE19generateCodeSymbolsEv = comdat any

$_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE = comdat any

$_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv = comdat any

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb = comdat any

$_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

$_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE = comdat any

@_ZN8rawspeed18PentaxDecompressor11pentax_treeE = hidden constant %"struct.std::array.1" { [1 x %"struct.std::array.0"] [%"struct.std::array.0" { [2 x %"struct.std::array"] [%"struct.std::array" { [16 x i8] c"\00\02\03\01\01\01\01\01\01\02\00\00\00\00\00\00" }, %"struct.std::array" { [16 x i8] c"\03\04\02\05\01\06\00\07\08\09\0A\0B\0C\00\00\00" }] }] }, align 1
@.str = private unnamed_addr constant [52 x i8] c"%s, line 58: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed18PentaxDecompressorC2ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE = private unnamed_addr constant [81 x i8] c"rawspeed::PentaxDecompressor::PentaxDecompressor(RawImage, Optional<ByteStream>)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 63: Unexpected image dimensions found: (%d; %d)\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s, line 87: Depth of huffman table is too great (%u).\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed18PentaxDecompressor29SetupPrefixCodeDecoder_ModernENS_10ByteStreamE = private unnamed_addr constant [108 x i8] c"static HuffmanCode<BaselineCodeTag> rawspeed::PentaxDecompressor::SetupPrefixCodeDecoder_Modern(ByteStream)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s, line 99: Data corrupt: v1[%u]=%u, expected [1..12]\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s, line 173: decoded value out of bounds at %d:%d\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed18PentaxDecompressor10decompressENS_10ByteStreamE = private unnamed_addr constant [64 x i8] c"void rawspeed::PentaxDecompressor::decompress(ByteStream) const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.101" zeroinitializer, comdat, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s, line 55: Malformed code\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE = private unnamed_addr constant [149 x i8] c"rawspeed::PrefixCode<rawspeed::BaselineCodeTag>::PrefixCode(std::vector<CodeSymbol>, std::vector<CodeValueTy>) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%s, line 183: Empty code alphabet?\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorIhSaIhEE = private unnamed_addr constant [140 x i8] c"rawspeed::AbstractPrefixCode<rawspeed::BaselineCodeTag>::AbstractPrefixCode(std::vector<CodeValueTy>) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"%s, line 79: Too many codes of of length %lu.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv = private unnamed_addr constant [112 x i8] c"void rawspeed::PrefixCode<rawspeed::BaselineCodeTag>::verifyCodeSymbols() [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"%s, line 93: Code symbols are not globally ordered\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"%s, line 100: Not prefix codes!\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB]\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.101" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [46 x i8] c"%s, line 111: Codes-per-length table is empty\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE = private unnamed_addr constant [124 x i8] c"uint32_t rawspeed::HuffmanCode<rawspeed::BaselineCodeTag>::setNCodesPerLength(Buffer) [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s, line 119: Too big code-values table\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"%s, line 132: Corrupt Huffman. Can never have %u codes in %lu-bit len\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"%s, line 139: Corrupt Huffman. Can only fit %u out of %u codes in %lu-bit len\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"%s, line 115: Corrupt Huffman\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb = private unnamed_addr constant [271 x i8] c"void rawspeed::PrefixCodeLUTDecoder<rawspeed::BaselineCodeTag, rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>>::setup(bool, bool) [CodeTag = rawspeed::BaselineCodeTag, BackendPrefixCodeDecoder = rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>]\00", align 1
@_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE = linkonce_odr hidden constant i16 -1, comdat, align 2
@.str.27 = private unnamed_addr constant [71 x i8] c"%s, line 55: Corrupt Huffman code: difference length %u longer than %u\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv = private unnamed_addr constant [148 x i8] c"void rawspeed::AbstractPrefixCodeTranscoder<rawspeed::BaselineCodeTag>::verifyCodeValuesAsDiffLengths() const [CodeTag = rawspeed::BaselineCodeTag]\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB>::getInput() [Tag = rawspeed::BitStreamerMSB]\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"%s, line 155: bad Huffman code: %u (len: %u)\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_ = private unnamed_addr constant [255 x i8] c"std::pair<typename Base::CodeSymbol, int> rawspeed::PrefixCodeLookupDecoder<rawspeed::BaselineCodeTag>::finishReadingPartialSymbol(BIT_STREAM &, typename Base::CodeSymbol) const [CodeTag = rawspeed::BaselineCodeTag, BIT_STREAM = rawspeed::BitStreamerMSB]\00", align 1

@_ZN8rawspeed18PentaxDecompressorC1ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8rawspeed18PentaxDecompressorC2ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed18PentaxDecompressorC2ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 16)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::Optional") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !15
  store ptr null, ptr %i.b, align 8, !tbaa !11
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %1, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN8rawspeed18PentaxDecompressor22SetupPrefixCodeDecoderENS_8OptionalINS_10ByteStreamEEE(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %i.d, ptr noundef nonnull byval(%"class.rawspeed::Optional") align 8 %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 553
  %i.i = load i8, ptr %i.h, align 1, !tbaa !90
  %.not5 = icmp eq i8 %i.i, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 596
  %i.k = load i32, ptr %i.j, align 4, !tbaa !91
  %.not6 = icmp eq i32 %i.k, 2
  br i1 %.not6, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed18PentaxDecompressorC2ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE) #13
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.d) #19
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92   ; 4 uses
  %.not7 = icmp eq i32 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !93 ; 3 uses
  br i1 %.not7, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not8 = icmp eq i32 %.pre, 0
  %.not9 = trunc i32 %i.o to i1
  %or.cond.not13 = or i1 %.not8, %.not9
  %i.p = icmp sgt i32 %i.o, 8384
  %or.cond11 = or i1 %i.p, %or.cond.not13
  %i.q = icmp sgt i32 %.pre, 6208
  %or.cond12 = or i1 %i.q, %or.cond11
  br i1 %or.cond12, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.i, %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed18PentaxDecompressorC2ENS_8RawImageENS_8OptionalINS_10ByteStreamEEE, i32 noundef %i.o, i32 noundef %.pre) #13
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %._crit_edge
  unreachable

bb.l:                                             ; preds = %bb.j
  ret void

bb.m:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.l, %bb.g ]
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed18PentaxDecompressor22SetupPrefixCodeDecoderENS_8OptionalINS_10ByteStreamEEE(ptr dead_on_unwind noalias writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %0, ptr nofree noundef readonly byval(%"class.rawspeed::Optional") align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::PrefixCode", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::Optional.83", align 16 ; 30 uses
  %4 = alloca %"class.rawspeed::HuffmanCode", align 16 ; 18 uses
  %5 = alloca %"class.rawspeed::HuffmanCode", align 16 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 7 uses
  store i8 0, ptr %i.a, align 16, !tbaa !94
end_hunk_0
begin_hunk_1_@_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb:bb.a
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 32)
  %i.gd = icmp eq i32 %index.next161, %n.vec139
  br i1 %i.gd, label %.lr.ph.split.split.us.split.preheader173, label %vector.body154, !llvm.loop !195

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  br i1 %min.iters.check118, label %.lr.ph.split.split.us.split.us.preheader170, label %vector.scevcheck113

vector.scevcheck113:                              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %.mask166 = and i32 %i.ad, 65535
  %i.ge = zext nneg i32 %.mask166 to i64
  %i.gf = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 %i.ge)
  %i.gg = and i32 %i.ah, 65535
  %i.gh = add nuw nsw i32 %i.gg, 1
  %i.gi = add nuw i32 %i.ad, 1
  %i.gj = and i32 %i.gi, 65535
  %i.gk = tail call i32 @llvm.usub.sat.i32(i32 %i.gh, i32 %i.gj)
  %i.gl = zext nneg i32 %i.gk to i64
  %umin116 = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.gl) ; 2 uses
  %i.gm = trunc i64 %umin116 to i16               ; 2 uses
  %i.gn = xor i16 %i.ae, -1
  %i.go = icmp ult i16 %i.gn, %i.gm
  %i.gp = sub i16 -2, %i.ae
  %i.gq = icmp ult i16 %i.gp, %i.gm
  %i.gr = icmp samesign ugt i64 %umin116, 65535
  %i.gs = or i1 %i.gq, %i.gr
  %i.gt = or i1 %i.go, %i.gs
  br i1 %i.gt, label %.lr.ph.split.split.us.split.us.preheader170, label %vector.ph119

vector.ph119:                                     ; preds = %vector.scevcheck113
  %i.gu = and i32 %i.dq, 31                       ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = select i1 %i.gv, i32 32, i32 %i.gu
  %n.vec120 = sub nsw i32 %i.dq, %i.gw            ; 2 uses
  %i.gx = trunc i32 %n.vec120 to i16
  %i.gy = add i16 %i.ae, %i.gx
  %broadcast.splatinsert121 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat122 = shufflevector <8 x i32> %broadcast.splatinsert121, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat124 = shufflevector <8 x i32> %broadcast.splatinsert123, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gz = load i8, ptr %0, align 8, !tbaa !111, !range !98, !noundef !99
  %i.ha = trunc nuw i8 %i.gz to i1
  %i.hb = insertelement <8 x i1> poison, i1 %i.ha, i64 0
  %i.hc = shufflevector <8 x i1> %i.hb, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.hd = select <8 x i1> %i.hc, <8 x i32> %broadcast.splat122, <8 x i32> %broadcast.splat124 ; 4 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph119
  %index126 = phi i32 [ 0, %vector.ph119 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.he = trunc i32 %index126 to i16
  %i.hf = add i16 %i.ae, %i.he
  %i.hg = zext i16 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 96
  store <8 x i32> %i.hd, ptr %i.hh, align 4, !tbaa !148
  store <8 x i32> %i.hd, ptr %i.hi, align 4, !tbaa !148
  store <8 x i32> %i.hd, ptr %i.hj, align 4, !tbaa !148
  store <8 x i32> %i.hd, ptr %i.hk, align 4, !tbaa !148
  %index.next129 = add nuw i32 %index126, 32      ; 2 uses
  %i.hl = icmp eq i32 %index.next129, %n.vec120
  br i1 %i.hl, label %.lr.ph.split.split.us.split.us.preheader170, label %vector.body125, !llvm.loop !196

.lr.ph.split.split.us.split.us.preheader170:      ; preds = %vector.body125, %vector.scevcheck113, %.lr.ph.split.split.us.split.us.preheader
  %.04561.us65.us.ph = phi i16 [ %i.ae, %vector.scevcheck113 ], [ %i.ae, %.lr.ph.split.split.us.split.us.preheader ], [ %i.gy, %vector.body125 ]
  br label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.preheader170, %bb.g
  %.04561.us65.us = phi i16 [ %i.hr, %bb.g ], [ %.04561.us65.us.ph, %.lr.ph.split.split.us.split.us.preheader170 ] ; 2 uses
  %i.hm = zext i16 %.04561.us65.us to i64         ; 2 uses
  %i.hn = icmp ugt i64 %i.as, %i.hm
  br i1 %i.hn, label %bb.g, label %.split64.us

bb.g:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.ho = load i8, ptr %0, align 8, !tbaa !111, !range !98, !noundef !99
  %i.hp = trunc nuw i8 %i.ho to i1
  %spec.select100 = select i1 %i.hp, i32 %i.bb, i32 %i.av
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.hm
  store i32 %spec.select100, ptr %i.hq, align 4, !tbaa !148
  %i.hr = add i16 %.04561.us65.us, 1              ; 2 uses
  %.not52.us66.us = icmp ugt i16 %i.hr, %i.ai
  br i1 %.not52.us66.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !197

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader173, %bb.i
  %.04561.us65 = phi i16 [ %i.if, %bb.i ], [ %.04561.us65.ph, %.lr.ph.split.split.us.split.preheader173 ] ; 3 uses
  %i.hs = zext i16 %.04561.us65 to i64            ; 2 uses
  %i.ht = icmp ugt i64 %i.as, %i.hs
  br i1 %i.ht, label %bb.h, label %.split64.us

bb.h:                                             ; preds = %.lr.ph.split.split.us.split
  %i.hu = load i8, ptr %0, align 8, !tbaa !111, !range !98, !noundef !99
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.hs
  br i1 %i.hv, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.bc)
  %i.hx = zext i16 %.04561.us65 to i32
  %i.hy = lshr i32 %i.hx, %i.bd
  %i.hz = and i32 %i.hy, %i.be                    ; 2 uses
  %i.ia = and i32 %i.hz, %i.bg
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = select i1 %i.ib, i32 %.neg.i, i32 0
  %.0.i.us = add nsw i32 %i.ic, %i.hz
  %i.id = shl nsw i32 %.0.i.us, 9
  %i.ie = or disjoint i32 %i.bb, %i.id
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.us
  %.sink = phi i32 [ %i.ie, %.split.us ], [ %i.av, %bb.h ]
  store i32 %.sink, ptr %i.hw, align 4, !tbaa !148
  %i.if = add i16 %.04561.us65, 1                 ; 2 uses
  %.not52.us66 = icmp ugt i16 %i.if, %i.ai
  br i1 %.not52.us66, label %._crit_edge, label %.lr.ph.split.split.us.split, !llvm.loop !198

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.04561 = phi i16 [ %i.io, %bb.k ], [ %i.ae, %.lr.ph.split ] ; 2 uses
  %i.ig = zext i16 %.04561 to i64                 ; 2 uses
  %i.ih = icmp ugt i64 %i.as, %i.ig
  br i1 %i.ih, label %bb.j, label %.split64.us

.split64.us:                                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us, %.lr.ph.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb) #13
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.ii = load i8, ptr %0, align 8, !tbaa !111, !range !98, !noundef !99
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ig
  br i1 %i.ij, label %.split49, label %bb.k

.split49:                                         ; preds = %bb.j
  %i.il = load i8, ptr %i.u, align 1, !tbaa !123, !range !98, !noundef !99
  %i.im = trunc nuw i8 %i.il to i1
  %spec.store.select = select i1 %i.im, i32 %i.ba, i32 %i.az
  %i.in = or disjoint i32 %spec.store.select, -16777216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split49
  %.sink101 = phi i32 [ %i.in, %.split49 ], [ %i.av, %bb.j ]
  store i32 %.sink101, ptr %i.ik, align 4, !tbaa !148
  %i.io = add i16 %.04561, 1                      ; 2 uses
  %.not52 = icmp ugt i16 %i.io, %i.ai
  br i1 %.not52, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !199

._crit_edge:                                      ; preds = %bb.k, %bb.i, %bb.g, %.thread.us, %bb.f
  %i.ip = add nuw i64 %.04767, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ip, %i.t
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !200

.critedge:                                        ; preds = %._crit_edge, %bb.e, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8OptionalINS_11HuffmanCodeINS_15BaselineCodeTagEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !94
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt14_Optional_baseIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed18PentaxDecompressor10decompressENS_10ByteStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201, !noalias !202 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19, !noalias !202
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !205, !noalias !202
  %i.h = mul nsw i32 %i.g, %i.e                   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !206, !noalias !202 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !207, !noalias !202
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i32 %i.h, 1
  %i.r = icmp eq i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !172  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !177  ; 3 uses
  %i.w = icmp uge i32 %i.v, %i.t
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = sub i32 %i.v, %i.t                       ; 6 uses
  %i.z = zext i32 %i.t to i64
  %i.aa = load ptr, ptr %1, align 8, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = icmp sgt i32 %i.y, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.y, 4
  br i1 %i.ad, label %bb.s, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.h, 0
  %i.af = add nuw nsw i32 %i.y, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.an = zext nneg i32 %i.j to i64               ; 2 uses
  br i1 %i.ae, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %switch = icmp samesign ult i32 %i.j, 3
  br i1 %switch, label %.split206.us, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %xtraiter = and i64 %i.ao, 7                    ; 3 uses
  %i.ap = add nsw i32 %i.j, -3
  %i.aq = icmp ult i32 %i.ap, 7
  br i1 %i.aq, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil.preheader, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276.new

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276.new: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276
  %unroll_iter = and i64 %i.ao, -8
  br label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.ar = sext i32 %i.m to i64
  %i.as = zext i32 %i.m to i64
  %i.at = zext nneg i32 %i.h to i64
  %wide.trip.count233 = zext nneg i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %._crit_edge.us ], [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ] ; 5 uses
  %.sroa.039.0196.us = phi i64 [ %.sroa.039.3.us, %._crit_edge.us ], [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ]
  %.sroa.16.0195.us = phi i32 [ %.sroa.16.3.us, %._crit_edge.us ], [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ]
  %.sroa.4159.0194.us = phi i32 [ %.sroa.4159.2.us, %._crit_edge.us ], [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 0, ptr %.sroa.0, align 8
  %i.au = icmp samesign ugt i64 %indvars.iv230, 1
  br i1 %i.au, label %bb.c, label %.lr.ph.us

bb.c:                                             ; preds = %bb.b
  %i.av = add nsw i64 %indvars.iv230, -2          ; 2 uses
  %i.aw = icmp samesign ult i64 %i.av, %i.an
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = mul nuw nsw i64 %i.av, %i.ar
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ax
  %i.az = load <2 x i16>, ptr %i.ay, align 2, !tbaa !208
  %i.ba = zext <2 x i16> %i.az to <2 x i32>
  store <2 x i32> %i.ba, ptr %.sroa.0, align 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %bb.b
  %i.bb = mul nuw nsw i64 %indvars.iv230, %i.as
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bb
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.r
  %indvars.iv225 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next226, %bb.r ] ; 4 uses
  %.sroa.039.1190.us = phi i64 [ %.sroa.039.0196.us, %.lr.ph.us ], [ %.sroa.039.3.us, %bb.r ] ; 2 uses
  %.sroa.16.1189.us = phi i32 [ %.sroa.16.0195.us, %.lr.ph.us ], [ %.sroa.16.3.us, %bb.r ] ; 5 uses
  %.sroa.4159.1188.us = phi i32 [ %.sroa.4159.0194.us, %.lr.ph.us ], [ %.sroa.4159.2.us, %bb.r ] ; 5 uses
  %i.bd = icmp samesign ult i32 %.sroa.16.1189.us, 65
  tail call void @llvm.assume(i1 %i.bd)
  %.not.i32.us = icmp samesign ult i32 %.sroa.16.1189.us, 32
  br i1 %.not.i32.us, label %bb.e, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.be = add nuw nsw i32 %.sroa.4159.1188.us, 4  ; 2 uses
  %.not.i.i.us = icmp samesign ugt i32 %i.be, %i.y
  br i1 %.not.i.i.us, label %bb.g, label %bb.f, !prof !149

bb.f:                                             ; preds = %bb.e
  %i.bf = zext nneg i32 %.sroa.4159.1188.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bf
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us

bb.g:                                             ; preds = %bb.e
  %i.bh = icmp samesign ugt i32 %.sroa.4159.1188.us, %i.af
  br i1 %i.bh, label %.split.us, label %bb.h, !prof !149

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %.sroa.4159.1188.us) ; 3 uses
  %i.bi = add nuw nsw i32 %.sroa.speculated27.i.i.i.us, 4
  %.sroa.speculated.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.bi)
  %i.bj = sub nsw i32 %.sroa.speculated.i.i.i.us, %.sroa.speculated27.i.i.i.us ; 2 uses
  %i.bk = icmp samesign ult i32 %i.bj, 5
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = zext nneg i32 %.sroa.speculated27.i.i.i.us to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bl
  %i.bn = zext nneg i32 %i.bj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us: ; preds = %bb.h, %bb.f
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us = phi ptr [ %.sroa.0.i.i, %bb.h ], [ %i.bg, %bb.f ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = or disjoint i32 %.sroa.16.1189.us, 32
  %i.br = sub nuw nsw i32 32, %.sroa.16.1189.us
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 %i.bp, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.039.1190.us
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us, %bb.d
  %.sroa.4159.2.us = phi i32 [ %i.be, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us ], [ %.sroa.4159.1188.us, %bb.d ] ; 3 uses
  %.sroa.16.4.us = phi i32 [ %i.bq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us ], [ %.sroa.16.1189.us, %bb.d ]
  %.sroa.039.4.us = phi i64 [ %i.bu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.us ], [ %.sroa.039.1190.us, %bb.d ] ; 2 uses
  %i.bv = icmp sgt i32 %.sroa.4159.2.us, -1
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i64 %.sroa.039.4.us, 53            ; 3 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32          ; 2 uses
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !125
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !148 ; 4 uses
  %i.cb = ashr i32 %i.ca, 9                       ; 2 uses
  %i.cc = and i32 %i.ca, 255                      ; 4 uses
  %i.cd = icmp samesign ult i32 %i.cc, 33
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = sub nuw nsw i32 %.sroa.16.4.us, %i.cc   ; 3 uses
  %i.cf = zext nneg i32 %i.cc to i64
  %i.cg = shl i64 %.sroa.039.4.us, %i.cf          ; 3 uses
  %i.ch = and i32 %i.ca, 256
  %.not.i.us = icmp eq i32 %i.ch, 0
  br i1 %.not.i.us, label %bb.i, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us

bb.i:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us
  %.not17.i.us = icmp eq i32 %i.ca, 0
  br i1 %.not17.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cj = icmp ne i8 %i.ci, 0
  tail call void @llvm.assume(i1 %i.cj)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ck = icmp eq i32 %i.cc, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i32 %i.ce, -11                  ; 2 uses
  %i.cm = shl i64 %i.cg, 11                       ; 2 uses
  %i.cn = load ptr, ptr %i.ai, align 8, !tbaa !150
  %i.co = load ptr, ptr %i.ah, align 8, !tbaa !104
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2
  %i.ct = add nsw i64 %i.cs, -1                   ; 3 uses
  %.sroa.0.018.i.us = trunc nuw nsw i64 %i.bw to i16 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 11
  br i1 %i.cu, label %.lr.ph.i.us, label %.critedge.i.us

.lr.ph.i.us:                                      ; preds = %bb.k
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !128
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.i.us, %.lr.ph.i.us
  %.sroa.16.6.us = phi i32 [ %i.cl, %.lr.ph.i.us ], [ %i.df, %.critedge2.i.us ] ; 4 uses
  %.sroa.039.6.us = phi i64 [ %i.cm, %.lr.ph.i.us ], [ %i.dg, %.critedge2.i.us ] ; 3 uses
  %i.cw = phi i64 [ 11, %.lr.ph.i.us ], [ %i.dl, %.critedge2.i.us ] ; 2 uses
  %.sroa.0.021.i.us = phi i16 [ %.sroa.0.018.i.us, %.lr.ph.i.us ], [ %.sroa.0.0.i.us, %.critedge2.i.us ] ; 2 uses
  %.sroa.8.020.i.us = phi i8 [ 11, %.lr.ph.i.us ], [ %i.dk, %.critedge2.i.us ] ; 2 uses
  %.sroa.0.0.in19.i.us = phi i32 [ %i.bx, %.lr.ph.i.us ], [ %i.dj, %.critedge2.i.us ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !208 ; 2 uses
  %i.cz = icmp eq i16 %i.cy, -1
  %i.da = icmp ult i16 %i.cy, %.sroa.0.021.i.us
  %or.cond.i.us = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.us, label %.critedge2.i.us, label %.critedge.i.us.loopexit

.critedge2.i.us:                                  ; preds = %bb.l
  %i.db = icmp samesign ult i32 %.sroa.16.6.us, 65
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = icmp ne i32 %.sroa.16.6.us, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = lshr i64 %.sroa.039.6.us, 63
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = add nsw i32 %.sroa.16.6.us, -1          ; 2 uses
  %i.dg = shl i64 %.sroa.039.6.us, 1              ; 2 uses
  %i.dh = shl nsw i32 %.sroa.0.0.in19.i.us, 1
  %i.di = and i32 %i.dh, 131070
  %i.dj = or disjoint i32 %i.di, %i.de            ; 3 uses
  %i.dk = add i8 %.sroa.8.020.i.us, 1             ; 3 uses
  %.sroa.0.0.i.us = trunc i32 %i.dj to i16        ; 2 uses
  %i.dl = zext i8 %i.dk to i64                    ; 3 uses
  %i.dm = icmp ugt i64 %i.ct, %i.dl
  br i1 %i.dm, label %bb.l, label %.critedge.i.us.loopexit, !llvm.loop !209

.critedge.i.us.loopexit:                          ; preds = %.critedge2.i.us, %bb.l
  %.sroa.16.5.us.ph = phi i32 [ %i.df, %.critedge2.i.us ], [ %.sroa.16.6.us, %bb.l ]
  %.sroa.039.5.us.ph = phi i64 [ %i.dg, %.critedge2.i.us ], [ %.sroa.039.6.us, %bb.l ]
  %.sroa.0.0.in.lcssa.i.us.ph = phi i32 [ %i.dj, %.critedge2.i.us ], [ %.sroa.0.0.in19.i.us, %bb.l ]
  %.sroa.8.0.lcssa.i.us.ph = phi i8 [ %i.dk, %.critedge2.i.us ], [ %.sroa.8.020.i.us, %bb.l ]
  %.sroa.0.0.lcssa.i.us.ph = phi i16 [ %.sroa.0.0.i.us, %.critedge2.i.us ], [ %.sroa.0.021.i.us, %bb.l ]
  %.lcssa17.i.us.ph = phi i64 [ %i.dl, %.critedge2.i.us ], [ %i.cw, %bb.l ]
  %i.dn = zext i8 %.sroa.8.0.lcssa.i.us.ph to i32
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.loopexit, %bb.k
  %.sroa.16.5.us = phi i32 [ %i.cl, %bb.k ], [ %.sroa.16.5.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.039.5.us = phi i64 [ %i.cm, %bb.k ], [ %.sroa.039.5.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.0.0.in.lcssa.i.us = phi i32 [ %i.bx, %bb.k ], [ %.sroa.0.0.in.lcssa.i.us.ph, %.critedge.i.us.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i.us = phi i32 [ 11, %bb.k ], [ %i.dn, %.critedge.i.us.loopexit ]
  %.sroa.0.0.lcssa.i.us = phi i16 [ %.sroa.0.018.i.us, %bb.k ], [ %.sroa.0.0.lcssa.i.us.ph, %.critedge.i.us.loopexit ]
  %.lcssa17.i.us = phi i64 [ 11, %bb.k ], [ %.lcssa17.i.us.ph, %.critedge.i.us.loopexit ] ; 3 uses
  %i.do = icmp ult i64 %i.ct, %.lcssa17.i.us
  br i1 %i.do, label %.split199.us, label %bb.m

bb.m:                                             ; preds = %.critedge.i.us
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %.lcssa17.i.us
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !208
  %i.ds = icmp ult i16 %i.dr, %.sroa.0.0.lcssa.i.us
  br i1 %i.ds, label %.split199.us, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us: ; preds = %bb.m
  %.sroa.0.0.mask.i.us = and i32 %.sroa.0.0.in.lcssa.i.us, 65535
  %i.dt = load ptr, ptr %i.ak, align 8, !tbaa !128
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %.lcssa17.i.us
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !208
  %.tr.i.us = zext i16 %i.dv to i32
  %.narrow.i.us = sub nsw i32 %.sroa.0.0.mask.i.us, %.tr.i.us
  %i.dw = zext i32 %.narrow.i.us to i64
  %i.dx = load ptr, ptr %i.al, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !147
  br label %bb.n

bb.n:                                             ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us, %bb.j
  %.0172.us = phi i8 [ %i.dz, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us ], [ %i.ci, %bb.j ] ; 5 uses
  %.sroa.16.2.us = phi i32 [ %.sroa.16.5.us, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us ], [ %i.ce, %bb.j ] ; 8 uses
  %.sroa.039.2.us = phi i64 [ %.sroa.039.5.us, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit.us ], [ %i.cg, %bb.j ] ; 6 uses
  %i.ea = icmp ult i8 %.0172.us, 17
  tail call void @llvm.assume(i1 %i.ea)
  switch i8 %.0172.us, label %bb.q [
    i8 16, label %bb.o
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us
  ]

bb.o:                                             ; preds = %bb.n
  %i.eb = load i8, ptr %i.am, align 1, !tbaa !123, !range !98, !noundef !99
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.p, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us

bb.p:                                             ; preds = %bb.o
  %i.ed = icmp samesign ult i32 %.sroa.16.2.us, 65
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp samesign ugt i32 %.sroa.16.2.us, 15
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = add nsw i32 %.sroa.16.2.us, -16
  %i.eg = shl i64 %.sroa.039.2.us, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us

bb.q:                                             ; preds = %bb.n
  %i.eh = zext nneg i8 %.0172.us to i32           ; 4 uses
  %i.ei = icmp samesign ult i32 %.sroa.16.2.us, 65
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ne i8 %.0172.us, 0
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign uge i32 %.sroa.16.2.us, %i.eh
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = sub nuw nsw i32 64, %i.eh
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 %.sroa.039.2.us, %i.em
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = sub nsw i32 %.sroa.16.2.us, %i.eh
  %i.eq = zext nneg i8 %.0172.us to i64
  %i.er = shl i64 %.sroa.039.2.us, %i.eq
  %i.es = icmp sgt i64 %.sroa.039.2.us, -1
  %notmask.i.i.us = shl nsw i32 -1, %i.eh
  %.neg.i.i.us = or disjoint i32 %notmask.i.i.us, 1
  %i.et = select i1 %i.es, i32 %.neg.i.i.us, i32 0
  %.0.i.i.us = add nsw i32 %i.et, %i.eo
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us
  %.sroa.16.3.us = phi i32 [ %i.ce, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us ], [ %i.ep, %bb.q ], [ %i.ef, %bb.p ], [ %.sroa.16.2.us, %bb.o ], [ %.sroa.16.2.us, %bb.n ] ; 2 uses
  %.sroa.039.3.us = phi i64 [ %i.cg, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us ], [ %i.er, %bb.q ], [ %i.eg, %bb.p ], [ %.sroa.039.2.us, %bb.o ], [ %.sroa.039.2.us, %bb.n ] ; 2 uses
  %.0.i.us = phi i32 [ %i.cb, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.us ], [ %.0.i.i.us, %bb.q ], [ -32768, %bb.p ], [ -32768, %bb.o ], [ 0, %bb.n ]
  %i.eu = and i64 %indvars.iv225, 1               ; 2 uses
  %.sroa.0.0..sroa_stride = shl nuw nsw i64 %i.eu, 2
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride
  %i.ev = load i32, ptr %.sroa.0.0..sroa_idx, align 4, !tbaa !148
  %i.ew = add nsw i32 %i.ev, %.0.i.us             ; 3 uses
  %.sroa.0.0..sroa_stride279 = shl nuw nsw i64 %i.eu, 2
  %.sroa.0.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride279
  store i32 %i.ew, ptr %.sroa.0.0..sroa_idx281, align 4, !tbaa !148
  %i.ex = icmp ult i32 %i.ew, 65536
  br i1 %i.ex, label %bb.r, label %.split202.us

bb.r:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us
  %i.ey = trunc nuw i32 %i.ew to i16
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv225
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !208
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %i.at
  br i1 %exitcond229.not, label %._crit_edge.us, label %bb.d, !llvm.loop !210

._crit_edge.us:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.split206.us, label %bb.b, !llvm.loop !211

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #13
  unreachable

.split206.us.loopexit277.unr-lcssa:               ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split206.us, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil.preheader

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil.preheader: ; preds = %.split206.us.loopexit277.unr-lcssa, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276
  %lcmp.mod278 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil.preheader
  %epil.iter = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil.preheader ], [ %epil.iter.next, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split206.us, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil, !llvm.loop !212

.split206.us:                                     ; preds = %.split206.us.loopexit277.unr-lcssa, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.epil, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel
  ret void

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276.new
  %niter = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader276.new ], [ %niter.next.7, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.split206.us.loopexit277.unr-lcssa, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, !llvm.loop !213

.split.us:                                        ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #13
  unreachable

.split199.us:                                     ; preds = %.critedge.i.us, %bb.m
  %i.fa = and i32 %.sroa.0.0.in.lcssa.i.us, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.fa, i32 noundef %.sroa.8.0.lcssa.i.us) #13
  unreachable

.split202.us:                                     ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb1EEEiRT_.exit.us
  %i.fb = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.fc = trunc nuw nsw i64 %indvars.iv230 to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed18PentaxDecompressor10decompressENS_10ByteStreamE, i32 noundef %i.fb, i32 noundef %i.fc) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !call_target !138, !inline_history !215
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !147
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !148  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !148
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !136
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !call_target !146, !inline_history !215
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !136
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !136
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.6, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv(ptr dead_on_unwind noalias writable sret(%"class.rawspeed::PrefixCode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.7", align 16    ; 9 uses
  %3 = alloca %"class.std::vector.7", align 16    ; 5 uses
  %4 = alloca %"class.std::vector", align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE19generateCodeSymbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.7") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.a = load <2 x ptr>, ptr %2, align 16, !tbaa !216
  store <2 x ptr> %i.a, ptr %3, align 16, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !124
  store ptr %i.d, ptr %i.b, align 16, !tbaa !124
end_hunk_1
