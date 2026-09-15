Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.66" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [38 x i8] c"%s, line 63: Unsupported predictor %i\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii = private unnamed_addr constant [79 x i8] c"rawspeed::DeflateDecompressor::DeflateDecompressor(Buffer, RawImage, int, int)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s, line 152: failed to uncompress tile: %d (%s)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_ = private unnamed_addr constant [109 x i8] c"void rawspeed::DeflateDecompressor::decode(std::unique_ptr<unsigned char[]> *, iPoint2D, iPoint2D, iPoint2D)\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.66" zeroinitializer, comdat, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed19DeflateDecompressorC1ENS_6BufferENS_8RawImageEii = hidden unnamed_addr alias void (ptr, ptr, i32, ptr, i32, i32), ptr @_ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 12), (16, 32), (36, 40)) %0, ptr %1, i32 %2, ptr nofree noundef align 8 captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load <2 x ptr>, ptr %3, align 8, !tbaa !108
  store ptr null, ptr %i.c, align 8, !tbaa !18
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !108
  store ptr null, ptr %3, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %5, ptr %i.e, align 4, !tbaa !26
  switch i32 %4, label %bb.d [
    i32 3, label %bb.g
    i32 34894, label %bb.b
    i32 34895, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii, i32 noundef %4) #14
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #17
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 4, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink, ptr %i.g, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = mul i32 %.sink, %i.j
  store i32 %i.l, ptr %i.k, align 8, !tbaa !27
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a)
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !112
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !104, !inline_history !109
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !106, !inline_history !109
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.sroa.0156.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.7162.0.extract.shift = lshr i64 %2, 32   ; 3 uses
  %.sroa.7162.0.extract.trunc = trunc nuw i64 %.sroa.7162.0.extract.shift to i32
  %.sroa.044.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.245.0.extract.shift = lshr i64 %3, 32    ; 8 uses
  %.sroa.245.0.extract.trunc = trunc nuw i64 %.sroa.245.0.extract.shift to i32
  %.sroa.243.0.extract.shift = lshr i64 %4, 32    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26   ; 3 uses
  %i.d = lshr i32 %i.c, 3                         ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 15
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %i.c, 40
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.g = zext nneg i32 %i.d to i64
  %i.h = tail call i32 @llvm.abs.i32(i32 %.sroa.0156.0.extract.trunc, i1 false)
  %i.i = zext i32 %i.h to i64
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.7162.0.extract.trunc, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, %i.i
  %i.m = mul i64 %i.l, %i.g                       ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !144
  %i.n = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not184 = icmp eq ptr %i.n, null
  br i1 %.not184, label %bb.b, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #19 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.a
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.n, %bb.a ] ; 21 uses
  %i.r = mul nsw i32 %i.d, %.sroa.0156.0.extract.trunc ; 8 uses
  %i.s = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %2, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ne i64 %.sroa.7162.0.extract.shift, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !146  ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = call i32 @uncompress(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %i.aa) ; 3 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ac = call ptr @zError(i32 noundef %i.ab)
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_, i32 noundef %i.ab, ptr noundef %i.ac) #14
  unreachable

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !147, !noalias !148 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !97, !noalias !148
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !149, !noalias !148
  %i.al = mul nsw i32 %i.ak, %i.ai                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !150, !noalias !148
  %i.ao = ashr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %i.ao, %i.al
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 612
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151, !noalias !148
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = zext nneg i32 %i.r to i64               ; 18 uses
  %i.aw = and i64 %4, 2147483648
  %i.ax = icmp eq i64 %i.aw, 0
  %5 = icmp ne i32 %.sroa.044.0.extract.trunc, 0
  %i.ay = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = and i64 %4, 2147483647                  ; 14 uses
  %i.bb = zext nneg i32 %i.al to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bc = ashr exact i64 %sext, 31                ; 10 uses
  %i.bd = mul nsw i64 %i.az, 3                    ; 6 uses
  %i.be = zext nneg i32 %i.at to i64
  %i.bf = zext i32 %i.ao to i64                   ; 7 uses
  %i.bg = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bh = add i64 %i.bg, %i.ba
  %i.bi = shl i64 %i.bh, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = mul i64 %i.bl, %i.bf
  %i.bn = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %i.ag, i64 %i.bo
  %scevgep203 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bq = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.br = mul nsw i64 %i.bq, %i.av                ; 2 uses
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %scevgep205 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count.i81
  %i.bu = getelementptr i8, ptr %i.q, i64 %i.br
  %scevgep206 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bw = add i64 %i.bv, %i.ba
  %i.bx = shl i64 %i.bw, 2
  %scevgep222 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 3 uses
  %i.by = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, -4
  %i.cb = mul i64 %i.ca, %i.bf
  %i.cc = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.ag, i64 %i.cd
  %scevgep223 = getelementptr i8, ptr %i.ce, i64 %i.cb ; 3 uses
  %scevgep224 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cf = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cg = mul nsw i64 %i.cf, %i.av                ; 3 uses
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bc
  %scevgep225 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count.i81
  %scevgep226 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.az
  %scevgep227 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i81
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.cg
  %scevgep228 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cn = add i64 %i.cm, %i.ba
  %i.co = shl i64 %i.cn, 2
  %scevgep271 = getelementptr i8, ptr %i.ag, i64 %i.co ; 4 uses
  %i.cp = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = mul i64 %i.cr, %i.bf
  %i.ct = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr i8, ptr %i.ag, i64 %i.cu
  %scevgep272 = getelementptr i8, ptr %i.cv, i64 %i.cs ; 4 uses
  %scevgep273 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cx = mul nsw i64 %i.cw, %i.av                ; 4 uses
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bd
  %scevgep274 = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i81
  %scevgep275 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.da, i64 %i.bc
  %scevgep276 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i81
  %scevgep277 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.dc = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.az
  %scevgep278 = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i81
  %i.de = getelementptr i8, ptr %i.q, i64 %i.cx
  %scevgep279 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %5)
  %min.iters.check296 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0280 = icmp ult ptr %scevgep271, %scevgep274
  %bound1281 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict282 = and i1 %bound0280, %bound1281
  %bound0283 = icmp ult ptr %scevgep271, %scevgep276
  %bound1284 = icmp ult ptr %scevgep275, %scevgep272
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %found.conflict282, %found.conflict285
  %bound0287 = icmp ult ptr %scevgep271, %scevgep278
  %bound1288 = icmp ult ptr %scevgep277, %scevgep272
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %scevgep271, %scevgep279
  %bound1292 = icmp ult ptr %i.q, %scevgep272
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  %n.vec298 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n321 = icmp eq i64 %wide.trip.count.i81, %n.vec298
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check241 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0229 = icmp ult ptr %scevgep222, %scevgep225
  %bound1230 = icmp ult ptr %scevgep224, %scevgep223
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0232 = icmp ult ptr %scevgep222, %scevgep227
  %bound1233 = icmp ult ptr %scevgep226, %scevgep223
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep222, %scevgep228
  %bound1237 = icmp ult ptr %i.q, %scevgep223
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %n.vec243 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n268 = icmp eq i64 %wide.trip.count.i81, %n.vec243
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep205
  %bound1 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict = and i1 %bound0, %bound1
  %bound0207 = icmp ult ptr %scevgep, %scevgep206
  %bound1208 = icmp ult ptr %i.q, %scevgep203
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx = or i1 %found.conflict, %found.conflict209
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.df = mul nuw i64 %indvars.iv, %i.av
  %i.dg = getelementptr i8, ptr %i.q, i64 %i.df
  %scevgep325 = getelementptr i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dh)
  %i.di = mul nuw i64 %indvars.iv, %i.av
  %i.dj = getelementptr i8, ptr %i.q, i64 %i.di   ; 34 uses
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !27 ; 5 uses
  %i.dl = icmp slt i32 %i.dk, %i.r
  br i1 %i.dl, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dm = zext nneg i32 %i.dk to i64              ; 12 uses
  %i.dn = icmp sgt i32 %i.dk, -1
  call void @llvm.assume(i1 %i.dn)
  %i.do = xor i32 %i.dk, -1
  %i.dp = add nsw i32 %i.r, %i.do                 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check332 = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check332, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck323

vector.memcheck323:                               ; preds = %iter.check
  %scevgep324 = getelementptr i8, ptr %i.dj, i64 %i.dm
  %i.ds = xor i32 %i.dk, -1
  %i.dt = add nsw i32 %i.r, %i.ds
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr i8, ptr %scevgep325, i64 %i.dm
  %scevgep326 = getelementptr i8, ptr %i.dv, i64 %i.du
  %scevgep327 = getelementptr i8, ptr %scevgep325, i64 %i.du
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %i.dj, %scevgep326
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck323
  %min.iters.check333 = icmp ult i32 %i.dp, 31
  br i1 %min.iters.check333, label %vec.epilog.ph, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dr, 24
  %n.vec335 = and i64 %i.dr, 8589934560           ; 4 uses
  %i.dx = add nuw nsw i64 %n.vec335, %i.dm        ; 2 uses
  %broadcast.splatinsert336 = insertelement <32 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat337 = shufflevector <32 x i64> %broadcast.splatinsert336, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dj, i64 %i.dm
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph334
  %index346 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %vec.ind347 = phi <32 x i64> [ %induction, %vector.ph334 ], [ %vec.ind.next352, %vector.body345 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index346 ; 2 uses
  %wide.load349 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.dy = sub nuw nsw <32 x i64> %vec.ind347, %broadcast.splat337
  %i.dz = extractelement <32 x i64> %i.dy, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  %wide.load350 = load <32 x i8>, ptr %i.ea, align 1, !tbaa !107, !alias.scope !153
  %i.eb = add <32 x i8> %wide.load350, %wide.load349
  store <32 x i8> %i.eb, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next351 = add nuw i64 %index346, 32      ; 2 uses
  %vec.ind.next352 = add nuw nsw <32 x i64> %vec.ind347, splat (i64 32)
  %i.ec = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.ec, label %middle.block354, label %vector.body345, !llvm.loop !119

middle.block354:                                  ; preds = %vector.body345
  %cmp.n355 = icmp eq i64 %i.dr, %n.vec335
  br i1 %cmp.n355, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block354
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec335, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val356 = phi i64 [ %i.dx, %vec.epilog.iter.check ], [ %i.dm, %vector.main.loop.iter.check ]
  %n.vec357 = and i64 %i.dr, 8589934584           ; 3 uses
  %i.ed = add nuw nsw i64 %n.vec357, %i.dm
  %invariant.gep385 = getelementptr i8, ptr %i.dj, i64 %i.dm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next375, %vec.epilog.vector.body ] ; 2 uses
  %i.ee = phi i64 [ %bc.resume.val356, %vec.epilog.ph ], [ %i.ei, %vec.epilog.vector.body ] ; 2 uses
  %gep386 = getelementptr i8, ptr %invariant.gep385, i64 %index370 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %gep386, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ef = sub nuw nsw i64 %i.ee, %i.dm
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ef
  %wide.load374 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !107, !alias.scope !153
  %i.eh = add <8 x i8> %wide.load374, %wide.load373
  store <8 x i8> %i.eh, ptr %gep386, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.ei = add nuw nsw i64 %i.ee, 8
  %i.ej = icmp eq i64 %index.next375, %n.vec357
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %i.dr, %n.vec357
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck323, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck323 ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ek = trunc nuw i64 %indvars.iv.i to i32
  %i.el = icmp sgt i32 %i.r, %i.ek
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !107
  %i.eo = sub nuw nsw i64 %indvars.iv.i, %i.dm    ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, %i.av
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !107
  %i.es = add i8 %i.er, %i.en
  store i8 %i.es, ptr %i.em, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv.next.i to i32
  %i.eu = icmp sgt i32 %i.r, %i.et
  br i1 %i.eu, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block354, %vec.epilog.middle.block, %bb.e
  %i.ev = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ew = icmp samesign ult i64 %i.ev, %i.be
  call void @llvm.assume(i1 %i.ew)
  %i.ex = mul nuw nsw i64 %i.ev, %i.bf
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ex ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader380, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep401.a = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep403.a = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
