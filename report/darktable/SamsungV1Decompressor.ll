Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV1Decompressor?download=true
inline.NumInlined: 234
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.64" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.std::array.63" = type { [2 x i32] }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed27AbstractSamsungDecompressorD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [52 x i8] c"%s, line 50: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi = private unnamed_addr constant [90 x i8] c"rawspeed::SamsungV1Decompressor::SamsungV1Decompressor(const RawImage &, ByteStream, int)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s, line 53: Unexpected bit per pixel (%d)\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s, line 60: Unexpected image dimensions found: (%u; %u)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s, line 136: decoded value out of bounds\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV1Decompressor10decompressEv = private unnamed_addr constant [57 x i8] c"void rawspeed::SamsungV1Decompressor::decompress() const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.64" zeroinitializer, comdat, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB]\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB>::getInput() [Tag = rawspeed::BitStreamerMSB]\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.64" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed21SamsungV1DecompressorC1ERKNS_8RawImageENS_10ByteStreamEi = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 553
  %i.n = load i8, ptr %i.m, align 1, !tbaa !91
  %.not22 = icmp eq i8 %i.n, 0
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92
  %.not23 = icmp eq i32 %i.p, 2
  br i1 %.not23, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi) #13
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  %.not24 = icmp eq i32 %3, 12
  br i1 %.not24, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi, i32 noundef %3) #13
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !93   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !94   ; 4 uses
  %i.v = icmp ne i32 %i.s, 0
  %i.w = icmp ne i32 %i.u, 0
  %or.cond.not32 = select i1 %i.v, i1 %i.w, i1 false
  %i.x = and i32 %i.s, 31
  %.not25 = icmp eq i32 %i.x, 0
  %or.cond27 = and i1 %.not25, %or.cond.not32
  br i1 %or.cond27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = trunc i32 %i.u to i1
  %i.z = icmp ugt i32 %i.s, 5664
  %or.cond3 = or i1 %i.z, %i.y
  %i.aa = icmp ugt i32 %i.u, 3714
  %or.cond5 = or i1 %i.aa, %or.cond3
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi, i32 noundef %i.s, i32 noundef %i.u) #13
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  ret void

bb.s:                                             ; preds = %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ab, %bb.q ]
  tail call void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !97
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !100, !inline_history !107
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !108, !inline_history !107
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !109

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV1Decompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
iter.check:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %1 = alloca %"struct.std::array.63", align 8    ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #19 ; 164 uses
  store i16 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i16, ptr %i.a, align 1
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store <16 x i16> %broadcast.splat, ptr %i.b, align 1
  store <16 x i16> %broadcast.splat, ptr %i.d, align 1
  store <16 x i16> %broadcast.splat, ptr %i.e, align 1
  store <16 x i16> %broadcast.splat, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  %i.h = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.1 = insertelement <16 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat.1 = shufflevector <16 x i16> %broadcast.splatinsert.1, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store <16 x i16> %broadcast.splat.1, ptr %i.g, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.i, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.j, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 258
  %i.m = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.2 = insertelement <16 x i16> poison, i16 %i.m, i64 0
  %broadcast.splat.2 = shufflevector <16 x i16> %broadcast.splatinsert.2, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 290
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 322
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 354
  store <16 x i16> %broadcast.splat.2, ptr %i.l, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.n, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.o, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 386
  %i.r = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.3 = insertelement <16 x i16> poison, i16 %i.r, i64 0
  %broadcast.splat.3 = shufflevector <16 x i16> %broadcast.splatinsert.3, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 418
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 450
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 482
  store <16 x i16> %broadcast.splat.3, ptr %i.q, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.s, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.t, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 514
  %i.w = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.4 = insertelement <16 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat.4 = shufflevector <16 x i16> %broadcast.splatinsert.4, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 546
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 578
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 610
  store <16 x i16> %broadcast.splat.4, ptr %i.v, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.x, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.y, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 642
  %i.ab = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.5 = insertelement <16 x i16> poison, i16 %i.ab, i64 0
  %broadcast.splat.5 = shufflevector <16 x i16> %broadcast.splatinsert.5, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 674
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 706
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 738
  store <16 x i16> %broadcast.splat.5, ptr %i.aa, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.ac, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.ad, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 770
  %i.ag = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.6 = insertelement <16 x i16> poison, i16 %i.ag, i64 0
  %broadcast.splat.6 = shufflevector <16 x i16> %broadcast.splatinsert.6, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 802
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 834
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 866
  store <16 x i16> %broadcast.splat.6, ptr %i.af, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.ah, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.ai, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 898
  %i.al = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.7 = insertelement <16 x i16> poison, i16 %i.al, i64 0
  %broadcast.splat.7 = shufflevector <16 x i16> %broadcast.splatinsert.7, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 930
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 962
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 994
  store <16 x i16> %broadcast.splat.7, ptr %i.ak, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.am, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.an, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1026
  %i.aq = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.8 = insertelement <16 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat.8 = shufflevector <16 x i16> %broadcast.splatinsert.8, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1058
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1090
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1122
  store <16 x i16> %broadcast.splat.8, ptr %i.ap, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.ar, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.as, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1154
  %i.av = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.9 = insertelement <16 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat.9 = shufflevector <16 x i16> %broadcast.splatinsert.9, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1186
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1218
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1250
  store <16 x i16> %broadcast.splat.9, ptr %i.au, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.aw, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.ax, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1282
  %i.ba = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.10 = insertelement <16 x i16> poison, i16 %i.ba, i64 0
  %broadcast.splat.10 = shufflevector <16 x i16> %broadcast.splatinsert.10, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1314
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1346
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1378
  store <16 x i16> %broadcast.splat.10, ptr %i.az, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.bb, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.bc, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1410
  %i.bf = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.11 = insertelement <16 x i16> poison, i16 %i.bf, i64 0
  %broadcast.splat.11 = shufflevector <16 x i16> %broadcast.splatinsert.11, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1442
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1474
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1506
  store <16 x i16> %broadcast.splat.11, ptr %i.be, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.bg, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.bh, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1538
  %i.bk = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.12 = insertelement <16 x i16> poison, i16 %i.bk, i64 0
  %broadcast.splat.12 = shufflevector <16 x i16> %broadcast.splatinsert.12, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1570
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1602
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1634
  store <16 x i16> %broadcast.splat.12, ptr %i.bj, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.bl, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.bm, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1666
  %i.bp = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.13 = insertelement <16 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat.13 = shufflevector <16 x i16> %broadcast.splatinsert.13, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1698
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1730
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1762
  store <16 x i16> %broadcast.splat.13, ptr %i.bo, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.bq, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.br, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1794
  %i.bu = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.14 = insertelement <16 x i16> poison, i16 %i.bu, i64 0
  %broadcast.splat.14 = shufflevector <16 x i16> %broadcast.splatinsert.14, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1826
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1858
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1890
  store <16 x i16> %broadcast.splat.14, ptr %i.bt, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bv, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bw, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1922
  %i.bz = load i16, ptr %i.a, align 1             ; 2 uses
  %broadcast.splatinsert262 = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %broadcast.splat263 = shufflevector <8 x i16> %broadcast.splatinsert262, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1938
  %broadcast.splatinsert262.1 = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %broadcast.splat263.1 = shufflevector <8 x i16> %broadcast.splatinsert262.1, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.1, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 1954
  %i.cc = load i16, ptr %i.a, align 1             ; 2 uses
  %broadcast.splatinsert262.2 = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat263.2 = shufflevector <8 x i16> %broadcast.splatinsert262.2, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.2, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1970
  %broadcast.splatinsert262.3 = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat263.3 = shufflevector <8 x i16> %broadcast.splatinsert262.3, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.3, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 1986
  %i.cf = load i16, ptr %i.a, align 1             ; 2 uses
  %broadcast.splatinsert262.4 = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat263.4 = shufflevector <8 x i16> %broadcast.splatinsert262.4, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.4, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 2002
  %broadcast.splatinsert262.5 = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat263.5 = shufflevector <8 x i16> %broadcast.splatinsert262.5, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.5, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 2018
  %i.ci = load i16, ptr %i.a, align 1
  %broadcast.splatinsert262.6 = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat263.6 = shufflevector <8 x i16> %broadcast.splatinsert262.6, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.6, ptr %i.ch, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 2034
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed21SamsungV1Decompressor10decompressEv:iter.check
  store i16 %i.cl, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.6, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <16 x i16> splat (i16 1027), ptr %i.a, align 1
  store <16 x i16> splat (i16 1027), ptr %i.cm, align 1
  store <16 x i16> splat (i16 1027), ptr %i.cn, align 1
  store <16 x i16> splat (i16 1027), ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <16 x i16> splat (i16 1027), ptr %i.cp, align 1
  store <16 x i16> splat (i16 1027), ptr %i.cq, align 1
  store <16 x i16> splat (i16 1027), ptr %i.cr, align 1
  store <16 x i16> splat (i16 1027), ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <16 x i16> splat (i16 1795), ptr %i.ct, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cu, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cv, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <16 x i16> splat (i16 1795), ptr %i.cx, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cy, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cz, align 1
  store <16 x i16> splat (i16 1795), ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <16 x i16> splat (i16 1538), ptr %i.db, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dc, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dd, align 1
  store <16 x i16> splat (i16 1538), ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <16 x i16> splat (i16 1538), ptr %i.df, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dg, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dh, align 1
  store <16 x i16> splat (i16 1538), ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store <16 x i16> splat (i16 1538), ptr %i.dj, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dk, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dl, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store <16 x i16> splat (i16 1538), ptr %i.dn, align 1
  store <16 x i16> splat (i16 1538), ptr %i.do, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dp, align 1
  store <16 x i16> splat (i16 1538), ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  store <16 x i16> splat (i16 1282), ptr %i.dr, align 1
  store <16 x i16> splat (i16 1282), ptr %i.ds, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dt, align 1
  store <16 x i16> splat (i16 1282), ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  store <16 x i16> splat (i16 1282), ptr %i.dv, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dw, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dx, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  store <16 x i16> splat (i16 1282), ptr %i.dz, align 1
  store <16 x i16> splat (i16 1282), ptr %i.ea, align 1
  store <16 x i16> splat (i16 1282), ptr %i.eb, align 1
  store <16 x i16> splat (i16 1282), ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  store <16 x i16> splat (i16 1282), ptr %i.ed, align 1
  store <16 x i16> splat (i16 1282), ptr %i.ee, align 1
  store <16 x i16> splat (i16 1282), ptr %i.ef, align 1
  store <16 x i16> splat (i16 1282), ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  store <16 x i16> splat (i16 772), ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  store <16 x i16> splat (i16 772), ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  store <16 x i16> splat (i16 772), ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  store <16 x i16> splat (i16 772), ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 1664
  store <16 x i16> splat (i16 6), ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <16 x i16> <i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2568, i16 2568, i16 2568, i16 2568, i16 2825, i16 2825, i16 3082, i16 3338>, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  store <16 x i16> splat (i16 261), ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store <16 x i16> splat (i16 261), ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  store <16 x i16> splat (i16 2052), ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  store <16 x i16> splat (i16 2052), ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  store <16 x i16> splat (i16 2052), ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  store <16 x i16> splat (i16 2052), ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  store <16 x i16> splat (i16 516), ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  store <16 x i16> splat (i16 516), ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  store <16 x i16> splat (i16 516), ptr %i.ev, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  store <16 x i16> splat (i16 516), ptr %i.ew, align 1
  %i.ex = load ptr, ptr %0, align 8, !tbaa !11    ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 568
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !110, !noalias !111 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 592
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !20, !noalias !111
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 608
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !114, !noalias !111
  %i.fe = mul nsw i32 %i.fd, %i.fb                ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 612
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !115, !noalias !111 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !116, !noalias !111
  %i.fj = ashr i32 %i.fi, 1                       ; 4 uses
  %i.fk = icmp sgt i32 %i.fe, -1
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp sgt i32 %i.fg, -1
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp ne i32 %i.fj, 0
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp sge i32 %i.fj, %i.fe
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp eq i32 %i.fe, 0
  %i.fp = and i32 %i.fe, 31
  %i.fq = icmp eq i32 %i.fp, 0
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = and i32 %i.fg, 1
  %i.fs = icmp eq i32 %i.fr, 0
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !117 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !122 ; 3 uses
  %i.fy = icmp uge i32 %i.fx, %i.fv
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp sgt i32 %i.fx, -1
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = sub i32 %i.fx, %i.fv                    ; 6 uses
  %i.gb = zext i32 %i.fv to i64
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !123
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gb ; 2 uses
  %i.ge = icmp sgt i32 %i.ga, -1
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp samesign ult i32 %i.ga, 4
  br i1 %i.gf, label %bb.i, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %iter.check
  %.not193 = icmp eq i32 %i.fg, 0
  br i1 %.not193, label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.gg = add nuw nsw i32 %i.ga, 8
  %i.gh = zext nneg i32 %i.fg to i64
  br i1 %i.fo, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel245, label %.lr.ph189.split.us.preheader

.lr.ph189.split.us.preheader:                     ; preds = %.lr.ph189
  %i.gi = zext nneg i32 %i.fj to i64
  %i.gj = zext nneg i32 %i.fj to i64
  %i.gk = zext nneg i32 %i.fe to i64
  %wide.trip.count236 = zext nneg i32 %i.fg to i64
  br label %.lr.ph189.split.us

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel245: ; preds = %.lr.ph189
  %exitcond242.peel247.not = icmp eq i32 %i.fg, 2
  tail call void @llvm.assume(i1 %exitcond242.peel247.not)
  br label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit

.lr.ph189.split.us:                               ; preds = %.lr.ph189.split.us.preheader, %._crit_edge181.us
  %indvars.iv233 = phi i64 [ 0, %.lr.ph189.split.us.preheader ], [ %indvars.iv.next234, %._crit_edge181.us ] ; 4 uses
  %.sroa.066.0187.us = phi i64 [ 0, %.lr.ph189.split.us.preheader ], [ %.sroa.066.2.us, %._crit_edge181.us ]
  %.sroa.8.0186.us = phi i32 [ 0, %.lr.ph189.split.us.preheader ], [ %.sroa.8.2.us, %._crit_edge181.us ]
  %.sroa.1769.0185.us = phi i32 [ 0, %.lr.ph189.split.us.preheader ], [ %.sroa.1769.2.us, %._crit_edge181.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i64 0, ptr %1, align 8
  %i.gl = icmp samesign ugt i64 %indvars.iv233, 1
  br i1 %i.gl, label %bb.a, label %.lr.ph180.us

bb.a:                                             ; preds = %.lr.ph189.split.us
  %i.gm = add nsw i64 %indvars.iv233, -2          ; 2 uses
  %i.gn = icmp samesign ult i64 %i.gm, %i.gh
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = mul nuw nsw i64 %i.gm, %i.gi
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.go
  %i.gq = load <2 x i16>, ptr %i.gp, align 2, !tbaa !124
  %i.gr = zext <2 x i16> %i.gq to <2 x i32>
  store <2 x i32> %i.gr, ptr %1, align 8
  br label %.lr.ph180.us

.lr.ph180.us:                                     ; preds = %bb.a, %.lr.ph189.split.us
  %i.gs = mul nuw nsw i64 %indvars.iv233, %i.gj
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.gs
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph180.us, %bb.h
  %indvars.iv229 = phi i64 [ 0, %.lr.ph180.us ], [ %indvars.iv.next230, %bb.h ] ; 3 uses
  %.sroa.066.1177.us = phi i64 [ %.sroa.066.0187.us, %.lr.ph180.us ], [ %.sroa.066.2.us, %bb.h ] ; 2 uses
  %.sroa.8.1176.us = phi i32 [ %.sroa.8.0186.us, %.lr.ph180.us ], [ %.sroa.8.2.us, %bb.h ] ; 5 uses
  %.sroa.1769.1175.us = phi i32 [ %.sroa.1769.0185.us, %.lr.ph180.us ], [ %.sroa.1769.2.us, %bb.h ] ; 5 uses
  %i.gu = icmp samesign ult i32 %.sroa.8.1176.us, 65
  tail call void @llvm.assume(i1 %i.gu)
  %.not.i.i.us = icmp samesign ult i32 %.sroa.8.1176.us, 23
  br i1 %.not.i.i.us, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.gv = add nuw nsw i32 %.sroa.1769.1175.us, 4  ; 2 uses
  %.not.i.i.i58.us = icmp samesign ugt i32 %i.gv, %i.ga
  br i1 %.not.i.i.i58.us, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %bb.c
  %i.gw = zext nneg i32 %.sroa.1769.1175.us to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.e:                                             ; preds = %bb.c
  %i.gy = icmp samesign ugt i32 %.sroa.1769.1175.us, %i.gg
  br i1 %i.gy, label %.split.us, label %bb.f, !prof !109

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %.sroa.1769.1175.us) ; 3 uses
  %i.gz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.gz)
  %i.ha = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.hb = icmp samesign ult i32 %i.ha, 5
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.hc
  %i.he = zext nneg i32 %i.ha to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.hd, i64 %i.he, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.f, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.f ], [ %i.gx, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.hf = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.hg = zext i32 %i.hf to i64
  %i.hh = or disjoint i32 %.sroa.8.1176.us, 32
  %i.hi = sub nuw nsw i32 32, %.sroa.8.1176.us
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw i64 %i.hg, %i.hj
  %i.hl = or i64 %i.hk, %.sroa.066.1177.us
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %bb.b
  %.sroa.1769.2.us = phi i32 [ %i.gv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ], [ %.sroa.1769.1175.us, %bb.b ] ; 2 uses
  %i.hm = phi i64 [ %i.hl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ], [ %.sroa.066.1177.us, %bb.b ] ; 2 uses
  %i.hn = phi i32 [ %i.hh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ], [ %.sroa.8.1176.us, %bb.b ] ; 2 uses
  %i.ho = lshr i64 %i.hm, 54
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !126 ; 3 uses
  %i.hr = zext nneg i8 %i.hq to i32               ; 2 uses
  %i.hs = icmp ult i8 %i.hq, 33
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = icmp samesign uge i32 %i.hn, %i.hr
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = sub nsw i32 %i.hn, %i.hr                ; 4 uses
  %i.hv = zext nneg i8 %i.hq to i64
  %i.hw = shl i64 %i.hm, %i.hv                    ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !128 ; 4 uses
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %_ZN8rawspeed21SamsungV1Decompressor11samsungDiffERNS_14BitStreamerMSBERKSt6vectorINS0_12encTableItemESaIS4_EE.exit.us, label %bb.g

bb.g:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us
  %i.ia = zext nneg i8 %i.hy to i32               ; 4 uses
  %i.ib = icmp samesign ult i32 %i.hu, 65
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp ult i8 %i.hy, 33
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = icmp samesign uge i32 %i.hu, %i.ia
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = sub nuw nsw i32 64, %i.ia
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = lshr i64 %i.hw, %i.if
  %i.ih = trunc nuw i64 %i.ig to i32
  %i.ii = sub nsw i32 %i.hu, %i.ia
  %i.ij = zext nneg i8 %i.hy to i64
  %i.ik = shl i64 %i.hw, %i.ij
  %i.il = icmp sgt i64 %i.hw, -1
  %notmask.i.i.us = shl nsw i32 -1, %i.ia
  %.neg.i.i.us = add nuw nsw i32 %notmask.i.i.us, 1
  %i.im = select i1 %i.il, i32 %.neg.i.i.us, i32 0
  %.0.i.i.us = add i32 %i.im, %i.ih
  br label %_ZN8rawspeed21SamsungV1Decompressor11samsungDiffERNS_14BitStreamerMSBERKSt6vectorINS0_12encTableItemESaIS4_EE.exit.us

_ZN8rawspeed21SamsungV1Decompressor11samsungDiffERNS_14BitStreamerMSBERKSt6vectorINS0_12encTableItemESaIS4_EE.exit.us: ; preds = %bb.g, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us
  %.sroa.8.2.us = phi i32 [ %i.hu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us ], [ %i.ii, %bb.g ] ; 2 uses
  %.sroa.066.2.us = phi i64 [ %i.hw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us ], [ %i.ik, %bb.g ] ; 2 uses
  %.0.i.us = phi i32 [ 0, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.us ], [ %.0.i.i.us, %bb.g ]
  %i.in = and i64 %indvars.iv229, 1
  %2 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.in ; 2 uses
  %i.io = load i32, ptr %2, align 4, !tbaa !19
  %i.ip = add nsw i32 %i.io, %.0.i.us             ; 3 uses
  store i32 %i.ip, ptr %2, align 4, !tbaa !19
  %i.iq = icmp ult i32 %i.ip, 4096
  br i1 %i.iq, label %bb.h, label %.split191.us

bb.h:                                             ; preds = %_ZN8rawspeed21SamsungV1Decompressor11samsungDiffERNS_14BitStreamerMSBERKSt6vectorINS0_12encTableItemESaIS4_EE.exit.us
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv229
  %i.is = trunc nuw nsw i32 %i.ip to i16
  store i16 %i.is, ptr %i.ir, align 2, !tbaa !124
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next230, %i.gk
  br i1 %exitcond232.not, label %._crit_edge181.us, label %bb.b, !llvm.loop !129

._crit_edge181.us:                                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit, label %.lr.ph189.split.us, !llvm.loop !131

bb.i:                                             ; preds = %iter.check
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #13
          to label %.noexc54 unwind label %bb.j

.noexc54:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit: ; preds = %._crit_edge181.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel245, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 2048) #20
  ret void

bb.j:                                             ; preds = %bb.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit64

.split.us:                                        ; preds = %bb.e
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #13
          to label %.noexc59 unwind label %bb.l

.noexc59:                                         ; preds = %.split.us
  unreachable

.split191.us:                                     ; preds = %_ZN8rawspeed21SamsungV1Decompressor11samsungDiffERNS_14BitStreamerMSBERKSt6vectorINS0_12encTableItemESaIS4_EE.exit.us
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV1Decompressor10decompressEv) #13
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.split191.us
  unreachable

bb.l:                                             ; preds = %.split.us
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.split191.us
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.l ], [ %i.iv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit64

_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit64: ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.it, %bb.j ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 2048) #20
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !100, !inline_history !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !108, !inline_history !132
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
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
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !98
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !98
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #21
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold noreturn }
attributes #14 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !15, i64 8}
!13 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!16 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!9, !9, i64 0}
end_hunk_1
