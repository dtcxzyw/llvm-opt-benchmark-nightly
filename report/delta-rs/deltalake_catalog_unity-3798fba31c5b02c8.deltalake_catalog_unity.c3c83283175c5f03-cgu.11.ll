inline.NumInlined: 1026
inline.NumDeleted: 496
begin_hunk_0_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
.thread:                                          ; preds = %bb.ax, %bb.ay, %.body.thread, %.thread208
  %.pn207 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp224, %bb.ax ], [ %eh.lpad-body158211, %.thread208 ], [ %lpad.thr_comm.split-lp224, %bb.ay ], [ %eh.lpad-body218, %.body.thread ]
  resume { ptr, i32 } %.pn207

.thread208:                                       ; preds = %bb.t, %bb.d
  %eh.lpad-body158211 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.bd, %bb.t ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(1016) %i.t) #35
          to label %.thread unwind label %bb.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull returned align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECsgO8S5jLFugx_23deltalake_catalog_unity)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull returned align 8 %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE13last_modifiedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = tail call { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.b)
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE8is_dirtyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load atomic i16, ptr %i.b monotonic, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  %i.e = load atomic i16, ptr %i.d monotonic, align 2
  %i.f = icmp ne i16 %i.c, %i.e
  fence acquire
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client7backoffNtB5_7Backoff4tick(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !noundef !12
  %i.j = fmul double %i.g, %i.i                   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !12
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef double @_RINvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs7IXFa44uZj7_9rand_core7RngCoreNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1d_4SendEL_ENtNtCsiGwHUc8edKX_4rand3rng3Rng12random_rangedINtNtNtB1f_3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, double noundef %i.e, double noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61)
  %.pre = load double, ptr %i.f, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = tail call noundef nonnull ptr @_RNvNtNtCsiGwHUc8edKX_4rand4rngs6thread3rng()
  store ptr %i.m, ptr %i.c, align 8
  %i.n = invoke noundef double @_RINvYNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.e, double noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !2824, !nonnull !12, !noundef !12 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !2824, !noundef !12
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !2824
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtCsbvkFyIu7lgC_4core4cell10UnsafeCellINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding12ReseedingRngNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtCs7IXFa44uZj7_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.t = load ptr, ptr %i.c, align 8, !alias.scope !2834, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !2834, !noundef !12
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !noalias !2834
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtCsbvkFyIu7lgC_4core4cell10UnsafeCellINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding12ReseedingRngNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtCs7IXFa44uZj7_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #37
  br label %_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.o

_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.b
  %i.y = phi double [ %.pre, %bb.b ], [ %i.g, %_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.l, %bb.b ], [ %i.n, %_RINvCsiGwHUc8edKX_4rand12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load double, ptr %i.z, align 8, !noundef !12
  %i.ab = call double @llvm.minnum.f64(double %i.aa, double %.sroa.0.0)
  store double %i.ab, ptr %i.f, align 8
  %i.ac = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.ac, label %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.a, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = bitcast double %i.y to i64              ; 3 uses
  %i.ae = and i64 %i.ad, 4503599627370495
  %i.af = or disjoint i64 %i.ae, 4503599627370496 ; 3 uses
  %i.ag = lshr i64 %i.ad, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i16
  %i.ai = and i16 %i.ah, 2047                     ; 8 uses
  %i.aj = add nsw i16 %i.ai, -1023
  %i.ak = icmp samesign ult i16 %i.ai, 992
  br i1 %i.ak, label %_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp samesign ult i16 %i.ai, 1023
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i16 %i.ai, 1075
  br i1 %i.am, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = zext nneg i64 %i.af to i128
  %i.ao = add nsw i16 %i.ai, -979
  %i.ap = zext nneg i16 %i.ao to i128
  %i.aq = shl nuw nsw i128 %i.an, %i.ap
  %i.ar = mul nuw nsw i128 %i.aq, 1000000000      ; 3 uses
  %i.as = lshr i128 %i.ar, 96                     ; 2 uses
  %i.at = trunc nuw nsw i128 %i.as to i32
  %i.au = and i128 %i.ar, 39614081257132168796771975168
  %i.av = icmp eq i128 %i.au, 0
  br i1 %i.av, label %bb.t, label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.aw = icmp samesign ult i16 %i.ai, 1087
  br i1 %i.aw, label %bb.p, label %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.a

bb.o:                                             ; preds = %bb.l
  %i.ax = sub nuw nsw i16 1075, %i.ai
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = lshr i64 %i.af, %i.ay
  %i.ba = zext nneg i16 %i.aj to i64
  %i.bb = shl i64 %i.ad, %i.ba
  %i.bc = and i64 %i.bb, 4503599627370495
  %i.bd = zext nneg i64 %i.bc to i128
  %i.be = mul nuw nsw i128 %i.bd, 1000000000      ; 3 uses
  %i.bf = lshr i128 %i.be, 52                     ; 2 uses
  %i.bg = trunc nuw nsw i128 %i.bf to i32
  %i.bh = and i128 %i.be, 2251799813685248
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = add nsw i16 %i.ai, -1075
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = shl nuw i64 %i.af, %i.bk
  br label %_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit

bb.q:                                             ; preds = %bb.o
  %i.bm = trunc i128 %i.bf to i1
  %i.bn = and i128 %i.be, 4503599627369984
  %i.bo = icmp ne i128 %i.bn, 2251799813685248
  %spec.select.not.i.i = or i1 %i.bo, %i.bm
  %i.bp = zext i1 %spec.select.not.i.i to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.01.0.i.i = phi i32 [ 0, %bb.o ], [ %i.bp, %bb.q ]
  %i.bq = add nuw nsw i32 %.sroa.01.0.i.i, %i.bg
  %.fr.i = freeze i32 %i.bq                       ; 2 uses
  %i.br = icmp eq i32 %.fr.i, 1000000000          ; 2 uses
  %i.bs = zext i1 %i.br to i64
  %spec.select10.i.i = add nuw nsw i64 %i.az, %i.bs ; 2 uses
  br i1 %i.br, label %_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit, label %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i

bb.s:                                             ; preds = %bb.m
  %i.bt = trunc i128 %i.as to i1
  %i.bu = and i128 %i.ar, 79228162514264337593543949824
  %i.bv = icmp ne i128 %i.bu, 39614081257132168796771975168
  %spec.select12.not.i.i = or i1 %i.bv, %i.bt
  %i.bw = zext i1 %spec.select12.not.i.i to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.m ], [ %i.bw, %bb.s ]
  %i.bx = add nuw nsw i32 %.sroa.0.0.i.i, %i.at
  %.fr19.i = freeze i32 %i.bx                     ; 2 uses
  %1 = icmp eq i32 %.fr19.i, 1000000000
  br i1 %1, label %_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit, label %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i

_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i: ; preds = %bb.t, %bb.r
  %.sroa.0.0.i = phi i64 [ %spec.select10.i.i, %bb.r ], [ 0, %bb.t ]
  %.sroa.02.0.sink.i.i = phi i32 [ %.fr.i, %bb.r ], [ %.fr19.i, %bb.t ]
  br label %_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit

_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i.a: ; preds = %bb.n, %bb.i
  %.sroa.0.0.i.a = phi i8 [ 0, %bb.i ], [ 1, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.0.0.i.a, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsb_NtCsbvkFyIu7lgC_4core4timeNtB5_21TryFromFloatSecsErrorNtNtB7_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #36
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core4timeNtB2_8Duration13from_secs_f64.exit: ; preds = %bb.j, %bb.p, %bb.r, %bb.t, %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i
  %.sroa.02.0.sink.i12.i = phi i32 [ %.sroa.02.0.sink.i.i, %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i ], [ 0, %bb.p ], [ 0, %bb.j ], [ 0, %bb.t ], [ 0, %bb.r ]
  %.sroa.0.011.i = phi i64 [ %.sroa.0.0.i, %_RNvMsc_NtCsbvkFyIu7lgC_4core4timeNtB5_8Duration17try_from_secs_f64.exit.i ], [ %i.bl, %bb.p ], [ 0, %bb.j ], [ 1, %bb.t ], [ %spec.select10.i.i, %bb.r ]
  %i.by = insertvalue { i64, i32 } poison, i64 %.sroa.0.011.i, 0
  %i.bz = insertvalue { i64, i32 } %i.by, i32 %.sroa.02.0.sink.i12.i, 1
  ret { i64, i32 } %i.bz
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE10select_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(192) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #1 {
bb.a:
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !prof !23

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #36
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %0, %bb.a ]
  %.sroa.4.0 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB5_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE25unlink_node_ao_from_dequeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.h = and i64 %i.g, -4                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 8 uses
  %i.j = and i64 %i.g, 3                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.k)
  store ptr %i.i, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !29, !noundef !12 ; 2 uses
  store i8 %i.m, ptr %i.b, align 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBB_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionjECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @67, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !12 ; 2 uses
  %.not = icmp ne ptr %i.r, null                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  %i.v = load i64, ptr %2, align 8, !range !39, !alias.scope !2835, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !2835, !noundef !12 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !2835, !noundef !12 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2835, !noundef !12
  store i64 1, ptr %2, align 8, !alias.scope !2835
  store ptr %i.ad, ptr %i.w, align 8, !alias.scope !2835
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !2835
  %.pre = load ptr, ptr %i.q, align 8, !noalias !2835
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.s, align 8, !alias.scope !2835
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ null, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !noalias !2835
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.af, ptr %i.ah, align 8, !alias.scope !2835
  br label %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !2835
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !2835, !noundef !12
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 8, !alias.scope !2835
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #32
  resume { ptr, i32 } %i.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEE6unlinkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtB1k_10concurrent11KeyHashDateNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !2838 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2844
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2844
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !2844
  %i.i = load i64, ptr %i.a, align 8, !range !39, !noalias !2844, !noundef !12
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !46, !noalias !2844, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2844
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !2844, !nonnull !12, !noundef !12
end_hunk_0
