Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler5utils15ProcessingBatch11write_stats17h3132dc545462635bE:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.fe, i64 72, i1 false), !noalias !53963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !53963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !53963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !53963
  %i.ff = load i64, ptr %i.u, align 8, !range !91, !alias.scope !53975, !noalias !53963, !noundef !57
  %i.fg = icmp eq i64 %i.ff, -9223372036854775803
  br i1 %i.fg, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u)
          to label %bb.aj unwind label %bb.ac, !noalias !53963

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i": ; preds = %bb.ab
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef 14, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !53976
  br label %bb.u

bb.ag:                                            ; preds = %bb.u
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !53963
  unreachable

bb.ah:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit", %bb.aj
  %.sroa.0.0 = phi i64 [ %.sroa.069.0.copyload, %bb.aj ], [ -9223372036854775808, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit" ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53977)
  %i.fk = load i64, ptr %i.fj, align 8, !range !83, !alias.scope !53977, !noundef !57
  %i.fl = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %i.fl, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !53978)
  call void @llvm.experimental.noalias.scope.decl(metadata !53979)
  call void @llvm.experimental.noalias.scope.decl(metadata !53980)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %.val1.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !53981, !noundef !57 ; 4 uses
  %i.fn = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.fn, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.val.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !53981, !nonnull !57, !noundef !57
  %i.fp = shl i64 %.val1.i.i.i.i, 3
  %i.fq = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.fq), !noalias !53980
  %i.fr = and i64 %i.fp, -16                      ; 2 uses
  %i.fs = add i64 %i.fr, 16                       ; 2 uses
  %i.ft = add nsw i64 %.val1.i.i.i.i, 17
  %i.fu = add i64 %i.ft, %i.fs                    ; 3 uses
  %i.fv = icmp uge i64 %i.fu, %i.fs
  call void @llvm.assume(i1 %i.fv), !noalias !53980
  %i.fw = icmp ult i64 %i.fu, 9223372036854775793
  call void @llvm.assume(i1 %i.fw), !noalias !53980
  %i.fx = sub nuw nsw i64 -16, %i.fr
  %i.fy = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.fx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fy, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 16) #77, !noalias !53981, !inline_history !92
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.ai
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.fj)
          to label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E.exit" unwind label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !53963
  %.sroa.069.0.copyload = load i64, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i29, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !53963
  br label %bb.ah

bb.ak:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i"
  %i.fz = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0, ptr %i.fj, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  br label %.body

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E.exit": ; preds = %bb.ah, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i"
  store i64 %.sroa.0.0, ptr %i.fj, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !57, !noundef !57 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !57 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gd, 5
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx ; 2 uses
  store i64 -9223372036854775806, ptr %i.ag, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 288
  store i64 -9223372036854775806, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  store ptr %i.gb, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 584
  store ptr %i.ge, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 592
  store ptr %4, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !53982
  %i.gf = load i8, ptr %i.ba, align 8, !range !74, !noalias !53983, !noundef !57
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i40, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i34", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i40: ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E.exit"
  %.pre.i.i.i.i.i.i41 = load i64, ptr %i.az, align 8, !noalias !53984
  %.phi.trans.insert.i.i.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre1.i.i.i.i.i.i43 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i42, align 8, !noalias !53984
  br label %bb.al

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i34": ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E.exit"
  %i.gh = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i35 unwind label %bb.ba, !noalias !53982 ; 2 uses

.noexc.i.i.i35:                                   ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i34"
  %i.gi = extractvalue { i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64 } %i.gh, 1      ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !noalias !53985
  store i8 1, ptr %i.ba, align 8, !noalias !53985
  br label %bb.al

.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %.noexc12.i.i.i.i.i.i.i.i, %bb.av, %.noexc14.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i", %.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i38

bb.al:                                            ; preds = %.noexc.i.i.i35, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i40
  %.pre-phi18.i.i.i = phi i64 [ %i.gj, %.noexc.i.i.i35 ], [ %.pre1.i.i.i.i.i.i43, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i40 ]
  %.pre-phi.i.i.i36 = phi i64 [ %i.gi, %.noexc.i.i.i35 ], [ %.pre.i.i.i.i.i.i41, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i.i40 ] ; 2 uses
  %i.gl = add i64 %.pre-phi.i.i.i36, 1
  store i64 %i.gl, ptr %i.az, align 8, !noalias !53984
  store i64 0, ptr %i.o, align 8, !alias.scope !53986, !noalias !53982
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !53986, !noalias !53982
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !53986, !noalias !53982
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !53982
  %i.gm = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.pre-phi.i.i.i36, ptr %i.gm, align 8, !alias.scope !53986, !noalias !53982
  %i.gn = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 %.pre-phi18.i.i.i, ptr %i.gn, align 8, !alias.scope !53986, !noalias !53982
  call void @llvm.experimental.noalias.scope.decl(metadata !53987)
  %i.go = icmp eq i64 %i.gd, 0
  br i1 %i.go, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !53988, !noalias !53989, !noundef !57 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !53987, !noalias !53990, !nonnull !57 ; 4 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gv = load <2 x i64>, ptr %i.gu, align 8, !alias.scope !53987, !noalias !53990 ; 3 uses
  %i.gw = shufflevector <2 x i64> %i.gv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gx = xor <2 x i64> %i.gw, <i64 8317987319222330741, i64 7816392313619706465>
  %i.gy = shufflevector <2 x i64> %i.gv, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = xor <2 x i64> %i.gy, <i64 7237128888997146477, i64 8387220255154660723>
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !53987, !noalias !53990 ; 2 uses
  %i.he = load ptr, ptr %i.hb, align 8, !alias.scope !53987, !noalias !53990, !nonnull !57 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.416.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  br label %bb.am

bb.am:                                            ; preds = %.noexc16.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.020.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.hl, %.noexc16.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hm, align 8, !noalias !53991 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53992)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !53993
  call void @llvm.experimental.noalias.scope.decl(metadata !53994)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.020.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !53995, !noalias !53991 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val19.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hn, align 8, !alias.scope !53995, !noalias !53991 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53996)
  call void @llvm.experimental.noalias.scope.decl(metadata !53997)
  switch i64 %i.gq, label %bb.ao [
    i64 0, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gt, align 8, !noalias !53998, !noundef !57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val19.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !53999
  store <2 x i64> %i.gx, ptr %i.m, align 16, !alias.scope !54000, !noalias !53999
  store <2 x i64> %i.gz, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !54000, !noalias !53999
  store <2 x i64> %i.gv, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !54000, !noalias !53999
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !54000, !noalias !53999
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val19.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !54001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !54002
  store i8 -1, ptr %i.l, align 1, !noalias !54002
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 1), !noalias !54003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !54002
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 16, !alias.scope !54004, !noalias !53999
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !54004, !noalias !53999
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !54004, !noalias !53999 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !54004, !noalias !53999
  %i.ho = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !54004, !noalias !53999, !noundef !57
  %i.hp = shl i64 %i.ho, 56
  %i.hq = load i64, ptr %i.ha, align 8, !alias.scope !54004, !noalias !53999, !noundef !57
  %i.hr = or i64 %i.hp, %i.hq                     ; 2 uses
  %i.hs = xor i64 %i.hr, %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ht = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hu = add i64 %i.hs, %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hv = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 13)
  %i.hw = xor i64 %i.hv, %i.ht                    ; 3 uses
  %i.hx = call i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 16)
  %i.hy = xor i64 %i.hx, %i.hu                    ; 3 uses
  %i.hz = call i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 32)
  %i.ia = add i64 %i.hu, %i.hw                    ; 3 uses
  %i.ib = add i64 %i.hy, %i.hz                    ; 2 uses
  %i.ic = call i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 17)
  %i.id = xor i64 %i.ia, %i.ic                    ; 3 uses
  %i.ie = call i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 21)
  %i.if = xor i64 %i.ie, %i.ib                    ; 3 uses
  %i.ig = call i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 32)
  %i.ih = xor i64 %i.ib, %i.hr
  %i.ii = xor i64 %i.ig, 255
  %i.ij = add i64 %i.ih, %i.id                    ; 3 uses
  %i.ik = add i64 %i.if, %i.ii                    ; 2 uses
  %i.il = call i64 @llvm.fshl.i64(i64 %i.id, i64 %i.id, i64 13)
  %i.im = xor i64 %i.ij, %i.il                    ; 3 uses
  %i.in = call i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 16)
  %i.io = xor i64 %i.in, %i.ik                    ; 3 uses
  %i.ip = call i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 32)
  %i.iq = add i64 %i.im, %i.ik                    ; 3 uses
  %i.ir = add i64 %i.io, %i.ip                    ; 2 uses
  %i.is = call i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 17)
  %i.it = xor i64 %i.iq, %i.is                    ; 3 uses
  %i.iu = call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 21)
  %i.iv = xor i64 %i.iu, %i.ir                    ; 3 uses
  %i.iw = call i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 32)
  %i.ix = add i64 %i.it, %i.ir                    ; 3 uses
  %i.iy = add i64 %i.iv, %i.iw                    ; 2 uses
  %i.iz = call i64 @llvm.fshl.i64(i64 %i.it, i64 %i.it, i64 13)
  %i.ja = xor i64 %i.iz, %i.ix                    ; 3 uses
  %i.jb = call i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 16)
  %i.jc = xor i64 %i.jb, %i.iy                    ; 3 uses
  %i.jd = call i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 32)
  %i.je = add i64 %i.ja, %i.iy                    ; 3 uses
  %i.jf = add i64 %i.jc, %i.jd                    ; 2 uses
  %i.jg = call i64 @llvm.fshl.i64(i64 %i.ja, i64 %i.ja, i64 17)
  %i.jh = xor i64 %i.jg, %i.je                    ; 3 uses
  %i.ji = call i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 21)
  %i.jj = xor i64 %i.ji, %i.jf                    ; 3 uses
  %i.jk = call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 32)
  %i.jl = add i64 %i.jh, %i.jf
  %i.jm = add i64 %i.jj, %i.jk                    ; 2 uses
  %i.jn = call i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 13)
  %i.jo = xor i64 %i.jn, %i.jl                    ; 3 uses
  %i.jp = call i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 16)
  %i.jq = xor i64 %i.jp, %i.jm                    ; 2 uses
  %i.jr = add i64 %i.jo, %i.jm                    ; 3 uses
  %i.js = call i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 17)
  %i.jt = call i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 21)
  %i.ju = call i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 32)
  %i.jv = xor i64 %i.jt, %i.js
  %i.jw = xor i64 %i.jv, %i.ju
  %i.jx = xor i64 %i.jw, %i.jr                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53999
  %i.jy = lshr i64 %i.jx, 57
  %i.jz = trunc nuw nsw i64 %i.jy to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.jz, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %i.kv, %bb.ar ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jx, %bb.ao ], [ %i.kw, %bb.ar ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hd ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ka, align 1, !noalias !54005 ; 2 uses
  %i.kb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kc = bitcast <16 x i1> %i.kb to i16          ; 2 uses
  %.not.i.not39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.kc, 0
  br i1 %.not.i.not39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ap, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.010.0.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ku, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kc, %bb.ap ] ; 3 uses
  %i.kd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ke = zext nneg i16 %i.kd to i64
  %i.kf = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ke
  %i.kg = and i64 %i.kf, %i.hd
  %i.kh = sub nsw i64 0, %i.kg
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.kh
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !noalias !54006, !noundef !57 ; 4 uses
  %i.kk = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gq
  br i1 %i.kk, label %bb.aq, label %.invoke.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !noalias !54007, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val19.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !160

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kn = phi i64 [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ko = phi ptr [ @5988, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ @5987, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kn, i64 noundef %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ko) #78
          to label %.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aq
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kl, align 8, !noalias !54007, !nonnull !57, !align !64, !noundef !57
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val19.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !54009, !noalias !54007
  %i.kp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kp, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !59

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ap
  %i.kq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kr = bitcast <16 x i1> %i.kq to i16
  %i.ks = icmp eq i16 %i.kr, 0
  br i1 %i.ks, label %bb.ar, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i", !prof !60

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aq
  %i.kt = add i16 %.sroa.010.0.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ku = and i16 %i.kt, %.sroa.010.0.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ku, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kv = add i64 %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.kw = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.kv
  br label %bb.ap

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gs, align 8, !noalias !53998, !nonnull !57, !align !64, !noundef !57
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val19.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !54010, !noalias !53998
  %bcmp.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kx = icmp eq i32 %bcmp.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kx, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.5.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h81508a23d7677159E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ky = icmp ult i64 %.sroa.5.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gq
  br i1 %i.ky, label %bb.as, label %.invoke.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.thread3.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %.sroa.5.0.i6.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.la, align 8, !noalias !54011, !noundef !57 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !54013
  store i64 %.val21.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !54013
  %i.lb = invoke { double, i8 } @"_ZN9byte_unit4byte8adjusted39_$LT$impl$u20$byte_unit..byte..Byte$GT$20get_appropriate_unit17h021fe075e9877c3aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i8 noundef 0)
          to label %.noexc12.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008 ; 2 uses

.noexc12.i.i.i.i.i.i.i.i:                         ; preds = %bb.as
  %i.lc = extractvalue { double, i8 } %i.lb, 0
  %i.ld = extractvalue { double, i8 } %i.lb, 1
  store double %i.lc, ptr %i.k, align 8, !noalias !54013
  store i8 %i.ld, ptr %i.hf, align 8, !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !54013
  %i.le = sub nsw i64 %.val21.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i22.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %i.le, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54013
  store i64 %.sroa.0.0.i22.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !54013
  %i.lf = invoke { double, i8 } @"_ZN9byte_unit4byte8adjusted39_$LT$impl$u20$byte_unit..byte..Byte$GT$20get_appropriate_unit17h021fe075e9877c3aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, i8 noundef 0)
          to label %.noexc13.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008 ; 2 uses

.noexc13.i.i.i.i.i.i.i.i:                         ; preds = %.noexc12.i.i.i.i.i.i.i.i
  %i.lg = extractvalue { double, i8 } %i.lf, 0
  %i.lh = extractvalue { double, i8 } %i.lf, 1
  store double %i.lg, ptr %i.i, align 8, !noalias !54013
  store i8 %i.lh, ptr %i.hg, align 8, !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54013
  %i.li = call i8 @llvm.ucmp.i8.i64(i64 %.val21.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i)
  switch i8 %i.li, label %bb.at [
    i8 -1, label %bb.av
    i8 0, label %"_ZN15index_scheduler5utils15ProcessingBatch11write_stats28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h460ee2edeb24a26dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
    i8 1, label %bb.au
  ]

bb.at:                                            ; preds = %.noexc13.i.i.i.i.i.i.i.i
  unreachable

bb.au:                                            ; preds = %.noexc13.i.i.i.i.i.i.i.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.noexc13.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ @724, %bb.au ], [ @723, %.noexc13.i.i.i.i.i.i.i.i ]
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !54013
  store i64 1, ptr %i.hh, align 8, !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54013
  store i64 21, ptr %i.e, align 8, !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54013
  invoke void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc14.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008

.noexc14.i.i.i.i.i.i.i.i:                         ; preds = %bb.av
  store ptr %.sroa.0.020.i.i.i.i.i.i.i.i.i.i, ptr %i.hi, align 8, !noalias !54013
  invoke fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.e)
          to label %.noexc15.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008

.noexc15.i.i.i.i.i.i.i.i:                         ; preds = %.noexc14.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54013
  store ptr %i.k, ptr %i.c, align 8, !noalias !54013
  store ptr @"_ZN78_$LT$byte_unit..byte..adjusted..AdjustedByte$u20$as$u20$core..fmt..Display$GT$3fmt17h67a053cc523cb52dE", ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54013
  store ptr %i.g, ptr %i.hj, align 8, !noalias !54013
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54013
  store ptr %i.i, ptr %i.hk, align 8, !noalias !54013
  store ptr @"_ZN78_$LT$byte_unit..byte..adjusted..AdjustedByte$u20$as$u20$core..fmt..Display$GT$3fmt17h67a053cc523cb52dE", ptr %.sroa.416.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54014
  store ptr @726, ptr %i.a, align 8, !noalias !54015
  store i64 4, ptr %.sroa.43.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54015
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54015
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54015
  store ptr @727, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54015
  store i64 3, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54015
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ay unwind label %bb.aw, !noalias !54016

bb.aw:                                            ; preds = %.noexc15.i.i.i.i.i.i.i.i
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54017)
  call void @llvm.experimental.noalias.scope.decl(metadata !54018)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !56, !alias.scope !54019, !noalias !54013, !noundef !57 ; 2 uses
  %i.lk = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lk, label %.body.i.i.i38, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !54019, !noalias !54013, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !54020
  br label %.body.i.i.i38

bb.ay:                                            ; preds = %.noexc15.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !53993
  %.sroa.0.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !54021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !53993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54013
  br label %"_ZN15index_scheduler5utils15ProcessingBatch11write_stats28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h460ee2edeb24a26dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN15index_scheduler5utils15ProcessingBatch11write_stats28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h460ee2edeb24a26dE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ay, %.noexc13.i.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ -9223372036854775808, %.noexc13.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !54013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54012
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN15index_scheduler5utils15ProcessingBatch11write_stats28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h460ee2edeb24a26dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.an, %bb.am
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN15index_scheduler5utils15ProcessingBatch11write_stats28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h460ee2edeb24a26dE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h05cc7c51b029ebaaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %bb.am ], [ -9223372036854775807, %bb.an ], [ -9223372036854775807, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 -9223372036854775807, ptr %i.n, align 8, !noalias !53993
  store i64 -9223372036854775807, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53993
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !53993
  store i64 -9223372036854775805, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !53993
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17hecd08aa40a9ccde0E"(ptr nonnull align 8 dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(288) %i.n)
          to label %.noexc16.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !54008

.noexc16.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h4a9d17a920d0dfd5E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.ll = icmp eq ptr %i.hl, %i.ge
  br i1 %i.ll, label %.loopexit, label %bb.am

.body.i.i.i38:                                    ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.ax
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lj, %bb.aw ], [ %i.lj, %bb.ax ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.i.i.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #79
          to label %.body unwind label %bb.az, !noalias !53982

bb.az:                                            ; preds = %bb.ba, %.body.i.i.i38
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !53982
  unreachable

bb.ba:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i34"
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr362drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$indexmap..map..iter..Iter$LT$$RF$str$C$usize$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$core..option..Option$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$$GT$$C$index_scheduler..utils..ProcessingBatch..write_stats..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6e8b9b0960a71803E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(600) %i.ag) #79
          to label %.body unwind label %bb.az, !noalias !54022

.loopexit:                                        ; preds = %.noexc16.i.i.i.i.i.i.i.i, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !54023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !53982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54024)
  call void @llvm.experimental.noalias.scope.decl(metadata !54025)
  call void @llvm.experimental.noalias.scope.decl(metadata !54026)
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.val1.i.i.i46 = load i64, ptr %i.lp, align 8, !alias.scope !54027, !noundef !57 ; 4 uses
  %i.lq = icmp eq i64 %.val1.i.i.i46, 0
  br i1 %i.lq, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47: ; preds = %.loopexit
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.val.i.i.i48 = load ptr, ptr %i.lr, align 8, !alias.scope !54027, !nonnull !57, !noundef !57
  %i.ls = shl i64 %.val1.i.i.i46, 3
  %i.lt = icmp slt i64 %.val1.i.i.i46, 2305843009213693950
  call void @llvm.assume(i1 %i.lt), !noalias !54026
  %i.lu = and i64 %i.ls, -16                      ; 2 uses
  %i.lv = add i64 %i.lu, 16                       ; 2 uses
  %i.lw = add nsw i64 %.val1.i.i.i46, 17
  %i.lx = add i64 %i.lw, %i.lv                    ; 3 uses
  %i.ly = icmp uge i64 %i.lx, %i.lv
  call void @llvm.assume(i1 %i.ly), !noalias !54026
  %i.lz = icmp ult i64 %i.lx, 9223372036854775793
  call void @llvm.assume(i1 %i.lz), !noalias !54026
  %i.ma = sub nuw nsw i64 -16, %i.lu
  %i.mb = getelementptr inbounds i8, ptr %.val.i.i.i48, i64 %i.ma
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mb, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 16) #77, !noalias !54027, !inline_history !92
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i47, %.loopexit
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.lo)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51" unwind label %bb.bb, !inline_history !93

bb.bb:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lo, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  br label %.body

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51": ; preds = %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i49"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lo, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !54028)
  call void @llvm.experimental.noalias.scope.decl(metadata !54029)
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val1.i.i = load i64, ptr %i.md, align 8, !alias.scope !54030, !noundef !57 ; 4 uses
  %i.me = icmp eq i64 %.val1.i.i, 0
  br i1 %i.me, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52: ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51"
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val.i.i = load ptr, ptr %i.mf, align 8, !alias.scope !54030, !nonnull !57, !noundef !57
  %i.mg = shl i64 %.val1.i.i, 3
  %i.mh = icmp slt i64 %.val1.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.mh)
  %i.mi = and i64 %i.mg, -16                      ; 2 uses
  %i.mj = add i64 %i.mi, 16                       ; 2 uses
  %i.mk = add nsw i64 %.val1.i.i, 17
  %i.ml = add i64 %i.mk, %i.mj                    ; 3 uses
  %i.mm = icmp uge i64 %i.ml, %i.mj
  call void @llvm.assume(i1 %i.mm)
  %i.mn = icmp ult i64 %i.ml, 9223372036854775793
  call void @llvm.assume(i1 %i.mn)
  %i.mo = sub nuw nsw i64 -16, %i.mi
  %i.mp = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.mo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mp, i64 noundef %i.ml, i64 noundef range(i64 1, -9223372036854775807) 16) #77, !noalias !54030
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i52, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit51"
end_hunk_0
