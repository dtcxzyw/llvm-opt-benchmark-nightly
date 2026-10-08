Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.1?download=true
inline.NumInlined: 193
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone19previous_transition:bb.a
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add i64 %.sroa.05.0.lcssa.i.i, %i.ad
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit: ; preds = %bb.d, %._crit_edge.i.i, %bb.e
  %.sroa.4.0.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.q, %bb.d ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_subCsaR3IayqLkK5_9jiff_core(i64 %.sroa.4.0.i.i, i64 1) #18 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  %i.ai = call { i64, i64 } @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtNtB7_3ops9try_trait3Try6branchCsaR3IayqLkK5_9jiff_core(i64 %i.ag, i64 %i.ah) #18 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 8 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.am = add i64 %i.m, 1
  %..i = call i64 @llvm.smax.i64(i64 %i.am, i64 -377705023201)
  %.sroa.0.0.i = call range(i64 -377705023201, 253402207201) i64 @llvm.smin.i64(i64 %..i, i64 253402207200)
  store i64 %.sroa.0.0.i, ptr %i.f, align 8
  br label %bb.d

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #18
  br label %bb.o

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.i) #18
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1
  %i.aq = add i64 %i.ap, -1
  %i.ar = icmp eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.as, align 4
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.au = call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneE6as_refBN_(ptr nonnull align 8 %i.at) #18 ; 2 uses
  %.not16 = icmp eq ptr %i.au, null
  br i1 %.not16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.m, %bb.i
  %i.av = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.i) #18 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ax = icmp ult i64 %i.ak, %i.aw
  br i1 %i.ax, label %bb.p, label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.g, align 8
  %i.az = load i32, ptr %i.h, align 8
  call void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone19previous_transition(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 %i.au, i64 %i.ay, i32 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.bb = load i8, ptr %i.ba, align 4
  %.not17 = icmp eq i8 %i.bb, 2
  br i1 %.not17, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.x, %bb.n, %bb.j, %bb.g
  ret void

bb.p:                                             ; preds = %bb.l
  %i.bc = extractvalue { ptr, i64 } %i.av, 0
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ak
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.bf) #18 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.bi) #18 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 1      ; 2 uses
  %i.bl = icmp ult i64 %i.ak, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = extractvalue { ptr, i64 } %i.bj, 0
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ak
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64                    ; 3 uses
  %i.br = icmp ugt i64 %i.bh, %i.bq
  br i1 %i.br, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit, label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.ak, i64 %i.bk, ptr nonnull align 8 @15) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.bq, i64 %i.bh, ptr nonnull align 8 @16) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit: ; preds = %bb.q
  %i.bs = extractvalue { ptr, i64 } %i.bg, 0
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceINtB5_8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr align 8 %1) #18 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bt, i64 4
  %.val.i = load i8, ptr %i.bx, align 4
  %i.by = zext i8 %.val.i to i64                  ; 3 uses
  %i.bz = icmp ugt i64 %i.bw, %i.by
  br i1 %i.bz, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit, label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.by, i64 %i.bw, ptr nonnull align 8 @14) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit: ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  %i.ca = extractvalue { ptr, i64 } %i.bv, 0
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.by
  call void @_RNvXsC_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %i.cb) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.bu, ptr %i.ce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 %i.cd, ptr %i.cf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.be) #18
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit
  %i.cg = load i16, ptr %i.a, align 8
  %i.ch = trunc i16 %i.cg to i1
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.ak, i64 %i.aw, ptr nonnull align 8 @27) #19
  unreachable

bb.w:                                             ; preds = %bb.u, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaR3IayqLkK5_9jiff_core2tz10OffsetInfoEBF_(ptr nonnull align 8 %i.d) #20
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %.noexc
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.3.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.3.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 %i.ck, ptr %0, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cm, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3, i64 36, i1 false)
  br label %bb.o

bb.y:                                             ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.z:                                             ; preds = %bb.w
  resume { ptr, i32 } %i.ci
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp(ptr sret([24 x i8]) align 4 %0, ptr align 8 %1, ptr nofree readonly align 4 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = alloca [12 x i8], align 4                ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 2 uses
  %i.e = alloca [12 x i8], align 4                ; 2 uses
  %i.f = alloca [12 x i8], align 4                ; 3 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = zext i32 %.sroa.2.0.copyload to i64
  %sext.i = shl i64 %.sroa.01.0.extract.trunc.i.i, 48
  %.sroa.22.0.extract.shift.i.i = lshr i32 %.sroa.2.0.copyload, 16
  %.sroa.22.0.extract.trunc.i.i = zext nneg i32 %.sroa.22.0.extract.shift.i.i to i64
  %sext33.i = shl i64 %.sroa.22.0.extract.trunc.i.i, 56
  %i.j = ashr exact i64 %sext33.i, 16
  %3 = ashr i32 %.sroa.2.0.copyload, 24
  %4 = sext i32 %3 to i64
  %sext34.i = shl nsw i64 %4, 32
  %i.k = shl i64 %.sroa.0.0.copyload, 24
  %i.l = ashr i64 %i.k, 32
  %i.m = and i64 %i.l, -16777216
  %i.n = shl i64 %.sroa.0.0.copyload, 16
  %i.o = ashr i64 %i.n, 40
  %i.p = and i64 %i.o, -65536
  %i.q = shl i64 %.sroa.0.0.copyload, 8
  %i.r = ashr i64 %i.q, 48
  %i.s = and i64 %i.r, -256
  %i.t = or i64 %i.m, %sext.i
  %i.u = or i64 %i.t, %i.p
  %i.v = or i64 %i.u, %i.s
  %i.w = or i64 %i.v, %sext34.i
  %i.x = or i64 %i.w, %i.j
  store i64 %i.x, ptr %i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = tail call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.y) #18 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = tail call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.ac) #18 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 4 uses
  %i.ag = icmp eq i64 %i.ab, 0
  br i1 %i.ag, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %cond = icmp eq i64 %i.ab, 1
  br i1 %cond, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ap, %.lr.ph.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.05.0.lcssa.i.i
  %i.ai = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.ah) #18 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_searchBA_.exit, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %i.ab, %bb.b ] ; 2 uses
  %.sroa.05.012.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ak = lshr i64 %.sroa.01.013.i.i, 1           ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.05.012.i.i        ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.al
  %i.an = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.am) #18
  %i.ao = icmp eq i8 %i.an, 1
  %i.ap = select i1 %i.ao, i64 %.sroa.05.012.i.i, i64 %i.al, !unpredictable !4 ; 2 uses
  %i.aq = sub nuw i64 %.sroa.01.013.i.i, %i.ak    ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_searchBA_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @18, ptr nonnull inttoptr (i64 49 to ptr), ptr nonnull align 8 @36) #19
  unreachable

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.as = icmp eq i8 %i.ai, -1
  %i.at = zext i1 %i.as to i64
  %i.au = add i64 %.sroa.05.0.lcssa.i.i, %i.at    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_searchBA_.exit, %bb.k
  %.sroa.01.0 = phi i64 [ %i.bv, %bb.k ], [ %.sroa.05.0.lcssa.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_searchBA_.exit ] ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ax = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.aw) #18 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ba = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.az) #18 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 1      ; 2 uses
  %i.bc = icmp ult i64 %.sroa.01.0, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = extractvalue { ptr, i64 } %i.ba, 0
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %.sroa.01.0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64                    ; 3 uses
  %i.bi = icmp ugt i64 %i.ay, %i.bh
  br i1 %i.bi, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %.sroa.01.0, i64 %i.bb, ptr nonnull align 8 @15) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.bh, i64 %i.ay, ptr nonnull align 8 @16) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit: ; preds = %bb.f
  %i.bj = extractvalue { ptr, i64 } %i.ax, 0
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.az) #18 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1      ; 2 uses
  %i.bo = icmp ult i64 %.sroa.01.0, %i.bn
  br i1 %i.bo, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %.sroa.01.0, i64 %i.bn, ptr nonnull align 8 @20) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit: ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  %i.bp = extractvalue { ptr, i64 } %i.bm, 0
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %.sroa.01.0
  %i.br = load i8, ptr %i.bq, align 1
  switch i8 %i.br, label %bb.l [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 0, label %bb.o
  ]

bb.j:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @29, ptr nonnull inttoptr (i64 163 to ptr), ptr nonnull align 8 @30) #19
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.bs = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_subCsaR3IayqLkK5_9jiff_core(i64 %i.au, i64 1) #18 ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1
  %i.bv = call i64 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core(i64 %i.bt, i64 %i.bu, ptr nonnull @25, i64 13, ptr nonnull align 8 @31) #18
  br label %bb.e

bb.l:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit
  unreachable

bb.m:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit
  %i.bw = icmp ult i64 %.sroa.01.0, %i.af
  br i1 %i.bw, label %bb.p, label %bb.q

bb.n:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit
  %i.bx = icmp ult i64 %.sroa.01.0, %i.af
  br i1 %i.bx, label %bb.x, label %bb.y

bb.o:                                             ; preds = %bb.x, %bb.p, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15transition_kind.exit
  %i.by = add i64 %i.ab, -1
  %i.bz = icmp eq i64 %.sroa.01.0, %i.by
  br i1 %i.bz, label %bb.af, label %bb.ae

bb.p:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.01.0
  %i.cb = call i8 @_RNvXs1f_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i, ptr align 8 %i.ca) #18 ; 2 uses
  %.not.i = icmp ne i8 %i.cb, -2
  %i.cc = icmp slt i8 %i.cb, 0
  %.sroa.0.0.i = and i1 %.not.i, %i.cc
  br i1 %.sroa.0.0.i, label %bb.r, label %bb.o

bb.q:                                             ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %.sroa.01.0, i64 %i.af, ptr nonnull align 8 @32) #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cd = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_subCsaR3IayqLkK5_9jiff_core(i64 %.sroa.01.0, i64 1) #18 ; 2 uses
  %i.ce = extractvalue { i64, i64 } %i.cd, 0
  %i.cf = extractvalue { i64, i64 } %i.cd, 1      ; 3 uses
  %i.cg = trunc nuw i64 %i.ce to i1
  br i1 %i.cg, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @33) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit16: ; preds = %bb.r
  %i.ch = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.aw) #18 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 1      ; 2 uses
  %i.cj = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.az) #18 ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.cj, 1      ; 2 uses
  %i.cl = icmp ult i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit16
  %i.cm = extractvalue { ptr, i64 } %i.cj, 0
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = icmp ugt i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit17, label %bb.v

bb.u:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit16
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.cf, i64 %i.ck, ptr nonnull align 8 @15) #19
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.cq, i64 %i.ci, ptr nonnull align 8 @16) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit17: ; preds = %bb.t
  %i.cs = extractvalue { ptr, i64 } %i.ch, 0
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.bl, ptr %i.cw, align 4
  store i32 1, ptr %i.h, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.e) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.ae, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit20, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit17
  ret void

bb.x:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.01.0
  %i.cy = call i8 @_RNvXs1f_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i, ptr align 8 %i.cx) #18 ; 2 uses
  %.not.i18 = icmp ne i8 %i.cy, -2
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond3newB9_:bb.a
bb.a:
  %or.cond.i.i = icmp ult i32 %0, 86400
  br i1 %or.cond.i.i, label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit, label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread

_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_14CivilDaySecondE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 1) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.a, 16
  %i.b = shl i32 %i.a, 16
  %i.c = zext i32 %i.b to i64
  br label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit

_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit: ; preds = %bb.a, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ %0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.4.0 = zext nneg i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond6secondB9_(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 16672994323595264) i64 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.2.0 = phi i8 [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.a ]
  %.sroa.4.0 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.2.0.insert.ext = zext i8 %.sroa.2.0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.2.0.insert.insert = or i64 %.sroa.2.0.insert.shift, %.sroa.4.0
  ret i64 %.sroa.2.0.insert.insert

bb.c:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3600
  %i.c = trunc i32 %i.b to i8                     ; 2 uses
  %i.d = urem i32 %i.a, 3600                      ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nuw nsw i32 %i.d to i16     ; 2 uses
  %i.e = udiv i16 %.lhs.trunc, 60
  %i.f = zext nneg i16 %i.e to i64
  %i.g = urem i16 %.lhs.trunc, 60
  %i.h = zext nneg i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 48
  %i.j = shl nuw nsw i64 %i.f, 40
  %i.k = or disjoint i64 %i.i, %i.j
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3dayB9_(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3newB9_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = add nsw i64 %i.a, 4371587
  %or.cond.i.i = icmp ult i64 %i.b, 7304484
  br i1 %or.cond.i.i, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread

_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 24) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.c, 16
  %i.d = shl i32 %i.c, 16
  %i.e = zext i32 %i.d to i64
  br label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit

_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit: ; preds = %bb.a, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ %0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.e, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.4.0 = zext i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 16777216, 536870912) i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7to_dateB9_(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = shl i32 %0, 2
  %i.b = add i32 %i.a, 50797691                   ; 2 uses
  %i.c = udiv i32 %i.b, 146097
  %i.d = urem i32 %i.b, 146097
  %i.e = or i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 2939745            ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = trunc i64 %i.g to i32                    ; 2 uses
  %i.k = udiv i32 %i.j, 11758980
  %i.l = mul nuw nsw i32 %i.c, 100
  %i.m = mul nuw nsw i32 %i.k, 2141
  %i.n = add nuw nsw i32 %i.m, 197913             ; 3 uses
  %i.o = and i32 %i.n, 4128768
  %i.p = icmp ugt i32 %i.j, -696719417            ; 2 uses
  %i.q = zext i1 %i.p to i32
  %i.r = add nuw nsw i32 %i.l, 32736
  %i.s = add nuw nsw i32 %i.r, %i.i
  %i.t = add nuw nsw i32 %i.s, %i.q
  %.lhs.trunc = trunc i32 %i.n to i16
  %i.u = udiv i16 %.lhs.trunc, 2141
  %.zext = zext nneg i16 %i.u to i32
  %.sroa.3.0.insert.ext = shl nuw nsw i32 %.zext, 24
  %.sroa.3.0.insert.shift = add nuw nsw i32 %.sroa.3.0.insert.ext, 16777216
  %i.v = add nuw nsw i32 %i.o, 15990784
  %.sroa.2.0.insert.ext = select i1 %i.p, i32 %i.v, i32 %i.n
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 16711680
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %i.t, 65535
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp11from_second(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 2)) %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %1) #18
  %i.b = load i16, ptr %i.a, align 8
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %i.g, i32 %i.i) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i16 [ 0, %bb.c ], [ 1, %bb.b ]
  store i16 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [12 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0) #18
  %i.d = load i16, ptr %i.a, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.j, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.c, ptr nonnull align 8 %i.b, i32 %1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8 ; 3 uses
  %.sroa.0.0.copyload.i26.i = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %sext.i = shl i64 %.sroa.01.0.extract.trunc.i.i, 48
  %.sroa.22.0.extract.shift.i.i = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.22.0.extract.trunc.i.i = zext nneg i32 %.sroa.22.0.extract.shift.i.i to i64
  %sext33.i = shl i64 %.sroa.22.0.extract.trunc.i.i, 56
  %i.l = ashr exact i64 %sext33.i, 16
  %2 = ashr i32 %.sroa.0.0.copyload.i.i, 24
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 32
  %sext34.i = shl i64 %.sroa.0.0.copyload.i26.i, 24
  %i.m = ashr i64 %sext34.i, 32
  %5 = and i64 %i.m, -16777216
  %i.n = shl i64 %.sroa.0.0.copyload.i26.i, 16
  %i.o = ashr i64 %i.n, 40
  %i.p = and i64 %i.o, -65536
  %i.q = shl i64 %.sroa.0.0.copyload.i26.i, 8
  %i.r = ashr i64 %i.q, 48
  %i.s = and i64 %i.r, -256
  %i.t = or i64 %4, %sext.i
  %6 = or i64 %i.t, %i.l
  %7 = or i64 %6, %5
  %8 = or i64 %7, %i.p
  %i.u = or i64 %8, %i.s
  ret i64 %i.u
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0) #18
  %i.b = load i16, ptr %i.a, align 8
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = insertvalue { i64, i32 } poison, i64 %i.e, 0
  %i.i = insertvalue { i64, i32 } %i.h, i32 %i.g, 1
  ret { i64, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp3new(i64 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %0, i32 %1) #18
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp9as_second(i64 returned %0) unnamed_addr #2 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime3day(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 32
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime3new(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4 ; 3 uses
  %.sroa.0.0.copyload.i26 = load i64, ptr %0, align 4 ; 3 uses
  %.sroa.01.0.extract.trunc.i = zext i32 %.sroa.0.0.copyload.i to i64
  %sext = shl i64 %.sroa.01.0.extract.trunc.i, 48
  %.sroa.22.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.22.0.extract.trunc.i = zext nneg i32 %.sroa.22.0.extract.shift.i to i64
  %sext33 = shl i64 %.sroa.22.0.extract.trunc.i, 56
  %i.b = ashr exact i64 %sext33, 16
  %1 = ashr i32 %.sroa.0.0.copyload.i, 24
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 32
  %sext34 = shl i64 %.sroa.0.0.copyload.i26, 24
  %i.c = ashr i64 %sext34, 32
  %4 = and i64 %i.c, -16777216
  %i.d = shl i64 %.sroa.0.0.copyload.i26, 16
  %i.e = ashr i64 %i.d, 40
  %i.f = and i64 %i.e, -65536
  %i.g = shl i64 %.sroa.0.0.copyload.i26, 8
  %i.h = ashr i64 %i.g, 48
  %i.i = and i64 %i.h, -256
  %i.j = or i64 %3, %sext
  %5 = or i64 %i.j, %i.b
  %6 = or i64 %5, %4
  %7 = or i64 %6, %i.f
  %i.k = or i64 %7, %i.i
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime4hour(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 24
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i16 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime4year(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 48
  %i.b = trunc nuw i64 %i.a to i16
  ret i16 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime5month(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 40
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime6minute(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 16
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime6second(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 8
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %i.a, ptr align 8 %i.c, ptr %1, ptr %2)
  ret i1 %i.d
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core10intrinsics9cold_pathCsaR3IayqLkK5_9jiff_core() unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCsaR3IayqLkK5_9jiff_core(i8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %0, ptr %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.sroa.5.1 = phi i64 [ %i.d, %bb.b ], [ undef, %.preheader ], [ %.sroa.04.09, %.lr.ph ], [ %.sroa.04.09, %bb.c ]
  %.sroa.0.1 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.f

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.04.09 = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.09
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.sroa.04.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif16is_possibly_tzif(ptr %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr %0, i64 %1, ptr nonnull @45, i64 4)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc323sum(ptr %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp ugt i64 %1, 15
  br i1 %i.c, label %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i, %bb.a
  %.sroa.055.0.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.da, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ] ; 2 uses
  %.sroa.30.0.lcssa.i = phi i64 [ %1, %bb.a ], [ %i.dd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ]
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.dc, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ]
  %i.d = tail call { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(ptr %.sroa.0.0.lcssa.i, i64 %.sroa.30.0.lcssa.i) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = call ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.b) #18 ; 2 uses
  %.not112.i = icmp eq ptr %i.h, null
  br i1 %.not112.i, label %_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc327slice16.exit, label %.lr.ph.i

_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i: ; preds = %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i
  %.sroa.0.0109.i = phi ptr [ %i.dc, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ %0, %bb.a ] ; 14 uses
  %.sroa.30.0108.i = phi i64 [ %i.dd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ %1, %bb.a ]
  %.sroa.055.0107.i = phi i32 [ %i.da, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ -1, %bb.a ]
  %i.i = tail call i40 @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj4_E8try_intoCsaR3IayqLkK5_9jiff_core(ptr %.sroa.0.0109.i, i64 4) #18 ; 2 uses
  %i.j = trunc i40 %i.i to i1
  br i1 %i.j, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i

bb.b:                                             ; preds = %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @1, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @0, ptr nonnull align 8 @48) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i: ; preds = %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i
  %.sroa.22.0.extract.shift.i.i = lshr i40 %i.i, 8
  %.sroa.22.0.extract.trunc.i.i = trunc nuw i40 %.sroa.22.0.extract.shift.i.i to i32
  %i.k = tail call i32 @_RNvMs6_NtCs3oUPovFnLWP_4core3numm13from_le_bytesCsaR3IayqLkK5_9jiff_core(i32 %.sroa.22.0.extract.trunc.i.i) #18
  %i.l = xor i32 %i.k, %.sroa.055.0107.i          ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 15
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @49, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 14
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 1024), i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 13
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 2048), i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = xor i32 %i.w, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 12
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 3072), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = xor i32 %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 11
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 4096), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = xor i32 %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 10
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 5120), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = xor i32 %i.ao, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 9
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 6144), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = xor i32 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 7168), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = xor i32 %i.ba, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 7
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 8192), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = xor i32 %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 6
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 9216), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
end_hunk_1
begin_hunk_2_@_RNvNtNtCsaR3IayqLkK5_9jiff_core5civil4date24iso_week_start_from_year:bb.a
  %i.f = udiv i32 %i.b, 400
  %reass.sub = sub nsw i32 %i.f, %i.c
  %i.g = add nsw i32 %reass.sub, -12699113
  %i.h = add nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = mul i32 %i.h, 613566757
  %i.j = add i32 %i.i, -1879048192
  %i.k = lshr i32 %i.j, 29                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i: ; preds = %bb.a
  %i.m = tail call i8 @_RNvMs1s_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16WeekdayMondayOne5error()
  %i.n = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.m) ; 2 uses
  %.sroa.25.0.extract.shift.i.i = lshr i32 %i.n, 8
  %i.o = and i32 %i.n, 255
  %i.p = icmp eq i32 %i.o, 254
  br i1 %i.p, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @40, ptr nonnull inttoptr (i64 61 to ptr), ptr nonnull align 8 @41) #19
  unreachable

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit: ; preds = %bb.a, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i
  %.sroa.4.0.i3.i = phi i32 [ %.sroa.25.0.extract.shift.i.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i ], [ %i.k, %bb.a ]
  %.sroa.22.0.extract.trunc.i = trunc i32 %.sroa.4.0.i3.i to i8
  %i.q = add i8 %.sroa.22.0.extract.trunc.i, -1
  %i.r = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa10rem_euclidCsaR3IayqLkK5_9jiff_core(i8 %i.q, i8 7, ptr nonnull align 8 @7) #18
  %i.s = sext i8 %i.r to i32
  %i.t = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_negCsaR3IayqLkK5_9jiff_core(i32 range(i32 -128, 128) %i.s) #18 ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %bb.c, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread

bb.c:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit
  %i.w = extractvalue { i32, i32 } %i.t, 1
  %i.x = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %i.h, i32 %i.w) #18 ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %bb.d, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14

bb.d:                                             ; preds = %bb.c
  %i.aa = extractvalue { i32, i32 } %i.x, 1       ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4371587
  %or.cond.i.i.i.i.i = icmp ult i64 %i.ac, 7304484
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14: ; preds = %bb.c, %bb.d
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  br label %bb.e

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread: ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit
  %i.ad = tail call i8 @_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays5error()
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread
  %.sink = phi i8 [ 24, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14 ], [ %i.ad, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread ]
  %i.ae = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %.sink) ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @51, ptr nonnull inttoptr (i64 41 to ptr), ptr nonnull align 8 @52) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.4.0.i.i = zext i32 %i.aa to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.i.i, 32
  %.sroa.25.0.extract.shift.i = shl i32 %i.aa, 16
  %.sroa.36.0.extract.shift.i = and i64 %.sroa.4.0.insert.shift.i.i, -281474976710656
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.25.0.extract.shift.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 16
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.36.0.extract.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.39.0.extract.shift = lshr exact i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.39.0.extract.trunc = trunc nuw i64 %.sroa.39.0.extract.shift to i32
  ret i32 %.sroa.39.0.extract.trunc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs0_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRaNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr %i.a, ptr align 8 %1) #18
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRsNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsP_NtNtCs3oUPovFnLWP_4core3fmt3numsNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 2 %i.a, ptr align 8 %1) #18
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8 %1, ptr nonnull @72, i64 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs2_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull @53, i64 12)
  %i.c = load i32, ptr %0, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.d = call align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr nonnull align 8 %i.b, ptr nonnull %i.a, ptr nonnull align 8 @54)
  %i.e = call zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr align 8 %i.d)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs3_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = load i64, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.c) #18
  %i.d = load i16, ptr %i.a, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.j, align 8
  %i.k = call zeroext i1 @_RNvXs_NtCsaR3IayqLkK5_9jiff_core9timestampNtB4_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nonnull align 8 %i.b, ptr align 8 %1)
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i40 0, -254) i40 @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.sroa.03.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i40
  %.sroa.3.0.insert.shift = shl nuw i40 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj8_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([9 x i8]) align 1 captures(none) initializes((0, 1)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i64, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.02.0.copyload, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvXs5_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTimeINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB9_5civil8datetime8DateTimeE4from(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = zext i32 %.sroa.2.0.copyload to i64
  %sext.i = shl i64 %.sroa.01.0.extract.trunc.i.i, 48
  %.sroa.22.0.extract.shift.i.i = lshr i32 %.sroa.2.0.copyload, 16
  %.sroa.22.0.extract.trunc.i.i = zext nneg i32 %.sroa.22.0.extract.shift.i.i to i64
  %sext33.i = shl i64 %.sroa.22.0.extract.trunc.i.i, 56
  %i.a = ashr exact i64 %sext33.i, 16
  %1 = ashr i32 %.sroa.2.0.copyload, 24
  %2 = sext i32 %1 to i64
  %sext34.i = shl nsw i64 %2, 32
  %i.b = shl i64 %.sroa.0.0.copyload, 24
  %i.c = ashr i64 %i.b, 32
  %i.d = and i64 %i.c, -16777216
  %i.e = shl i64 %.sroa.0.0.copyload, 16
  %i.f = ashr i64 %i.e, 40
  %i.g = and i64 %i.f, -65536
  %i.h = shl i64 %.sroa.0.0.copyload, 8
  %i.i = ashr i64 %i.h, 48
  %i.j = and i64 %i.i, -256
  %i.k = or i64 %i.d, %sext.i
  %i.l = or i64 %i.k, %i.g
  %i.m = or i64 %i.l, %i.j
  %i.n = or i64 %i.m, %sext34.i
  %i.o = or i64 %i.n, %i.a
  ret i64 %i.o
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs5_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_11ISOWeekDateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 2 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core.exit:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.h = load i8, ptr %i.g, align 1
  store i8 %i.h, ptr %i.e, align 1
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaysECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 2 %0) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull %i.f) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.e) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %i.k, ptr align 8 %i.m, ptr nonnull @55, ptr nonnull %i.d)
  ret i1 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  %i.b = icmp ugt i64 %1, %3
  %or.cond.i.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond.i.i, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, %3
  br i1 %i.c, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %0
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp sgt i8 %i.g, -65
  br i1 %i.h, label %bb.d, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.j = load i8, ptr %i.i, align 1
  %.fr.i = freeze i8 %i.j
  %i.k = icmp sgt i8 %.fr.i, -65
  br i1 %i.k, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread4, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread

_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.b, %bb.d
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread4

_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread4: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit
  %.pn6 = sub nuw i64 %1, %0
  %.pn8 = getelementptr inbounds nuw i8, ptr %2, i64 %0
  %.pn = insertvalue { ptr, i64 } poison, ptr %.pn8, 0
  %i.l = insertvalue { ptr, i64 } %.pn, i64 %.pn6, 1
  ret { ptr, i64 } %i.l

_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread: ; preds = %bb.e, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.a, %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %2, i64 %3, i64 %0, i64 %1, ptr align 8 %4) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs6_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [96 x i8], align 8                ; 7 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 2 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = alloca [2 x i8], align 2                 ; 2 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.q, align 8
  %i.r = and i32 %.val, 8388608
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.p, ptr nonnull align 8 %1, ptr nonnull @56, i64 8)
  %i.s = call align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr nonnull align 8 %i.p, ptr nonnull @57, i64 4, ptr %0, ptr nonnull align 8 @58)
  %i.t = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr align 8 %i.s)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %1, ptr nonnull @56, i64 8)
  %i.u = load i64, ptr %0, align 8                ; 6 uses
  %i.v = lshr i64 %i.u, 48
  %i.w = trunc nuw i64 %i.v to i16
  store i16 %i.w, ptr %i.m, align 2
  %i.x = lshr i64 %i.u, 40
  %i.y = trunc i64 %i.x to i8
  store i8 %i.y, ptr %i.l, align 1
  %i.z = lshr i64 %i.u, 32
  %i.aa = trunc i64 %i.z to i8
  store i8 %i.aa, ptr %i.k, align 1
  %i.ab = lshr i64 %i.u, 24
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %i.j, align 1
  %i.ad = lshr i64 %i.u, 16
  %i.ae = trunc i64 %i.ad to i8
  store i8 %i.ae, ptr %i.i, align 1
  %i.af = lshr i64 %i.u, 8
  %i.ag = trunc i64 %i.af to i8
  store i8 %i.ag, ptr %i.h, align 1
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaysECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 2 %i.m) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull %i.l) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull %i.k) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull %i.j) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull %i.i) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.h) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  store ptr @59, ptr %i.n, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.g, ptr %i.am, align 8
  %i.an = call align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr nonnull align 8 %i.o, ptr nonnull %i.n, ptr nonnull align 8 @60)
  %i.ao = call zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr align 8 %i.an)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.ao, %bb.c ], [ %i.t, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXs8_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_4TimeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB9_(ptr nofree readonly align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.l = load i8, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.n = load i8, ptr %i.m, align 2
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %0, align 4
  %i.q = load i32, ptr %1, align 4
  %i.r = icmp eq i32 %i.p, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvXsD_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9TimestampNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpB9_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
end_hunk_2
