inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
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
  store ptr %1, ptr %0, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load <2 x ptr>, ptr %3, align 8, !tbaa !18
  store ptr null, ptr %i.c, align 8, !tbaa !15
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !18
  store ptr null, ptr %3, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %5, ptr %i.e, align 4, !tbaa !22
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
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii, i32 noundef %4) #13
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #16
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 4, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink, ptr %i.g, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = mul i32 %.sink, %i.j
  store i32 %i.l, ptr %i.k, align 8, !tbaa !27
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #16 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.d
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !100
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !103, !inline_history !110
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !111, !inline_history !110
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22   ; 3 uses
  %i.d = lshr i32 %i.c, 3                         ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 15
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %i.c, 40
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = zext nneg i32 %i.d to i64
  %i.h = tail call i32 @llvm.abs.i32(i32 %.sroa.0156.0.extract.trunc, i1 false)
  %i.i = zext i32 %i.h to i64
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.7162.0.extract.trunc, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, %i.i
  %i.m = mul i64 %i.l, %i.g                       ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !114
  %i.n = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %.not184 = icmp eq ptr %i.n, null
  br i1 %.not184, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %bb.b

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #18 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %bb.a
  %i.p = phi ptr [ %i.o, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ], [ %i.n, %bb.a ] ; 21 uses
  %i.q = mul nsw i32 %i.d, %.sroa.0156.0.extract.trunc ; 8 uses
  %i.r = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sgt i64 %2, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i64 %.sroa.7162.0.extract.shift, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %0, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = call i32 @uncompress(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef %i.v, i64 noundef %i.z) ; 3 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call ptr @zError(i32 noundef %i.aa)
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_, i32 noundef %i.aa, ptr noundef %i.ab) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117, !noalias !118 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 592
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28, !noalias !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 608
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !121, !noalias !118
  %i.ak = mul nsw i32 %i.aj, %i.ah                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !122, !noalias !118
  %i.an = ashr i32 %i.am, 2                       ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp sge i32 %i.an, %i.ak
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 612
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !123, !noalias !118
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = zext nneg i32 %i.q to i64               ; 18 uses
  %i.av = and i64 %4, 2147483648
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = icmp ne i32 %.sroa.044.0.extract.trunc, 0
  %i.ay = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = and i64 %4, 2147483647                  ; 14 uses
  %i.bb = zext nneg i32 %i.ak to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bc = ashr exact i64 %sext, 31                ; 10 uses
  %i.bd = mul nsw i64 %i.az, 3                    ; 6 uses
  %i.be = zext nneg i32 %i.as to i64
  %i.bf = zext i32 %i.an to i64                   ; 7 uses
  %i.bg = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bh = add i64 %i.bg, %i.ba
  %i.bi = shl i64 %i.bh, 2
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = mul i64 %i.bl, %i.bf
  %i.bn = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %i.af, i64 %i.bo
  %scevgep202 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %scevgep203 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bq = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.br = mul nsw i64 %i.bq, %i.au                ; 2 uses
  %i.bs = getelementptr i8, ptr %i.p, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %scevgep204 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count.i81
  %i.bu = getelementptr i8, ptr %i.p, i64 %i.br
  %scevgep205 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bw = add i64 %i.bv, %i.ba
  %i.bx = shl i64 %i.bw, 2
  %scevgep221 = getelementptr i8, ptr %i.af, i64 %i.bx ; 3 uses
  %i.by = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, -4
  %i.cb = mul i64 %i.ca, %i.bf
  %i.cc = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.af, i64 %i.cd
  %scevgep222 = getelementptr i8, ptr %i.ce, i64 %i.cb ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.cf = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cg = mul nsw i64 %i.cf, %i.au                ; 3 uses
  %i.ch = getelementptr i8, ptr %i.p, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bc
  %scevgep224 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count.i81
  %scevgep225 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.cj = getelementptr i8, ptr %i.p, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.az
  %scevgep226 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i81
  %i.cl = getelementptr i8, ptr %i.p, i64 %i.cg
  %scevgep227 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cn = add i64 %i.cm, %i.ba
  %i.co = shl i64 %i.cn, 2
  %scevgep270 = getelementptr i8, ptr %i.af, i64 %i.co ; 4 uses
  %i.cp = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = mul i64 %i.cr, %i.bf
  %i.ct = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr i8, ptr %i.af, i64 %i.cu
  %scevgep271 = getelementptr i8, ptr %i.cv, i64 %i.cs ; 4 uses
  %scevgep272 = getelementptr i8, ptr %i.p, i64 %i.bd
  %i.cw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cx = mul nsw i64 %i.cw, %i.au                ; 4 uses
  %i.cy = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bd
  %scevgep273 = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i81
  %scevgep274 = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.da = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.da, i64 %i.bc
  %scevgep275 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i81
  %scevgep276 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.dc = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.az
  %scevgep277 = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i81
  %i.de = getelementptr i8, ptr %i.p, i64 %i.cx
  %scevgep278 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check295 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0279 = icmp ult ptr %scevgep270, %scevgep273
  %bound1280 = icmp ult ptr %scevgep272, %scevgep271
  %found.conflict281 = and i1 %bound0279, %bound1280
  %bound0282 = icmp ult ptr %scevgep270, %scevgep275
  %bound1283 = icmp ult ptr %scevgep274, %scevgep271
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %found.conflict281, %found.conflict284
  %bound0286 = icmp ult ptr %scevgep270, %scevgep277
  %bound1287 = icmp ult ptr %scevgep276, %scevgep271
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %scevgep270, %scevgep278
  %bound1291 = icmp ult ptr %i.p, %scevgep271
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %n.vec297 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n320 = icmp eq i64 %wide.trip.count.i81, %n.vec297
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check240 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0228 = icmp ult ptr %scevgep221, %scevgep224
  %bound1229 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult ptr %scevgep221, %scevgep226
  %bound1232 = icmp ult ptr %scevgep225, %scevgep222
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep221, %scevgep227
  %bound1236 = icmp ult ptr %i.p, %scevgep222
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %n.vec242 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n267 = icmp eq i64 %wide.trip.count.i81, %n.vec242
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep204
  %bound1 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %scevgep, %scevgep205
  %bound1207 = icmp ult ptr %i.p, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.df = mul nuw i64 %indvars.iv, %i.au
  %i.dg = getelementptr i8, ptr %i.p, i64 %i.df
  %scevgep325.a = getelementptr i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dh)
  %i.di = mul nuw i64 %indvars.iv, %i.au
  %i.dj = getelementptr i8, ptr %i.p, i64 %i.di   ; 34 uses
  %i.dk = load i32, ptr %i.at, align 8, !tbaa !27 ; 5 uses
  %i.dl = icmp slt i32 %i.dk, %i.q
  br i1 %i.dl, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dm = zext nneg i32 %i.dk to i64              ; 12 uses
  %i.dn = icmp sgt i32 %i.dk, -1
  call void @llvm.assume(i1 %i.dn)
  %i.do = xor i32 %i.dk, -1
  %i.dp = add nsw i32 %i.q, %i.do                 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check332.a = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check332.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck322

vector.memcheck322:                               ; preds = %iter.check
  %scevgep324 = getelementptr i8, ptr %i.dj, i64 %i.dm
  %i.ds = xor i32 %i.dk, -1
  %i.dt = add nsw i32 %i.q, %i.ds
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr i8, ptr %scevgep325.a, i64 %i.dm
  %scevgep326.a = getelementptr i8, ptr %i.dv, i64 %i.du
  %scevgep327 = getelementptr i8, ptr %scevgep325.a, i64 %i.du
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %i.dj, %scevgep326.a
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck322
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
  %wide.load349.a = load <32 x i8>, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.dy = sub nuw nsw <32 x i64> %vec.ind347, %broadcast.splat337
  %i.dz = extractelement <32 x i64> %i.dy, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  %wide.load350 = load <32 x i8>, ptr %i.ea, align 1, !tbaa !112, !alias.scope !127
  %i.eb = add <32 x i8> %wide.load350, %wide.load349.a
  store <32 x i8> %i.eb, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next351 = add nuw i64 %index346, 32      ; 2 uses
  %vec.ind.next352 = add nuw nsw <32 x i64> %vec.ind347, splat (i64 32)
  %i.ec = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.ec, label %middle.block354, label %vector.body345, !llvm.loop !129

middle.block354:                                  ; preds = %vector.body345
  %cmp.n355 = icmp eq i64 %i.dr, %n.vec335
  br i1 %cmp.n355, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block354
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !133

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
  %wide.load373.a = load <8 x i8>, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.ef = sub nuw nsw i64 %i.ee, %i.dm
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ef
  %wide.load374 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !112, !alias.scope !127
  %i.eh = add <8 x i8> %wide.load374, %wide.load373.a
  store <8 x i8> %i.eh, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.ei = add nuw nsw i64 %i.ee, 8
  %i.ej = icmp eq i64 %index.next375, %n.vec357
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %i.dr, %n.vec357
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck322, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck322 ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ek = trunc nuw i64 %indvars.iv.i to i32
  %i.el = icmp sgt i32 %i.q, %i.ek
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !112
  %i.eo = sub nuw nsw i64 %indvars.iv.i, %i.dm    ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, %i.au
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !112
  %i.es = add i8 %i.er, %i.en
  store i8 %i.es, ptr %i.em, align 1, !tbaa !112
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv.next.i to i32
  %i.eu = icmp sgt i32 %i.q, %i.et
  br i1 %i.eu, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !135

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block354, %vec.epilog.middle.block, %bb.e
  %i.ev = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ew = icmp samesign ult i64 %i.ev, %i.be
  call void @llvm.assume(i1 %i.ew)
  %i.ex = mul nuw nsw i64 %i.ev, %i.bf
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ex ; 8 uses
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
  %invariant.gep401 = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep403 = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = phi i64 [ 0, %vector.ph ], [ %i.gd, %vector.body ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fa, align 1, !tbaa !112, !alias.scope !136
  %gep402 = getelementptr i8, ptr %invariant.gep401, i64 %i.ez
  %wide.load215 = load <8 x i8>, ptr %gep402, align 1, !tbaa !112, !alias.scope !139
  %i.fb = zext <8 x i8> %wide.load215 to <8 x i16>
  %i.fc = shl nuw <8 x i16> %i.fb, splat (i16 8)
  %i.fd = zext <8 x i8> %wide.load to <8 x i16>
  %i.fe = or disjoint <8 x i16> %i.fc, %i.fd
  %i.ff = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fe) ; 2 uses
  %i.fg = zext <8 x i16> %i.ff to <8 x i32>       ; 2 uses
  %i.fh = lshr <8 x i32> %i.fg, splat (i32 10)
  %i.fi = and <8 x i32> %i.fh, splat (i32 31)     ; 3 uses
  %i.fj = and <8 x i32> %i.fg, splat (i32 1023)   ; 2 uses
  %i.fk = shl nuw nsw <8 x i32> %i.fj, splat (i32 13) ; 3 uses
  %i.fl = icmp eq <8 x i32> %i.fi, splat (i32 31) ; 2 uses
  %i.fm = add nuw nsw <8 x i32> %i.fi, splat (i32 112)
  %i.fn = icmp eq <8 x i32> %i.fi, zeroinitializer ; 3 uses
  %i.fo = icmp eq <8 x i32> %i.fj, zeroinitializer
  %i.fp = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fk, i1 true) ; 2 uses
  %i.fq = sub nuw nsw <8 x i32> splat (i32 121), %i.fp
  %i.fr = xor <8 x i32> %i.fp, splat (i32 31)
  %i.fs = sub nuw nsw <8 x i32> splat (i32 23), %i.fr
  %i.ft = shl <8 x i32> %i.fk, %i.fs
  %i.fu = and <8 x i32> %i.ft, splat (i32 8380416)
  %i.fv = xor <8 x i1> %i.fn, %i.fl
  %i.fw = select <8 x i1> %i.fn, <8 x i1> %i.fo, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.fw, <8 x i32> zeroinitializer, <8 x i32> %i.fq
  %predphi216 = select <8 x i1> %i.fv, <8 x i32> %predphi, <8 x i32> %i.fm
  %predphi218 = select <8 x i1> %i.fw, <8 x i32> zeroinitializer, <8 x i32> %i.fu
  %predphi219 = select <8 x i1> %i.fn, <8 x i32> %predphi218, <8 x i32> %i.fk
  %i.fx = sext <8 x i16> %i.ff to <8 x i32>
  %i.fy = and <8 x i32> %i.fx, splat (i32 -2147483648)
  %i.fz = shl nuw nsw <8 x i32> %predphi216, splat (i32 23)
  %i.ga = select <8 x i1> %i.fl, <8 x i32> splat (i32 2139095040), <8 x i32> %i.fz
  %i.gb = or disjoint <8 x i32> %i.ga, %i.fy
  %i.gc = or disjoint <8 x i32> %i.gb, %predphi219
  %gep404 = getelementptr inbounds [4 x i8], ptr %invariant.gep403, i64 %i.ez
  store <8 x i32> %i.gc, ptr %gep404, align 4, !tbaa !141, !alias.scope !143, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gd = add nuw nsw i64 %i.ez, 8
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader380

.lr.ph.i52.preheader380:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader380, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader380 ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i53
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !112
  %i.gh = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gi = icmp samesign ult i64 %i.gh, %i.au
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.gh
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !112
  %.sroa.4.0.insert.ext.i = zext i8 %i.gk to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gg to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gl = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = lshr i32 %i.gm, 10
  %i.go = and i32 %i.gn, 31                       ; 3 uses
  %i.gp = and i32 %i.gm, 1023                     ; 2 uses
  %i.gq = shl nuw nsw i32 %i.gp, 13               ; 4 uses
  %i.gr = icmp eq i32 %i.go, 31
  br i1 %i.gr, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gs = add nuw nsw i32 %i.go, 112
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gu = icmp eq i32 %i.gp, 0
  br i1 %i.gu, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
end_hunk_0
