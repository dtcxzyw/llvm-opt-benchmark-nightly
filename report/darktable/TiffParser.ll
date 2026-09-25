Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TiffParser?download=true
inline.NumInlined: 967
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [17 x %"struct.std::pair"] }
%"struct.std::pair" = type { ptr, ptr }
%"struct.std::array.31" = type { [8192 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.rawspeed::NORangesSet" = type { %"class.std::set" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<rawspeed::Buffer, rawspeed::Buffer, std::_Identity<rawspeed::Buffer>, std::less<rawspeed::Buffer>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<rawspeed::Buffer, rawspeed::Buffer, std::_Identity<rawspeed::Buffer>, std::less<rawspeed::Buffer>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev = comdat any

$_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10DngDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10MosDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10IiqDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10Cr2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10NefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10OrfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10ArwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10PefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10Rw2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10SrwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10MefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10DcrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10DcsDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10KdcDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10ErfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_10StiDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed10TiffParser11constructorINS_14ThreefrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE = comdat any

$_ZN8rawspeed9RawParserD2Ev = comdat any

$_ZN8rawspeed10TiffParserD0Ev = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKczE3buf = comdat any

@_ZTVN8rawspeed10TiffParserE = hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8rawspeed10TiffParserE, ptr @_ZN8rawspeed9RawParserD2Ev, ptr @_ZN8rawspeed10TiffParserD0Ev, ptr @_ZN8rawspeed10TiffParser10getDecoderEPKNS_14CameraMetaDataE] }, align 8
@.str = private unnamed_addr constant [12 x i8] c"TIFF header\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s, line 74: Not a TIFF file (magic 42)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE = private unnamed_addr constant [71 x i8] c"static TiffRootIFDOwner rawspeed::TiffParser::parse(TiffIFD *, Buffer)\00", align 1
@_ZTIN8rawspeed19TiffParserExceptionE = external constant ptr
@.str.2 = private unnamed_addr constant [31 x i8] c"%s, line 104: TiffIFD is null.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE = private unnamed_addr constant [95 x i8] c"static std::unique_ptr<RawDecoder> rawspeed::TiffParser::makeDecoder(TiffRootIFDOwner, Buffer)\00", align 1
@_ZN8rawspeed10TiffParser3MapE = hidden local_unnamed_addr constant %"struct.std::array" { [17 x %"struct.std::pair"] [%"struct.std::pair" { ptr @_ZN8rawspeed10DngDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10DngDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10MosDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10MosDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10IiqDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10IiqDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10Cr2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10Cr2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10NefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10NefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10OrfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10OrfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10ArwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10ArwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10PefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10PefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10Rw2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10Rw2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10SrwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10SrwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10MefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10MefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10DcrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10DcrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10DcsDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10DcsDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10KdcDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10KdcDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10ErfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10ErfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed10StiDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_10StiDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }, %"struct.std::pair" { ptr @_ZN8rawspeed14ThreefrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE, ptr @_ZN8rawspeed10TiffParser11constructorINS_14ThreefrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE }] }, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s, line 121: No decoder found. Sorry.\00", align 1
@_ZTIN8rawspeed10TiffParserE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10TiffParserE, ptr @_ZTIN8rawspeed9RawParserE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10TiffParserE = hidden constant [24 x i8] c"N8rawspeed10TiffParserE\00", align 1
@_ZTIN8rawspeed9RawParserE = external constant ptr
@.str.6 = private unnamed_addr constant [65 x i8] c"%s, line 160: Failed to parse TIFF endianness information in %s.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc = private unnamed_addr constant [74 x i8] c"Endianness rawspeed::getTiffByteOrder(ByteStream, uint32_t, const char *)\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.31" zeroinitializer, comdat, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@_ZZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.31" zeroinitializer, comdat, align 1
@_ZTVN8rawspeed19TiffParserExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed7TiffIFDE = external constant { [5 x ptr] }, align 8
@_ZTVN8rawspeed11TiffRootIFDE = external constant { [5 x ptr] }, align 8
@_ZTVN8rawspeed10IiqDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10Cr2DecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10NefDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10OrfDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10ArwDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10PefDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10Rw2DecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10SrwDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10MefDecoderE = external constant { [13 x ptr] }, align 8
@_ZTVN8rawspeed10DcrDecoderE = external constant { [13 x ptr] }, align 8
@_ZTVN8rawspeed10DcsDecoderE = external constant { [13 x ptr] }, align 8
@_ZTVN8rawspeed10KdcDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed10ErfDecoderE = external constant { [13 x ptr] }, align 8
@_ZTVN8rawspeed10StiDecoderE = external constant { [12 x ptr] }, align 8
@_ZTVN8rawspeed14ThreefrDecoderE = external constant { [12 x ptr] }, align 8

@_ZN8rawspeed10TiffParserC1ENS_6BufferE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN8rawspeed10TiffParserC2ENS_6BufferE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN8rawspeed10TiffParserC2ENS_6BufferE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed10TiffParserE, i64 16), ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10TiffParser10getDecoderEPKNS_14CameraMetaDataE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree readnone captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef null, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !15
  %.sroa.2.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  invoke void @_ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 %3, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !20     ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #23
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #24, !call_target !37, !inline_history !69
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i
  %i.q = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 120) #25
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef align 8 %1, ptr %2, i32 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN8rawspeed10DngDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef nonnull %i.a, ptr %2, i32 %3)
  br i1 %i.b, label %bb.d, label %.preheader.1

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE) #13
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  %i.d = tail call noundef zeroext i1 @_ZN8rawspeed10MosDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.c, ptr %2, i32 %3)
  br i1 %i.d, label %bb.d, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  %i.f = tail call noundef zeroext i1 @_ZN8rawspeed10IiqDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.e, ptr %2, i32 %3)
  br i1 %i.f, label %bb.d, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.g = load ptr, ptr %1, align 8, !tbaa !20
  %i.h = tail call noundef zeroext i1 @_ZN8rawspeed10Cr2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.g, ptr %2, i32 %3)
  br i1 %i.h, label %bb.d, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = tail call noundef zeroext i1 @_ZN8rawspeed10NefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.i, ptr %2, i32 %3)
  br i1 %i.j, label %bb.d, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.k = load ptr, ptr %1, align 8, !tbaa !20
  %i.l = tail call noundef zeroext i1 @_ZN8rawspeed10OrfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.k, ptr %2, i32 %3)
  br i1 %i.l, label %bb.d, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  %i.n = tail call noundef zeroext i1 @_ZN8rawspeed10ArwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.m, ptr %2, i32 %3)
  br i1 %i.n, label %bb.d, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.o = load ptr, ptr %1, align 8, !tbaa !20
  %i.p = tail call noundef zeroext i1 @_ZN8rawspeed10PefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.o, ptr %2, i32 %3)
  br i1 %i.p, label %bb.d, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.q = load ptr, ptr %1, align 8, !tbaa !20
  %i.r = tail call noundef zeroext i1 @_ZN8rawspeed10Rw2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.q, ptr %2, i32 %3)
  br i1 %i.r, label %bb.d, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = tail call noundef zeroext i1 @_ZN8rawspeed10SrwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.s, ptr %2, i32 %3)
  br i1 %i.t, label %bb.d, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.u = load ptr, ptr %1, align 8, !tbaa !20
  %i.v = tail call noundef zeroext i1 @_ZN8rawspeed10MefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.u, ptr %2, i32 %3)
  br i1 %i.v, label %bb.d, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.w = load ptr, ptr %1, align 8, !tbaa !20
  %i.x = tail call noundef zeroext i1 @_ZN8rawspeed10DcrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.w, ptr %2, i32 %3)
  br i1 %i.x, label %bb.d, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.y = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.z = tail call noundef zeroext i1 @_ZN8rawspeed10DcsDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.y, ptr %2, i32 %3)
  br i1 %i.z, label %bb.d, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.aa = tail call noundef zeroext i1 @_ZN8rawspeed10KdcDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.y, ptr %2, i32 %3)
  br i1 %i.aa, label %bb.d, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20
  %i.ac = tail call noundef zeroext i1 @_ZN8rawspeed10ErfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.ab, ptr %2, i32 %3)
  br i1 %i.ac, label %bb.d, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ad = load ptr, ptr %1, align 8, !tbaa !20
  %i.ae = tail call noundef zeroext i1 @_ZN8rawspeed10StiDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.ad, ptr %2, i32 %3)
  br i1 %i.ae, label %bb.d, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.af = load ptr, ptr %1, align 8, !tbaa !20
  %i.ag = tail call noundef zeroext i1 @_ZN8rawspeed14ThreefrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.af, ptr %2, i32 %3)
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.16
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE) #13
  unreachable

bb.d:                                             ; preds = %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0.idx20.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 16, %.preheader.1 ], [ 32, %.preheader.2 ], [ 48, %.preheader.3 ], [ 64, %.preheader.4 ], [ 80, %.preheader.5 ], [ 96, %.preheader.6 ], [ 112, %.preheader.7 ], [ 128, %.preheader.8 ], [ 144, %.preheader.9 ], [ 160, %.preheader.10 ], [ 176, %.preheader.11 ], [ 192, %.preheader.12 ], [ 208, %.preheader.13 ], [ 224, %.preheader.14 ], [ 240, %.preheader.15 ], [ 256, %.preheader.16 ]
  %.0.ptr.le = getelementptr inbounds nuw i8, ptr @_ZN8rawspeed10TiffParser3MapE, i64 %.0.idx20.lcssa
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.ptr.le, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  tail call void %i.ai(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef %1, ptr %2, i32 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rawspeed::NORangesSet", align 8 ; 11 uses
  %5 = alloca %"class.std::unique_ptr.10", align 8 ; 4 uses
  %.sroa.9.sroa.0.0.insert.ext = zext nneg i32 %3 to i64
  %.not.i.i = icmp ult i32 %3, 2
  br i1 %.not.i.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i:     ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !78
  switch i8 %i.a, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i
  ]

.lr.ph.i.i.i.i.i.1.i:                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i
  %.0810.i.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i, align 1, !tbaa !78
  %i.c = icmp eq i8 %i.b, 73
  br i1 %i.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i

.lr.ph.i.i.i.i.i6.1.i:                            ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i
  %.0810.i.i.i.i.i8.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i, align 1, !tbaa !78
  %i.e = icmp eq i8 %i.d, 77
  br i1 %i.e, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i, %.lr.ph.i.i.i.i.i.1.i, %.lr.ph.i.i.i.i.i6.1.i, %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc, ptr noundef nonnull @.str) #13
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %.lr.ph.i.i.i.i.i6.1.i, %.lr.ph.i.i.i.i.i.1.i
  %i.f = phi i1 [ true, %.lr.ph.i.i.i.i.i.1.i ], [ false, %.lr.ph.i.i.i.i.i6.1.i ] ; 2 uses
  %.0.i = phi i64 [ 244834610708480, %.lr.ph.i.i.i.i.i.1.i ], [ 209933706461184, %.lr.ph.i.i.i.i.i6.1.i ]
  %6 = icmp sgt i32 %3, -1
  tail call void @llvm.assume(i1 %6)
  %.not.i.i.i.i.i.i = icmp samesign ult i32 %3, 4
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.g, align 1 ; 2 uses
  %i.h = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.f, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.h
  switch i16 %spec.select.i.i.i.i.i.i, label %bb.c [
    i16 21330, label %bb.d
    i16 20306, label %bb.d
    i16 85, label %bb.d
    i16 42, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE) #13
  unreachable

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.i = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26, !noalias !79 ; 9 uses
  %.sroa.9.sroa.0.0.insert.insert69 = or disjoint i64 %.0.i, %.sroa.9.sroa.0.0.insert.ext ; 3 uses
  invoke void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef %1, ptr noundef null, ptr nonnull %2, i64 %.sroa.9.sroa.0.0.insert.insert69, i32 noundef -1)
          to label %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.e, !noalias !79

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.merged, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 120) #25, !noalias !79
  br label %common.resume

_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed11TiffRootIFDE, i64 16), ptr %i.i, align 8, !tbaa !18, !noalias !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %2, ptr %i.k, align 8, !noalias !79
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 %.sroa.9.sroa.0.0.insert.insert69, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !79
  store ptr %i.i, ptr %0, align 8, !tbaa !20, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !83
  %.not.i.i.i.i.i.i26 = icmp samesign ult i32 %3, 8
  br i1 %.not.i.i.i.i.i.i26, label %bb.f, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.f:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i.i.i.i27 = load i32, ptr %i.q, align 1 ; 2 uses
  %i.r = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i27)
  %spec.select.i.i.i.i.i.i28 = select i1 %i.f, i32 %.0.copyload.i.i.i.i.i.i27, i32 %i.r ; 2 uses
  %.not97 = icmp eq i32 %spec.select.i.i.i.i.i.i28, 0
  br i1 %.not97, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38
  %storemerge98 = phi i32 [ %i.am, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38 ], [ %spec.select.i.i.i.i.i.i28, %.lr.ph.preheader ]
  %i.u = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc32 unwind label %bb.i   ; 3 uses

.noexc32:                                         ; preds = %.lr.ph
  invoke void @_ZN8rawspeed7TiffIFDC1EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull %i.i, ptr noundef nonnull %4, ptr nonnull %2, i64 %.sroa.9.sroa.0.0.insert.insert69, i32 noundef %storemerge98)
          to label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit unwind label %bb.h, !noalias !84

bb.h:                                             ; preds = %.noexc32
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19TiffParserExceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 104) #25, !noalias !84
  br label %.body

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc32
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %5, align 8, !tbaa !32
  invoke void @_ZN8rawspeed7TiffIFD3addESt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 %5)
          to label %.critedge unwind label %bb.l

bb.i:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19TiffParserExceptionE
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.z = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed19TiffParserExceptionE) #24
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

bb.j:                                             ; preds = %.body
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.ab) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit
  %i.ae = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i33 = icmp eq ptr %i.ae, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34: ; preds = %.critedge
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(104) %i.ae) #24, !call_target !37, !inline_history !76
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34, %.critedge
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41, label %.lr.ph, !llvm.loop !77

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i42 = icmp eq ptr %i.ao, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43: ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(104) %i.ao) #24, !call_target !37, !inline_history !76
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38, %_ZN8rawspeed10ByteStream6getU32Ev.exit, %bb.j
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.as)
          to label %_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #23
  unreachable

_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev.exit:  ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43, %bb.l, %bb.k, %.body, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.g ], [ %eh.lpad-body, %.body ], [ %i.ad, %bb.k ], [ %i.an, %bb.l ], [ %i.an, %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43 ]
  call void @_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(104) %i.k) #24, !call_target !37, !inline_history !96
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19TiffParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN8rawspeed7TiffIFD3addESt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef align 8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3setIN8rawspeed6BufferESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZNSt3setIN8rawspeed6BufferESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10DngDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10DngDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26, !noalias !99 ; 3 uses
  invoke void @_ZN8rawspeed10DngDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10DngDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !99

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #25, !noalias !99
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10DngDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10MosDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10MosDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #26, !noalias !102 ; 3 uses
  invoke void @_ZN8rawspeed10MosDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10MosDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !102

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #25, !noalias !102
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10MosDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10IiqDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10IiqDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26, !noalias !105 ; 6 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10IiqDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !105

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #25, !noalias !105
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10IiqDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !105
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !105
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !105
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10IiqDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !105
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.e, align 8, !tbaa !107, !noalias !105
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10Cr2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10Cr2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26, !noalias !110 ; 6 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10Cr2DecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !110

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #25, !noalias !110
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10Cr2DecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !110
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !110
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !110
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10Cr2DecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 0, ptr %i.e, align 4, !tbaa !112, !noalias !110
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10NefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10NefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !115 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10NefDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !115

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !115
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10NefDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !115
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !115
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !115
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10NefDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !115
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10OrfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10OrfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !118 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10OrfDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !118

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !118
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10OrfDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !118
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !118
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !118
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10OrfDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !118
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10ArwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10ArwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26, !noalias !121 ; 7 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10ArwDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !121

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #25, !noalias !121
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10ArwDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !121
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !121
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !121
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10ArwDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.e, align 8, !tbaa !123, !noalias !121
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 0, ptr %i.f, align 4, !tbaa !124, !noalias !121
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10PefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10PefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !127 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10PefDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !127

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !127
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10PefDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !127
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !127
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10PefDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !127
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10Rw2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10Rw2DecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !130 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10Rw2DecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !130

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !130
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10Rw2DecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !130
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !130
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !130
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10Rw2DecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !130
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10SrwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10SrwDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !133 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10SrwDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !133

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !133
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10SrwDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !133
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !133
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !133
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10SrwDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !133
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10MefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10MefDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26, !noalias !136 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10MefDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !136

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #25, !noalias !136
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10MefDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !136
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !136
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN8rawspeed10MefDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !136
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10DcrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10DcrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26, !noalias !139 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10DcrDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !139

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #25, !noalias !139
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10DcrDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !139
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !139
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !139
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN8rawspeed10DcrDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !139
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZN8rawspeed10DcsDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10DcsDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26, !noalias !142 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10DcsDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !142

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #25, !noalias !142
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10DcsDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !142
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !142
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN8rawspeed10DcsDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !142
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10KdcDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10KdcDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !145 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10KdcDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !145

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !145
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10KdcDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !145
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !145
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !145
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10KdcDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !145
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10ErfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10ErfDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26, !noalias !148 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10ErfDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !148

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #25, !noalias !148
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10ErfDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !148
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !148
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !148
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN8rawspeed10ErfDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !148
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10StiDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10StiDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !151 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10StiDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !151

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !151
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10StiDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !151
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !151
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !151
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed10StiDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !151
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed14ThreefrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_14ThreefrDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !154 ; 5 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed14ThreefrDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !154

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25, !noalias !154
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed14ThreefrDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !154
  store i64 %i.d, ptr %i.c, align 8, !tbaa !20, !noalias !154
  store ptr null, ptr %1, align 8, !tbaa !20, !noalias !154
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed14ThreefrDecoderE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !154
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed9RawParserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParserD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !18
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !18
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #28
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  tail call void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19TiffParserExceptionE, i64 16), ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  tail call void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #24, !call_target !165, !inline_history !157
  br label %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

declare void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr, i64, i32 noundef) unnamed_addr #6

declare void @_ZN8rawspeed7TiffIFDC1EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr, i64, i32 noundef) unnamed_addr #6

declare void @_ZN8rawspeed10DngDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), ptr, i32) unnamed_addr #6

declare void @_ZN8rawspeed10MosDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr, i32) unnamed_addr #6

declare void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(96), ptr, i32) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold noreturn }
attributes #14 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TiffIFD", scope: !38, file: !33, line: 49, size: 832, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed7TiffIFDE")
!1 = distinct !{!1, !39}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSN8rawspeed11TiffRootIFDE", !13, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!22 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!24 = !{!"long", !9, i64 0}
!25 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !24, i64 32}
!26 = !{!25, !22, i64 8}
!27 = !{!"p1 _ZTSSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EE", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 8}
!31 = !{!"p1 _ZTSN8rawspeed7TiffIFDE", !13, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !DIFile(filename: "src/external/rawspeed/src/librawspeed/parsers/../tiff/TiffIFD.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "a7388ba97791965ca5d357ccba7ad95d")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!35 = !{null, !34}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "~TiffIFD", linkageName: "_ZN8rawspeed7TiffIFDD4Ev", scope: !0, file: !33, line: 105, type: !36, scopeLine: 105, containingType: !0, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DINamespace(name: "rawspeed", scope: null)
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!28, !27, i64 16}
!41 = !{!"p1 _ZTSN8rawspeed10RawDecoderE", !13, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed10RawDecoderELb0EE", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !13, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!46 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0, !46, i64 8}
!48 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !47, i64 0}
!49 = !{!"_ZTSN8rawspeed8RawImageE", !48, i64 0}
!50 = !{!"bool", !9, i64 0}
!51 = !{!"_ZTSN8rawspeed10RawDecoderUt_E", !50, i64 0}
!52 = !{!"_ZTSN8rawspeed6BufferE", !14, i64 0, !10, i64 8}
!53 = !{!"_ZTSSt4lessIvE"}
!54 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !53, i64 0}
!55 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !54, i64 0, !25, i64 8}
!56 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE", !55, i64 0}
!57 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE", !56, i64 0}
!58 = !{!"_ZTSN8rawspeed5HintsE", !57, i64 0}
!59 = !{!"_ZTSN8rawspeed10RawDecoderE", !49, i64 8, !50, i64 24, !50, i64 25, !50, i64 26, !50, i64 27, !50, i64 28, !50, i64 29, !51, i64 30, !50, i64 31, !52, i64 32, !58, i64 48}
!60 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TiffRootIFDELb0EE", !19, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !60, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TiffRootIFDESt14default_deleteIS1_ELb1ELb1EE", !63, i64 0}
!65 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !64, i64 0}
!66 = !{!"_ZTSN8rawspeed19AbstractTiffDecoderE", !59, i64 0, !65, i64 96}
!67 = !{!23, !22, i64 24}
!68 = !{!23, !22, i64 16}
!69 = distinct !{ptr @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev, null, null, null, null, null, null, null, null, null}
!70 = !{!"_ZTSSt4pairIPFbPKN8rawspeed11TiffRootIFDENS0_6BufferEEPFSt10unique_ptrINS0_10RawDecoderESt14default_deleteIS8_EEOS7_IS1_S9_IS1_EES4_EE", !13, i64 0, !13, i64 8}
!71 = !{!70, !13, i64 8}
!72 = distinct !{!72, !"_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!73 = distinct !{!73, !72, !"_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!74 = distinct !{!74, !"_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPNS0_11TiffRootIFDEPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!75 = distinct !{!75, !74, !"_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPNS0_11TiffRootIFDEPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!76 = distinct !{null, null}
!77 = distinct !{!77, !39}
!78 = !{!9, !9, i64 0}
!79 = !{!73}
!80 = !{!25, !21, i64 0}
!81 = !{!25, !22, i64 16}
!82 = !{!25, !22, i64 24}
!83 = !{!25, !24, i64 32}
!84 = !{!75}
!85 = !{!27, !27, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !28, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE", !87, i64 0}
!89 = !{!"_ZTSSt4lessIN8rawspeed7TiffTagEE"}
!90 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN8rawspeed7TiffTagEEE", !89, i64 0}
!91 = !{!"_ZTSNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !90, i64 0, !25, i64 8}
!92 = !{!"_ZTSSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE", !91, i64 0}
!93 = !{!"_ZTSSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE", !92, i64 0}
!94 = !{!"_ZTSN8rawspeed7TiffIFDE", !10, i64 8, !31, i64 16, !88, i64 24, !10, i64 48, !10, i64 52, !93, i64 56}
!95 = !{!94, !10, i64 8}
!96 = distinct !{null, null, null, null, null, null, null, null, null}
!97 = distinct !{!97, !"_ZSt11make_uniqueIN8rawspeed10DngDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!98 = distinct !{!98, !97, !"_ZSt11make_uniqueIN8rawspeed10DngDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!99 = !{!98}
!100 = distinct !{!100, !"_ZSt11make_uniqueIN8rawspeed10MosDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!101 = distinct !{!101, !100, !"_ZSt11make_uniqueIN8rawspeed10MosDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!102 = !{!101}
!103 = distinct !{!103, !"_ZSt11make_uniqueIN8rawspeed10IiqDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!104 = distinct !{!104, !103, !"_ZSt11make_uniqueIN8rawspeed10IiqDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!105 = !{!104}
!106 = !{!"_ZTSN8rawspeed10IiqDecoderE", !66, i64 0, !10, i64 104}
!107 = !{!106, !10, i64 104}
!108 = distinct !{!108, !"_ZSt11make_uniqueIN8rawspeed10Cr2DecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!109 = distinct !{!109, !108, !"_ZSt11make_uniqueIN8rawspeed10Cr2DecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!110 = !{!109}
!111 = !{!"_ZTSN8rawspeed10Cr2DecoderE", !66, i64 0, !10, i64 104, !10, i64 108}
!112 = !{!111, !10, i64 108}
!113 = distinct !{!113, !"_ZSt11make_uniqueIN8rawspeed10NefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!114 = distinct !{!114, !113, !"_ZSt11make_uniqueIN8rawspeed10NefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!115 = !{!114}
!116 = distinct !{!116, !"_ZSt11make_uniqueIN8rawspeed10OrfDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!117 = distinct !{!117, !116, !"_ZSt11make_uniqueIN8rawspeed10OrfDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!118 = !{!117}
!119 = distinct !{!119, !"_ZSt11make_uniqueIN8rawspeed10ArwDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!120 = distinct !{!120, !119, !"_ZSt11make_uniqueIN8rawspeed10ArwDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!121 = !{!120}
!122 = !{!"_ZTSN8rawspeed10ArwDecoderE", !66, i64 0, !10, i64 104, !10, i64 108}
!123 = !{!122, !10, i64 104}
!124 = !{!122, !10, i64 108}
!125 = distinct !{!125, !"_ZSt11make_uniqueIN8rawspeed10PefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!126 = distinct !{!126, !125, !"_ZSt11make_uniqueIN8rawspeed10PefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!127 = !{!126}
!128 = distinct !{!128, !"_ZSt11make_uniqueIN8rawspeed10Rw2DecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!129 = distinct !{!129, !128, !"_ZSt11make_uniqueIN8rawspeed10Rw2DecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!130 = !{!129}
!131 = distinct !{!131, !"_ZSt11make_uniqueIN8rawspeed10SrwDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!132 = distinct !{!132, !131, !"_ZSt11make_uniqueIN8rawspeed10SrwDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!133 = !{!132}
!134 = distinct !{!134, !"_ZSt11make_uniqueIN8rawspeed10MefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!135 = distinct !{!135, !134, !"_ZSt11make_uniqueIN8rawspeed10MefDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, !"_ZSt11make_uniqueIN8rawspeed10DcrDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!138 = distinct !{!138, !137, !"_ZSt11make_uniqueIN8rawspeed10DcrDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, !"_ZSt11make_uniqueIN8rawspeed10DcsDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!141 = distinct !{!141, !140, !"_ZSt11make_uniqueIN8rawspeed10DcsDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!142 = !{!141}
!143 = distinct !{!143, !"_ZSt11make_uniqueIN8rawspeed10KdcDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!144 = distinct !{!144, !143, !"_ZSt11make_uniqueIN8rawspeed10KdcDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!145 = !{!144}
!146 = distinct !{!146, !"_ZSt11make_uniqueIN8rawspeed10ErfDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!147 = distinct !{!147, !146, !"_ZSt11make_uniqueIN8rawspeed10ErfDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!148 = !{!147}
!149 = distinct !{!149, !"_ZSt11make_uniqueIN8rawspeed10StiDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!150 = distinct !{!150, !149, !"_ZSt11make_uniqueIN8rawspeed10StiDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, !"_ZSt11make_uniqueIN8rawspeed14ThreefrDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!153 = distinct !{!153, !152, !"_ZSt11make_uniqueIN8rawspeed14ThreefrDecoderEJSt10unique_ptrINS0_11TiffRootIFDESt14default_deleteIS3_EERNS0_6BufferEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!154 = !{!153}
!155 = distinct !{!155, !39}
!156 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TiffEntry", scope: !38, file: !161, line: 62, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed9TiffEntryE")
!157 = distinct !{null, null, null, null, null, null}
!158 = distinct !{!158, !39}
!159 = !{!"p1 _ZTSN8rawspeed9TiffEntryE", !13, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !DIFile(filename: "src/external/rawspeed/src/librawspeed/parsers/../tiff/TiffEntry.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "14c6823b3ef27f2fa051ad1a8647a84b")
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!163 = !{null, !162}
!164 = !DISubroutineType(types: !163)
!165 = !DISubprogram(name: "~TiffEntry", linkageName: "_ZN8rawspeed9TiffEntryD4Ev", scope: !156, file: !161, line: 90, type: !164, scopeLine: 90, containingType: !156, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
end_hunk_0
