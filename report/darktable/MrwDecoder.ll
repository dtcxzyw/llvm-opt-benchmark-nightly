Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/MrwDecoder?download=true
inline.NumInlined: 386
inline.NumDeleted: 251
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.73" = type { [8192 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::RawImage" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.rawspeed::UncompressedDecompressor" = type { %"class.rawspeed::ByteStream", %"class.rawspeed::RawImage", %"class.rawspeed::iPoint2D", %"class.rawspeed::iPoint2D", i32, i32, i8, i32 }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%"class.rawspeed::iPoint2D" = type { i32, i32 }
%"class.rawspeed::iRectangle2D" = type { %"class.rawspeed::iPoint2D", %"class.rawspeed::iPoint2D" }
%"struct.rawspeed::TiffID" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev = comdat any

$_ZN8rawspeed10RawDecoderD2Ev = comdat any

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZN8rawspeed24UncompressedDecompressorD2Ev = comdat any

$_ZN8rawspeed6TiffIDD2Ev = comdat any

$_ZN8rawspeed10MrwDecoderD2Ev = comdat any

$_ZN8rawspeed10MrwDecoderD0Ev = comdat any

$_ZN8rawspeed10RawDecoder10getRootIFDEv = comdat any

$_ZNK8rawspeed10MrwDecoder17getDecoderVersionEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@_ZTVN8rawspeed10MrwDecoderE = hidden constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8rawspeed10MrwDecoderE, ptr @_ZN8rawspeed10MrwDecoderD2Ev, ptr @_ZN8rawspeed10MrwDecoderD0Ev, ptr @_ZN8rawspeed10RawDecoder10getRootIFDEv, ptr @_ZN8rawspeed10MrwDecoder17decodeRawInternalEv, ptr @_ZN8rawspeed10MrwDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE, ptr @_ZN8rawspeed10MrwDecoder20checkSupportInternalEPKNS_14CameraMetaDataE, ptr @_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i, ptr @_ZN8rawspeed10RawDecoder14getDefaultCropEv, ptr @_ZNK8rawspeed10MrwDecoder17getDecoderVersionEv] }, align 8
@.str = private unnamed_addr constant [69 x i8] c"%s, line 55: This isn't actually a MRW file, why are you calling me?\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv = private unnamed_addr constant [41 x i8] c"void rawspeed::MrwDecoder::parseHeader()\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 81: Found entry of zero length, MRW is corrupt.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s, line 94: Unexpected image dimensions found: (%u; %u)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s, line 102: Unknown data size\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"%s, line 105: Bad combination of image size and raw dimensions.\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s, line 108: Unexpected pixel size\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s, line 112: Unknown storage method\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"%s, line 116: Packed/BPP sanity check failed!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"%s, line 148: Did not find PRD tag. Image corrupt.\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s, line 184: Couldn't find make and model\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder20checkSupportInternalEPKNS_14CameraMetaDataE = private unnamed_addr constant [80 x i8] c"virtual void rawspeed::MrwDecoder::checkSupportInternal(const CameraMetaData *)\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s, line 195: Couldn't find make and model\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE = private unnamed_addr constant [82 x i8] c"virtual void rawspeed::MrwDecoder::decodeMetaDataInternal(const CameraMetaData *)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"swapped_wb\00", align 1
@_ZTIN8rawspeed10MrwDecoderE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10MrwDecoderE, ptr @_ZTIN8rawspeed10RawDecoderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10MrwDecoderE = hidden constant [24 x i8] c"N8rawspeed10MrwDecoderE\00", align 1
@_ZTIN8rawspeed10RawDecoderE = external constant ptr
@_ZTVN8rawspeed10RawDecoderE = external constant { [11 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.73" zeroinitializer, comdat, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.15 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@_ZTVN8rawspeed7TiffIFDE = external constant { [5 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.73" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed10MrwDecoderC1ENS_6BufferE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN8rawspeed10MrwDecoderC2ENS_6BufferE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10MrwDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, i32 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed10MrwDecoderE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.d, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  invoke void @_ZN8rawspeed10MrwDecoder11parseHeaderEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  tail call void @_ZN8rawspeed10RawDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #21
  resume { ptr, i32 } %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(96), ptr, i32) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10MrwDecoder11parseHeaderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.034.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !57 ; 14 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !58 ; 6 uses
  %.not.i.i = icmp ult i32 %.sroa.235.0.copyload, 4
  br i1 %.not.i.i, label %bb.b, label %_ZN8rawspeed10MrwDecoder5isMRWENS_6BufferE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10MrwDecoder5isMRWENS_6BufferE.exit:  ; preds = %bb.a
  %i.b = load i32, ptr %.sroa.034.0.copyload, align 1
  %i.c = icmp ne i32 %i.b, 1297239296
  %i.d = zext i1 %i.c to i32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed10MrwDecoder5isMRWENS_6BufferE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %_ZN8rawspeed10MrwDecoder5isMRWENS_6BufferE.exit
  %.not.i.i.i.i.i.i = icmp ult i32 %.sroa.235.0.copyload, 8
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.e = zext i32 %.sroa.235.0.copyload to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 4
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.f, align 1 ; 2 uses
  %i.g = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 10 uses
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 8
  %.not.i = icmp samesign ugt i64 %i.i, %i.e
  br i1 %.not.i, label %bb.e, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.e:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.j = add nuw nsw i32 %i.g, 8                  ; 15 uses
  %i.k = icmp samesign ule i32 %i.j, %.sroa.235.0.copyload
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i32 %i.g, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = zext nneg i32 %i.j to i64                ; 12 uses
  %invariant.op = add nsw i64 %i.m, -4
  %invariant.op305 = add nsw i64 %i.m, -2
  %.not43306 = icmp eq i32 %.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not43306, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.4.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %.outer

.outer:                                           ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread, %.lr.ph
  %.0308.ph = phi i1 [ true, %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread ], [ false, %.lr.ph ]
  %.sroa.51.0307.ph = phi i32 [ %i.ah, %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread ], [ 8, %.lr.ph ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %.sroa.51.0307 = phi i32 [ %i.ah, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ %.sroa.51.0307.ph, %.outer ] ; 14 uses
  %i.t = zext i32 %.sroa.51.0307 to i64           ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 4
  %.not.i.i.i.i.i.i60 = icmp samesign ugt i64 %i.u, %i.m
  br i1 %.not.i.i.i.i.i.i60, label %bb.g, label %_ZN8rawspeed10ByteStream6getU32Ev.exit63

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit63:         ; preds = %bb.f
  %i.v = add nuw nsw i32 %.sroa.51.0307, 4        ; 2 uses
  %i.w = icmp samesign ule i32 %i.v, %i.j
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.t
  %.0.copyload.i.i.i.i.i.i61 = load i32, ptr %i.x, align 1
  %i.y = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i61)
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp ult i64 %invariant.op, %i.z
  br i1 %.not.i.i.i.i.i.i64, label %bb.h, label %_ZN8rawspeed10ByteStream6getU32Ev.exit67

bb.h:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit63
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit67:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit63
  %i.aa = add nuw nsw i32 %.sroa.51.0307, 8       ; 2 uses
  %i.ab = icmp ule i32 %.sroa.51.0307, %i.g
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.z
  %.0.copyload.i.i.i.i.i.i65 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.ad = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i65) ; 4 uses
  %i.ae = zext i32 %i.aa to i64                   ; 4 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = add nuw nsw i64 %i.af, %i.ae
  %.not.i68 = icmp samesign ugt i64 %i.ag, %i.m
  br i1 %.not.i68, label %bb.i, label %_ZNK8rawspeed10ByteStream5checkEj.exit69

bb.i:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit67
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZNK8rawspeed10ByteStream5checkEj.exit69:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit67
  %i.ah = add nuw nsw i32 %i.ad, %i.aa            ; 5 uses
  %i.ai = icmp samesign ule i32 %i.ah, %i.j
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp sgt i32 %i.ad, -1
  call void @llvm.assume(i1 %i.aj)
  %.not44 = icmp eq i32 %.0.copyload.i.i.i.i.i.i65, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK8rawspeed10ByteStream5checkEj.exit69
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.k:                                             ; preds = %_ZNK8rawspeed10ByteStream5checkEj.exit69
  switch i32 %i.y, label %_ZN8rawspeed10ByteStream11setPositionEj.exit [
    i32 5263940, label %bb.l
    i32 5526615, label %_ZN8rawspeed10ByteStream9getBufferEj.exit
    i32 5718599, label %bb.aq
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw nsw i64 %i.ae, 8
  %.not.i.i70 = icmp samesign ugt i64 %i.ak, %i.m
  br i1 %.not.i.i70, label %bb.m, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit71

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit71:      ; preds = %bb.l
  %i.al = add nuw i32 %.sroa.51.0307, 16          ; 3 uses
  %i.am = icmp samesign ule i32 %i.al, %i.j
  call void @llvm.assume(i1 %i.am)
  %i.an = zext i32 %i.al to i64                   ; 2 uses
  %.not.i.i.i.i.i.i72 = icmp ult i64 %invariant.op305, %i.an
  br i1 %.not.i.i.i.i.i.i72, label %bb.n, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.n:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit71
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit71
  %i.ao = add nuw nsw i32 %.sroa.51.0307, 18      ; 2 uses
  %i.ap = icmp samesign ule i32 %i.ao, %i.j
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.an
  %.0.copyload.i.i.i.i.i.i73 = load i16, ptr %i.aq, align 1 ; 2 uses
  %i.ar = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i73) ; 2 uses
  %i.as = zext i16 %i.ar to i32                   ; 3 uses
  store i32 %i.as, ptr %i.p, align 4, !tbaa !98
  %i.at = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 2
  %.not.i.i.i.i.i.i75 = icmp samesign ugt i64 %i.au, %i.m
  br i1 %.not.i.i.i.i.i.i75, label %bb.o, label %_ZN8rawspeed10ByteStream6getU16Ev.exit78

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit78:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.av = add nuw i32 %.sroa.51.0307, 12
  %i.aw = icmp ule i32 %i.av, %i.g
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.at
  %.0.copyload.i.i.i.i.i.i76 = load i16, ptr %i.ax, align 1 ; 2 uses
  %i.ay = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i76) ; 2 uses
  %i.az = zext i16 %i.ay to i32                   ; 3 uses
  store i32 %i.az, ptr %i.q, align 8, !tbaa !99
  %.not46 = icmp eq i16 %.0.copyload.i.i.i.i.i.i76, 0
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit78
  %.not47 = icmp eq i16 %.0.copyload.i.i.i.i.i.i73, 0
  %i.ba = icmp ugt i16 %i.ay, 3280
  %or.cond53 = or i1 %.not47, %i.ba
  %i.bb = icmp ugt i16 %i.ar, 2456
  %or.cond54 = or i1 %i.bb, %or.cond53
  br i1 %or.cond54, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN8rawspeed10ByteStream6getU16Ev.exit78
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv, i32 noundef %i.az, i32 noundef %i.as) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %narrow.a = add nuw i32 %.sroa.51.0307, 14
  %.not.i.i79 = icmp ugt i32 %narrow.a, %i.g
  br i1 %.not.i.i79, label %bb.s, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit80

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit80:      ; preds = %bb.r
  %.not.i.i81 = icmp ugt i32 %i.al, %i.g
  br i1 %.not.i.i81, label %bb.t, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit82

bb.t:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit80
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit82:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit80
  %2 = add nuw i32 %.sroa.51.0307, 24             ; 4 uses
  %3 = icmp samesign ule i32 %2, %i.j
  call void @llvm.assume(i1 %3)
  %.not.i.not.i.i.i.i.i = icmp ult i32 %2, %i.j
  br i1 %.not.i.not.i.i.i.i.i, label %_ZN8rawspeed10ByteStream7getByteEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit82
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit:          ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit82
  %i.bc = zext i32 %2 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.bc
  %.0.copyload.i.i.i.i.i.i83 = load i8, ptr %i.bd, align 1 ; 3 uses
  %i.be = add nuw i32 %.sroa.51.0307, 25          ; 2 uses
  %i.bf = zext i8 %.0.copyload.i.i.i.i.i.i83 to i32 ; 2 uses
  store i32 %i.bf, ptr %i.r, align 8, !tbaa !54
  switch i8 %.0.copyload.i.i.i.i.i.i83, label %bb.v [
    i8 12, label %bb.w
    i8 16, label %bb.w
  ]

bb.v:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.w:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit, %_ZN8rawspeed10ByteStream7getByteEv.exit
  %i.bg = mul nuw nsw i32 %i.az, %i.as
  %i.bh = mul nuw nsw i32 %i.bg, %i.bf
  %i.bi = and i32 %i.bh, 7
  %.not50 = icmp eq i32 %i.bi, 0
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not.i.not.i.i.i.i.i84 = icmp ult i32 %i.be, %i.j
  br i1 %.not.i.not.i.i.i.i.i84, label %_ZN8rawspeed10ByteStream7getByteEv.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit86:        ; preds = %bb.y
  %i.bj = zext i32 %i.be to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i85 = load i8, ptr %i.bk, align 1
  %i.bl = add nuw i32 %.sroa.51.0307, 26          ; 2 uses
  %.not51 = icmp eq i8 %.0.copyload.i.i.i.i.i.i85, 12
  br i1 %.not51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit86
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ab:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit86
  %.not.i.not.i.i.i.i.i87 = icmp ult i32 %i.bl, %i.j
  br i1 %.not.i.not.i.i.i.i.i87, label %_ZN8rawspeed10ByteStream7getByteEv.exit89, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit89:        ; preds = %bb.ab
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.bm
  %.0.copyload.i.i.i.i.i.i88 = load i8, ptr %i.bn, align 1 ; 2 uses
  switch i8 %.0.copyload.i.i.i.i.i.i88, label %bb.ad [
    i8 89, label %bb.ae
    i8 82, label %bb.ae
  ]

bb.ad:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit89
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ae:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit89, %_ZN8rawspeed10ByteStream7getByteEv.exit89
  %i.bo = icmp eq i8 %.0.copyload.i.i.i.i.i.i88, 89 ; 2 uses
  %i.bp = zext i1 %i.bo to i32
  store i32 %i.bp, ptr %i.s, align 4, !tbaa !55
  %i.bq = icmp ne i8 %.0.copyload.i.i.i.i.i.i83, 12
  %.not52 = xor i1 %i.bq, %i.bo
  br i1 %.not52, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %narrow221 = add nuw i32 %.sroa.51.0307, 20
  %.not.i.i90 = icmp ugt i32 %narrow221, %i.g
  br i1 %.not.i.i90, label %bb.ah, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit91

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit91:      ; preds = %bb.ag
  %narrow222 = add nuw i32 %.sroa.51.0307, 22
  %.not.i.i92 = icmp ugt i32 %narrow222, %i.g
  br i1 %.not.i.i92, label %bb.ai, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit93

bb.ai:                                            ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit91
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit93:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit91
  %.not.i.i94 = icmp ugt i32 %2, %i.g
  br i1 %.not.i.i94, label %bb.aj, label %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread

bb.aj:                                            ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9getBufferEj.exit:        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.ae
  call void @_ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef null, ptr nonnull %i.br, i32 %i.ad)
  %i.bs = load ptr, ptr %1, align 8, !tbaa !59
  store ptr null, ptr %1, align 8, !tbaa !59
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !59  ; 8 uses
  store ptr %i.bs, ptr %i.o, align 8, !tbaa !59
  %.not.i.i106 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i106, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.bt, align 8, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef %i.bw)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i: ; preds = %bb.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !63 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ca, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.cd = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(104) %i.cd) #21, !call_target !71, !inline_history !96
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i
  %i.ci = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ca, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !74
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #23
  br label %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 120) #23
  %.pr = load ptr, ptr %1, align 8, !tbaa !59     ; 8 uses
  %.not.i96 = icmp eq ptr %.pr, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %.pr, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %.pr, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef %i.cq)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i: ; preds = %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %.pr, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !63 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.cu, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.cx = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(104) %i.cx) #21, !call_target !71, !inline_history !2
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.db, %i.cw
  br i1 %.not.i.i.i.i.i.i97, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i
  %i.dc = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.cu, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #23
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i: ; preds = %bb.ap, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 120) #23
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit, %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.aq:                                            ; preds = %bb.k
  %i.di = add nuw nsw i64 %i.ae, 4
  %.not.i.i98 = icmp samesign ugt i64 %i.di, %i.m
  br i1 %.not.i.i98, label %bb.ar, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit99

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit99:      ; preds = %bb.aq
  %i.dj = add nuw nsw i32 %.sroa.51.0307, 12      ; 2 uses
  %i.dk = icmp samesign ule i32 %i.dj, %i.j
  call void @llvm.assume(i1 %i.dk)
  %i.dl = zext nneg i32 %i.dj to i64              ; 5 uses
  %i.dm = add nuw nsw i64 %i.dl, 2                ; 2 uses
  %.not.i.i.i.i.i.i100 = icmp samesign ugt i64 %i.dm, %i.m
  br i1 %.not.i.i.i.i.i.i100, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103

bb.as:                                            ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1, %_ZN8rawspeed10ByteStream6getU16Ev.exit103, %_ZN8rawspeed10ByteStream9skipBytesEj.exit99
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit103:        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit99
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.dl
  %.0.copyload.i.i.i.i.i.i101 = load i16, ptr %i.dn, align 1
  %i.do = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i101)
  %i.dp = uitofp i16 %i.do to float
  %i.dq = add nuw nsw i64 %i.dl, 4
  %.not.i.i.i.i.i.i100.1 = icmp samesign ugt i64 %i.dq, %i.m
  br i1 %.not.i.i.i.i.i.i100.1, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1

_ZN8rawspeed10ByteStream6getU16Ev.exit103.1:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103
  %i.dr = add nuw nsw i64 %i.dl, 6                ; 2 uses
  %.not.i.i.i.i.i.i100.2 = icmp samesign ugt i64 %i.dr, %i.m
  %i.ds = add nuw nsw i64 %i.dl, 8
  %.not.i.i.i.i.i.i100.3 = icmp samesign ugt i64 %i.ds, %i.m
  %or.cond = select i1 %.not.i.i.i.i.i.i100.2, i1 true, i1 %.not.i.i.i.i.i.i100.3
  br i1 %or.cond, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103.3

_ZN8rawspeed10ByteStream6getU16Ev.exit103.3:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.dr
  %.0.copyload.i.i.i.i.i.i101.3 = load i16, ptr %i.du, align 1
  %i.dv = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i101.3)
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = load <2 x i16>, ptr %i.dt, align 1
  %i.dy = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.dx)
  %i.dz = uitofp <2 x i16> %i.dy to <2 x float>
  store float %i.dp, ptr %i.n, align 8
  store <2 x float> %i.dz, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  store float %i.dw, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4
end_hunk_0
