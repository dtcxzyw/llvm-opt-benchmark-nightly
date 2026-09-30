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
  %i.g = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 4 uses
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 8
  %.not.i = icmp samesign ugt i64 %i.i, %i.e
  br i1 %.not.i, label %bb.e, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.e:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.j = add nuw nsw i32 %i.g, 8                  ; 20 uses
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
  %.sroa.51.0307.ph = phi i32 [ %i.ag, %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread ], [ 8, %.lr.ph ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %.sroa.51.0307 = phi i32 [ %i.ag, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ %.sroa.51.0307.ph, %.outer ] ; 15 uses
  %i.t = zext i32 %.sroa.51.0307 to i64           ; 2 uses
  %2 = add nuw nsw i64 %i.t, 4
  %.not.i.i.i.i.i.i60 = icmp samesign ugt i64 %2, %i.m
  br i1 %.not.i.i.i.i.i.i60, label %bb.g, label %_ZN8rawspeed10ByteStream6getU32Ev.exit63

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit63:         ; preds = %bb.f
  %i.u = add nuw nsw i32 %.sroa.51.0307, 4        ; 2 uses
  %i.v = icmp samesign ule i32 %i.u, %i.j
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.t
  %.0.copyload.i.i.i.i.i.i61 = load i32, ptr %i.w, align 1
  %i.x = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i61)
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp ult i64 %invariant.op, %i.y
  br i1 %.not.i.i.i.i.i.i64, label %bb.h, label %_ZN8rawspeed10ByteStream6getU32Ev.exit67

bb.h:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit63
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit67:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit63
  %i.z = add nuw nsw i32 %.sroa.51.0307, 8        ; 2 uses
  %i.aa = icmp ule i32 %.sroa.51.0307, %i.g
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.y
  %.0.copyload.i.i.i.i.i.i65 = load i32, ptr %i.ab, align 1 ; 2 uses
  %i.ac = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i65) ; 4 uses
  %i.ad = zext i32 %i.z to i64                    ; 4 uses
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nuw nsw i64 %i.ae, %i.ad
  %.not.i68 = icmp samesign ugt i64 %i.af, %i.m
  br i1 %.not.i68, label %bb.i, label %_ZNK8rawspeed10ByteStream5checkEj.exit69

bb.i:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit67
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZNK8rawspeed10ByteStream5checkEj.exit69:         ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit67
  %i.ag = add nuw nsw i32 %i.ac, %i.z             ; 5 uses
  %i.ah = icmp samesign ule i32 %i.ag, %i.j
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp sgt i32 %i.ac, -1
  call void @llvm.assume(i1 %i.ai)
  %.not44 = icmp eq i32 %.0.copyload.i.i.i.i.i.i65, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK8rawspeed10ByteStream5checkEj.exit69
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.k:                                             ; preds = %_ZNK8rawspeed10ByteStream5checkEj.exit69
  switch i32 %i.x, label %_ZN8rawspeed10ByteStream11setPositionEj.exit [
    i32 5263940, label %bb.l
    i32 5526615, label %_ZN8rawspeed10ByteStream9getBufferEj.exit
    i32 5718599, label %bb.aq
  ]

bb.l:                                             ; preds = %bb.k
  %3 = add nuw nsw i64 %i.ad, 8
  %.not.i.i70 = icmp samesign ugt i64 %3, %i.m
  br i1 %.not.i.i70, label %bb.m, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit71

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit71:      ; preds = %bb.l
  %i.aj = add nuw nsw i32 %.sroa.51.0307, 16      ; 2 uses
  %i.ak = icmp samesign ule i32 %i.aj, %i.j
  call void @llvm.assume(i1 %i.ak)
  %i.al = zext nneg i32 %i.aj to i64              ; 2 uses
  %.not.i.i.i.i.i.i72 = icmp ult i64 %invariant.op305, %i.al
  br i1 %.not.i.i.i.i.i.i72, label %bb.n, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.n:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit71
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit71
  %i.am = add nuw nsw i32 %.sroa.51.0307, 18      ; 2 uses
  %i.an = icmp samesign ule i32 %i.am, %i.j
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.al
  %.0.copyload.i.i.i.i.i.i73 = load i16, ptr %i.ao, align 1 ; 2 uses
  %i.ap = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i73) ; 2 uses
  %i.aq = zext i16 %i.ap to i32                   ; 3 uses
  store i32 %i.aq, ptr %i.p, align 4, !tbaa !98
  %i.ar = zext nneg i32 %i.am to i64              ; 2 uses
  %4 = add nuw nsw i64 %i.ar, 2
  %.not.i.i.i.i.i.i75 = icmp samesign ugt i64 %4, %i.m
  br i1 %.not.i.i.i.i.i.i75, label %bb.o, label %_ZN8rawspeed10ByteStream6getU16Ev.exit78

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit78:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.as = add nuw nsw i32 %.sroa.51.0307, 20
  %i.at = icmp samesign ule i32 %i.as, %i.j
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.ar
  %.0.copyload.i.i.i.i.i.i76 = load i16, ptr %i.au, align 1 ; 2 uses
  %i.av = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i76) ; 2 uses
  %i.aw = zext i16 %i.av to i32                   ; 3 uses
  store i32 %i.aw, ptr %i.q, align 8, !tbaa !99
  %.not46 = icmp eq i16 %.0.copyload.i.i.i.i.i.i76, 0
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit78
  %.not47 = icmp eq i16 %.0.copyload.i.i.i.i.i.i73, 0
  %i.ax = icmp ugt i16 %i.av, 3280
  %or.cond53 = or i1 %.not47, %i.ax
  %i.ay = icmp ugt i16 %i.ap, 2456
  %or.cond54 = or i1 %i.ay, %or.cond53
  br i1 %or.cond54, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN8rawspeed10ByteStream6getU16Ev.exit78
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv, i32 noundef %i.aw, i32 noundef %i.aq) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %narrow = add nuw i32 %.sroa.51.0307, 22
  %.not.i.i79 = icmp ugt i32 %narrow, %i.j
  br i1 %.not.i.i79, label %bb.s, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit80

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit80:      ; preds = %bb.r
  %narrow220 = add nuw i32 %.sroa.51.0307, 24     ; 3 uses
  %.not.i.i81 = icmp ugt i32 %narrow220, %i.j
  br i1 %.not.i.i81, label %bb.t, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit82

bb.t:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit80
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit82:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit80
  %.not.i.not.i.i.i.i.i = icmp ult i32 %narrow220, %i.j
  br i1 %.not.i.not.i.i.i.i.i, label %_ZN8rawspeed10ByteStream7getByteEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit82
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit:          ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit82
  %i.az = zext i32 %narrow220 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.az
  %.0.copyload.i.i.i.i.i.i83 = load i8, ptr %i.ba, align 1 ; 3 uses
  %i.bb = add nuw i32 %.sroa.51.0307, 25          ; 2 uses
  %i.bc = zext i8 %.0.copyload.i.i.i.i.i.i83 to i32 ; 2 uses
  store i32 %i.bc, ptr %i.r, align 8, !tbaa !54
  switch i8 %.0.copyload.i.i.i.i.i.i83, label %bb.v [
    i8 12, label %bb.w
    i8 16, label %bb.w
  ]

bb.v:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.w:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit, %_ZN8rawspeed10ByteStream7getByteEv.exit
  %i.bd = mul nuw nsw i32 %i.aw, %i.aq
  %i.be = mul nuw nsw i32 %i.bd, %i.bc
  %i.bf = and i32 %i.be, 7
  %.not50 = icmp eq i32 %i.bf, 0
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not.i.not.i.i.i.i.i84 = icmp ult i32 %i.bb, %i.j
  br i1 %.not.i.not.i.i.i.i.i84, label %_ZN8rawspeed10ByteStream7getByteEv.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit86:        ; preds = %bb.y
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.bg
  %.0.copyload.i.i.i.i.i.i85 = load i8, ptr %i.bh, align 1
  %i.bi = add nuw i32 %.sroa.51.0307, 26          ; 2 uses
  %.not51 = icmp eq i8 %.0.copyload.i.i.i.i.i.i85, 12
  br i1 %.not51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit86
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ab:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit86
  %.not.i.not.i.i.i.i.i87 = icmp ult i32 %i.bi, %i.j
  br i1 %.not.i.not.i.i.i.i.i87, label %_ZN8rawspeed10ByteStream7getByteEv.exit89, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit89:        ; preds = %bb.ab
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i88 = load i8, ptr %i.bk, align 1 ; 2 uses
  switch i8 %.0.copyload.i.i.i.i.i.i88, label %bb.ad [
    i8 89, label %bb.ae
    i8 82, label %bb.ae
  ]

bb.ad:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit89
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ae:                                            ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit89, %_ZN8rawspeed10ByteStream7getByteEv.exit89
  %i.bl = icmp eq i8 %.0.copyload.i.i.i.i.i.i88, 89 ; 2 uses
  %i.bm = zext i1 %i.bl to i32
  store i32 %i.bm, ptr %i.s, align 4, !tbaa !55
  %i.bn = icmp ne i8 %.0.copyload.i.i.i.i.i.i83, 12
  %.not52 = xor i1 %i.bn, %i.bl
  br i1 %.not52, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %narrow221 = add nuw i32 %.sroa.51.0307, 28
  %.not.i.i90 = icmp ugt i32 %narrow221, %i.j
  br i1 %.not.i.i90, label %bb.ah, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit91

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit91:      ; preds = %bb.ag
  %narrow222 = add nuw i32 %.sroa.51.0307, 30
  %.not.i.i92 = icmp ugt i32 %narrow222, %i.j
  br i1 %.not.i.i92, label %bb.ai, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit93

bb.ai:                                            ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit91
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit93:      ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit91
  %narrow223 = add nuw i32 %.sroa.51.0307, 32
  %.not.i.i94 = icmp ugt i32 %narrow223, %i.j
  br i1 %.not.i.i94, label %bb.aj, label %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread

bb.aj:                                            ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9getBufferEj.exit:        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.ad
  call void @_ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef null, ptr nonnull %i.bo, i32 %i.ac)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !59
  store ptr null, ptr %1, align 8, !tbaa !59
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !59  ; 8 uses
  store ptr %i.bp, ptr %i.o, align 8, !tbaa !59
  %.not.i.i106 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i106, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.bq, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef %i.bt)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i: ; preds = %bb.ak
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.bx, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(104) %i.ca) #21, !call_target !71, !inline_history !96
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i
  %i.cf = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.bx, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !74
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #23
  br label %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 120) #23
  %.pr = load ptr, ptr %1, align 8, !tbaa !59     ; 8 uses
  %.not.i96 = icmp eq ptr %.pr, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %.pr, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.pr, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef %i.cn)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i: ; preds = %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %.pr, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !63 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.cr, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.cu = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(104) %i.cu) #21, !call_target !71, !inline_history !2
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.cy, %i.ct
  br i1 %.not.i.i.i.i.i.i97, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i
  %i.cz = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.cr, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !74
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #23
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i: ; preds = %bb.ap, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 120) #23
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN8rawspeed10ByteStream9getBufferEj.exit, %_ZNSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.aq:                                            ; preds = %bb.k
  %5 = add nuw nsw i64 %i.ad, 4
  %.not.i.i98 = icmp samesign ugt i64 %5, %i.m
  br i1 %.not.i.i98, label %bb.ar, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit99

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit99:      ; preds = %bb.aq
  %i.df = add nuw nsw i32 %.sroa.51.0307, 12      ; 2 uses
  %i.dg = icmp samesign ule i32 %i.df, %i.j
  call void @llvm.assume(i1 %i.dg)
  %i.dh = zext nneg i32 %i.df to i64              ; 5 uses
  %6 = add nuw nsw i64 %i.dh, 2                   ; 2 uses
  %.not.i.i.i.i.i.i100 = icmp samesign ugt i64 %6, %i.m
  br i1 %.not.i.i.i.i.i.i100, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103

bb.as:                                            ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1, %_ZN8rawspeed10ByteStream6getU16Ev.exit103, %_ZN8rawspeed10ByteStream9skipBytesEj.exit99
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit103:        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit99
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.dh
  %.0.copyload.i.i.i.i.i.i101 = load i16, ptr %i.di, align 1
  %i.dj = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i101)
  %i.dk = uitofp i16 %i.dj to float
  %7 = add nuw nsw i64 %i.dh, 4
  %.not.i.i.i.i.i.i100.1 = icmp samesign ugt i64 %7, %i.m
  br i1 %.not.i.i.i.i.i.i100.1, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1

_ZN8rawspeed10ByteStream6getU16Ev.exit103.1:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103
  %i.dl = add nuw nsw i64 %i.dh, 6                ; 2 uses
  %.not.i.i.i.i.i.i100.2 = icmp samesign ugt i64 %i.dl, %i.m
  %8 = add nuw nsw i64 %i.dh, 8
  %.not.i.i.i.i.i.i100.3 = icmp samesign ugt i64 %8, %i.m
  %or.cond = select i1 %.not.i.i.i.i.i.i100.2, i1 true, i1 %.not.i.i.i.i.i.i100.3
  br i1 %or.cond, label %bb.as, label %_ZN8rawspeed10ByteStream6getU16Ev.exit103.3

_ZN8rawspeed10ByteStream6getU16Ev.exit103.3:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit103.1
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %6
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.dl
  %.0.copyload.i.i.i.i.i.i101.3 = load i16, ptr %i.dm, align 1
  %10 = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i101.3)
  %11 = uitofp i16 %10 to float
  %i.dn = load <2 x i16>, ptr %9, align 1
  %i.do = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.dn)
  %i.dp = uitofp <2 x i16> %i.do to <2 x float>
  store float %i.dk, ptr %i.n, align 8
  store <2 x float> %i.dp, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  store float %11, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4
  store i8 1, ptr %.sroa.4.0..sroa_idx107, align 8
  br label %_ZN8rawspeed10ByteStream11setPositionEj.exit

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit103.3, %bb.k
  %.not43 = icmp eq i32 %i.j, %i.ag
  br i1 %.not43, label %._crit_edge, label %bb.f, !llvm.loop !97

_ZN8rawspeed10ByteStream11setPositionEj.exit.thread: ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit93
  %.not43393 = icmp eq i32 %i.j, %i.ag
  br i1 %.not43393, label %._crit_edge.thread, label %.outer, !llvm.loop !97

._crit_edge:                                      ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  br i1 %.0308.ph, label %._crit_edge.thread, label %.critedge

.critedge:                                        ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit, %._crit_edge
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10MrwDecoder11parseHeaderEv) #15
  unreachable

._crit_edge.thread:                               ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit.thread, %._crit_edge
  %i.dq = load i32, ptr %i.p, align 4, !tbaa !98
  %i.dr = load i32, ptr %i.q, align 8, !tbaa !99
  %i.ds = mul i32 %i.dr, %i.dq
  %i.dt = load i32, ptr %i.r, align 8, !tbaa !54
  %i.du = mul i32 %i.ds, %i.dt
  %i.dv = lshr i32 %i.du, 3                       ; 3 uses
  %narrow391 = add nuw i32 %i.dv, %i.j
  %.not.i105 = icmp ugt i32 %narrow391, %.sroa.235.0.copyload
  br i1 %.not.i105, label %bb.at, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit

bb.at:                                            ; preds = %._crit_edge.thread
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEjj.exit:         ; preds = %._crit_edge.thread
  %i.dw = add nuw nsw i32 %i.dv, %i.j
  %i.dx = icmp samesign ule i32 %i.dw, %.sroa.235.0.copyload
  call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !57
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.dv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !58
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(104) %i.k) #21, !call_target !71, !inline_history !100
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #23
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10RawDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed10RawDecoderE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN8rawspeed5HintsD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN8rawspeed5HintsD2Ev.exit:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed5HintsD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !78
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !call_target !83, !inline_history !4
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21, !call_target !85, !inline_history !4
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #21
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZN8rawspeed5HintsD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN8rawspeed10MrwDecoder5isMRWENS_6BufferE(ptr nofree readonly captures(none) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp ult i32 %1, 4
  br i1 %.not.i, label %bb.b, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
end_hunk_0
