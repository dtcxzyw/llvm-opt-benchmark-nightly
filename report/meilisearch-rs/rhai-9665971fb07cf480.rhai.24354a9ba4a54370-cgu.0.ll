Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hae9100076c963fecE":bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !alias.scope !6040
  store i64 0, ptr %i.c, align 8, !alias.scope !6041, !noalias !6039
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !6041, !noalias !6039
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6042, !noalias !6043, !noundef !55 ; 5 uses
  %i.f = icmp ugt i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 5) ; 3 uses
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !6044
  %i.h = select i1 %i.f, i64 %.val.i, i64 %i.e
  %.not.i = icmp eq i64 %.sink.i.i, %i.h
  br i1 %.not.i, label %bb.b, label %.thread54

.thread48:                                        ; preds = %bb.d, %bb.f, %.thread51
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #72
          to label %common.resume unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.e, -1
  br i1 %i.j, label %.thread51, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink.i.i, i1 true) ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread51, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 -1, %i.k
  %i.n = add nuw i64 %i.m, 1
  %i.o = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h874d9d0ccac7f0deE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %i.n)
          to label %bb.e unwind label %.thread48  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 -9223372036854775807, label %..thread54_crit_edge
    i64 0, label %.thread51
  ], !prof !89

..thread54_crit_edge:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !6045, !noalias !6046 ; 2 uses
  %.pre89 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 5)
  br label %.thread54

bb.f:                                             ; preds = %bb.e
  %i.q = extractvalue { i64, i64 } %i.o, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.p, i64 noundef %i.q) #70
          to label %.noexc11 unwind label %.thread48

.noexc11:                                         ; preds = %bb.f
  unreachable

.thread51:                                        ; preds = %bb.b, %bb.c, %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc12 unwind label %.thread48

.noexc12:                                         ; preds = %.thread51
  unreachable

.thread54:                                        ; preds = %..thread54_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre89, %..thread54_crit_edge ], [ %.sink.i.i, %bb.a ] ; 3 uses
  %i.r = phi i64 [ %.pre, %..thread54_crit_edge ], [ %i.e, %bb.a ]
  %i.s = icmp ugt i64 %i.r, 5                     ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !alias.scope !6045, !noalias !6046, !nonnull !55
  %.sink10.i = select i1 %i.s, ptr %i.t, ptr %0
  %.sink9.i = select i1 %i.s, ptr %i.g, ptr %i.d  ; 3 uses
  %i.u = load i64, ptr %.sink9.i, align 8, !noundef !55 ; 5 uses
  %i.v = icmp ult i64 %i.u, %.sink.i.pre-phi
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread54
  %.sroa.032.0.copyload33 = load i8, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.032.0.copyload33.fr = freeze i8 %.sroa.032.0.copyload33 ; 2 uses
  %.not2 = icmp eq i8 %.sroa.032.0.copyload33.fr, 12
  br i1 %.not2, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit23", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel": ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i, i64 %i.u ; 2 uses
  store i8 %.sroa.032.0.copyload33.fr, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.peel, ptr noundef nonnull align 1 dereferenceable(15) %i.w, i64 15, i1 false)
  %i.y = add nuw i64 %i.u, 1                      ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.y, %.sink.i.pre-phi
  br i1 %exitcond.peel.not, label %._crit_edge, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit23"

._crit_edge:                                      ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel", %.thread54
  %.lcssa66 = phi i64 [ 0, %.thread54 ], [ 1, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel" ]
  %.sroa.7.0.lcssa = phi i64 [ %i.u, %.thread54 ], [ %.sink.i.pre-phi, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel" ]
  store i64 %.lcssa66, ptr %i.c, align 8
  store i64 %.sroa.7.0.lcssa, ptr %.sink9.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6047, !noalias !6048, !noundef !55 ; 4 uses
  %.promoted70 = load i64, ptr %i.b, align 8, !alias.scope !6047, !noalias !6048 ; 4 uses
  %.not.i.i1371 = icmp eq i64 %i.aa, %.promoted70
  br i1 %.not.i.i1371, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph": ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.037.0.copyload38 = load i8, ptr %i.ab, align 8, !alias.scope !6049 ; 2 uses
  %.not = icmp eq i8 %.sroa.037.0.copyload38, 12
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br i1 %.not, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph.split"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph.split": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph"
  %.not.i.i13 = icmp eq i64 %i.aa, 1
  store i8 %.sroa.037.0.copyload38, ptr %i.a, align 8
  br i1 %.not.i.i13, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.preheader"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.preheader": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph.split"
  %i.ac = icmp eq i64 %.promoted70, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.739.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.ad, i64 15, i1 false)
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.g unwind label %.split.loopexit.split-lp, !noalias !6050

bb.g:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.preheader"
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph.split"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  %i.ae = icmp eq i64 %.promoted70, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.739.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.af, i64 15, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  %i.ag = load i64, ptr %i.d, align 8, !alias.scope !6054, !noalias !6055, !noundef !55 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 5                   ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !6054, !noalias !6055, !nonnull !55
  %.sink10.i.i.us = select i1 %i.ah, ptr %i.ai, ptr %0
  %.sink9.i.i.us = select i1 %i.ah, ptr %i.g, ptr %i.d ; 2 uses
  %.sink.i.i15.us = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 5)
  %i.aj = load i64, ptr %.sink9.i.i.us, align 8, !alias.scope !6053, !noalias !6050, !noundef !55 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %.sink.i.i15.us
  br i1 %i.ak, label %bb.h, label %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread_crit_edge.split.us", !prof !66

bb.h:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78"
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.i unwind label %.split.us, !noalias !6050

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %0, align 8, !alias.scope !6053, !noalias !6050, !nonnull !55, !noundef !55
  %.pre.i.us = load i64, ptr %i.g, align 8, !alias.scope !6053, !noalias !6050
  br label %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread_crit_edge.split.us"

"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread_crit_edge.split.us": ; preds = %bb.i, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78"
  %i.am = phi i64 [ %.pre.i.us, %bb.i ], [ %i.aj, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78" ]
  %.sroa.01.0.i.us = phi ptr [ %i.g, %bb.i ], [ %.sink9.i.i.us, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78" ] ; 2 uses
  %.sroa.0.0.i16.us = phi ptr [ %i.al, %bb.i ], [ %.sink10.i.i.us, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.us78" ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i16.us, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ao = load i64, ptr %.sroa.01.0.i.us, align 8, !alias.scope !6053, !noalias !6050, !noundef !55
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %.sroa.01.0.i.us, align 8, !alias.scope !6053, !noalias !6050
  br label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit"

.split.us:                                        ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.split

.body:                                            ; preds = %.split
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #72
          to label %common.resume unwind label %bb.o

.split.loopexit.split-lp:                         ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.preheader"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.loopexit.split-lp, %.split.us
  %.us-phi79 = phi { ptr, i32 } [ %i.aq, %.split.us ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp ]
  store i64 1, ptr %i.b, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.j, !noalias !6053, !inline_history !73

bb.j:                                             ; preds = %.split
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !6056
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.lr.ph"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  %i.as = icmp eq i64 %.promoted70, 0
  tail call void @llvm.assume(i1 %i.as)
  store i64 1, ptr %i.b, align 8
  %i.at = icmp eq i64 %i.aa, 1
  br i1 %i.at, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread"
  %i.au = add i64 %i.aa, -1                       ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %2 = icmp eq i64 %i.au, 0
  br i1 %2, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit", label %.lr.ph100

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i": ; preds = %.lr.ph100
  %i.aw = icmp eq i64 %i.ay, %i.au
  br i1 %i.aw, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit", label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.k, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i98 = phi i64 [ %i.ay, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i" ], [ 0, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.sroa.0.0.i.i.i.i.i.i98
  %i.ay = add i64 %.sroa.0.0.i.i.i.i.i.i98, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i" unwind label %bb.l, !inline_history !2

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i": ; preds = %.lr.ph103
  %i.az = add i64 %.sroa.0.1.i.i.i.i.i.i101, 1    ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.au
  br i1 %i.ba, label %common.resume, label %.lr.ph103

bb.l:                                             ; preds = %.lr.ph100
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %i.ay, %i.au
  br i1 %i.bc, label %common.resume, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.l, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i101 = phi i64 [ %i.az, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i" ], [ %i.ay, %bb.l ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.sroa.0.1.i.i.i.i.i.i101
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.bd)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i" unwind label %bb.m, !inline_history !2

bb.m:                                             ; preds = %.lr.ph103
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !6057, !inline_history !3
  unreachable

"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i", %bb.k, %._crit_edge, %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread_crit_edge.split.us", %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit14.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit23", %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %.thread48, %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i", %bb.l, %.thread48, %.body
  %common.resume.op = phi { ptr, i32 } [ %.us-phi79, %.body ], [ %i.i, %.thread48 ], [ %i.bb, %bb.l ], [ %i.bb, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i.i.i.i.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$1_usize$GT$$GT$17h02989199c8b62da1E.exit23": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel", %.lr.ph
  %.us-phi69 = phi i64 [ %i.u, %.lr.ph ], [ %i.y, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb0dca986b40fbbdE.exit.peel" ]
  store i64 %.us-phi69, ptr %.sink9.i, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hccdb3a2d314fba0eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6099)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !6100
  store i64 0, ptr %i.c, align 8, !alias.scope !6101, !noalias !6099
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !6101, !noalias !6099
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6102, !noalias !6103, !noundef !55 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 5) ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !6104
  %i.h = select i1 %i.f, i64 %.val.i, i64 %i.e    ; 3 uses
  %i.i = sub i64 %.sink.i.i, %i.h
  %.not.i = icmp ult i64 %i.i, 2
  br i1 %.not.i, label %bb.b, label %.thread54

.thread48:                                        ; preds = %bb.d, %bb.f, %.thread51
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$2_usize$GT$$GT$17ha06ea82449991ed3E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #72
          to label %common.resume unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, -3
  br i1 %i.k, label %.thread51, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.h, 1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true) ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread51, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 -1, %i.m
  %i.p = add nuw i64 %i.o, 1
  %i.q = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h874d9d0ccac7f0deE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %i.p)
          to label %bb.e unwind label %.thread48  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775807, label %..thread54_crit_edge
    i64 0, label %.thread51
  ], !prof !89

..thread54_crit_edge:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !6105, !noalias !6106 ; 2 uses
  %.pre83 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 5)
  br label %.thread54

bb.f:                                             ; preds = %bb.e
  %i.s = extractvalue { i64, i64 } %i.q, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.r, i64 noundef %i.s) #70
          to label %.noexc11 unwind label %.thread48

.noexc11:                                         ; preds = %bb.f
  unreachable

.thread51:                                        ; preds = %bb.b, %bb.c, %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc12 unwind label %.thread48

.noexc12:                                         ; preds = %.thread51
  unreachable

.thread54:                                        ; preds = %..thread54_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre83, %..thread54_crit_edge ], [ %.sink.i.i, %bb.a ] ; 5 uses
  %i.t = phi i64 [ %.pre, %..thread54_crit_edge ], [ %i.e, %bb.a ]
  %i.u = icmp ugt i64 %i.t, 5                     ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !alias.scope !6105, !noalias !6106, !nonnull !55
  %.sink10.i = select i1 %i.u, ptr %i.v, ptr %0   ; 2 uses
  %.sink9.i = select i1 %i.u, ptr %i.g, ptr %i.d  ; 5 uses
  %i.w = load i64, ptr %.sink9.i, align 8, !noundef !55 ; 6 uses
  %i.x = icmp ult i64 %i.w, %.sink.i.pre-phi
  br i1 %i.x, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit", label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %bb.r, %.thread54
  %.lcssa66 = phi i64 [ 0, %.thread54 ], [ 1, %bb.q ], [ 2, %bb.r ]
  %.sroa.7.0.lcssa = phi i64 [ %i.w, %.thread54 ], [ %.sink.i.pre-phi, %bb.r ], [ %.sink.i.pre-phi, %bb.q ]
  store i64 %.lcssa66, ptr %i.c, align 8
  store i64 %.sroa.7.0.lcssa, ptr %.sink9.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6107, !noalias !6108, !noundef !55 ; 4 uses
  %.promoted69 = load i64, ptr %i.b, align 8, !alias.scope !6107, !noalias !6108 ; 2 uses
  %.not.i.i1371 = icmp eq i64 %i.z, %.promoted69
  br i1 %.not.i.i1371, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$2_usize$GT$$GT$17ha06ea82449991ed3E.exit", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.lr.ph"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.lr.ph": ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14"

.body:                                            ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$2_usize$GT$$GT$17ha06ea82449991ed3E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #72
          to label %common.resume unwind label %bb.p

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.lr.ph", %bb.o
  %i.ab = phi i64 [ %.promoted69, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.lr.ph" ], [ %i.ac, %bb.o ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6110)
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 7 uses
  %i.ad = icmp ult i64 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %.sroa.037.0.copyload38 = load i8, ptr %i.ae, align 8, !alias.scope !6111 ; 2 uses
  %.not = icmp eq i8 %.sroa.037.0.copyload38, 12
  br i1 %.not, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.thread", label %bb.g

bb.g:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14"
  %.sroa.739.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %.sroa.037.0.copyload38, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.739.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.739.0..sroa_idx40, i64 15, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6112)
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !6113, !noalias !6114, !noundef !55 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 5                   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !6113, !noalias !6114, !nonnull !55
  %.sink10.i.i = select i1 %i.ag, ptr %i.ah, ptr %0
  %.sink9.i.i = select i1 %i.ag, ptr %i.g, ptr %i.d ; 2 uses
  %.sink.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 5)
  %i.ai = load i64, ptr %.sink9.i.i, align 8, !alias.scope !6112, !noalias !6115, !noundef !55 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sink.i.i15
  br i1 %i.aj, label %bb.i, label %bb.o, !prof !66

bb.h:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ac, ptr %i.b, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.k, !noalias !6112, !inline_history !73

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.j unwind label %bb.h, !noalias !6115

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %0, align 8, !alias.scope !6112, !noalias !6115, !nonnull !55, !noundef !55
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !6112, !noalias !6115
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !6116
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.thread": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14"
  store i64 %i.ac, ptr %i.b, align 8
  %i.an = icmp eq i64 %i.z, %i.ac
  br i1 %i.an, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$2_usize$GT$$GT$17ha06ea82449991ed3E.exit", label %.lr.ph113

.lr.ph113:                                        ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6da2f13f961f29a8E.exit14.thread"
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = sub nuw i64 %i.z, %i.ac                 ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ac ; 2 uses
  br label %bb.l

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i": ; preds = %bb.l
  %i.ar = icmp eq i64 %i.at, %i.ap
  br i1 %i.ar, label %"_ZN4core3ptr95drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..types..dynamic..Dynamic$C$2_usize$GT$$GT$17ha06ea82449991ed3E.exit", label %bb.l

bb.l:                                             ; preds = %.lr.ph113, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i111 = phi i64 [ 0, %.lr.ph113 ], [ %i.at, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.0.0.i.i.i.i.i.i111
  %i.at = add i64 %.sroa.0.0.i.i.i.i.i.i111, 1    ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.as)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i.i.i.i.i" unwind label %bb.m, !inline_history !2

end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator7collect17hb3ecc32411c3cdf8E:bb.a
.thread46.i.i:                                    ; preds = %.thread49.i.i, %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #72
          to label %.body.i unwind label %bb.o, !noalias !16630

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread49.i.i, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 -1, %i.k
  %i.n = add nuw i64 %i.m, 1
  %i.o = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h17748f86337f1cc7E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef %i.n)
          to label %bb.d unwind label %.thread46.i.i, !noalias !16631 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.e [
    i64 -9223372036854775807, label %.thread.i
    i64 0, label %.thread49.i.i
  ], !prof !89

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { i64, i64 } %i.o, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.p, i64 noundef %i.q) #70
          to label %.noexc11.i.i unwind label %.thread46.i.i, !noalias !16628

.noexc11.i.i:                                     ; preds = %bb.e
  unreachable

.thread49.i.i:                                    ; preds = %bb.d, %bb.b
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc12.i.i unwind label %.thread46.i.i, !noalias !16628

.noexc12.i.i:                                     ; preds = %.thread49.i.i
  unreachable

.thread.i:                                        ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !16632, !noalias !16633
  %.pre.i.fr.i = freeze i64 %.pre.i.i             ; 2 uses
  %.pre88.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.fr.i, i64 5) ; 2 uses
  %i.r = icmp ugt i64 %.pre.i.fr.i, 5             ; 2 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !16632, !noalias !16633
  %spec.select = select i1 %i.r, ptr %.pre.i, ptr %i.d
  %spec.select1 = select i1 %i.r, ptr %i.h, ptr %i.e ; 3 uses
  %.pre = load i64, ptr %spec.select1, align 8, !alias.scope !16627, !noalias !16631 ; 3 uses
  %i.s = icmp ult i64 %.pre, %.pre88.i.i
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.thread.i
  %i.t = phi ptr [ %spec.select1, %.thread.i ], [ %i.e, %bb.a ] ; 2 uses
  %.sink.i.pre-phi.i2125.i14 = phi i64 [ %.pre88.i.i, %.thread.i ], [ 5, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %spec.select, %.thread.i ], [ %i.d, %bb.a ]
  %i.v = phi i64 [ %.pre, %.thread.i ], [ 0, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.030.0.copyload31.i.i = load i8, ptr %i.w, align 8, !noalias !16628
  %.sroa.030.0.copyload31.fr.i.i = freeze i8 %.sroa.030.0.copyload31.i.i ; 2 uses
  %.not2.i.i = icmp eq i8 %.sroa.030.0.copyload31.fr.i.i, 21
  %.not.i.i.us.i.i = icmp eq i64 %.val10.i.i, %.val9.i.i ; 2 uses
  br i1 %.not2.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  br i1 %.not.i.i.us.i.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.thread.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i": ; preds = %.lr.ph.split.preheader.i.i
  %i.x = icmp eq i64 %.val9.i.i, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  store i8 %.sroa.030.0.copyload31.fr.i.i, ptr %i.z, align 8, !noalias !16631
  %.sroa.2.0..sroa_idx.peel.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.peel.i.i, ptr noundef nonnull readonly align 1 dereferenceable(15) %i.y, i64 15, i1 false), !noalias !16634
  %i.aa = add nuw i64 %i.v, 1                     ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i64 %i.aa, %.sink.i.pre-phi.i2125.i14
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.peel.next.i.i

.lr.ph.split.peel.next.i.i:                       ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i"
  %.not.i.i.i.i = icmp eq i64 %.val10.i.i, 1
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  store i64 %i.aa, ptr %i.t, align 8, !alias.scope !16627, !noalias !16631
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17heedb04df9cc24c1dE.exit"

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %spec.select.i.i = select i1 %.not.i.i.us.i.i, i64 %.val9.i.i, i64 1
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.thread.i.i"

._crit_edge.i.i:                                  ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i", %.thread.i
  %i.ab = phi ptr [ %spec.select1, %.thread.i ], [ %i.t, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i" ]
  %.lcssa64.i.i = phi i64 [ %.val9.i.i, %.thread.i ], [ 1, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i" ]
  %.sroa.7.0.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i.pre-phi.i2125.i14, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.peel.i.i" ]
  store i64 %.lcssa64.i.i, ptr %i.c, align 8, !noalias !16628
  store i64 %.sroa.7.0.lcssa.i.i, ptr %i.ab, align 8, !alias.scope !16627, !noalias !16631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !16628
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !16635, !noalias !16636, !noundef !55 ; 4 uses
  %.promoted68.i.i = load i64, ptr %i.b, align 8, !alias.scope !16635, !noalias !16636 ; 4 uses
  %.not.i.i1369.i.i = icmp eq i64 %i.ad, %.promoted68.i.i
  br i1 %.not.i.i1369.i.i, label %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.i.i"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.i.i": ; preds = %._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.035.0.copyload36.i.i = load i8, ptr %i.ae, align 8, !alias.scope !16637, !noalias !16628 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.035.0.copyload36.i.i, 21
  %.sroa.737.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br i1 %.not.i.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.split.i.i"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.split.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.i.i"
  %.not.i.i13.i.i = icmp eq i64 %i.ad, 1
  store i8 %.sroa.035.0.copyload36.i.i, ptr %i.a, align 8, !noalias !16628
  br i1 %.not.i.i13.i.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.preheader.i.i"

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.preheader.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.split.i.i"
  %i.af = icmp eq i64 %.promoted68.i.i, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.737.0..sroa_idx.i.i, ptr noundef nonnull readonly align 1 dereferenceable(15) %i.ag, i64 15, i1 false), !noalias !16630
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8b9c761871660c57E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %bb.f unwind label %.split.loopexit.split-lp.i.i, !noalias !16638

bb.f:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.preheader.i.i"
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.split.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16640)
  %i.ah = icmp eq i64 %.promoted68.i.i, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.737.0..sroa_idx.i.i, ptr noundef nonnull readonly align 1 dereferenceable(15) %i.ai, i64 15, i1 false), !noalias !16630
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16641)
  %i.aj = load i64, ptr %i.e, align 8, !alias.scope !16642, !noalias !16643, !noundef !55 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 5                   ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !16642, !noalias !16643, !nonnull !55
  %.sink10.i.i.us.i.i = select i1 %i.ak, ptr %i.al, ptr %i.d
  %.sink9.i.i.us.i.i = select i1 %i.ak, ptr %i.h, ptr %i.e ; 2 uses
  %.sink.i.i15.us.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 5)
  %i.am = load i64, ptr %.sink9.i.i.us.i.i, align 8, !alias.scope !16644, !noalias !16638, !noundef !55 ; 2 uses
  %i.an = icmp eq i64 %i.am, %.sink.i.i15.us.i.i
  br i1 %i.an, label %bb.g, label %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread_crit_edge.split.us.i.i", !prof !66

bb.g:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i"
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8b9c761871660c57E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %bb.h unwind label %.split.us.i.i, !noalias !16638

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !16644, !noalias !16638, !nonnull !55, !noundef !55
  %.pre.i.us.i.i = load i64, ptr %i.h, align 8, !alias.scope !16644, !noalias !16638
  br label %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread_crit_edge.split.us.i.i"

"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread_crit_edge.split.us.i.i": ; preds = %bb.h, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i"
  %i.ap = phi i64 [ %.pre.i.us.i.i, %bb.h ], [ %i.am, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i" ]
  %.sroa.01.0.i.us.i.i = phi ptr [ %i.h, %bb.h ], [ %.sink9.i.i.us.i.i, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i" ] ; 2 uses
  %.sroa.0.0.i16.us.i.i = phi ptr [ %i.ao, %bb.h ], [ %.sink10.i.i.us.i.i, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.us76.i.i" ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i16.us.i.i, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !16631
  %i.ar = load i64, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !16644, !noalias !16638, !noundef !55
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !16644, !noalias !16638
  br label %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i"

.split.us.i.i:                                    ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i

.body.i.i:                                        ; preds = %.split.i.i
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #72
          to label %.body.i unwind label %bb.o, !noalias !16628

.split.loopexit.split-lp.i.i:                     ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.preheader.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.loopexit.split-lp.i.i, %.split.us.i.i
  %.us-phi77.i.i = phi { ptr, i32 } [ %i.at, %.split.us.i.i ], [ %lpad.loopexit.split-lp.i.i, %.split.loopexit.split-lp.i.i ]
  store i64 1, ptr %i.b, align 8, !noalias !16628
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a) #72
          to label %.body.i.i unwind label %bb.i, !noalias !16645

bb.i:                                             ; preds = %.split.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16646
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.lr.ph.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16640)
  %i.av = icmp eq i64 %.promoted68.i.i, 0
  tail call void @llvm.assume(i1 %i.av)
  store i64 1, ptr %i.b, align 8, !noalias !16628
  %i.aw = icmp eq i64 %i.ad, 1
  br i1 %i.aw, label %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i", label %bb.j

bb.j:                                             ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread.i.i"
  %i.ax = add i64 %i.ad, -1                       ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %2 = icmp eq i64 %i.ax, 0
  br i1 %2, label %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i", label %.lr.ph.a

bb.k:                                             ; preds = %.lr.ph.a
  %i.az = icmp eq i64 %i.bb, %i.ax
  br i1 %i.az, label %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i.i.i.i.i19 = phi i64 [ %i.bb, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.0.0.i.i.i.i.i.i.i.i19
  %i.bb = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i19, 1 ; 4 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ba)
          to label %bb.k unwind label %bb.m, !noalias !16628, !inline_history !34

bb.l:                                             ; preds = %.lr.ph21
  %i.bc = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i20, 1 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.ax
  br i1 %i.bd, label %.body.i, label %.lr.ph21

bb.m:                                             ; preds = %.lr.ph.a
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %i.bb, %i.ax
  br i1 %i.bf, label %.body.i, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.m, %bb.l
  %.sroa.0.1.i.i.i.i.i.i.i.i20 = phi i64 [ %i.bc, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.0.1.i.i.i.i.i.i.i.i20
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg) #72
          to label %bb.l unwind label %bb.n, !noalias !16628, !inline_history !34

bb.n:                                             ; preds = %.lr.ph21
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16647, !inline_history !34
  unreachable

"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i": ; preds = %bb.k, %bb.j, %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread.i.i", %"._ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit14.thread_crit_edge.split.us.i.i", %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16628
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17heedb04df9cc24c1dE.exit"

bb.o:                                             ; preds = %.body.i.i, %.thread46.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16628
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.thread.i.i": ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.preheader.i.i
  %.us-phi.i.i = phi i64 [ %.val9.i.i, %.lr.ph.split.preheader.i.i ], [ %spec.select.i.i, %.lr.ph.split.us.i.i ] ; 4 uses
  store i64 %.us-phi.i.i, ptr %i.c, align 8, !noalias !16628
  %i.bj = icmp eq i64 %.val10.i.i, %.us-phi.i.i
  br i1 %i.bj, label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17heedb04df9cc24c1dE.exit", label %.lr.ph23

.lr.ph23:                                         ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.thread.i.i"
  %i.bk = sub nuw i64 %.val10.i.i, %.us-phi.i.i   ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.us-phi.i.i ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bm = icmp eq i64 %i.bo, %i.bk
  br i1 %i.bm, label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17heedb04df9cc24c1dE.exit", label %bb.q

bb.q:                                             ; preds = %.lr.ph23, %bb.p
  %.sroa.0.0.i.i.i.i.i.i19.i.i22 = phi i64 [ 0, %.lr.ph23 ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.0.0.i.i.i.i.i.i19.i.i22
  %i.bo = add i64 %.sroa.0.0.i.i.i.i.i.i19.i.i22, 1 ; 4 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bn)
          to label %bb.p unwind label %bb.s, !noalias !16628, !inline_history !34

bb.r:                                             ; preds = %.lr.ph25
  %i.bp = add i64 %.sroa.0.1.i.i.i.i.i.i20.i.i24, 1 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bk
  br i1 %i.bq, label %.body.i, label %.lr.ph25

bb.s:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = icmp eq i64 %i.bo, %i.bk
  br i1 %i.bs, label %.body.i, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.s, %bb.r
  %.sroa.0.1.i.i.i.i.i.i20.i.i24 = phi i64 [ %i.bp, %bb.r ], [ %i.bo, %bb.s ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.0.1.i.i.i.i.i.i20.i.i24
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bt) #72
          to label %bb.r unwind label %bb.t, !noalias !16628, !inline_history !34

bb.t:                                             ; preds = %.lr.ph25
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16648, !inline_history !34
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.r, %bb.m, %bb.s, %.body.i.i, %.thread46.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.br, %bb.s ], [ %.us-phi77.i.i, %.body.i.i ], [ %i.i, %.thread46.i.i ], [ %i.be, %bb.m ], [ %i.br, %bb.r ], [ %i.be, %bb.l ]
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a10525b4bdbca73E"(ptr noalias noundef readonly align 8 dereferenceable(88) %i.d)
          to label %bb.v unwind label %bb.u, !noalias !16626, !inline_history !116

bb.u:                                             ; preds = %.body.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16626
  unreachable

bb.v:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17heedb04df9cc24c1dE.exit": ; preds = %bb.p, %.lr.ph.split.peel.next.i.i, %"_ZN4core3ptr87drop_in_place$LT$core..array..iter..IntoIter$LT$rhai..ast..expr..Expr$C$1_usize$GT$$GT$17hd0363d9390c51a8bE.exit.i.i", %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a7a090f38d0fab6E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !16649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16626
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hb94fc0c66af8668aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i11.i.i.i.i.i.i = alloca [15 x i8], align 1 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 22 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i.i = alloca [15 x i8], align 1 ; 26 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.2.i.i.i.i.i.i = alloca [15 x i8], align 1 ; 13 uses
  %i.d = alloca [88 x i8], align 8                ; 22 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16716
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16716
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.i = icmp eq ptr %1, %2
  br i1 %i.i, label %"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.thread10.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i13.lr.ph.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.649.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %.lr.ph.i.i.i.i13.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.l, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16718
  invoke fastcc void @_ZN4rhai3ast4expr4Expr17get_literal_value17h1232769a034b966dE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit37.i.i.i.i.i, !noalias !16719

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.b, align 8, !noalias !16720 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.i.i", label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %i.h, i64 15, i1 false), !noalias !16721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16718
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 13
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.thread10.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i13.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i13.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i13.lr.ph.i.i.i.i.i.i
  %i.n = phi ptr [ %i.au, %.lr.ph.i.i.i.i13.lr.ph.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i13.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i11.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16722
  invoke fastcc void @_ZN4rhai3ast4expr4Expr17get_literal_value17h1232769a034b966dE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null)
          to label %.noexc.i.i.i.i.i unwind label %bb.q, !noalias !16716

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i13.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i14.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !16723 ; 3 uses
  %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i14.i.i.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i, label %"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.thread7.i.i", label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i16.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i16.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.i.i.i.i11.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %i.j, i64 15, i1 false), !noalias !16724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16722
  %.not.i.i.i.i.i17.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i14.i.i.i.i.i.i, 13
  br i1 %.not.i.i.i.i.i17.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i16.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i11.i.i.i.i.i.i)
  %i.p = icmp eq ptr %i.o, %2
  br i1 %i.p, label %"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.thread.i.i", label %.lr.ph.i.i.i.i13.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i13.i.i.i.i.i.i.backedge:            ; preds = %bb.c, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit.i.i.i.i.i.i"
  br label %.lr.ph.i.i.i.i13.i.i.i.i.i.i

"_ZN128_$LT$core..option..Option$LT$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..option..Option$LT$A$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3b055c77a96a107aE.exit.thread7.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i11.i.i.i.i.i.i)
  br label %bb.t

bb.d:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h81d0c4e8754a1dbaE.exit.i.i.i.i16.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.649.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.i.i.i.i11.i.i.i.i.i.i, i64 15, i1 false), !noalias !16719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i11.i.i.i.i.i.i)
  store i8 %.sroa.0.0.copyload.i.i.i.i.i14.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !16719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16725)
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !16726, !noalias !16727, !noundef !55 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 5                     ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !alias.scope !16726, !noalias !16727, !nonnull !55
  %.sink10.i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %i.d
  %.sink9.i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.g, ptr %i.f ; 2 uses
  %.sink.i.i24.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 5)
  %i.t = load i64, ptr %.sink9.i.i.i.i.i.i.i.i, align 8, !alias.scope !16728, !noalias !16729, !noundef !55 ; 2 uses
  %i.u = icmp eq i64 %i.t, %.sink.i.i24.i.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit.i.i.i.i.i.i", !prof !66

bb.e:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %.body.i.i.i.i.i unwind label %bb.h, !noalias !16730, !inline_history !73

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %bb.g unwind label %bb.e, !noalias !16729

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !16728, !noalias !16729, !nonnull !55, !noundef !55
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !16728, !noalias !16729
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16731
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit.i.i.i.i.i.i": ; preds = %bb.g, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.g ], [ %i.t, %bb.d ]
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %i.g, %bb.g ], [ %.sink9.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
end_hunk_1
