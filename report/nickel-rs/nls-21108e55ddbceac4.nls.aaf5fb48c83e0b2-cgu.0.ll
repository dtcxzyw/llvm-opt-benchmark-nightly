Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN105_$LT$crossbeam_channel..channel..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8register17ha62f50996e1c2159E":bb.a

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 32
  %i.bz = load atomic i64, ptr %i.by acquire, align 8, !noalias !3500
  %cond.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %cond.i.i.i.i, label %_ZN17crossbeam_channel5waker5Waker10can_select17he17abbf8104028fcE.exit.i, label %"_ZN17crossbeam_channel5waker5Waker10can_select28_$u7b$$u7b$closure$u7d$$u7d$17h21f75e7433f15832E.exit.backedge.i.i.i"

"_ZN17crossbeam_channel5waker5Waker10can_select28_$u7b$$u7b$closure$u7d$$u7d$17h21f75e7433f15832E.exit.backedge.i.i.i": ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not14.i.i.i = icmp eq ptr %i.bv, %i.bt
  br i1 %.not14.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.loopexit.i:                                      ; preds = %"_ZN17crossbeam_channel5waker5Waker10can_select28_$u7b$$u7b$closure$u7d$$u7d$17h21f75e7433f15832E.exit.backedge.i.i.i", %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.cb = load i8, ptr %i.ca, align 8, !range !45, !noundef !44
  %i.cc = trunc nuw i8 %i.cb to i1
  br label %_ZN17crossbeam_channel5waker5Waker10can_select17he17abbf8104028fcE.exit.i

_ZN17crossbeam_channel5waker5Waker10can_select17he17abbf8104028fcE.exit.i: ; preds = %.split.i.i.i, %.loopexit.i
  %.sroa.0.0.i5 = phi i1 [ %i.cc, %.loopexit.i ], [ true, %.split.i.i.i ] ; 2 uses
  br i1 %i.aq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN17crossbeam_channel5waker5Waker10can_select17he17abbf8104028fcE.exit.i
  %i.cd = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ce = and i64 %i.cd, 9223372036854775807
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.z, !prof !46

bb.z:                                             ; preds = %bb.y
  %i.cg = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.cg, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %_ZN17crossbeam_channel5waker5Waker10can_select17he17abbf8104028fcE.exit.i
  %i.ch = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.ci = icmp eq i32 %i.ch, 2
  br i1 %i.ci, label %bb.ab, label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit", !prof !49

bb.ab:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.aa)
  br label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit"

bb.ac:                                            ; preds = %.body.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.ad:                                            ; preds = %bb.a
  %i.ck = load ptr, ptr %i.d, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cm = load atomic i8, ptr %i.cl monotonic, align 1
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.ae, label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit"

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cp = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.cq = extractvalue { i64, i32 } %i.cp, 0      ; 2 uses
  %i.cr = load i64, ptr %i.co, align 8, !noundef !44 ; 2 uses
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %.split.i, label %bb.af

.split.i:                                         ; preds = %bb.ae
  %i.ct = extractvalue { i64, i32 } %i.cp, 1      ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !range !85, !noundef !44
  %i.cx = icmp samesign ult i32 %i.ct, %i.cw
  br i1 %i.cx, label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit", label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp slt i64 %i.cq, %i.cr
  br i1 %i.cy, label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.i
  %i.cz = load atomic i8, ptr %i.cl seq_cst, align 8
  %i.da = icmp eq i8 %i.cz, 0
  br label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit"

bb.ah:                                            ; preds = %bb.a
  %i.db = load ptr, ptr %i.d, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dd = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.de = extractvalue { i64, i32 } %i.dd, 0      ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = urem i64 %i.df, 67
  %i.dh = getelementptr inbounds nuw [128 x i8], ptr @_ZN15crossbeam_utils6atomic11atomic_cell4lock5LOCKS17ha65c493edb139993E, i64 %i.dg ; 5 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load volatile { [2 x i64] }, ptr %i.dc, align 8 ; 2 uses
  fence acquire
  %i.dl = load atomic i64, ptr %i.dh monotonic, align 8
  %i.dm = icmp eq i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dn = atomicrmw xchg ptr %i.dh, i64 1 acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ak:                                            ; preds = %bb.ai
  %.fca.0.1.extract.i.i = extractvalue { [2 x i64] } %i.dk, 0, 1
  %.sroa.45.8.extract.trunc.i.i = trunc i64 %.fca.0.1.extract.i.i to i32
  %.fca.0.0.extract.i.i = extractvalue { [2 x i64] } %i.dk, 0, 0
  br label %_ZN15crossbeam_utils6atomic11atomic_cell11atomic_load17h6e85c3dd9c78c2fdE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i
  %.sroa.0.0910.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i ], [ 0, %bb.aj ] ; 5 uses
  %i.dp = icmp ult i32 %.sroa.0.0910.i.i, 7
  br i1 %i.dp, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.dq = icmp ult i32 %.sroa.0.0910.i.i, 11
  br i1 %i.dq, label %.loopexit.i.thread.i.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.dr, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.dr = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.dr, %.sroa.0.0910.i.i
  %i.ds = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.ds, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.dt = add nuw nsw i32 %.sroa.0.0910.i.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.dt, %.loopexit.i.thread.i.i ], [ %.sroa.0.0910.i.i, %.loopexit.i.i.i ]
  %i.du = atomicrmw xchg ptr %i.dh, i64 1 acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i, %bb.aj
  %.lcssa.i.i = phi i64 [ %i.dn, %bb.aj ], [ %i.du, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i ]
  fence release
  %i.dw = load i64, ptr %i.dc, align 8, !noundef !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !range !85, !noundef !44
  store atomic i64 %.lcssa.i.i, ptr %i.dh release, align 8
  br label %_ZN15crossbeam_utils6atomic11atomic_cell11atomic_load17h6e85c3dd9c78c2fdE.exit.i

_ZN15crossbeam_utils6atomic11atomic_cell11atomic_load17h6e85c3dd9c78c2fdE.exit.i: ; preds = %._crit_edge.i.i, %bb.ak
  %.sroa.3.0.i.i = phi i32 [ %i.dy, %._crit_edge.i.i ], [ %.sroa.45.8.extract.trunc.i.i, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.dw, %._crit_edge.i.i ], [ %.fca.0.0.extract.i.i, %bb.ak ] ; 2 uses
  %i.dz = icmp eq i64 %i.de, %.sroa.0.0.i.i
  br i1 %i.dz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN15crossbeam_utils6atomic11atomic_cell11atomic_load17h6e85c3dd9c78c2fdE.exit.i
  %i.ea = extractvalue { i64, i32 } %i.dd, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ult i32 %.sroa.3.0.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp samesign ult i32 %i.ea, %.sroa.3.0.i.i
  br label %_ZN17crossbeam_channel7flavors4tick7Channel8is_empty17h992d860428944cfeE.exit

bb.am:                                            ; preds = %_ZN15crossbeam_utils6atomic11atomic_cell11atomic_load17h6e85c3dd9c78c2fdE.exit.i
  %i.ee = icmp slt i64 %i.de, %.sroa.0.0.i.i
  br label %_ZN17crossbeam_channel7flavors4tick7Channel8is_empty17h992d860428944cfeE.exit

_ZN17crossbeam_channel7flavors4tick7Channel8is_empty17h992d860428944cfeE.exit: ; preds = %bb.al, %bb.am
  %.sroa.0.0.i7 = phi i1 [ %i.ed, %bb.al ], [ %i.ee, %bb.am ]
  %i.ef = xor i1 %.sroa.0.0.i7, true
  br label %"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit"

"_ZN112_$LT$crossbeam_channel..flavors..array..Receiver$LT$T$GT$$u20$as$u20$crossbeam_channel..select..SelectHandle$GT$8is_ready17h1af7c156e1150cc7E.exit": ; preds = %bb.ag, %bb.af, %.split.i, %bb.ad, %bb.ab, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZN17crossbeam_channel7flavors4tick7Channel8is_empty17h992d860428944cfeE.exit
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ], [ %.sroa.0.0.i5, %bb.ab ], [ %i.ef, %_ZN17crossbeam_channel7flavors4tick7Channel8is_empty17h992d860428944cfeE.exit ], [ %i.r, %bb.c ], [ %i.z, %bb.e ], [ %.sroa.0.0.i5, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i ], [ false, %bb.ad ], [ %i.da, %bb.ag ], [ false, %bb.af ], [ false, %.split.i ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f4f4452170017abE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 16               ; 13 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3634)
  %.sroa.010.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !3634, !noalias !3635, !nonnull !44, !noundef !44 ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3634, !noalias !3635 ; 4 uses
  %.sroa.311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.311.0.copyload.i = load i64, ptr %.sroa.311.0..sroa_idx.i, align 8, !alias.scope !3634, !noalias !3635 ; 6 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.010.0.copyload.i, align 16, !noalias !3636
  %i.h = icmp eq i64 %.sroa.2.0.copyload.i, 0     ; 2 uses
  br i1 %i.h, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5afb1b96b88d94adE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = mul i64 %.sroa.2.0.copyload.i, 24
  %i.j = and i64 %i.i, -16                        ; 2 uses
  %i.k = add i64 %.sroa.2.0.copyload.i, 49
  %i.l = add i64 %i.k, %i.j
  %i.m = sub i64 -32, %i.j
  %i.n = getelementptr inbounds i8, ptr %.sroa.010.0.copyload.i, i64 %i.m
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5afb1b96b88d94adE.exit"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5afb1b96b88d94adE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 4 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.n, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i, i64 16 ; 3 uses
  %i.p = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1) ; 3 uses
  %i.q = getelementptr i8, ptr %.sroa.010.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.r = getelementptr i8, ptr %i.q, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3638
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.010.0.copyload.i, ptr %.sroa.710.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.o, ptr %.sroa.813.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.r, ptr %.sroa.916.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <16 x i1> %i.p, ptr %.sroa.1019.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.311.0.copyload.i, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !3639, !noalias !3637
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3637, !noalias !3640, !noundef !44
  %i.u = icmp eq i64 %i.t, 0
  %i.v = add i64 %.sroa.311.0.copyload.i, 1
  %i.w = lshr i64 %i.v, 1
  %.sroa.0.0.i = select i1 %i.u, i64 %.sroa.311.0.copyload.i, i64 %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !3641, !noalias !3642, !noundef !44
  %i.aa = icmp ugt i64 %.sroa.0.0.i, %i.z
  br i1 %i.aa, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h04bb36f7646ac6c5E.exit.i", !prof !49

.body.i:                                          ; preds = %bb.bb, %bb.ba
  call fastcc void @"_ZN4core3ptr151drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$$GT$17hfefe9b87c72da09eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #77, !noalias !3643
  br label %bb.bf

bb.b:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5afb1b96b88d94adE.exit"
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h4cdc8321a9e0205dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h04bb36f7646ac6c5E.exit.i" unwind label %bb.bg, !noalias !3640 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h04bb36f7646ac6c5E.exit.i": ; preds = %bb.b, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5afb1b96b88d94adE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3644
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.f, align 8, !noalias !3637
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx5, align 8, !noalias !3637
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx8, align 8, !noalias !3637
  %.sroa.710.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %.sroa.010.0.copyload.i, ptr %.sroa.710.0..sroa_idx11, align 8, !noalias !3637
  %.sroa.813.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.o, ptr %.sroa.813.0..sroa_idx14, align 8, !noalias !3637
  %.sroa.916.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.r, ptr %.sroa.916.0..sroa_idx17, align 8, !noalias !3637
  %.sroa.1019.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store <16 x i1> %i.p, ptr %.sroa.1019.0..sroa_idx20, align 8, !noalias !3637
  %.sroa.12.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store i64 %.sroa.311.0.copyload.i, ptr %.sroa.12.0..sroa_idx23, align 8, !noalias !3637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  %i.ac = icmp eq i64 %.sroa.311.0.copyload.i, 0
  br i1 %i.ac, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h88e900ba89b5fad0E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h04bb36f7646ac6c5E.exit.i"
  %i.ad = bitcast <16 x i1> %i.p to i16
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1f8eb9be60deeefeE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %.lcssa77115.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.promoted12.i.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1f8eb9be60deeefeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.lcssa78112.i.i.i.i.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.i.i.i.i ], [ %.promoted8.i.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1f8eb9be60deeefeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ah = phi i16 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1f8eb9be60deeefeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ai = phi i64 [ %.sroa.311.0.copyload.i, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1f8eb9be60deeefeE.exit.i.i.i.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h726f88406a9535b4E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store ptr %i.an, ptr %.sroa.813.0..sroa_idx14, align 8, !alias.scope !3652, !noalias !3653
  store ptr %i.am, ptr %.sroa.710.0..sroa_idx11, align 8, !alias.scope !3652, !noalias !3653
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h726f88406a9535b4E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa77115.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa78112.i.i.i.i.i.i, %bb.c ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !3654
  %i.al = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -384 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h726f88406a9535b4E.exit.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.c
  %.promoted12.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa77115.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa78112.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i.i.i.i  ; 3 uses
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [24 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %i.ai, -1                       ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -24
  %.sroa.061.0.copyload62.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !3655 ; 6 uses
  %.sroa.7.0..sroa_idx63.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.at, i64 -16
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx63.i.i.i.i.i.i, align 8, !noalias !3655 ; 7 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx63.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx63.sroa_idx.i.i.i.i.i.i, align 8, !noalias !3655 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.061.0.copyload62.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.bc, label %bb.d

bb.d:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h726f88406a9535b4E.exit.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3657
  %i.aw = load <2 x i64>, ptr %i.x, align 8, !alias.scope !3658, !noalias !3659 ; 3 uses
  %i.ax = shufflevector <2 x i64> %i.aw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ay = xor <2 x i64> %i.ax, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.ay, ptr %i.e, align 16, !alias.scope !3660, !noalias !3657
  %i.az = shufflevector <2 x i64> %i.aw, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = xor <2 x i64> %i.az, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.ba, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !3660, !noalias !3657
  store <2 x i64> %i.aw, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !3660, !noalias !3657
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3660, !noalias !3657
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3661
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !3661
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h1f31902e5fe51f38E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 8), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.bc, label %..loopexit19.i.i.i.i.i_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i

..loopexit19.i.i.i.i.i_crit_edge.i.i.i.i.i.i:     ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16, !alias.scope !3664, !noalias !3657
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.pre.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3664, !noalias !3657
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.pre.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !3664, !noalias !3657
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.pre.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3664, !noalias !3657
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !3664, !noalias !3657
  %.pre145.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !3664, !noalias !3657
  br label %.loopexit19.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i:   ; preds = %bb.d
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !3665
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.ae, align 16, !noalias !3665
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3666
  %.promoted97.i.i.i.i.i.i = load i64, ptr %i.e, align 16, !noalias !3666
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !3666
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3666
  %.promoted104.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !3666
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i
  %i.bd = phi i64 [ %i.lu, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted104.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.be = phi i64 [ %i.lv, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bf = phi i64 [ %i.lw, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 5 uses
  %i.bg = phi i64 [ %i.lx, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted97.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bh = phi i64 [ %i.ly, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i92.i.i.i.i.i.i = phi i64 [ %storemerge.i93.i.i.i.i.i.i, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 5 uses
  %i.bi = phi i64 [ %i.lz, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %"_ZN90_$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$u20$as$u20$core..hash..Hash$GT$4hash17h86ca19b9d98c6b9bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  %i.bk = load i32, ptr %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !77, !alias.scope !3668, !noalias !3669, !noundef !44 ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3670
  store i64 %i.bl, ptr %i.c, align 8, !noalias !3670
  %i.bm = add i64 %i.bi, 8
  %i.bn = icmp eq i64 %storemerge.i92.i.i.i.i.i.i, 0
  br i1 %i.bn, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = sub i64 8, %storemerge.i92.i.i.i.i.i.i  ; 3 uses
  %.sroa.0.0.i.i32.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 8) ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 3                   ; 3 uses
  %.sroa.011.0.i.i33.i.i.i.i.i.i = select i1 %i.bp, i64 %i.bl, i64 0 ; 2 uses
  %.sroa.0.0.i11.i34.i.i.i.i.i.i = select i1 %i.bp, i64 4, i64 0 ; 4 uses
  %i.bq = or disjoint i64 %.sroa.0.0.i11.i34.i.i.i.i.i.i, 1
end_hunk_0
begin_hunk_1_@_ZN3md58compress4soft8compress17hbeab66e367b3ff69E:.lr.ph
  %i.pw = or i32 %i.pu, %i.pv
  %i.px = xor i32 %i.pw, %i.pm
  %i.py = add i32 %.sroa.16.0.copyload.i, 1700485571
  %i.pz = add i32 %i.py, %i.ow
  %i.qa = add i32 %i.pz, %i.px                    ; 2 uses
  %i.qb = tail call i32 @llvm.fshl.i32(i32 %i.qa, i32 %i.qa, i32 6)
  %i.qc = add i32 %i.qb, %i.pu                    ; 5 uses
  %i.qd = xor i32 %i.pm, -1
  %i.qe = or i32 %i.qc, %i.qd
  %i.qf = xor i32 %i.qe, %i.pu
  %i.qg = add i32 %.sroa.7.0.copyload.i, -1894986606
  %i.qh = add i32 %i.qg, %i.pe
  %i.qi = add i32 %i.qh, %i.qf                    ; 2 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.qi, i32 %i.qi, i32 10)
  %i.qk = add i32 %i.qj, %i.qc                    ; 5 uses
  %i.ql = xor i32 %i.pu, -1
  %i.qm = or i32 %i.qk, %i.ql
  %i.qn = xor i32 %i.qm, %i.qc
  %i.qo = add i32 %.sroa.14.0.copyload.i, -1051523
  %i.qp = add i32 %i.qo, %i.pm
  %i.qq = add i32 %i.qp, %i.qn                    ; 2 uses
  %i.qr = tail call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 15)
  %i.qs = add i32 %i.qr, %i.qk                    ; 5 uses
  %i.qt = xor i32 %i.qc, -1
  %i.qu = or i32 %i.qs, %i.qt
  %i.qv = xor i32 %i.qu, %i.qk
  %i.qw = add i32 %.sroa.5.0.copyload.i, -2054922799
  %i.qx = add i32 %i.qw, %i.pu
  %i.qy = add i32 %i.qx, %i.qv                    ; 2 uses
  %i.qz = tail call i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qy, i32 21)
  %i.ra = add i32 %i.qz, %i.qs                    ; 5 uses
  %i.rb = xor i32 %i.qk, -1
  %i.rc = or i32 %i.ra, %i.rb
  %i.rd = xor i32 %i.rc, %i.qs
  %i.re = add i32 %.sroa.12.0.copyload.i, 1873313359
  %i.rf = add i32 %i.re, %i.qc
  %i.rg = add i32 %i.rf, %i.rd                    ; 2 uses
  %i.rh = tail call i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 6)
  %i.ri = add i32 %i.rh, %i.ra                    ; 5 uses
  %i.rj = xor i32 %i.qs, -1
  %i.rk = or i32 %i.ri, %i.rj
  %i.rl = xor i32 %i.rk, %i.ra
  %i.rm = add i32 %.sroa.19.0.copyload.i, -30611744
  %i.rn = add i32 %i.rm, %i.qk
  %i.ro = add i32 %i.rn, %i.rl                    ; 2 uses
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %i.ro, i32 %i.ro, i32 10)
  %i.rq = add i32 %i.rp, %i.ri                    ; 5 uses
  %i.rr = xor i32 %i.ra, -1
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = xor i32 %i.rs, %i.ri
  %i.ru = add i32 %.sroa.10.0.copyload.i, -1560198380
  %i.rv = add i32 %i.ru, %i.qs
  %i.rw = add i32 %i.rv, %i.rt                    ; 2 uses
  %i.rx = tail call i32 @llvm.fshl.i32(i32 %i.rw, i32 %i.rw, i32 15)
  %i.ry = add i32 %i.rx, %i.rq                    ; 5 uses
  %i.rz = xor i32 %i.ri, -1
  %i.sa = or i32 %i.ry, %i.rz
  %i.sb = xor i32 %i.sa, %i.rq
  %i.sc = add i32 %.sroa.17.0.copyload.i, 1309151649
  %i.sd = add i32 %i.sc, %i.ra
  %i.se = add i32 %i.sd, %i.sb                    ; 2 uses
  %i.sf = tail call i32 @llvm.fshl.i32(i32 %i.se, i32 %i.se, i32 21)
  %i.sg = add i32 %i.sf, %i.ry                    ; 5 uses
  %i.sh = xor i32 %i.rq, -1
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = xor i32 %i.si, %i.ry
  %i.sk = add i32 %.sroa.8.0.copyload.i, -145523070
  %i.sl = add i32 %i.sk, %i.ri
  %i.sm = add i32 %i.sl, %i.sj                    ; 2 uses
  %i.sn = tail call i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 6)
  %i.so = add i32 %i.sn, %i.sg                    ; 5 uses
  %i.sp = xor i32 %i.ry, -1
  %i.sq = or i32 %i.so, %i.sp
  %i.sr = xor i32 %i.sq, %i.sg
  %i.ss = add i32 %.sroa.15.0.copyload.i, -1120210379
  %i.st = add i32 %i.ss, %i.rq
  %i.su = add i32 %i.st, %i.sr                    ; 2 uses
  %i.sv = tail call i32 @llvm.fshl.i32(i32 %i.su, i32 %i.su, i32 10)
  %i.sw = add i32 %i.sv, %i.so                    ; 4 uses
  %i.sx = xor i32 %i.sg, -1
  %i.sy = or i32 %i.sw, %i.sx
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %.sroa.6.0.copyload.i, 718787259
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 15)
  %i.te = add i32 %i.td, %i.sw                    ; 3 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %.sroa.13.0.copyload.i, -343485551
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 21)
  %i.tm = add i32 %i.so, %i.h                     ; 2 uses
  %i.tn = add i32 %i.te, %i.g
  %i.to = add i32 %i.tn, %i.tl                    ; 2 uses
  %i.tp = add i32 %i.te, %i.f                     ; 2 uses
  %i.tq = add i32 %i.sw, %i.e                     ; 2 uses
  %i.tr = icmp eq ptr %i.i, %i.a
  br i1 %i.tr, label %bb.b, label %bb.a

bb.b:                                             ; preds = %bb.a
  store i32 %i.to, ptr %i.b, align 4, !alias.scope !41669, !noalias !41670
  store i32 %i.tp, ptr %i.c, align 4, !alias.scope !41669, !noalias !41670
  store i32 %i.tq, ptr %i.d, align 4, !alias.scope !41669, !noalias !41670
  store i32 %i.tm, ptr %0, align 4, !alias.scope !41669, !noalias !41670
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls10background14BackgroundJobs23eval_file_with_priority17h798f0437b28896f0E(i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(856) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 10 uses
  %i.c = alloca [160 x i8], align 8               ; 10 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 6 uses
  %.sroa.6.i.i.i = alloca [120 x i8], align 8     ; 4 uses
  %i.h = alloca [160 x i8], align 8               ; 15 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 10 uses
  %.sroa.6.i.i = alloca [112 x i8], align 8       ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [128 x i8], align 8               ; 22 uses
  %i.v = alloca [104 x i8], align 8               ; 4 uses
  %i.w = alloca [104 x i8], align 8               ; 7 uses
  %i.x = alloca [72 x i8], align 8                ; 10 uses
  %i.y = alloca [104 x i8], align 8               ; 4 uses
  %i.z = alloca [104 x i8], align 8               ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [72 x i8], align 8               ; 15 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [104 x i8], align 8              ; 18 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [112 x i8], align 8              ; 8 uses
  %i.ah = alloca [120 x i8], align 8              ; 20 uses
  %i.ai = alloca [120 x i8], align 8              ; 9 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !41934
  invoke fastcc void @_ZN3nls5world5World7file_id17hf1f439b93e36cbf1E(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(856) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.a
  %i.aj = load i64, ptr %i.ag, align 8, !range !147, !noalias !41934, !noundef !44
  %.not.i = icmp eq i64 %i.aj, -9223372036854775800
  br i1 %.not.i, label %bb.b, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$nickel_lang_parser..files..FileId$GT$$C$nls..error..Error$GT$$GT$17h796312107d1b14ceE.exit.i"

bb.b:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !range !80, !noalias !41934, !noundef !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.an = load i32, ptr %i.am, align 4, !noalias !41934 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !41934
  %i.ao = trunc nuw i32 %i.al to i1
  br i1 %i.ao, label %bb.c, label %_ZN3nls10background14BackgroundJobs8contents17h2f69acf6f6d90410E.exit.thread

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$nickel_lang_parser..files..FileId$GT$$C$nls..error..Error$GT$$GT$17h796312107d1b14ceE.exit.i": ; preds = %.noexc
  call void @"_ZN4core3ptr38drop_in_place$LT$nls..error..Error$GT$17h720c23c31a986ec2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.ag), !noalias !41935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !41934
  br label %_ZN3nls10background14BackgroundJobs8contents17h2f69acf6f6d90410E.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !41934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !41934
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke void @_ZN16nickel_lang_core5cache10ImportData18transitive_imports17hf7b0a9d2bc5b61a7E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ap, i32 noundef %i.an)
          to label %.noexc7 unwind label %.body

.noexc7:                                          ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ae, align 8, !noalias !41934, !nonnull !44, !noundef !44 ; 5 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.435.0.copyload.i = load i64, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !41934 ; 5 uses
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.537.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !41934
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload.i, align 16, !noalias !41936
  %i.aq = icmp eq i64 %.sroa.435.0.copyload.i, 0
  br i1 %i.aq, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5aaaf58dbb2edf35E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %.noexc7
  %i.ar = icmp slt i64 %.sroa.435.0.copyload.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ar)
  %i.as = shl i64 %.sroa.435.0.copyload.i, 2
  %i.at = and i64 %i.as, -16                      ; 2 uses
  %i.au = add nsw i64 %.sroa.435.0.copyload.i, 33
  %i.av = add i64 %i.au, %i.at
  %i.aw = sub nuw nsw i64 -16, %i.at
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.aw
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5aaaf58dbb2edf35E.exit.i"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5aaaf58dbb2edf35E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %.noexc7
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.av, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %.noexc7 ]
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.ax, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %.noexc7 ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %.noexc7 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.az = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ba = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.435.0.copyload.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !41934
  call void @llvm.experimental.noalias.scope.decl(metadata !41937)
  call void @llvm.experimental.noalias.scope.decl(metadata !41938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !41939
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ab, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ay, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.bb, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store <16 x i1> %i.az, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.0.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 %.sroa.537.0.copyload.i, ptr %.sroa.0.sroa.11.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !41940, !noalias !41941
  call void @llvm.experimental.noalias.scope.decl(metadata !41942)
  call void @llvm.experimental.noalias.scope.decl(metadata !41943)
  call void @llvm.experimental.noalias.scope.decl(metadata !41944)
  call void @llvm.experimental.noalias.scope.decl(metadata !41945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !41946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41946
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4f3c7ace8a91f4bE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %bb.e unwind label %bb.d, !noalias !41947

bb.d:                                             ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5aaaf58dbb2edf35E.exit.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.e:                                             ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5aaaf58dbb2edf35E.exit.i"
  %i.bd = load i64, ptr %i.z, align 8, !range !70, !noalias !41946, !noundef !44
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.af, align 8, !alias.scope !41948, !noalias !41949
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !alias.scope !41948, !noalias !41949
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.bf, align 8, !alias.scope !41948, !noalias !41949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !41946
  call void @llvm.experimental.noalias.scope.decl(metadata !41950)
  call void @llvm.experimental.noalias.scope.decl(metadata !41951)
  call void @llvm.experimental.noalias.scope.decl(metadata !41952)
  call void @llvm.experimental.noalias.scope.decl(metadata !41953)
  call void @llvm.experimental.noalias.scope.decl(metadata !41954)
  call void @llvm.experimental.noalias.scope.decl(metadata !41955)
  %i.bg = load i64, ptr %i.ab, align 8, !range !70, !alias.scope !41956, !noalias !41957, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h191c316ac1b2de8bE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !41956, !noalias !41957, !noundef !44 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZN4core4iter6traits8iterator8Iterator7collect17h191c316ac1b2de8bE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !41956, !noalias !41957, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bg) #66, !noalias !41958
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h191c316ac1b2de8bE.exit.i

bb.i:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$$LP$url..Url$C$alloc..sync..Arc$LT$str$GT$$RP$$GT$17hbb3b1084d9b651e2E"(ptr noalias noundef align 8 dereferenceable(104) %i.y) #77
          to label %bb.aa unwind label %bb.z, !noalias !41959

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !41946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false), !noalias !41946
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !41960
  %i.bl = call noundef align 8 dereferenceable_or_null(416) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, 9) 8) #66, !noalias !41960 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 416, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !41959

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false), !noalias !41959
  store i64 4, ptr %i.aa, align 8, !noalias !41946
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41946
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !41946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !41946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !41946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !41946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false), !noalias !41957
  call void @llvm.experimental.noalias.scope.decl(metadata !41961)
  call void @llvm.experimental.noalias.scope.decl(metadata !41962)
  call void @llvm.experimental.noalias.scope.decl(metadata !41963)
  call void @llvm.experimental.noalias.scope.decl(metadata !41964)
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i.i.i.i.i.i", %bb.l
  %i.bn = phi ptr [ %i.cg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i.i.i.i.i.i" ], [ %i.bl, %bb.l ]
  %i.bo = phi i64 [ %i.ci, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !41965
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4f3c7ace8a91f4bE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %bb.r unwind label %bb.q, !noalias !41966

bb.n:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %i.bv, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !41967)
  call void @llvm.experimental.noalias.scope.decl(metadata !41968), !noalias !41969
  call void @llvm.experimental.noalias.scope.decl(metadata !41970), !noalias !41969
  call void @llvm.experimental.noalias.scope.decl(metadata !41971), !noalias !41969
  call void @llvm.experimental.noalias.scope.decl(metadata !41972), !noalias !41969
  call void @llvm.experimental.noalias.scope.decl(metadata !41973), !noalias !41969
  %i.bp = load i64, ptr %i.x, align 8, !range !70, !alias.scope !41974, !noalias !41975, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i5.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i5.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !41974, !noalias !41975, !noundef !44 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.body.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !41974, !noalias !41975, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bp) #66, !noalias !41976
  br label %.body.i.i.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.r:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.w, align 8, !range !70, !noalias !41965, !noundef !44
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bw, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !41965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false), !noalias !41965
  %i.bx = icmp samesign ult i64 %i.bo, 88686269585142076
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i64, ptr %i.aa, align 8, !range !74, !alias.scope !41969, !noalias !41977, !noundef !44
  %i.bz = icmp eq i64 %i.bo, %i.by
  br i1 %i.bz, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41965
  call void @llvm.experimental.noalias.scope.decl(metadata !41978)
  call void @llvm.experimental.noalias.scope.decl(metadata !41979)
  call void @llvm.experimental.noalias.scope.decl(metadata !41980)
  call void @llvm.experimental.noalias.scope.decl(metadata !41981)
  call void @llvm.experimental.noalias.scope.decl(metadata !41982)
  call void @llvm.experimental.noalias.scope.decl(metadata !41983)
  %i.ca = load i64, ptr %i.x, align 8, !range !70, !alias.scope !41984, !noalias !41975, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbea88df6090f4fb6E.exit.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !41984, !noalias !41975, !noundef !44 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbea88df6090f4fb6E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !41984, !noalias !41975, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #66, !noalias !41985
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbea88df6090f4fb6E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i_crit_edge.i.i.i.i.i", %bb.s
  %i.cg = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2fd798e772532174E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bn, %bb.s ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ch, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false), !noalias !41986
  %i.ci = add nuw nsw i64 %i.bo, 1                ; 2 uses
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !41969, !noalias !41977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !41965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41965
end_hunk_1
begin_hunk_2_@_ZN3nls5world5World8add_file17h34efd2ef24af69b8E:bb.a
          to label %.noexc69 unwind label %bb.be  ; 2 uses

.noexc69:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i"
  %i.kl = extractvalue { i64, i64 } %i.kk, 0
  %i.km = extractvalue { i64, i64 } %i.kk, 1      ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.km, ptr %i.kn, align 8, !noalias !54985
  store i8 1, ptr %i.kh, align 8, !noalias !54985
  br label %bb.bm

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit": ; preds = %bb.bl, %bb.bk
  %.not38 = icmp eq ptr %.sroa.0141.0.copyload142, null
  br i1 %.not38, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit.thread", label %bb.bn

bb.bm:                                            ; preds = %.noexc69, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.km, %.noexc69 ]
  %i.ko = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ], [ %i.kl, %.noexc69 ] ; 2 uses
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kg, align 8, !noalias !54984
  br label %bb.bn

bb.bn:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit", %bb.bm
  %.sroa.12.0 = phi i64 [ %.pre-phi.i, %bb.bm ], [ %.sroa.6143.sroa.7.0.copyload, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ]
  %.sroa.11.0 = phi i64 [ %i.ko, %bb.bm ], [ %.sroa.6143.sroa.6.0.copyload, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ]
  %.sroa.10.0 = phi i64 [ 0, %bb.bm ], [ %.sroa.6143.sroa.5.0.copyload, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ] ; 3 uses
  %.sroa.9.0 = phi i64 [ 0, %bb.bm ], [ %.sroa.6143.sroa.4.0.copyload, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ]
  %.sroa.7.0 = phi i64 [ 0, %bb.bm ], [ %.sroa.6143.sroa.0.0.copyload, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ] ; 11 uses
  %.sroa.0.0 = phi ptr [ @2, %bb.bm ], [ %.sroa.0141.0.copyload142, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hf17948f7bd972418E.exit" ] ; 9 uses
  %i.kq = invoke fastcc noundef i8 @_ZN18nickel_lang_parser3ast11InputFormat9from_path17h235d97bb06d60de4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.bo unwind label %bb.bd     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %.not39 = icmp eq i8 %i.kq, 5
  %. = select i1 %.not39, i8 0, i8 %i.kq
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i8 %., ptr %i.ks, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.kt = invoke noundef i32 @_ZN16nickel_lang_core5cache11SourceCache14replace_string17hce9865be8d0da4f1E(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.kr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
          to label %bb.bp unwind label %.thread357 ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ku = icmp eq i64 %.sroa.7.0, 0               ; 4 uses
  br i1 %i.ku, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9c4ebe0989fdf676E.exit", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kv = add i64 %.sroa.7.0, 1                   ; 2 uses
  %i.kw = icmp ugt i64 %i.kv, 4611686018427387900
  br i1 %i.kw, label %bb.bs, label %bb.br, !prof !79

bb.br:                                            ; preds = %bb.bq
  %i.kx = shl nuw i64 %i.kv, 2
  %i.ky = add nuw i64 %i.kx, 12
  %i.kz = and i64 %i.ky, -16                      ; 3 uses
  %i.la = add nsw i64 %.sroa.7.0, 17              ; 2 uses
  %i.lb = add i64 %i.kz, %i.la                    ; 5 uses
  %i.lc = icmp ult i64 %i.lb, %i.kz
  %i.ld = icmp ugt i64 %i.lb, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.lc, %i.ld
  br i1 %or.cond.i.i.i.i, label %bb.bs, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, !prof !69

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.br
  %i.le = icmp eq i64 %i.lb, 0
  br i1 %i.le, label %bb.bu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !54986
  %i.lf = call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.lb, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !54986 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.lh = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc74 unwind label %.thread357

bb.bt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.li = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.lb)
          to label %.noexc74 unwind label %.thread357

.noexc74:                                         ; preds = %bb.bt, %bb.bs
  %.pn.i.i.i = phi { i64, i64 } [ %i.lh, %bb.bs ], [ %i.li, %bb.bt ]
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %bb.bv

bb.bu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i = phi ptr [ %i.lf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i, i64 %i.kz
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc74
  %.pre-phi.i.i = phi i64 [ %i.la, %bb.bu ], [ %.pre.i.i, %.noexc74 ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.7.0, %bb.bu ], [ %.sroa.7.0.ph.i.i.i, %.noexc74 ] ; 3 uses
  %.sroa.09.0.i.i = phi ptr [ %i.lj, %bb.bu ], [ null, %.noexc74 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0.i.i, ptr nonnull align 1 %.sroa.0.0, i64 %.pre-phi.i.i, i1 false), !noalias !54987
  %i.lk = xor i64 %.sroa.7.0, -1
  %i.ll = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %i.lk ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ll) ]
  %i.lm = xor i64 %.sroa.5.0.i.i, -1
  %i.ln = getelementptr [4 x i8], ptr %.sroa.09.0.i.i, i64 %i.lm ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ln) ]
  %i.lo = shl i64 %.sroa.5.0.i.i, 2
  %i.lp = add i64 %i.lo, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ln, ptr nonnull align 4 %i.ll, i64 %i.lp, i1 false), !noalias !54987
  br label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9c4ebe0989fdf676E.exit"

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9c4ebe0989fdf676E.exit": ; preds = %bb.bv, %bb.bp
  %.sroa.7.0.i = phi i64 [ %.sroa.10.0, %bb.bv ], [ 0, %bb.bp ]
  %.sroa.6.0.i = phi i64 [ %.sroa.9.0, %bb.bv ], [ 0, %bb.bp ]
  %.sroa.5.0.i71 = phi i64 [ %.sroa.5.0.i.i, %bb.bv ], [ 0, %bb.bp ]
  %.sroa.0.0.i = phi ptr [ %.sroa.09.0.i.i, %bb.bv ], [ @2, %bb.bp ]
  store ptr %.sroa.0.0.i, ptr %i.ai, align 8
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  store i64 %.sroa.5.0.i71, ptr %.sroa.4200.0..sroa_idx, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.6202.0..sroa_idx, align 8
  %.sroa.7203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 %.sroa.11.0, ptr %.sroa.7203.0..sroa_idx, align 8
  %.sroa.8204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 %.sroa.12.0, ptr %.sroa.8204.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54988
  store i64 0, ptr %i.d, align 8, !noalias !54988
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.lq, align 8, !noalias !54988
  %i.lr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.lr, align 8, !noalias !54988
  invoke fastcc void @_ZN3nls5world5World10invalidate14invalidate_rec17h0de7f4e151c07209E(ptr noalias noundef nonnull align 8 dereferenceable(856) %1, ptr noalias noundef align 8 dereferenceable(24) %i.d, i32 noundef %i.kt)
          to label %bb.by unwind label %bb.bw, !noalias !54989

bb.bw:                                            ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9c4ebe0989fdf676E.exit"
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %.val.i76 = load i64, ptr %i.d, align 8, !noalias !54988 ; 2 uses
  %i.lt = icmp eq i64 %.val.i76, 0
  br i1 %i.lt, label %.body78.thread366, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.val1.i77 = load ptr, ptr %i.lq, align 8, !noalias !54988, !nonnull !44, !noundef !44
  %i.lu = shl nuw i64 %.val.i76, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i77, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !54988
  br label %.body78.thread366

.body78.thread:                                   ; preds = %bb.cd, %.body91, %.loopexit287
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit287 ], [ %eh.lpad-body92, %.body91 ], [ %eh.lpad-body92, %bb.cd ]
  %.val57362 = load ptr, ptr %i.ai, align 8
  %.val58363 = load i64, ptr %.sroa.4200.0..sroa_idx, align 8, !noundef !44
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd0e1c11019f702a1E"(ptr %.val57362, i64 %.val58363) #77
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit118"

.body78.thread366:                                ; preds = %bb.bw, %bb.bx
  %.val57369 = load ptr, ptr %i.ai, align 8
  %.val58370 = load i64, ptr %.sroa.4200.0..sroa_idx, align 8, !noundef !44
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd0e1c11019f702a1E"(ptr %.val57369, i64 %.val58370) #77
  br label %.thread354

.body78:                                          ; preds = %bb.cj, %._crit_edge319, %bb.by
  %.sroa.016.2.ph = phi i1 [ false, %._crit_edge319 ], [ true, %bb.by ], [ false, %bb.cj ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val57 = load ptr, ptr %i.ai, align 8
  %.val58 = load i64, ptr %.sroa.4200.0..sroa_idx, align 8, !noundef !44
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd0e1c11019f702a1E"(ptr %.val57, i64 %.val58) #77
  br i1 %.sroa.016.2.ph, label %.thread354, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit118"

.thread354:                                       ; preds = %.body78.thread366, %.body78
  %.pn371 = phi { ptr, i32 } [ %i.ls, %.body78.thread366 ], [ %lpad.loopexit.split-lp, %.body78 ]
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd0e1c11019f702a1E"(ptr nonnull %.sroa.0.0, i64 %.sroa.7.0) #77
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit118"

.loopexit287:                                     ; preds = %bb.cn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body78.thread

bb.by:                                            ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9c4ebe0989fdf676E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !54990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54988
  invoke fastcc void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hc7d053578e2e9491E"(ptr noalias noundef align 8 dereferenceable(48) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah)
          to label %bb.bz unwind label %.body78

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0.0, align 16, !noalias !54991
  br i1 %i.ku, label %bb.ca, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80: ; preds = %bb.bz
  %i.lv = icmp slt i64 %.sroa.7.0, 4611686018427387900
  call void @llvm.assume(i1 %i.lv)
  %i.lw = shl i64 %.sroa.7.0, 2
  %i.lx = and i64 %i.lw, -16                      ; 2 uses
  %i.ly = add nsw i64 %.sroa.7.0, 33
  %i.lz = add i64 %i.ly, %i.lx
  %i.ma = sub nuw nsw i64 -16, %i.lx
  %i.mb = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.ma
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80, %bb.bz
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.lz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80 ], [ undef, %bb.bz ] ; 4 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.mb, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80 ], [ undef, %bb.bz ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i80 ], [ 0, %bb.bz ] ; 2 uses
  %i.mc = icmp eq i64 %.sroa.10.0, 0
  br i1 %i.mc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ca
  %i.md = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.me = bitcast <16 x i1> %i.md to i16
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph, %bb.cp
  %.sroa.9151.0312 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.9151.1, %bb.cp ] ; 2 uses
  %.sroa.12152.0311 = phi ptr [ %i.mf, %.lr.ph ], [ %.sroa.12152.1, %bb.cp ] ; 2 uses
  %.sroa.14153.0310 = phi i16 [ %i.me, %.lr.ph ], [ %i.ms, %bb.cp ] ; 2 uses
  %.sroa.16154.0309 = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %i.mv, %bb.cp ]
  %.not13.i.i = icmp eq i16 %.sroa.14153.0310, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit288

.lr.ph.i.i:                                       ; preds = %bb.cb, %.lr.ph.i.i
  %i.mi = phi ptr [ %i.mm, %.lr.ph.i.i ], [ %.sroa.12152.0311, %bb.cb ] ; 2 uses
  %i.mj = phi ptr [ %i.ml, %.lr.ph.i.i ], [ %.sroa.9151.0312, %bb.cb ]
  %.val11.i.i = load <16 x i8>, ptr %i.mi, align 16, !noalias !54992
  %i.mk = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.ml = getelementptr inbounds i8, ptr %i.mj, i64 -64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.mk to i16     ; 2 uses
  %.not.i.i87 = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i87, label %.lr.ph.i.i, label %.loopexit288

bb.cc:                                            ; preds = %bb.co
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.ce, %bb.cf, %bb.cc
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.mn, %bb.cc ], [ %i.my, %bb.cf ], [ %i.my, %bb.ce ] ; 2 uses
  %i.mo = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond = select i1 %i.ku, i1 true, i1 %i.mo
  br i1 %or.cond, label %.body78.thread, label %bb.cd

bb.cd:                                            ; preds = %.body91
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #66, !noalias !54993
  br label %.body78.thread

.loopexit288:                                     ; preds = %.lr.ph.i.i, %bb.cb
  %.sroa.12152.1 = phi ptr [ %.sroa.12152.0311, %bb.cb ], [ %i.mm, %.lr.ph.i.i ]
  %.sroa.9151.1 = phi ptr [ %.sroa.9151.0312, %bb.cb ], [ %i.ml, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.14153.0310, %bb.cb ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.mp = add i16 %.lcssa.i.i, -1
  %i.mq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.mr = zext nneg i16 %i.mq to i64
  %i.ms = and i16 %i.mp, %.lcssa.i.i
  %i.mt = sub nsw i64 0, %i.mr
  %i.mu = getelementptr inbounds [4 x i8], ptr %.sroa.9151.1, i64 %i.mt
  %i.mv = add i64 %.sroa.16154.0309, -1           ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %i.mu, i64 -4
  %i.mx = load i32, ptr %i.mw, align 4, !noalias !54994, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54995
  store i64 0, ptr %i.c, align 8, !noalias !54995
  store ptr inttoptr (i64 4 to ptr), ptr %i.mg, align 8, !noalias !54995
  store i64 0, ptr %i.mh, align 8, !noalias !54995
  invoke fastcc void @_ZN3nls5world5World10invalidate14invalidate_rec17h0de7f4e151c07209E(ptr noalias noundef nonnull align 8 dereferenceable(856) %1, ptr noalias noundef align 8 dereferenceable(24) %i.c, i32 noundef %i.mx)
          to label %bb.co unwind label %bb.ce, !noalias !54996

bb.ce:                                            ; preds = %.loopexit288
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i88 = load i64, ptr %i.c, align 8, !noalias !54995 ; 2 uses
  %i.mz = icmp eq i64 %.val.i88, 0
  br i1 %i.mz, label %.body91, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.val1.i89 = load ptr, ptr %i.mg, align 8, !noalias !54995, !nonnull !44, !noundef !44
  %i.na = shl nuw i64 %.val.i88, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i89, i64 noundef %i.na, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !54995
  br label %.body91

._crit_edge:                                      ; preds = %bb.cp, %bb.ca
  %i.nb = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond286 = select i1 %i.ku, i1 true, i1 %i.nb
  br i1 %or.cond286, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #66, !noalias !54997
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge, %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !54998)
  %i.nc = load i64, ptr %.sroa.6202.0..sroa_idx, align 8, !alias.scope !54998, !noalias !54999, !noundef !44 ; 2 uses
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %._crit_edge319, label %.lr.ph318

.lr.ph318:                                        ; preds = %bb.ch
  %i.ne = load ptr, ptr %i.ai, align 8, !alias.scope !54998, !noalias !54999, !nonnull !44, !noundef !44 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ne, align 16, !noalias !55000
  %i.nf = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ng = bitcast <16 x i1> %i.nf to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.nj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph318, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit"
  %.sroa.0163.0316 = phi ptr [ %i.ne, %.lr.ph318 ], [ %.sroa.0163.1, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit" ] ; 2 uses
  %.sroa.6164.0315 = phi ptr [ %i.nh, %.lr.ph318 ], [ %.sroa.6164.1, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit" ] ; 2 uses
  %.sroa.8166.0314 = phi i16 [ %i.ng, %.lr.ph318 ], [ %i.oz, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit" ] ; 2 uses
  %.sroa.10168.0313 = phi i64 [ %i.nc, %.lr.ph318 ], [ %i.pc, %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit" ]
  %.not13.i.i97 = icmp eq i16 %.sroa.8166.0314, 0
  br i1 %.not13.i.i97, label %.lr.ph.i.i104, label %.loopexit

.lr.ph.i.i104:                                    ; preds = %bb.ci, %.lr.ph.i.i104
  %i.nk = phi ptr [ %i.no, %.lr.ph.i.i104 ], [ %.sroa.6164.0315, %bb.ci ] ; 2 uses
  %i.nl = phi ptr [ %i.nn, %.lr.ph.i.i104 ], [ %.sroa.0163.0316, %bb.ci ]
  %.val11.i.i107 = load <16 x i8>, ptr %i.nk, align 16, !noalias !55001
  %i.nm = icmp sgt <16 x i8> %.val11.i.i107, splat (i8 -1)
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 -64 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %.cast.i.i108 = bitcast <16 x i1> %i.nm to i16  ; 2 uses
  %.not.i.i109 = icmp eq i16 %.cast.i.i108, 0
  br i1 %.not.i.i109, label %.lr.ph.i.i104, label %.loopexit

._crit_edge319:                                   ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit", %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @843)
          to label %bb.cj unwind label %.body78

bb.cj:                                            ; preds = %._crit_edge319
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nr, ptr noundef nonnull align 8 dereferenceable(17) %i.nq, i64 17, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.nt = load i16, ptr %i.ns, align 8, !range !84, !noundef !44 ; 2 uses
  %i.nu = trunc nuw i16 %i.nt to i1
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.nw = load i16, ptr %i.nv, align 2
  %.sroa.531.0 = select i1 %i.nu, i16 %i.nw, i16 undef
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ny = load i32, ptr %i.nx, align 4, !noundef !44
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oa = load i32, ptr %i.nz, align 8, !range !80, !noundef !44 ; 2 uses
  %i.ob = trunc nuw i32 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.od = load i32, ptr %i.oc, align 4
  %.sroa.533.0 = select i1 %i.ob, i32 %i.od, i32 undef
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.of = load i32, ptr %i.oe, align 8, !range !80, !noundef !44 ; 2 uses
  %i.og = trunc nuw i32 %i.of to i1
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.oi = load i32, ptr %i.oh, align 4
  %.sroa.535.0 = select i1 %i.og, i32 %i.oi, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ok = load <4 x i32>, ptr %i.np, align 4
  store <4 x i32> %i.ok, ptr %i.oj, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i16 %i.nt, ptr %i.ol, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ad, i64 42
  store i16 %.sroa.531.0, ptr %i.om, align 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  store i32 %i.ny, ptr %i.on, align 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %i.oa, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store i32 %.sroa.533.0, ptr %i.op, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i32 %i.of, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  store i32 %.sroa.535.0, ptr %i.or, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 488
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5bd9489fa503a2ceE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ae, ptr noalias noundef align 8 dereferenceable(48) %i.os, i32 noundef %i.kt, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ad)
          to label %bb.ck unwind label %.body78

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val59 = load i64, ptr %i.ae, align 8, !range !70, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %.val59, 0
  br i1 %switch, label %bb.cl, label %"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h039ec6ff84ec017aE.exit"

bb.cl:                                            ; preds = %bb.ck
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val60 = load ptr, ptr %i.ot, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !55002
  br label %"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h039ec6ff84ec017aE.exit"

"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h039ec6ff84ec017aE.exit": ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415)
  %.sroa.415.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.415, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.415.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false)
  store i32 %i.kt, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.415, i64 52, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.val53 = load i64, ptr %2, align 8, !range !74, !alias.scope !149, !noundef !44 ; 2 uses
  %i.ou = icmp eq i64 %.val53, 0
  br i1 %i.ou, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit", label %bb.cm

bb.cm:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h039ec6ff84ec017aE.exit"
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val54 = load ptr, ptr %i.ov, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !55003
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit": ; preds = %bb.cu, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", %bb.cm, %"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h039ec6ff84ec017aE.exit"
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i104, %bb.ci
  %.sroa.6164.1 = phi ptr [ %.sroa.6164.0315, %bb.ci ], [ %i.no, %.lr.ph.i.i104 ]
  %.sroa.0163.1 = phi ptr [ %.sroa.0163.0316, %bb.ci ], [ %i.nn, %.lr.ph.i.i104 ] ; 2 uses
  %.lcssa.i.i101 = phi i16 [ %.sroa.8166.0314, %bb.ci ], [ %.cast.i.i108, %.lr.ph.i.i104 ] ; 3 uses
  %i.ow = add i16 %.lcssa.i.i101, -1
  %i.ox = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i101, i1 true)
  %i.oy = zext nneg i16 %i.ox to i64
  %i.oz = and i16 %i.ow, %.lcssa.i.i101
  %i.pa = sub nsw i64 0, %i.oy
  %i.pb = getelementptr inbounds [4 x i8], ptr %.sroa.0163.1, i64 %i.pa
  %i.pc = add i64 %.sroa.10168.0313, -1           ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.pb, i64 -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.pe = load i32, ptr %i.pd, align 4, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.pe, ptr %i.b, align 4, !noalias !55004
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h4c566c410a71e485E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(528) %i.af, ptr noalias noundef align 8 dereferenceable(48) %i.ni, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pf = load i64, ptr %i.af, align 8, !range !60, !alias.scope !55005, !noundef !44
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit", label %bb.cn

bb.cn:                                            ; preds = %.loopexit
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$17ha6ec87bbbaff1520E"(ptr noalias noundef align 8 dereferenceable(520) %i.nj)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit" unwind label %.loopexit287

"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$$GT$17hb35f5f462d0122a1E.exit": ; preds = %.loopexit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ph = icmp eq i64 %i.pc, 0
  br i1 %i.ph, label %._crit_edge319, label %bb.ci

bb.co:                                            ; preds = %.loopexit288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !55006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54995
  invoke fastcc void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hc7d053578e2e9491E"(ptr noalias noundef align 8 dereferenceable(48) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.cp unwind label %bb.cc

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.pi = icmp eq i64 %i.mv, 0
  br i1 %i.pi, label %._crit_edge, label %bb.cb

.thread249:                                       ; preds = %bb.bd, %.body.i, %bb.i, %bb.be
  %.pn.pn.pn252 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bd ], [ %i.fl, %bb.be ], [ %.pn40.i, %bb.i ], [ %.pn40.i, %.body.i ] ; 2 uses
  %.val = load i64, ptr %i.am, align 8, !range !74, !alias.scope !146, !noundef !44 ; 2 uses
  %i.pj = icmp eq i64 %.val, 0
  br i1 %i.pj, label %bb.cv, label %bb.cq

bb.cq:                                            ; preds = %.thread249
  %i.pk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val48 = load ptr, ptr %i.pk, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !55007
  br label %bb.cv

bb.cr:                                            ; preds = %bb.d
  store ptr %i.aq, ptr %0, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.pl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55009)
  %.val.i.i112 = load i64, ptr %3, align 8, !range !74, !alias.scope !55010, !noundef !44 ; 2 uses
  %i.pm = icmp eq i64 %.val.i.i112, 0
  br i1 %i.pm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", label %bb.cs

end_hunk_2
begin_hunk_3_@_ZN3nls6server6Server3run17h0328fac6dc762f3aE:bb.a
  %.sroa.7.0.copyload253.i.i = load ptr, ptr %.sroa.7.0..sroa_idx252.i.i, align 8, !noalias !61440 ; 5 uses
  %.sroa.9.0.copyload255.i.i = load i64, ptr %.sroa.9.0..sroa_idx254.i.i, align 8, !noalias !61440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !61440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !61440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !61440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dn, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.fw, i64 144, i1 false), !noalias !61441
  call void @llvm.experimental.noalias.scope.decl(metadata !61444)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !61440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !61445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.fw, i64 88, i1 false), !noalias !61441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !61445
  store ptr %i.cu, ptr %i.cr, align 8, !noalias !61445
  store ptr @"_ZN47_$LT$url..Url$u20$as$u20$core..fmt..Display$GT$3fmt17hf731789d5c65e344E", ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !61445
  store ptr %i.my, ptr %i.mz, align 8, !noalias !61445
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !61446
  store ptr @929, ptr %i.ch, align 8, !noalias !61447
  store i64 2, ptr %.sroa.4.0..sroa_idx59.i.i.i, align 8, !noalias !61447
  store ptr %i.cr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !61447
  store i64 2, ptr %.sroa.660.0..sroa_idx.i.i.i, align 8, !noalias !61447
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !61447
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ch)
          to label %bb.ez unwind label %bb.ey, !noalias !61448

"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit55.i.i.i": ; preds = %bb.gu, %bb.gt, %.body.i.i.i, %bb.go, %bb.gn, %bb.gm, %.body.i.i.i.i.i.i.i, %bb.ey
  %.pn33.i.i.i = phi { ptr, i32 } [ %i.ahn, %bb.ey ], [ %i.akf, %.body.i.i.i ], [ %.pn115.i.i.i, %bb.gt ], [ %.pn115.i.i.i, %bb.gu ], [ %.pn.ph.i.i.i.i.i.i.i, %bb.go ], [ %.pn.ph.i.i.i.i.i.i.i, %bb.gn ], [ %.pn.ph.i.i.i.i.i.i.i, %bb.gm ], [ %.pn.i.i.i.i.i.i.i.i.i148, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.i.i.i = phi i1 [ true, %bb.ey ], [ false, %.body.i.i.i ], [ %.sroa.05.2116.i.i.i, %bb.gt ], [ %.sroa.05.2116.i.i.i, %bb.gu ], [ false, %bb.go ], [ false, %bb.gn ], [ false, %bb.gm ], [ false, %.body.i.i.i.i.i.i.i ]
  %.val40.i.i.i = load i64, ptr %i.cu, align 8, !range !74, !alias.scope !61449, !noalias !61445, !noundef !44 ; 2 uses
  %i.ahm = icmp eq i64 %.val40.i.i.i, 0
  br i1 %i.ahm, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i", label %bb.ex

bb.ex:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit55.i.i.i"
  %.val41.i.i.i = load ptr, ptr %i.oe, align 8, !noalias !61445, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41.i.i.i, i64 noundef %.val40.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !61450
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i"

bb.ey:                                            ; preds = %bb.ew
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit55.i.i.i"

bb.ez:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !61446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !61445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.aho = load i64, ptr %i.ct, align 8, !range !70, !noalias !61445, !noundef !44 ; 4 uses
  %.not.i.i.i146 = icmp eq i64 %i.aho, -9223372036854775808
  br i1 %.not.i.i.i146, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !61445
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @872)
          to label %bb.fd unwind label %.thread.i.i.i, !noalias !61451

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !61445
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fd, %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke fastcc void @_ZN3nls5trace5Trace7receive17hb6b40f3888a54a96E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 20)
          to label %bb.fe unwind label %.thread.i.i.i, !noalias !61451

.thread.i.i.i:                                    ; preds = %bb.fe, %bb.fg, %bb.ff, %bb.fc, %bb.fa
  %.sroa.05.3.i.i.i = phi i1 [ false, %bb.fg ], [ true, %bb.ff ], [ true, %bb.fe ], [ true, %bb.fc ], [ true, %bb.fa ]
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.fd:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !61445
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !61445
  %i.ahq = load i64, ptr %i.nc, align 8, !alias.scope !61444, !noalias !61452, !noundef !44
  invoke fastcc void @"_ZN3nls5trace5param103_$LT$impl$u20$nls..trace..Enrich$LT$nls..trace..param..FileUpdate$GT$$u20$for$u20$nls..trace..Trace$GT$6enrich17h20ef501900425bd0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, i64 noundef %i.ahq)
          to label %bb.ff unwind label %.thread.i.i.i

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !61445
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @843)
          to label %bb.fg unwind label %.thread.i.i.i, !noalias !61451

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nf, ptr noundef nonnull align 8 dereferenceable(17) %i.ne, i64 17, i1 false), !noalias !61445
  %i.ahr = load i16, ptr %i.ng, align 8, !range !84, !noalias !61445, !noundef !44 ; 2 uses
  %i.ahs = trunc nuw i16 %i.ahr to i1
  %i.aht = load i16, ptr %i.nh, align 2, !noalias !61445
  %.sroa.5.0.i.i.i = select i1 %i.ahs, i16 %i.aht, i16 undef
  %i.ahu = load i32, ptr %i.ni, align 4, !noalias !61445, !noundef !44
  %i.ahv = load i32, ptr %i.nj, align 8, !range !80, !noalias !61445, !noundef !44 ; 2 uses
  %i.ahw = trunc nuw i32 %i.ahv to i1
  %i.ahx = load i32, ptr %i.nk, align 4, !noalias !61445
  %.sroa.516.0.i.i.i = select i1 %i.ahw, i32 %i.ahx, i32 undef
  %i.ahy = load i32, ptr %i.nl, align 8, !range !80, !noalias !61445, !noundef !44 ; 2 uses
  %i.ahz = trunc nuw i32 %i.ahy to i1
  %i.aia = load i32, ptr %i.nm, align 4, !noalias !61445
  %.sroa.518.0.i.i.i = select i1 %i.ahz, i32 %i.aia, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !61445
  %i.aib = load <4 x i32>, ptr %i.nd, align 4, !noalias !61445
  store <4 x i32> %i.aib, ptr %i.nn, align 4, !noalias !61445
  store i16 %i.ahr, ptr %i.no, align 8, !noalias !61445
  store i16 %.sroa.5.0.i.i.i, ptr %i.np, align 2, !noalias !61445
  store i32 %i.ahu, ptr %i.nq, align 4, !noalias !61445
  store i32 %i.ahv, ptr %i.nr, align 8, !noalias !61445
  store i32 %.sroa.516.0.i.i.i, ptr %i.ns, align 4, !noalias !61445
  store i32 %i.ahy, ptr %i.nt, align 8, !noalias !61445
  store i32 %.sroa.518.0.i.i.i, ptr %i.nu, align 4, !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !61445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.na, i64 24, i1 false), !noalias !61452
  invoke fastcc void @_ZN3nls5world5World8add_file17h34efd2ef24af69b8E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.co, ptr noalias noundef align 8 dereferenceable(856) %i.ie, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.cn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cm)
          to label %bb.fh unwind label %.thread.i.i.i, !noalias !61451

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !61445
  %i.aic = load ptr, ptr %i.nv, align 8, !noalias !61445, !noundef !44 ; 8 uses
  %i.aid = icmp eq ptr %i.aic, null
  %i.aie = load ptr, ptr %i.co, align 8, !noalias !61445 ; 3 uses
  br i1 %i.aid, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !61445
  call void @llvm.experimental.noalias.scope.decl(metadata !61453)
  %switch.i.i.i.i = icmp sgt i64 %i.aho, 0
  br i1 %switch.i.i.i.i, label %bb.fj, label %"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit.i.i.i"

bb.fj:                                            ; preds = %bb.fi
  %.val1.i.i.i.i = load ptr, ptr %i.og, align 8, !alias.scope !61453, !noalias !61445, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.aho, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !61454
  br label %"_ZN4core3ptr47drop_in_place$LT$lsp_server..msg..RequestId$GT$17h4ac0d162b0716b86E.exit.i.i.i"

bb.fk:                                            ; preds = %bb.fh
  %.sroa.6.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !61445 ; 7 uses
  %.sroa.6.sroa.5.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !61445
  %i.aif = ptrtoint ptr %i.aie to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.aif to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !61445
  store i32 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.cp, align 4, !noalias !61445
  %i.aig = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !61445 ; 2 uses
  %i.aih = icmp ult i64 %i.aig, 6
  call void @llvm.assume(i1 %i.aih)
  %i.aii = icmp samesign ugt i64 %i.aig, 2
  br i1 %i.aii, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fn, %bb.fk
  invoke fastcc void @_ZN3nls5trace5Trace10reply_with17h3360ca0838d0a17eE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ct, i1 noundef zeroext false)
          to label %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i unwind label %.body.i.i.i, !noalias !61451

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !61445
  store ptr %i.cu, ptr %i.cl, align 8, !noalias !61445
  store ptr @"_ZN47_$LT$url..Url$u20$as$u20$core..fmt..Display$GT$3fmt17hf731789d5c65e344E", ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !61445
  store ptr %i.cp, ptr %i.nw, align 8, !noalias !61445
  store ptr @"_ZN70_$LT$nickel_lang_parser..files..FileId$u20$as$u20$core..fmt..Debug$GT$3fmt17h320c36ddc479b464E", ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !61455
  store i64 3, ptr %i.nx, align 8, !noalias !61455
  store ptr @934, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i64 10, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store ptr @932, ptr %i.ny, align 8, !noalias !61455
  store i64 2, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store ptr %i.cl, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i64 2, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i64 0, ptr %i.cg, align 8, !noalias !61455
  store ptr @934, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i64 10, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i64 0, ptr %i.nz, align 8, !noalias !61455
  store ptr @933, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i, align 8, !noalias !61455
  store i64 20, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i, align 8, !noalias !61455
  store i32 1, ptr %i.oa, align 8, !noalias !61455
  store i32 45, ptr %i.ob, align 4, !noalias !61455
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cg)
          to label %bb.fn unwind label %.body._crit_edge.i.i.i, !noalias !61451

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !61455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !61445
  br label %bb.fl

_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i: ; preds = %bb.fl
  %.val3.i.i.i.i.i.i147 = load <16 x i8>, ptr %i.aic, align 16, !noalias !61456
  %i.aij = icmp eq i64 %.sroa.6.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.aij, label %bb.fo, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i
  %i.aik = icmp slt i64 %.sroa.6.sroa.0.0.copyload.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.aik)
  %i.ail = shl i64 %.sroa.6.sroa.0.0.copyload.i.i.i, 2
  %i.aim = and i64 %i.ail, -16                    ; 2 uses
  %i.ain = add nsw i64 %.sroa.6.sroa.0.0.copyload.i.i.i, 33
  %i.aio = add i64 %i.ain, %i.aim
  %i.aip = sub nuw nsw i64 -16, %i.aim
  %i.aiq = getelementptr inbounds i8, ptr %i.aic, i64 %i.aip
  br label %bb.fo

bb.fo:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.aio, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.aiq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %_ZN3nls5trace5Trace5reply17h5f44cc31277ba40eE.exit.i.i.i ]
  %i.air = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  %i.ais = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i147, splat (i8 -1)
  %i.ait = getelementptr i8, ptr %i.aic, i64 %.sroa.6.sroa.0.0.copyload.i.i.i
  %i.aiu = getelementptr i8, ptr %i.ait, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !61457
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.cf, align 8, !alias.scope !61458, !noalias !61459
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.081.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.081.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store ptr %i.aic, ptr %.sroa.081.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store ptr %i.air, ptr %.sroa.081.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store ptr %i.aiu, ptr %.sroa.081.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store <16 x i1> %i.ais, ptr %.sroa.081.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store i64 %.sroa.6.sroa.5.sroa.5.0.copyload.i.i.i, ptr %.sroa.081.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  store ptr %i.ie, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !alias.scope !61458, !noalias !61459
  call void @llvm.experimental.noalias.scope.decl(metadata !61460)
  call void @llvm.experimental.noalias.scope.decl(metadata !61461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !61462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !61463
  invoke fastcc void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb75b2124386ebe0E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.cf)
          to label %bb.fq unwind label %bb.fp, !noalias !61464

bb.fp:                                            ; preds = %bb.fo
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.fq:                                            ; preds = %bb.fo
  %i.aiw = load i64, ptr %i.cd, align 8, !range !70, !noalias !61463, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aiw, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !61463
  call void @llvm.experimental.noalias.scope.decl(metadata !61465)
  call void @llvm.experimental.noalias.scope.decl(metadata !61466)
  call void @llvm.experimental.noalias.scope.decl(metadata !61467)
  call void @llvm.experimental.noalias.scope.decl(metadata !61468)
  call void @llvm.experimental.noalias.scope.decl(metadata !61469)
  call void @llvm.experimental.noalias.scope.decl(metadata !61470)
  call void @llvm.experimental.noalias.scope.decl(metadata !61471)
  %i.aix = load i64, ptr %i.cf, align 8, !range !70, !alias.scope !61472, !noalias !61473, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aix, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gp, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aiy = load i64, ptr %.sroa.081.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !61472, !noalias !61473, !noundef !44 ; 2 uses
  %i.aiz = icmp eq i64 %i.aiy, 0
  br i1 %i.aiz, label %bb.gp, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aja = load ptr, ptr %.sroa.081.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !61472, !noalias !61473, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aja, i64 noundef %i.aiy, i64 noundef range(i64 1, -9223372036854775807) %i.aix) #66, !noalias !61474
  br label %bb.gp

bb.fu:                                            ; preds = %bb.fx
  %i.ajb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajc = icmp eq i64 %i.aiw, 0
  br i1 %i.ajc, label %bb.gm, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.aiw, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !61475
  br label %bb.gm

bb.fw:                                            ; preds = %bb.fq
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61463 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !61476
  %i.ajd = call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, 9) 8) #66, !noalias !61476 ; 6 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 352, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.fu, !noalias !61477

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fw
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !61477
  store i64 %i.aiw, ptr %i.ajd, align 8, !noalias !61477
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61477
  store i64 4, ptr %i.ce, align 8, !noalias !61463
  store ptr %i.ajd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61463
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !61463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i64 72, i1 false), !noalias !61473
  call void @llvm.experimental.noalias.scope.decl(metadata !61478)
  call void @llvm.experimental.noalias.scope.decl(metadata !61479)
  call void @llvm.experimental.noalias.scope.decl(metadata !61480)
  call void @llvm.experimental.noalias.scope.decl(metadata !61481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !61482
  br label %bb.fz

bb.fz:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i.i.i.i", %bb.fy
  %i.ajf = phi ptr [ %i.ajt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ajd, %bb.fy ]
  %.sroa.678.0.copyload80.i.i.i = phi i64 [ %i.ajv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.fy ] ; 6 uses
  invoke fastcc void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb75b2124386ebe0E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.cc)
          to label %bb.gd unwind label %bb.gc, !noalias !61483

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.gj, %bb.gi, %bb.gc
  %.pn.i.i.i.i.i.i.i.i.i148 = phi { ptr, i32 } [ %i.ajk, %bb.gc ], [ %i.ajw, %bb.gi ], [ %i.ajw, %bb.gj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !61484)
  call void @llvm.experimental.noalias.scope.decl(metadata !61485), !noalias !61486
  call void @llvm.experimental.noalias.scope.decl(metadata !61487), !noalias !61486
  call void @llvm.experimental.noalias.scope.decl(metadata !61488), !noalias !61486
  call void @llvm.experimental.noalias.scope.decl(metadata !61489), !noalias !61486
  call void @llvm.experimental.noalias.scope.decl(metadata !61490), !noalias !61486
  call void @llvm.experimental.noalias.scope.decl(metadata !61491), !noalias !61486
  %i.ajg = load i64, ptr %i.cc, align 8, !range !70, !alias.scope !61492, !noalias !61493, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = icmp eq i64 %i.ajg, 0
  br i1 %.not.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i.i.i.i"
  %i.ajh = load i64, ptr %i.oc, align 8, !alias.scope !61492, !noalias !61493, !noundef !44 ; 2 uses
  %i.aji = icmp eq i64 %i.ajh, 0
  br i1 %i.aji, label %.body.i.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ajj = load ptr, ptr %i.od, align 8, !alias.scope !61492, !noalias !61493, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajj, i64 noundef %i.ajh, i64 noundef range(i64 1, -9223372036854775807) %i.ajg) #66, !noalias !61494
  br label %.body.i.i.i.i.i.i.i

bb.gc:                                            ; preds = %bb.fz
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i.i.i.i"

bb.gd:                                            ; preds = %bb.fz
  %i.ajl = load i64, ptr %i.cb, align 8, !range !70, !noalias !61495, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ajl, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !61495 ; 3 uses
  %i.ajm = icmp samesign ult i64 %.sroa.678.0.copyload80.i.i.i, 104811045873349726
  call void @llvm.assume(i1 %i.ajm)
  %i.ajn = load i64, ptr %i.ce, align 8, !range !74, !alias.scope !61486, !noalias !61496, !noundef !44
  %i.ajo = icmp eq i64 %.sroa.678.0.copyload80.i.i.i, %i.ajn
  br i1 %i.ajo, label %bb.gk, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i.i.i.i"

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !61497)
  call void @llvm.experimental.noalias.scope.decl(metadata !61498)
  call void @llvm.experimental.noalias.scope.decl(metadata !61499)
  call void @llvm.experimental.noalias.scope.decl(metadata !61500)
  call void @llvm.experimental.noalias.scope.decl(metadata !61501)
  call void @llvm.experimental.noalias.scope.decl(metadata !61502)
  call void @llvm.experimental.noalias.scope.decl(metadata !61503)
  %i.ajp = load i64, ptr %i.cc, align 8, !range !70, !alias.scope !61504, !noalias !61493, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ajp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gl, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ajq = load i64, ptr %i.oc, align 8, !alias.scope !61504, !noalias !61493, !noundef !44 ; 2 uses
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ajs = load ptr, ptr %i.od, align 8, !alias.scope !61504, !noalias !61493, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajs, i64 noundef %i.ajq, i64 noundef range(i64 1, -9223372036854775807) %i.ajp) #66, !noalias !61505
  br label %bb.gl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.ge
  %i.ajt = phi ptr [ %.pre.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.ajf, %bb.ge ] ; 2 uses
  %i.aju = getelementptr inbounds nuw [88 x i8], ptr %i.ajt, i64 %.sroa.678.0.copyload80.i.i.i ; 3 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aju, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !61506
  store i64 %i.ajl, ptr %i.aju, align 8, !noalias !61506
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aju, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !61506
  %i.ajv = add nuw nsw i64 %.sroa.678.0.copyload80.i.i.i, 1 ; 2 uses
  store i64 %i.ajv, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !61486, !noalias !61496
  br label %bb.fz

bb.gi:                                            ; preds = %bb.gk
  %i.ajw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajx = icmp eq i64 %i.ajl, 0
  br i1 %i.ajx, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i.i.i.i", label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.ajl, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !61507
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17hae57c62e3afa552eE.exit.i.i.i.i.i.i.i.i.i"

bb.gk:                                            ; preds = %bb.ge
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %.sroa.678.0.copyload80.i.i.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 88)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h03d2f5544cb4e2d1E.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.gi, !noalias !61508
end_hunk_3
begin_hunk_4_@_ZN3nls8analysis12ParentLookup3new9traversal17h85de19bcaf89b65eE:bb.a
  %i.jp = invoke fastcc noundef zeroext i1 @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hd61ad588667838c3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.034.0170, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1084, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$nls..analysis..Parent$GT$$GT$17hd72009ccced5cbf0E.exit81" unwind label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$nls..analysis..Parent$GT$$GT$17hd72009ccced5cbf0E.exit79" ; 0 uses

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$nls..analysis..Parent$GT$$GT$17hd72009ccced5cbf0E.exit79": ; preds = %bb.am
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #66
  br label %common.resume

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$nls..analysis..Parent$GT$$GT$17hd72009ccced5cbf0E.exit81": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.jr = icmp eq ptr %.sroa.034.1171, %i.db      ; 2 uses
  %.sroa.034.1.idx = select i1 %i.jr, i64 0, i64 48
  %.sroa.034.1 = getelementptr inbounds nuw i8, ptr %.sroa.034.1171, i64 %.sroa.034.1.idx
  br i1 %i.jr, label %._crit_edge, label %bb.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3nls8analysis12ParentLookup3new9traversal28_$u7b$$u7b$closure$u7d$$u7d$17h5fb5bd123d75b7fcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  tail call fastcc void @_ZN3nls8analysis12ParentLookup3new9traversal17h85de19bcaf89b65eE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3nls8analysis12ParentLookup3new9traversal28_$u7b$$u7b$closure$u7d$$u7d$17h77cc97d1d947844fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  tail call fastcc void @_ZN3nls8analysis12ParentLookup3new9traversal17h85de19bcaf89b65eE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3nls8analysis12ParentLookup3new9traversal28_$u7b$$u7b$closure$u7d$$u7d$17hc051c41ce8c19fa8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !44, !align !50, !noundef !44
  tail call fastcc void @_ZN3nls8analysis12ParentLookup3new9traversal17h85de19bcaf89b65eE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls8analysis13TypeCollector8complete17hc401a2a4eb853779E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(216) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [104 x i8], align 8               ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 10 uses
  %.sroa.06.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.3.i.i.i.i.i.i.i32 = alloca [88 x i8], align 8 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 12 uses
  %i.i = alloca [48 x i8], align 8                ; 12 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [88 x i8], align 8                ; 4 uses
  %i.m = alloca [104 x i8], align 8               ; 8 uses
  %i.n = alloca [96 x i8], align 8                ; 5 uses
  %i.o = alloca [104 x i8], align 8               ; 8 uses
  %i.p = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.3.i.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 12 uses
  %i.r = alloca [72 x i8], align 8                ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 14 uses
  %i.t = alloca [72 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 12 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %i.x = alloca [112 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62822)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !62822, !noalias !62823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62824)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !62825, !noalias !62826, !noundef !44 ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d50eff8adc98d89E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = add i64 %i.ac, 1
  %i.af = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 24) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = add nuw i64 %i.ah, 8
  %i.aj = and i64 %i.ai, -16                      ; 3 uses
  %i.ak = add i64 %i.ac, 17                       ; 2 uses
  %i.al = add i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = icmp ugt i64 %i.al, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.am, %i.an
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, !prof !69

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.c
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !62827
  %i.ap = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !62827 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.i

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.as = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.al)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi { i64, i64 } [ %i.ar, %bb.d ], [ %i.as, %bb.e ]
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %bb.g

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i = phi ptr [ %i.ap, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i, i64 %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.pre-phi.i.i = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i, %.noexc ]
  %.sroa.5.0.i.i = phi i64 [ %i.ac, %bb.f ], [ %.sroa.7.0.ph.i.i.i, %.noexc ] ; 3 uses
  %.sroa.09.0.i.i = phi ptr [ %i.at, %bb.f ], [ null, %.noexc ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62828)
  %i.au = load ptr, ptr %i.y, align 8, !alias.scope !62829, !noalias !62830, !nonnull !44, !noundef !44 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0.i.i, ptr nonnull align 1 %i.au, i64 %.pre-phi.i.i, i1 false), !noalias !62831
  %i.av = xor i64 %i.ac, -1
  %i.aw = getelementptr [24 x i8], ptr %i.au, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = xor i64 %.sroa.5.0.i.i, -1
  %i.ay = getelementptr [24 x i8], ptr %.sroa.09.0.i.i, i64 %i.ax ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.az = mul i64 %.sroa.5.0.i.i, 24
  %i.ba = add i64 %i.az, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.aw, i64 %i.ba, i1 false), !noalias !62831
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.bc = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !62829, !noalias !62830
  br label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d50eff8adc98d89E.exit"

bb.h:                                             ; preds = %.body, %bb.i
  %.pn4 = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %.pn, %.body ] ; 2 uses
  %.sroa.01.0 = phi i1 [ true, %bb.i ], [ false, %.body ]
  %.sroa.0.0 = phi i1 [ true, %bb.i ], [ %.sroa.0.2, %.body ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..typecheck..TypeTables$GT$17h0adaa3dc36979120E"(ptr noalias noundef align 8 dereferenceable(216) %3) #77
          to label %bb.co unwind label %bb.cq

bb.i:                                             ; preds = %bb.e, %bb.d, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d50eff8adc98d89E.exit"
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d50eff8adc98d89E.exit": ; preds = %bb.g, %bb.a
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.i.i, %bb.g ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %.sroa.09.0.i.i, %bb.g ], [ @2, %bb.a ]
  %i.be = phi <2 x i64> [ %i.bc, %bb.g ], [ zeroinitializer, %bb.a ]
  store ptr %.sroa.0.0.i, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store <2 x i64> %i.aa, ptr %.sroa.7.0..sroa_idx, align 8
  invoke void @_ZN16nickel_lang_core9typecheck9reporting7NameReg3new17he821eb5fe752d962E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4d50eff8adc98d89E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  store ptr %2, ptr %i.v, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %3, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.0230.0.copyload = load ptr, ptr %1, align 8, !nonnull !44, !noundef !44 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3231.0.copyload = load i64, ptr %.sroa.3231.0..sroa_idx, align 8 ; 6 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0230.0.copyload, align 16, !noalias !62832
  %i.bj = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.bj, label %bb.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9: ; preds = %bb.j
  %i.bk = mul i64 %.sroa.2.0.copyload, 104
  %i.bl = and i64 %i.bk, -16                      ; 2 uses
  %i.bm = add i64 %.sroa.2.0.copyload, 129
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = sub i64 -112, %i.bl
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0230.0.copyload, i64 %i.bo
  br label %bb.k

.body.sink.split:                                 ; preds = %bb.ch, %.body.i.i41, %.body.i.i.i.i.i.i.i, %bb.ao, %bb.aq
  %.sink = phi ptr [ %i.s, %.body.i.i.i.i.i.i.i ], [ %i.s, %bb.aq ], [ %i.s, %bb.ao ], [ %i.u, %.body.i.i41 ], [ %i.u, %bb.ch ]
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.hs, %bb.aq ], [ %i.hq, %bb.ao ], [ %eh.lpad-body.i.i42, %.body.i.i41 ], [ %i.pi, %bb.ch ]
  %.sroa.0.2.ph = phi i1 [ true, %.body.i.i.i.i.i.i.i ], [ true, %bb.aq ], [ true, %bb.ao ], [ false, %.body.i.i41 ], [ false, %bb.ch ]
  call fastcc void @"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nls..term..AstPtr$C$nickel_lang_parser..ast..typ..Type$GT$$GT$17hcf8f78f16d3e0bc6E"(ptr noalias noundef align 8 dereferenceable(48) %.sink) #77
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.as
  %.pn = phi { ptr, i32 } [ %i.hu, %bb.as ], [ %.pn.ph, %.body.sink.split ]
  %.sroa.0.2 = phi i1 [ true, %bb.as ], [ %.sroa.0.2.ph, %.body.sink.split ]
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$nickel_lang_core..typecheck..reporting..NameReg$GT$17hf41c0054043af0e9E"(ptr noalias noundef align 8 dereferenceable(112) %i.x) #77
  br label %bb.h

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9, %bb.j
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.bn, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9 ], [ undef, %bb.j ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.bp, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9 ], [ undef, %bb.j ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i9 ], [ 0, %bb.j ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0230.0.copyload, i64 16 ; 4 uses
  %i.br = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 4 uses
  %i.bs = getelementptr i8, ptr %.sroa.0230.0.copyload, i64 %.sroa.2.0.copyload
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !62833
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.t, align 8, !noalias !62834
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %.sroa.0230.0.copyload, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.bq, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.bt, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <16 x i1> %i.br, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !noalias !62834
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %.sroa.3231.0.copyload, ptr %.sroa.0.sroa.13.0..sroa_idx, align 8, !noalias !62834
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !62834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !62835
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !45, !noalias !62836, !noundef !44
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.k
  %.pre.i.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !62837
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !62837
  br label %bb.l

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i": ; preds = %bb.k
  %i.by = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.as, !noalias !62835 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.bz = extractvalue { i64, i64 } %i.by, 0
  %i.ca = extractvalue { i64, i64 } %i.by, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !noalias !62838
  store i8 1, ptr %i.bv, align 8, !noalias !62838
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i
  %.pre-phi58.i.i = phi i64 [ %i.ca, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i13 = phi i64 [ %i.bz, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cc = add i64 %.pre-phi.i.i13, 1
  store i64 %i.cc, ptr %i.bu, align 8, !noalias !62837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !62835
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i13, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !62835
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i64 %.pre-phi58.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !62835
  call void @llvm.experimental.noalias.scope.decl(metadata !62839)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !62840
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.r, align 8, !noalias !62834
  %.sroa.0.sroa.6.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx151, align 8, !noalias !62834
  %.sroa.0.sroa.7.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.0.sroa.7.0..sroa_idx155, align 8, !noalias !62834
  %.sroa.0.sroa.8.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.0230.0.copyload, ptr %.sroa.0.sroa.8.0..sroa_idx159, align 8, !noalias !62834
  %.sroa.0.sroa.9.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.bq, ptr %.sroa.0.sroa.9.0..sroa_idx163, align 8, !noalias !62834
  %.sroa.0.sroa.10.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.bt, ptr %.sroa.0.sroa.10.0..sroa_idx167, align 8, !noalias !62834
  %.sroa.0.sroa.11.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store <16 x i1> %i.br, ptr %.sroa.0.sroa.11.0..sroa_idx171, align 8, !noalias !62834
  %.sroa.0.sroa.13.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %.sroa.3231.0.copyload, ptr %.sroa.0.sroa.13.0..sroa_idx177, align 8, !noalias !62834
  %.sroa.6.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.v, ptr %.sroa.6.0..sroa_idx126, align 8, !noalias !62834
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.3231.0.copyload, 0 ; 2 uses
  br i1 %.not.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i", label %bb.m, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.ce = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17heb590fa1720eb346E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef %.sroa.3231.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i" unwind label %bb.ao ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i": ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !62841
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.q, align 8, !noalias !62834
  %.sroa.0.sroa.6.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx153, align 8, !noalias !62834
  %.sroa.0.sroa.7.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.0.sroa.7.0..sroa_idx157, align 8, !noalias !62834
  %.sroa.0.sroa.8.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %.sroa.0230.0.copyload, ptr %.sroa.0.sroa.8.0..sroa_idx161, align 8, !noalias !62834
  %.sroa.0.sroa.9.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.bq, ptr %.sroa.0.sroa.9.0..sroa_idx165, align 8, !noalias !62834
  %.sroa.0.sroa.10.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.bt, ptr %.sroa.0.sroa.10.0..sroa_idx169, align 8, !noalias !62834
  %.sroa.0.sroa.11.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store <16 x i1> %i.br, ptr %.sroa.0.sroa.11.0..sroa_idx173, align 8, !noalias !62834
  %.sroa.0.sroa.13.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  store i64 %.sroa.3231.0.copyload, ptr %.sroa.0.sroa.13.0..sroa_idx179, align 8, !noalias !62834
  call void @llvm.experimental.noalias.scope.decl(metadata !62842)
  call void @llvm.experimental.noalias.scope.decl(metadata !62843)
  call void @llvm.experimental.noalias.scope.decl(metadata !62844)
  call void @llvm.experimental.noalias.scope.decl(metadata !62845)
  call void @llvm.experimental.noalias.scope.decl(metadata !62846)
  call void @llvm.experimental.noalias.scope.decl(metadata !62847)
  call void @llvm.experimental.noalias.scope.decl(metadata !62848)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i)
  br i1 %.not.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i"
  %i.cf = bitcast <16 x i1> %i.br to i16
  %.sroa.6.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !62849, !noalias !62850, !nonnull !44, !align !50
  %i.ch = load ptr, ptr %i.bg, align 8, !alias.scope !62849, !noalias !62850, !nonnull !44, !align !50
  %i.ci = load ptr, ptr %i.bh, align 8, !alias.scope !62849, !noalias !62850, !nonnull !44, !align !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = load ptr, ptr %i.bi, align 8, !alias.scope !62849, !noalias !62850, !nonnull !44, !align !50 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa1833.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa1832.i.i.i.i.i.i.i, %bb.am ] ; 2 uses
  %.lcssa1930.i.i.i.i.i.i.i = phi ptr [ %.sroa.0230.0.copyload, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa1929.i.i.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.cp = phi i16 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %bb.am ] ; 2 uses
  %i.cq = phi i64 [ %.sroa.3231.0.copyload, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dd, %bb.am ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62851)
  call void @llvm.experimental.noalias.scope.decl(metadata !62852)
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0a4c608bc00e9d6E.exit.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store ptr %i.cv, ptr %.sroa.0.sroa.9.0..sroa_idx165, align 8, !alias.scope !62853, !noalias !62854
  store ptr %i.cu, ptr %.sroa.0.sroa.8.0..sroa_idx161, align 8, !alias.scope !62853, !noalias !62854
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0a4c608bc00e9d6E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cr = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1833.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.cs = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1930.i.i.i.i.i.i.i, %bb.n ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cr, align 16, !noalias !62855
  %i.ct = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -1664 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ct to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store i16 %i.da, ptr %.sroa.0.sroa.11.0..sroa_idx173, align 8, !alias.scope !62853, !noalias !62854
  store i64 %i.dd, ptr %.sroa.0.sroa.13.0..sroa_idx179, align 8, !alias.scope !62856, !noalias !62854
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %common.resume.i.i.i.i.i.i.i.i, %bb.o
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.o ], [ %common.resume.op.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h419758742b43340eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q) #77
          to label %.body.sink.split unwind label %bb.an, !noalias !62857

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0a4c608bc00e9d6E.exit.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.n
  %.lcssa1832.i.i.i.i.i.i.i = phi ptr [ %i.cv, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1833.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.lcssa1929.i.i.i.i.i.i.i = phi ptr [ %i.cu, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1930.i.i.i.i.i.i.i, %bb.n ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.cp, %bb.n ] ; 3 uses
  %i.cx = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = and i16 %i.cx, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.db = sub nsw i64 0, %i.cz
  %i.dc = getelementptr inbounds [104 x i8], ptr %.lcssa1929.i.i.i.i.i.i.i, i64 %i.db ; 3 uses
  %i.dd = add i64 %i.cq, -1                       ; 6 uses
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dc, i64 -96
  %.sroa.5.0.copyload9.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx8.i.i.i.i.i.i.i, align 8, !noalias !62858 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload9.i.i.i.i.i.i.i, 20
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ai, label %bb.p
end_hunk_4
begin_hunk_5_@_ZN3nls8analysis13TypeCollector8complete17hc401a2a4eb853779E:bb.a
  br label %common.resume.i.i.i.i.i.i.i.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hb4077de88bfee7daE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds i8, ptr %i.ef, i64 -104 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fs, align 8, !noalias !62884 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ef, i64 -96
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62884 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ef, i64 -88
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62884 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fs, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false), !noalias !62865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !62867
  %i.ft = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 18
  br i1 %i.ft, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hb4077de88bfee7daE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.fu = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp samesign ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.fv, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  switch i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, label %bb.ag [
    i64 0, label %bb.am
    i64 1, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fw = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fw, label %bb.am, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.fx = shl i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 2
  %i.fy = icmp slt i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.fy)
  %i.fz = and i64 %i.fx, -16                      ; 2 uses
  %i.ga = add i64 %i.fz, 16                       ; 2 uses
  %i.gb = add nsw i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 17
  %i.gc = add i64 %i.gb, %i.ga                    ; 4 uses
  %i.gd = icmp uge i64 %i.gc, %i.ga
  %i.ge = icmp ult i64 %i.gc, 9223372036854775793
  call void @llvm.assume(i1 %i.gd)
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.am, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.go, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gc, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  %i.gg = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds i8, ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.gg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef %.sink7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !62885
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.gi = icmp eq i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gi, label %bb.am, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.gj = shl i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 2
  %i.gk = icmp slt i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.gk)
  %i.gl = and i64 %i.gj, -16                      ; 2 uses
  %i.gm = add i64 %i.gl, 16                       ; 2 uses
  %i.gn = add nsw i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, 17
  %i.go = add i64 %i.gn, %i.gm                    ; 4 uses
  %i.gp = icmp uge i64 %i.go, %i.gm
  %i.gq = icmp ult i64 %i.go, 9223372036854775793
  call void @llvm.assume(i1 %i.gp)
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp eq i64 %i.go, 0
  br i1 %i.gr, label %bb.am, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ai:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0a4c608bc00e9d6E.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !62886)
  call void @llvm.experimental.noalias.scope.decl(metadata !62887)
  %i.gs = icmp eq i64 %i.dd, 0
  br i1 %i.gs, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ai, %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i"
  %.promoted15.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted15.i.i.i.i42.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.lcssa1832.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i440.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.lcssa1929.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.gt = phi i16 [ %i.hd, %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.da, %bb.ai ] ; 2 uses
  %i.gu = phi i64 [ %i.hg, %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.dd, %bb.ai ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gt, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h838fd808bc46b5a5E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted15.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gw = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gv, align 16, !noalias !62888
  %i.gx = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -1664 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gx to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h838fd808bc46b5a5E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h838fd808bc46b5a5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.promoted15.i.i.i.i42.i.i.i.i.i.i.i = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i440.i.i.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gt, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ha = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hc = zext nneg i16 %i.hb to i64
  %i.hd = and i16 %i.ha, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.he = sub nsw i64 0, %i.hc
  %i.hf = getelementptr inbounds [104 x i8], ptr %.pre.i.i.i.i440.i.i.i.i.i.i.i, i64 %i.he
  %i.hg = add i64 %i.gu, -1                       ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -96 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !range !51, !alias.scope !62889, !noalias !62890, !noundef !44
  %i.hj = icmp samesign ult i64 %i.hi, 18
  br i1 %i.hj, label %bb.aj, label %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h838fd808bc46b5a5E.exit.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.hh)
          to label %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.aq, !noalias !62835

"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aj, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h838fd808bc46b5a5E.exit.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i.loopexit", label %.preheader.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i.loopexit": ; preds = %"_ZN4core3ptr86drop_in_place$LT$$LP$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$RP$$GT$17ha412be3b5dc36787E.exit.i.i.i.i.i.i.i.i.i.i"
  %.pre = load i64, ptr %i.q, align 8, !range !70, !alias.scope !62891, !noalias !62892
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.am, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i.loopexit", %bb.ai, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i"
  %i.hk = phi i64 [ %.sroa.0.0.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2cf7553122ca7812E.exit.i.i.i" ], [ %.pre, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i.loopexit" ], [ %.sroa.0.0.i.i.i.i, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.am ] ; 2 uses
  %.not.i.i5.i.i.i.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i5.i.i.i.i.i.i.i, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i"
  %i.hl = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx153, align 8, !alias.scope !62891, !noalias !62892, !noundef !44 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hn = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx157, align 8, !alias.scope !62891, !noalias !62892, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) %i.hk) #66, !noalias !62893
  br label %bb.at

bb.am:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.af, %bb.ae, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hb4077de88bfee7daE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hb4077de88bfee7daE.exit.thread.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !62862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ho = icmp eq i64 %i.dd, 0
  br i1 %i.ho, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i", label %bb.n

bb.an:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !62859
  unreachable

bb.ao:                                            ; preds = %bb.m
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr231drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$GT$$C$nls..analysis..TypeCollector..complete..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha3452f09c55421caE"(ptr noalias noundef align 8 dereferenceable(72) %i.r) #77
          to label %.body.sink.split unwind label %bb.ap, !noalias !62894

bb.ap:                                            ; preds = %bb.ao
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !62894
  unreachable

bb.aq:                                            ; preds = %bb.aj
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.ar:                                            ; preds = %bb.as
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !62835
  unreachable

bb.as:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr231drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$nls..term..AstPtr$C$nickel_lang_core..typecheck..UnifType$GT$$C$nls..analysis..TypeCollector..complete..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha3452f09c55421caE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t) #77
          to label %.body unwind label %bb.ar, !noalias !62895

bb.at:                                            ; preds = %bb.al, %bb.ak, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h728f70b14ddbe7c8E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !62841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !62840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !62896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !62835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !62833
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0233.0.copyload = load ptr, ptr %i.hv, align 8, !nonnull !44, !noundef !44 ; 8 uses
  %.sroa.2234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2234.0.copyload = load i64, ptr %.sroa.2234.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.3236.0.copyload = load i64, ptr %.sroa.3236.0..sroa_idx, align 8 ; 6 uses
  %.val3.i.i.i20 = load <16 x i8>, ptr %.sroa.0233.0.copyload, align 16, !noalias !62897
  %i.hw = icmp eq i64 %.sroa.2234.0.copyload, 0
  br i1 %i.hw, label %bb.au, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21: ; preds = %bb.at
  %i.hx = mul i64 %.sroa.2234.0.copyload, 120
  %i.hy = and i64 %i.hx, -16                      ; 2 uses
  %i.hz = add i64 %.sroa.2234.0.copyload, 145
  %i.ia = add i64 %i.hz, %i.hy
  %i.ib = sub i64 -128, %i.hy
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0233.0.copyload, i64 %i.ib
  br label %bb.au

bb.au:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21, %bb.at
  %.sroa.5.sroa.0.0.i.i.i.i22 = phi i64 [ %i.ia, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21 ], [ undef, %bb.at ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i23 = phi ptr [ %i.ic, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21 ], [ undef, %bb.at ] ; 3 uses
  %.sroa.0.0.i.i.i.i24 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i21 ], [ 0, %bb.at ] ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0233.0.copyload, i64 16 ; 4 uses
  %i.ie = icmp sgt <16 x i8> %.val3.i.i.i20, splat (i8 -1) ; 4 uses
  %i.if = getelementptr i8, ptr %.sroa.0233.0.copyload, i64 %.sroa.2234.0.copyload
  %i.ig = getelementptr i8, ptr %i.if, i64 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !62898
  store i64 %.sroa.0.0.i.i.i.i24, ptr %i.j, align 8, !noalias !62899
  %.sroa.0128.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i22, ptr %.sroa.0128.sroa.6.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i23, ptr %.sroa.0128.sroa.7.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.0233.0.copyload, ptr %.sroa.0128.sroa.8.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.id, ptr %.sroa.0128.sroa.9.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.ig, ptr %.sroa.0128.sroa.10.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store <16 x i1> %i.ie, ptr %.sroa.0128.sroa.11.0..sroa_idx, align 8, !noalias !62899
  %.sroa.0128.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.sroa.3236.0.copyload, ptr %.sroa.0128.sroa.13.0..sroa_idx, align 8, !noalias !62899
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.v, ptr %.sroa.6129.0..sroa_idx, align 8, !noalias !62899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !62900
  %i.ih = load i8, ptr %i.bv, align 8, !range !45, !noalias !62901, !noundef !44
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i112, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i33", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i112: ; preds = %bb.au
  %.pre.i.i.i.i.i113 = load i64, ptr %i.bu, align 8, !noalias !62902
  %.phi.trans.insert.i.i.i.i.i114 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre1.i.i.i.i.i115 = load i64, ptr %.phi.trans.insert.i.i.i.i.i114, align 8, !noalias !62902
  br label %bb.av

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i33": ; preds = %bb.au
  %i.ij = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i35 unwind label %bb.ch, !noalias !62900 ; 2 uses

.noexc.i.i35:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i33"
  %i.ik = extractvalue { i64, i64 } %i.ij, 0
  %i.il = extractvalue { i64, i64 } %i.ij, 1      ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.il, ptr %i.im, align 8, !noalias !62903
  store i8 1, ptr %i.bv, align 8, !noalias !62903
  br label %bb.av

bb.av:                                            ; preds = %.noexc.i.i35, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i112
  %.pre-phi68.i.i = phi i64 [ %i.il, %.noexc.i.i35 ], [ %.pre1.i.i.i.i.i115, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i112 ]
  %.pre-phi.i.i36 = phi i64 [ %i.ik, %.noexc.i.i35 ], [ %.pre.i.i.i.i.i113, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i112 ] ; 2 uses
  %i.in = add i64 %.pre-phi.i.i36, 1
  store i64 %i.in, ptr %i.bu, align 8, !noalias !62902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !62900
  %.sroa.4.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i36, ptr %.sroa.4.0..sroa_idx.i.i37, align 8, !noalias !62900
  %.sroa.5.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store i64 %.pre-phi68.i.i, ptr %.sroa.5.0..sroa_idx.i.i38, align 8, !noalias !62900
  call void @llvm.experimental.noalias.scope.decl(metadata !62904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !62905
  store i64 %.sroa.0.0.i.i.i.i24, ptr %i.h, align 8, !noalias !62899
  %.sroa.0128.sroa.6.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i22, ptr %.sroa.0128.sroa.6.0..sroa_idx200, align 8, !noalias !62899
  %.sroa.0128.sroa.7.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i23, ptr %.sroa.0128.sroa.7.0..sroa_idx204, align 8, !noalias !62899
  %.sroa.0128.sroa.8.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %.sroa.0233.0.copyload, ptr %.sroa.0128.sroa.8.0..sroa_idx208, align 8, !noalias !62899
  %.sroa.0128.sroa.9.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.id, ptr %.sroa.0128.sroa.9.0..sroa_idx212, align 8, !noalias !62899
  %.sroa.0128.sroa.10.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.ig, ptr %.sroa.0128.sroa.10.0..sroa_idx216, align 8, !noalias !62899
  %.sroa.0128.sroa.11.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <16 x i1> %i.ie, ptr %.sroa.0128.sroa.11.0..sroa_idx220, align 8, !noalias !62899
  %.sroa.0128.sroa.13.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.3236.0.copyload, ptr %.sroa.0128.sroa.13.0..sroa_idx226, align 8, !noalias !62899
  %.sroa.6129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.v, ptr %.sroa.6129.0..sroa_idx130, align 8, !noalias !62899
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.not.i.i40 = icmp eq i64 %.sroa.3236.0.copyload, 0 ; 2 uses
  br i1 %.not.i.i40, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h59535eda30677385E.exit.i.i.i", label %bb.aw, !prof !46

bb.aw:                                            ; preds = %bb.av
  %i.ip = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3b6ce49382091df4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %.sroa.3236.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i37)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h59535eda30677385E.exit.i.i.i" unwind label %bb.cd ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h59535eda30677385E.exit.i.i.i": ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62906
  store i64 %.sroa.0.0.i.i.i.i24, ptr %i.g, align 8, !noalias !62899
  %.sroa.0128.sroa.6.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i22, ptr %.sroa.0128.sroa.6.0..sroa_idx202, align 8, !noalias !62899
  %.sroa.0128.sroa.7.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i23, ptr %.sroa.0128.sroa.7.0..sroa_idx206, align 8, !noalias !62899
  %.sroa.0128.sroa.8.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %.sroa.0233.0.copyload, ptr %.sroa.0128.sroa.8.0..sroa_idx210, align 8, !noalias !62899
  %.sroa.0128.sroa.9.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.id, ptr %.sroa.0128.sroa.9.0..sroa_idx214, align 8, !noalias !62899
  %.sroa.0128.sroa.10.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.ig, ptr %.sroa.0128.sroa.10.0..sroa_idx218, align 8, !noalias !62899
  %.sroa.0128.sroa.11.0..sroa_idx222 = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  store <16 x i1> %i.ie, ptr %.sroa.0128.sroa.11.0..sroa_idx222, align 8, !noalias !62899
  %.sroa.0128.sroa.13.0..sroa_idx228 = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  store i64 %.sroa.3236.0.copyload, ptr %.sroa.0128.sroa.13.0..sroa_idx228, align 8, !noalias !62899
  call void @llvm.experimental.noalias.scope.decl(metadata !62907)
  call void @llvm.experimental.noalias.scope.decl(metadata !62908)
  call void @llvm.experimental.noalias.scope.decl(metadata !62909)
  call void @llvm.experimental.noalias.scope.decl(metadata !62910)
  call void @llvm.experimental.noalias.scope.decl(metadata !62911)
  call void @llvm.experimental.noalias.scope.decl(metadata !62912)
  call void @llvm.experimental.noalias.scope.decl(metadata !62913)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i32)
  br i1 %.not.i.i40, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h104f380bed1599b6E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i.i47:                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h59535eda30677385E.exit.i.i.i"
  %i.iq = bitcast <16 x i1> %i.ie to i16
  %.sroa.714.24..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ir = load ptr, ptr %i.v, align 8, !alias.scope !62914, !noalias !62915, !nonnull !44, !align !50
  %i.is = load ptr, ptr %i.bg, align 8, !alias.scope !62914, !noalias !62915, !nonnull !44, !align !50
  %i.it = load ptr, ptr %i.bh, align 8, !alias.scope !62914, !noalias !62915, !nonnull !44, !align !50
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.iv = load ptr, ptr %i.bi, align 8, !alias.scope !62914, !noalias !62915, !nonnull !44, !align !50 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i.i.i47
  %.lcssa1837.i.i.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i47 ], [ %.lcssa1836.i.i.i.i.i.i.i, %bb.cb ] ; 2 uses
  %.lcssa1934.i.i.i.i.i.i.i = phi ptr [ %.sroa.0233.0.copyload, %.lr.ph.i.i.i.i.i.i.i47 ], [ %.lcssa1933.i.i.i.i.i.i.i, %bb.cb ] ; 2 uses
  %i.jg = phi i16 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i47 ], [ %i.jr, %bb.cb ] ; 2 uses
  %i.jh = phi i64 [ %.sroa.3236.0.copyload, %.lr.ph.i.i.i.i.i.i.i47 ], [ %i.ju, %bb.cb ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62916)
  call void @llvm.experimental.noalias.scope.decl(metadata !62917)
  %.not13.i.i.i.i.i.i.i.i.i49 = icmp eq i16 %i.jg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i49, label %.lr.ph.i.i.i.i.i.i.i.i.i107, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20541abe20057b36E.exit.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i111:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i107
  store ptr %i.jm, ptr %.sroa.0128.sroa.9.0..sroa_idx214, align 8, !alias.scope !62918, !noalias !62919
  store ptr %i.jl, ptr %.sroa.0128.sroa.8.0..sroa_idx210, align 8, !alias.scope !62918, !noalias !62919
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20541abe20057b36E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i107:                      ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i.i107
  %i.ji = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i.i.i.i107 ], [ %.lcssa1837.i.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %i.jj = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i107 ], [ %.lcssa1934.i.i.i.i.i.i.i, %bb.ax ]
  %.val11.i.i.i.i.i.i.i.i.i108 = load <16 x i8>, ptr %i.ji, align 16, !noalias !62920
  %i.jk = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i108, splat (i8 -1)
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -1920 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i109 = bitcast <16 x i1> %i.jk to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i110 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i109, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i110, label %.lr.ph.i.i.i.i.i.i.i.i.i107, label %._crit_edge.i.i.i.i.i.i.i.i.i111

bb.ay:                                            ; preds = %bb.az
  %i.jn = landingpad { ptr, i32 }
          cleanup
  store i16 %i.jr, ptr %.sroa.0128.sroa.11.0..sroa_idx222, align 8, !alias.scope !62918, !noalias !62919
  store i64 %i.ju, ptr %.sroa.0128.sroa.13.0..sroa_idx228, align 8, !alias.scope !62921, !noalias !62919
  br label %.body.i.i.i.i.i.i.i52

.body.i.i.i.i.i.i.i52:                            ; preds = %common.resume.i.i.i.i.i.i.i.i93, %bb.ay
  %eh.lpad-body.i.i.i.i.i.i.i53 = phi { ptr, i32 } [ %i.jn, %bb.ay ], [ %common.resume.op.i.i.i.i.i.i.i.i94, %common.resume.i.i.i.i.i.i.i.i93 ]
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$nls..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h973f2548608d6b8bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g) #77
          to label %.body.i.i41 unwind label %bb.cc, !noalias !62922

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20541abe20057b36E.exit.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i111, %bb.ax
  %.lcssa1836.i.i.i.i.i.i.i = phi ptr [ %i.jm, %._crit_edge.i.i.i.i.i.i.i.i.i111 ], [ %.lcssa1837.i.i.i.i.i.i.i, %bb.ax ] ; 2 uses
  %.lcssa1933.i.i.i.i.i.i.i = phi ptr [ %i.jl, %._crit_edge.i.i.i.i.i.i.i.i.i111 ], [ %.lcssa1934.i.i.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i50 = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i109, %._crit_edge.i.i.i.i.i.i.i.i.i111 ], [ %i.jg, %bb.ax ] ; 3 uses
  %i.jo = add i16 %.lcssa.i.i.i.i.i.i.i.i.i50, -1
  %i.jp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i50, i1 true)
  %i.jq = zext nneg i16 %i.jp to i64
  %i.jr = and i16 %i.jo, %.lcssa.i.i.i.i.i.i.i.i.i50 ; 4 uses
  %i.js = sub nsw i64 0, %i.jq
  %i.jt = getelementptr inbounds [120 x i8], ptr %.lcssa1933.i.i.i.i.i.i.i, i64 %i.js ; 3 uses
  %i.ju = add i64 %i.jh, -1                       ; 6 uses
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !noalias !62923
  %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jt, i64 -96
  %.sroa.5.0.copyload8.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx7.i.i.i.i.i.i.i, align 8, !noalias !62924 ; 2 uses
  %.not.i.i.i.i.i.i.i51 = icmp eq i64 %.sroa.5.0.copyload8.i.i.i.i.i.i.i, 20
  br i1 %.not.i.i.i.i.i.i.i51, label %bb.bx, label %bb.az

bb.az:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h20541abe20057b36E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jt, i64 -88
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i, i64 88, i1 false), !noalias !62923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.714.24..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.i.i.i.i.i.i.i32, i64 88, i1 false), !noalias !62926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62926
end_hunk_5
begin_hunk_6_@_ZN3nls8requests10completion17handle_completion17hb33052dd8f6bdca6E:bb.a
bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65995)
  call void @llvm.experimental.noalias.scope.decl(metadata !65996), !noalias !65997
  call void @llvm.experimental.noalias.scope.decl(metadata !65998), !noalias !65997
  %i.ff = icmp eq i64 %i.fd, 18
  br i1 %i.ff, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !65999), !noalias !65997
  call void @llvm.experimental.noalias.scope.decl(metadata !66000), !noalias !65997
  %i.fg = icmp ne i64 %i.fd, 12
  call void @llvm.assume(i1 %i.fg), !noalias !65997
  %i.fh = icmp samesign ult i64 %i.fd, 3
  br i1 %i.fh, label %bb.y, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !66001), !noalias !65997
  switch i64 %i.fd, label %bb.z [
    i64 0, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"
    i64 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !66002, !noalias !65994, !noundef !44 ; 4 uses
  %i.fj = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.fk = shl i64 %.val3.i.i.i.i.i.i.i.i, 2
  %i.fl = icmp slt i64 %.val3.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.fl), !noalias !65997
  %i.fm = and i64 %i.fk, -16                      ; 2 uses
  %i.fn = add i64 %i.fm, 16                       ; 2 uses
  %i.fo = add nsw i64 %.val3.i.i.i.i.i.i.i.i, 17
  %i.fp = add i64 %i.fo, %i.fn                    ; 4 uses
  %i.fq = icmp uge i64 %i.fp, %i.fn
  %i.fr = icmp ult i64 %i.fp, 9223372036854775793
  call void @llvm.assume(i1 %i.fq), !noalias !65997
  call void @llvm.assume(i1 %i.fr), !noalias !65997
  %i.fs = icmp eq i64 %i.fp, 0
  br i1 %i.fs, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.fz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %i.fm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %i.fp, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val.sink.i.i.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i.i.i, align 8, !alias.scope !66002, !noalias !65994, !nonnull !44, !noundef !44
  %i.ft = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i.i
  %i.fu = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i.i.i, i64 %i.ft
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %.sink7.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !66003
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"

bb.aa:                                            ; preds = %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.val1.i.i.i.i.i.i39.i.i = load i64, ptr %i.fv, align 8, !alias.scope !66002, !noalias !65994, !noundef !44 ; 4 uses
  %i.fw = icmp eq i64 %.val1.i.i.i.i.i.i39.i.i, 0
  br i1 %i.fw, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fx = shl i64 %.val1.i.i.i.i.i.i39.i.i, 2
  %i.fy = icmp slt i64 %.val1.i.i.i.i.i.i39.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.fy), !noalias !65997
  %i.fz = and i64 %i.fx, -16                      ; 2 uses
  %i.ga = add i64 %i.fz, 16                       ; 2 uses
  %i.gb = add nsw i64 %.val1.i.i.i.i.i.i39.i.i, 17
  %i.gc = add i64 %i.gb, %i.ga                    ; 4 uses
  %i.gd = icmp uge i64 %i.gc, %i.ga
  %i.ge = icmp ult i64 %i.gc, 9223372036854775793
  call void @llvm.assume(i1 %i.gd), !noalias !65997
  call void @llvm.assume(i1 %i.ge), !noalias !65997
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.aa, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z, %bb.y, %bb.x, %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !66004), !noalias !65997
  %i.gh = load i64, ptr %i.gg, align 8, !range !87, !alias.scope !66005, !noalias !65994, !noundef !44 ; 4 uses
  %i.gi = icmp ne i64 %i.gh, -9223372036854775805
  call void @llvm.assume(i1 %i.gi), !noalias !65997
  %i.gj = icmp ult i64 %i.gh, -9223372036854775807
  br i1 %i.gj, label %bb.ab, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !66006), !noalias !65997
  %switch.i.i.i.i.i = icmp sgt i64 %i.gh, 0
  br i1 %switch.i.i.i.i.i, label %bb.ac, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 128
  %.val5.i.i.i.i.i = load ptr, ptr %i.gk, align 8, !alias.scope !66007, !noalias !65994, !nonnull !44, !noundef !44
  %i.gl = shl nuw i64 %i.gh, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !66008
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i": ; preds = %bb.ac, %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %.val.i.i.i37.i.i = load i64, ptr %i.gm, align 8, !range !70, !alias.scope !66007, !noalias !65994, !noundef !44 ; 2 uses
  %switch8.i.i.i.i.i = icmp sgt i64 %.val.i.i.i37.i.i, 0
  br i1 %switch8.i.i.i.i.i, label %bb.ad, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ad:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fb, i64 152
  %.val1.i.i.i38.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !66007, !noalias !65994, !nonnull !44, !noundef !44
  %i.go = shl nuw i64 %.val.i.i.i37.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i38.i.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !66008
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ad, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i", %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gp = icmp eq i64 %i.fc, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.gp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.ed, align 8, !range !74, !alias.scope !65992, !noalias !65983, !noundef !44 ; 2 uses
  %i.gq = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.gq, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i"
  %i.gr = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 200
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65994
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i": ; preds = %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65977
  br label %bb.af

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h32109d97f62ff7d9E.exit.i.i.i.i.i.i", %bb.r
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !66009, !noalias !65977 ; 5 uses
  %.sroa.6.i.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !66009, !noalias !65977 ; 4 uses
  %.sroa.6.i.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !alias.scope !66009, !noalias !65977 ; 2 uses
  %.sroa.6.i.sroa.6.0.copyload.i.i.i.i = load i64, ptr %i.ed, align 8, !alias.scope !66009, !noalias !65977 ; 4 uses
  %.sroa.6.i.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !66009, !noalias !65977 ; 5 uses
  %.sroa.6.i.sroa.8.0.copyload.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !66009, !noalias !65977 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !alias.scope !66009, !noalias !65977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65977
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, %i.dz
  br i1 %.not.i.i.i.i.i, label %.loopexit212.i.i, label %bb.r

.body.i.i:                                        ; preds = %bb.cj, %bb.bo, %bb.bn, %bb.bl, %bb.t
  %.sink.i.i = phi ptr [ %i.k, %bb.t ], [ %i.m, %bb.bn ], [ %i.m, %bb.bo ], [ %i.m, %bb.cj ], [ %i.m, %bb.bl ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ey, %bb.t ], [ %i.ll, %bb.bn ], [ %i.ll, %bb.bo ], [ %.pn.i.i19.i.i, %bb.cj ], [ %i.le, %bb.bl ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E"(ptr noalias noundef align 8 dereferenceable(64) %.sink.i.i) #77, !noalias !65964
  call fastcc void @"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E"(ptr noalias noundef align 8 dereferenceable(40) %i.n) #77, !noalias !65964
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$nls..requests..completion..CompletionItem$GT$$GT$17h405d5ac5d6027c9cE"(ptr noalias noundef align 8 dereferenceable(48) %i.o) #77, !noalias !65964
  br label %.body

bb.ag:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i"
  store ptr %i.eu, ptr %i.dy, align 8, !alias.scope !65969, !noalias !65970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !65964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i.i.i.i, i64 16, i1 false), !noalias !65964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.m, align 8, !noalias !65964
  store ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !65964
  store i64 %.sroa.6.i.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !65964
  store i64 %.sroa.6.i.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !65964
  store ptr %.sroa.6.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !65964
  store i64 %.sroa.6.i.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !65964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !65964
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1122)
          to label %bb.bm unwind label %bb.bl, !noalias !65964

.loopexit212.i.i:                                 ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i", %bb.af, %bb.q
  %i.gs = phi ptr [ %i.eu, %bb.af ], [ %.promoted.i.i, %bb.q ], [ %i.eu, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ] ; 2 uses
  %i.gt = phi ptr [ %i.dz, %bb.af ], [ %.promoted.i.i, %bb.q ], [ %i.dz, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66010)
  call void @llvm.experimental.noalias.scope.decl(metadata !66011)
  call void @llvm.experimental.noalias.scope.decl(metadata !66012)
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub nuw i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 6
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$$u5b$nls..requests..completion..CompletionItem$u5d$$GT$17h20c0569be5037711E"(ptr noalias noundef nonnull align 8 %i.gs, i64 noundef %i.gx), !noalias !66013
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !66014, !noalias !65964, !noundef !44 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i", label %bb.ah

bb.ah:                                            ; preds = %.loopexit212.i.i
  %i.hb = load ptr, ptr %i.n, align 8, !alias.scope !66014, !noalias !65964, !nonnull !44, !noundef !44
  %i.hc = shl nuw i64 %i.gz, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !66013
  br label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"

"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i": ; preds = %bb.ah, %.loopexit212.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !65964
  %.sroa.0162.0.copyload.i.i = load ptr, ptr %i.o, align 8, !noalias !65964, !nonnull !44, !noundef !44 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !65964 ; 4 uses
  %.sroa.3163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.3163.0.copyload.i.i = load i64, ptr %.sroa.3163.0..sroa_idx.i.i, align 8, !noalias !65964
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0162.0.copyload.i.i, align 16, !noalias !66015
  %i.hd = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %i.hd, label %bb.ai, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %i.he = mul i64 %.sroa.2.0.copyload.i.i, 88
  %i.hf = and i64 %i.he, -16                      ; 2 uses
  %i.hg = add i64 %.sroa.2.0.copyload.i.i, 113
  %i.hh = add i64 %i.hg, %i.hf
  %i.hi = sub i64 -96, %i.hf
  %i.hj = getelementptr inbounds i8, ptr %.sroa.0162.0.copyload.i.i, i64 %i.hi
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.hh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.hj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0162.0.copyload.i.i, i64 16
  %i.hl = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.hm = getelementptr i8, ptr %.sroa.0162.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !66016
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.4154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.5155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.6156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %.sroa.0162.0.copyload.i.i, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.7157.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.hk, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.8158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.hn, ptr %.sroa.8158.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.9159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store <16 x i1> %i.hl, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  %.sroa.11161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  store i64 %.sroa.3163.0.copyload.i.i, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !66017, !noalias !66018
  call void @llvm.experimental.noalias.scope.decl(metadata !66019)
  call void @llvm.experimental.noalias.scope.decl(metadata !66020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !66022
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(464) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.ak unwind label %bb.aj, !noalias !66023

bb.aj:                                            ; preds = %bb.ai
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !66024, !noalias !66023
  br label %bb.bh

bb.ak:                                            ; preds = %bb.ai
  %i.hp = load i64, ptr %i.g, align 8, !range !70, !noalias !66022, !noundef !44
  %.not.i.i.i.i9.i.i = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %.not.i.i.i.i9.i.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  store i64 0, ptr %i.aa, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.hr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !66022
  call void @llvm.experimental.noalias.scope.decl(metadata !66025)
  call void @llvm.experimental.noalias.scope.decl(metadata !66026)
  call void @llvm.experimental.noalias.scope.decl(metadata !66027)
  call void @llvm.experimental.noalias.scope.decl(metadata !66028)
  call void @llvm.experimental.noalias.scope.decl(metadata !66029)
  call void @llvm.experimental.noalias.scope.decl(metadata !66030)
  call void @llvm.experimental.noalias.scope.decl(metadata !66031)
  %i.hs = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !66032, !noalias !66023, !noundef !44 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.al
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !66033, !noalias !66023
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !66032, !noalias !66023
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !66032, !noalias !66023
  br label %bb.am

bb.am:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hu = phi i64 [ %i.hs, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ih, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hv = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66034)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hw = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.hx = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hw, align 16, !noalias !66035
  %i.hy = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -1408 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hy to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hv, %bb.am ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ib = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ic = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.id = zext nneg i16 %i.ic to i64
  %i.ie = and i16 %i.ib, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.if = sub nsw i64 0, %i.id
  %i.ig = getelementptr inbounds [88 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.if
  %i.ih = add i64 %i.hu, -1                       ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -88
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$$LP$alloc..string..String$C$nls..requests..completion..CompletionItem$RP$$GT$17hb5671f75511c6d3dE"(ptr noalias noundef align 8 dereferenceable(88) %i.ii), !noalias !66036
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ih, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.am

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.al
  %i.ij = load i64, ptr %i.i, align 8, !range !70, !alias.scope !66037, !noalias !66023, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fl, label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ik = load i64, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !66037, !noalias !66023, !noundef !44 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.fl, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !66037, !noalias !66023, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.im, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) %i.ij) #66, !noalias !66038
  br label %bb.fl

bb.ap:                                            ; preds = %bb.as
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h3f5a837b53a6f7a5E"(ptr noalias noundef align 8 dereferenceable(464) %i.g) #77
          to label %bb.bh unwind label %bb.bg, !noalias !66022

bb.aq:                                            ; preds = %bb.ak
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !66039, !noalias !66023, !noundef !44 ; 2 uses
  %i.io = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.io, i64 4) ; 3 uses
  %i.ip = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 464   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.io, 19877956975980120
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.as, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !66040
  %i.ir = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ip, i64 noundef range(i64 1, 9) 8) #66, !noalias !66040 ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ap, !noalias !66022

.noexc.i.i.i.i.i.i:                               ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ir, %bb.ar ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ar ] ; 2 uses
  %i.it = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.it)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(464) %i.g, i64 464, i1 false), !noalias !66022
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !66022
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !66022
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !66022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !66023
  call void @llvm.experimental.noalias.scope.decl(metadata !66041)
  call void @llvm.experimental.noalias.scope.decl(metadata !66042)
  call void @llvm.experimental.noalias.scope.decl(metadata !66043)
  call void @llvm.experimental.noalias.scope.decl(metadata !66044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66045
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i", %bb.at
  %i.iv = phi ptr [ %i.kc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.at ]
  %i.iw = phi i64 [ %i.ke, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4edf1186ab614d90E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.at ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(464) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.aw unwind label %bb.av, !noalias !66046

.body.i.i.i.i.i.i:                                ; preds = %bb.bc, %bb.av
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kf, %bb.bc ], [ %i.ix, %bb.av ]
  call fastcc void @"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoValues$LT$alloc..string..String$C$nls..requests..completion..CompletionItem$GT$$C$$LT$lsp_types..completion..CompletionItem$u20$as$u20$core..convert..From$LT$nls..requests..completion..CompletionItem$GT$$GT$..from$GT$$GT$17ha352928b048bf9d1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #77, !noalias !66046
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..completion..CompletionItem$GT$$GT$17hc711c1f0936cbd65E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #77
          to label %.body unwind label %bb.bg, !noalias !66022

bb.av:                                            ; preds = %bb.au
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.iy = load i64, ptr %i.e, align 8, !range !70, !noalias !66047, !noundef !44
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.iy, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iz = icmp samesign ult i64 %i.iw, 19877956975980121
  call void @llvm.assume(i1 %i.iz)
  %i.ja = load i64, ptr %i.h, align 8, !range !74, !alias.scope !66048, !noalias !66049, !noundef !44
end_hunk_6
begin_hunk_7_@_ZN3nls8requests4goto17handle_references17h963737526d75fc78E:bb.a
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dc, align 8, !noalias !67969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !67967
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.dk, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !67967
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.pre-phi18.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !67967
  %i.dm = icmp eq i64 %.val3.i.i.i, 0             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !67971
  store ptr %i.p, ptr %i.o, align 8, !noalias !67972
  br i1 %i.dm, label %.loopexit423.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.v
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.v ], [ %i.dt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !67973
  call fastcc void @"_ZN3nls8analysis83_$LT$impl$u20$nls..analysis..ouroboros_impl_analysis_registry..AnalysisRegistry$GT$10get_usages17h5b5cdfb9b7a964b6E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(168) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.dp), !noalias !67974
  call void @llvm.experimental.noalias.scope.decl(metadata !67975)
  call void @llvm.experimental.noalias.scope.decl(metadata !67976)
  call void @llvm.experimental.noalias.scope.decl(metadata !67977)
  call void @llvm.experimental.noalias.scope.decl(metadata !67978)
  call void @llvm.experimental.noalias.scope.decl(metadata !67979)
  %i.dq = load i64, ptr %i.n, align 8, !range !71, !alias.scope !67980, !noalias !67981, !noundef !44
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc11.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h6e4cc13ee3958fa7E"(ptr nonnull readonly align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(168) %i.n)
          to label %.noexc11.i.i unwind label %bb.z, !noalias !67967

.noexc11.i.i:                                     ; preds = %bb.x, %bb.w
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !67980, !noalias !67981 ; 2 uses
  %i.dr = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h75d8f58a5de788bbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !67982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !67981
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !67982
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h6e4cc13ee3958fa7E"(ptr nonnull readonly align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.m)
          to label %.noexc12.i.i unwind label %bb.z, !noalias !67967

.noexc12.i.i:                                     ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !67982
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17h75d8f58a5de788bbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator4fold17h75d8f58a5de788bbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i, %.noexc11.i.i
  %i.ds = load i64, ptr %i.do, align 8, !range !71, !alias.scope !67980, !noalias !67981, !noundef !44
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 2
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h75d8f58a5de788bbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h6e4cc13ee3958fa7E"(ptr nonnull readonly align 8 dereferenceable(8) %i.o, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.do)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.z, !noalias !67967

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.y, %_ZN4core4iter6traits8iterator8Iterator4fold17h75d8f58a5de788bbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !67973
  %i.dt = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.du = icmp eq i64 %i.dt, %.val3.i.i.i
  br i1 %i.du, label %.loopexit423, label %bb.w

bb.z:                                             ; preds = %bb.x, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i.i148 = load ptr, ptr %i.p, align 8, !noalias !67967
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val7.i.i = load i64, ptr %i.dv, align 8, !noalias !67967, !noundef !44
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17he28143f309945560E"(ptr %.val.i.i148, i64 %.val7.i.i) #77, !noalias !67967
  br label %.thread373

.loopexit423:                                     ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h11de222e8711df1bE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !67971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !67983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !67967
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dx = load i8, ptr %i.dw, align 8, !range !45, !noundef !44
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aa, label %.lr.ph

.loopexit423.thread:                              ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !67971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !67983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !67967
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ea = load i8, ptr %i.dz, align 8, !range !45, !noundef !44
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.aa, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split"

bb.aa:                                            ; preds = %.loopexit423.thread, %.loopexit423
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !67984, !noundef !44
  %i.ee = icmp eq i64 %i.ed, 0
  %i.ef = add nuw nsw i64 %.val3.i.i.i, 1
  %i.eg = lshr i64 %i.ef, 1
  %.sroa.0.0.i.i151 = select i1 %i.ee, i64 %.val3.i.i.i, i64 %i.eg ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !67985, !noalias !67986, !noundef !44
  %i.ej = icmp ugt i64 %.sroa.0.0.i.i151, %i.ei
  br i1 %i.ej, label %bb.ab, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", !prof !49

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.el = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h2217ea90433957afE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, i64 noundef %.sroa.0.0.i.i151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i" unwind label %.thread393.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i": ; preds = %bb.ab, %bb.aa
  br i1 %i.dm, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split", label %.preheader.i

.preheader.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", %.noexc153
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %i.en, %.noexc153 ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i" ] ; 2 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %.sroa.06.0.i.i.i.i.i.i
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h51f762a6b05dabe5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.em)
          to label %.noexc153 unwind label %.thread393.loopexit

.noexc153:                                        ; preds = %.preheader.i
  %i.en = add nuw i64 %.sroa.06.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.eo = icmp eq i64 %i.en, %.val3.i.i.i
  br i1 %i.eo, label %.lr.ph, label %.preheader.i

.thread393.loopexit:                              ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread385.thread

.thread393.loopexit.split-lp:                     ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread385.thread

.lr.ph:                                           ; preds = %.noexc153, %.loopexit423
  %.sroa.0276.0.copyload = load i64, ptr %i.ad, align 8 ; 3 uses
  %i.ep = icmp ult i64 %.val3.i.i.i, 768614336404564651
  call void @llvm.assume(i1 %i.ep)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body178

.body178:                                         ; preds = %bb.dl, %.body.sink.split.i.i, %bb.dm, %bb.ac
  %eh.lpad-body179 = phi { ptr, i32 } [ %i.ev, %bb.ac ], [ %i.tk, %bb.dm ], [ %i.tg, %bb.dl ], [ %eh.lpad-body25.ph.i.i, %.body.sink.split.i.i ]
  %i.ew = icmp eq i64 %.sroa.0276.0.copyload, 0
  br i1 %i.ew, label %.thread385, label %bb.ad

bb.ad:                                            ; preds = %.body178
  %i.ex = mul nuw i64 %.sroa.0276.0.copyload, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !67987
  br label %.thread385

bb.ae:                                            ; preds = %.lr.ph, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit"
  %.sroa.5280.0466 = phi ptr [ %i.cx, %.lr.ph ], [ %i.ey, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.5280.0466, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5280.0466, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_ZN3nls5world5World14get_field_refs17hc949882ee1de66bbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.ag, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.ab)
          to label %bb.da unwind label %bb.ac

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc2217892c5d0441cE.exit.i.i", %.loopexit423.thread
  %.sroa.0276.0.copyload546.ph = load i64, ptr %i.ad, align 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit": ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split"
  %.sroa.0276.0.copyload546 = phi i64 [ %.sroa.0276.0.copyload546.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit.sink.split" ], [ %.sroa.0276.0.copyload, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0ca65783bd0c4483E.exit" ] ; 2 uses
  %i.ez = icmp eq i64 %.sroa.0276.0.copyload546, 0
  br i1 %i.ez, label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154", label %bb.af

bb.af:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  %i.fa = mul nuw i64 %.sroa.0276.0.copyload546, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !67988
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"

"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154": ; preds = %bb.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c4cd6d8f6543794E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.sroa.0284.0.copyload = load ptr, ptr %i.ac, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4285.0.copyload = load i64, ptr %.sroa.4285.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.5287.0.copyload = load i64, ptr %.sroa.5287.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67989)
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0284.0.copyload, align 16, !noalias !67990
  %i.fb = icmp eq i64 %.sroa.4285.0.copyload, 0   ; 5 uses
  br i1 %i.fb, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %i.fc = mul i64 %.sroa.4285.0.copyload, 12
  %i.fd = add i64 %i.fc, 24
  %i.fe = and i64 %i.fd, -16                      ; 2 uses
  %i.ff = add i64 %.sroa.4285.0.copyload, 17
  %i.fg = add i64 %i.ff, %i.fe
  %i.fh = sub nsw i64 0, %i.fe
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0284.0.copyload, i64 %i.fh
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.fg, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17hb6b2792219045163E.exit154" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !67991
  %i.fj = icmp eq i64 %.sroa.5287.0.copyload, 0
  br i1 %i.fj, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  %i.fk = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i
  %i.fn = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fm, %bb.ag ] ; 2 uses
  %i.fo = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0284.0.copyload, %bb.ag ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fn, align 16, !noalias !67992
  %i.fp = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -192 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i": ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc79d06cb80a4f2d5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !67991
  %i.fs = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.fb, %i.fs
  br i1 %or.cond.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !67993
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i

bb.ai:                                            ; preds = %bb.al
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond6.i.i.i = or i1 %i.fb, %i.fu
  br i1 %or.cond6.i.i.i, label %.thread414, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !67994
  br label %.thread414

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.14.0.i.i.i = phi ptr [ %i.fm, %bb.ag ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.0284.0.copyload, %bb.ag ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.fl, %bb.ag ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fv = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = and i16 %i.fv, %.lcssa.i.i.i.i.i.i.i.i
  %i.fz = sub nsw i64 0, %i.fx
  %i.ga = getelementptr inbounds [12 x i8], ptr %.sroa.9.0.copyload.i.i.i.i.i, i64 %i.fz
  %i.gb = add nsw i64 %.sroa.5287.0.copyload, -1  ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.gc, i64 12, i1 false), !noalias !67995
  %.sroa.0.0.i.i.i.i.i4.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.5287.0.copyload, i64 4) ; 3 uses
  %i.gd = mul i64 %.sroa.0.0.i.i.i.i.i4.i, 12     ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.5287.0.copyload, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !67996
  %i.gf = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gd, i64 noundef range(i64 1, 9) 4) #66, !noalias !67996 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.ak ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ai, !noalias !67995

.noexc.i.i.i.i.i:                                 ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.gf, %bb.ak ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i4.i, %bb.ak ] ; 2 uses
  %i.gh = icmp ule i64 %.sroa.0.0.i.i.i.i.i4.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !noalias !67995
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !67991
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67991
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !67997)
  call void @llvm.experimental.noalias.scope.decl(metadata !67998)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.gi = icmp eq i64 %i.gb, 0
  br i1 %i.gi, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"
  %i.gj = phi ptr [ %i.hd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.am ]
  %i.gk = phi i64 [ %i.hf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.am ] ; 5 uses
  %.lcssa13.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i.i, %bb.am ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.gl = phi i16 [ %i.gu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.fy, %bb.am ] ; 2 uses
  %.val56.i.i.i.i.i.i.i = phi i64 [ %i.gx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i" ], [ %i.gb, %bb.am ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gl, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gm = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.gn = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gm, align 16, !noalias !67999
  %i.go = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -192 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.go to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gr = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = and i16 %i.gr, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.gv = sub nsw i64 0, %i.gt
  %i.gw = getelementptr inbounds [12 x i8], ptr %.lcssa49.i.i.i.i.i.i.i, i64 %i.gv
  %i.gx = add i64 %.val56.i.i.i.i.i.i.i, -1       ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.gy, i64 12, i1 false), !noalias !68000
  %i.gz = icmp samesign ult i64 %i.gk, 768614336404564651
  call void @llvm.assume(i1 %i.gz)
  %i.ha = load i64, ptr %i.l, align 8, !range !74, !alias.scope !68001, !noalias !68002, !noundef !44
  %i.hb = icmp eq i64 %i.gk, %i.ha
  br i1 %i.hb, label %bb.aq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i", %bb.am
  %i.hc = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.fb, %i.hc
  br i1 %or.cond.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i, label %bb.an

bb.an:                                            ; preds = %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68003
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.hd = phi ptr [ %.pre.i.i.i.i.i158, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.gj, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.hd, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.he, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, i64 12, i1 false), !noalias !68000
  %i.hf = add nuw nsw i64 %i.gk, 1                ; 2 uses
  store i64 %i.hf, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !68001, !noalias !68002
  %i.hg = icmp eq i64 %i.gx, 0
  br i1 %i.hg, label %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.aq
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, 0
  %or.cond15.i.i.i.i.i = or i1 %i.fb, %i.hi
  br i1 %or.cond15.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i) #66, !noalias !68004
  br label %.body.i.i.i.i.i

bb.aq:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.gk, i64 noundef %.val56.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 12)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.ao, !noalias !68005

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.aq
  %.pre.i.i.i.i.i158 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !68001, !noalias !68002
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35a1da279acbdbc0E.exit.i.i.i.i.i.i.i"

.body.i.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !67991 ; 2 uses
  %i.hj = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hj, label %.thread414, label %bb.ar

bb.ar:                                            ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67991, !nonnull !44, !noundef !44
  %i.hk = mul nuw i64 %.val.i.i.i.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !67995
  br label %.thread414

_ZN4core4iter6traits8iterator8Iterator7collect17h50a7b477def806a9E.exit.thread.i: ; preds = %bb.ah, %"_ZN105_$LT$std..collections..hash..set..IntoIter$LT$K$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h29341389b5bb060cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68006
end_hunk_7
