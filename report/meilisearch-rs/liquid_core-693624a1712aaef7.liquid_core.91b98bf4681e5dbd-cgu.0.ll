Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN105_$LT$liquid_core..runtime..template..Template$u20$as$u20$liquid_core..runtime..renderable..Renderable$GT$9render_to17hb1c6f0b742d3d03fE":bb.a
bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.am
  br label %bb.e

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !804, !noalias !807, !noundef !3
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %.noexc.i.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.ar = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h486ec4222435d0efE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef 1, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %.loopexit8 ; 0 uses

.noexc.i.i:                                       ; preds = %bb.i, %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !809
  %i.as = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !809 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.j, label %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i", !prof !48

bb.j:                                             ; preds = %.noexc.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #57
          to label %.noexc1.i.i unwind label %.loopexit.split-lp

.noexc1.i.i:                                      ; preds = %bb.j
  unreachable

"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i": ; preds = %.noexc.i.i
  store i8 2, ptr %i.as, align 1, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %.val.i.i.i39.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !817, !noalias !818, !nonnull !3, !noundef !3 ; 8 uses
  %.val4.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !817, !noalias !818, !noundef !3 ; 4 uses
  %.sroa.0.04.i.i.i.i.i.i.i.i = and i64 %.val4.i.i.i.i.i.i, -3601404854564284102 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.au, align 1, !noalias !820
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.not.i.not6.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !prof !823

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.04.i.i.i.i.i.i.i.i, %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i" ]
  %i.ax = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i" ]
  %i.ay = add i64 %i.ax, 16                       ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.07.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i64 %i.az, %.val4.i.i.i.i.i.i ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !noalias !820
  %i.bb = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i.i, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !prof !824

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i.i.i.i.i, %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.aw, %"_ZN76_$LT$T$u20$as$u20$anymap2..any..IntoBox$LT$dyn$u20$anymap2..any..Any$GT$$GT$8into_box17h6579909245ec3b41E.exit.i.i.i.i.i" ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i, %i.be
  %i.bg = and i64 %i.bf, %.val4.i.i.i.i.i.i       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !825, !noundef !3 ; 2 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.k, label %"_ZN7anymap224VacantEntry$LT$A$C$V$GT$6insert17h7a820bb300b20cf4E.exit.i.i.i.i", !prof !48

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i39.i.i.i, align 16, !noalias !825
  %i.bk = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = icmp ne i16 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bl, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i.i, i64 %i.bo
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !noalias !825
  br label %"_ZN7anymap224VacantEntry$LT$A$C$V$GT$6insert17h7a820bb300b20cf4E.exit.i.i.i.i"

"_ZN7anymap224VacantEntry$LT$A$C$V$GT$6insert17h7a820bb300b20cf4E.exit.i.i.i.i": ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bp = phi i8 [ %.pre.i.i.i.i.i.i.i, %bb.k ], [ %i.bi, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %bb.k ], [ %i.bg, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i39.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i
  %i.br = add i64 %.sroa.0.0.i5.i.i.i.i.i.i.i.i, -16
  %i.bs = and i64 %i.br, %.val4.i.i.i.i.i.i
  store i8 103, ptr %i.bq, align 1, !noalias !825
  %i.bt = getelementptr i8, ptr %.val.i.i.i39.i.i.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i8 103, ptr %i.bu, align 1, !noalias !825
  %i.bv = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds [32 x i8], ptr %.val.i.i.i39.i.i.i, i64 %i.bv ; 4 uses
  %i.bx = and i8 %i.bp, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -32
  store ptr inttoptr (i64 -2564920503149813702 to ptr), ptr %i.bz, align 8, !noalias !780
  %.sroa.12.16..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.bw, i64 -24
  store i64 -3601404854564284102, ptr %.sroa.12.16..sroa_idx.i.i.i, align 8, !noalias !780
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bw, i64 -16
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !826
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store ptr @682, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !826
  %i.ca = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !817, !noalias !818
  %i.cb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.by, i64 0
  %i.cc = sub <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.ao, align 8, !alias.scope !817, !noalias !818
  br label %_ZN11liquid_core7runtime7runtime9Registers7get_mut17h92449b818cd38d9dE.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cd = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.sroa.0.0.i.pre.i.i.i = load ptr, ptr %i.cd, align 8, !noalias !827
  br label %_ZN11liquid_core7runtime7runtime9Registers7get_mut17h92449b818cd38d9dE.exit

.loopexit8:                                       ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit8
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = load i64, ptr %i.p, align 8, !noundef !3
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.p, align 8
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #57
  unreachable

_ZN11liquid_core7runtime7runtime9Registers7get_mut17h92449b818cd38d9dE.exit: ; preds = %"_ZN7anymap224VacantEntry$LT$A$C$V$GT$6insert17h7a820bb300b20cf4E.exit.i.i.i.i", %bb.l
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.as, %"_ZN7anymap224VacantEntry$LT$A$C$V$GT$6insert17h7a820bb300b20cf4E.exit.i.i.i.i" ], [ %.sroa.0.0.i.pre.i.i.i, %bb.l ]
  %i.cg = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !range !828, !noundef !3
  %.not6 = icmp ne i8 %i.cg, 2
  %i.ch = load i64, ptr %i.p, align 8, !noundef !3
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.p, align 8
  %i.cj = icmp eq ptr %i.i, %i.e
  %or.cond = select i1 %.not6, i1 true, i1 %i.cj
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %_ZN11liquid_core7runtime7runtime9Registers7get_mut17h92449b818cd38d9dE.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.o, %bb.b ], [ null, %_ZN11liquid_core7runtime7runtime9Registers7get_mut17h92449b818cd38d9dE.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habd7c78315f3dc08E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [15 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 10 uses
  %i.y = alloca [80 x i8], align 8                ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [56 x i8], align 8               ; 11 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [64 x i8], align 8               ; 6 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [56 x i8], align 8               ; 11 uses
  %i.ai = alloca [40 x i8], align 8               ; 13 uses
  %i.aj = alloca [56 x i8], align 8               ; 13 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 11 uses
  %i.am = alloca [40 x i8], align 8               ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 8 uses
  %i.ao = alloca [56 x i8], align 8               ; 7 uses
  %i.ap = alloca [48 x i8], align 8               ; 7 uses
  %i.aq = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.4.i.i.i = alloca [8 x i8], align 8       ; 5 uses
  %.sroa.73.i.i.i = alloca [8 x i8], align 8      ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !829, !nonnull !3, !align !29, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !837
  call void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(72) %0), !noalias !842
  %i.au = load ptr, ptr %i.ar, align 8, !noalias !837, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit.thread", label %bb.b

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit.thread": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !837
  br label %"_ZN4core3ptr133drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..parser..filter..Filter$GT$$GT$$GT$17h100f353cfbdf32d5E.exit"

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !noalias !837
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !848, !noalias !849, !nonnull !3, !align !29, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !858
  %.val39.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !860, !noalias !861, !nonnull !3, !noundef !3 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.val40.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !860, !noalias !861, !noundef !3 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val39.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !863, !noundef !3 ; 3 uses
  %i.az = icmp ult i64 %.val40.i.i.i.i.i.i, %i.ay
  br i1 %i.az, label %bb.c, label %.invoke640.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %.val39.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !863, !nonnull !3, !noundef !3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %.val40.i.i.i.i.i.i ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !range !47, !noalias !863, !noundef !3
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.invoke638.i.i.i.i.i.i, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i", !prof !48

.invoke640.i.i.i.i.i.i:                           ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i", %bb.b
  %i.bf = phi i64 [ %.val40.i.i.i.i.i.i, %bb.b ], [ %i.bi, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i" ]
  %i.bg = phi ptr [ @535, %bb.b ], [ @538, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bf, i64 noundef %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #57
          to label %.cont641.i.i.i.i.i.i unwind label %bb.gh, !noalias !863

.cont641.i.i.i.i.i.i:                             ; preds = %.invoke640.i.i.i.i.i.i
  unreachable

"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i": ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !863, !noundef !3 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.ay
  br i1 %i.bj, label %bb.d, label %.invoke640.i.i.i.i.i.i

bb.d:                                             ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i.i.i.i.i.i.i"
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !47, !noalias !863, !noundef !3
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.e, label %.invoke638.i.i.i.i.i.i, !prof !609

.invoke638.i.i.i.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.bn = phi ptr [ @536, %bb.c ], [ @539, %bb.d ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #57
          to label %.cont639.i.i.i.i.i.i unwind label %bb.gh, !noalias !863

.cont639.i.i.i.i.i.i:                             ; preds = %.invoke638.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !range !864, !noalias !863, !noundef !3
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 19
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !609

bb.f:                                             ; preds = %bb.e
  %i.bq = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar)
          to label %bb.h unwind label %bb.gh, !noalias !837 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !863
  store ptr @256, ptr %i.ap, align 8, !noalias !863
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.br, align 8, !noalias !863
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr null, ptr %i.bs, align 8, !noalias !863
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8, !noalias !863
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 0, ptr %i.bu, align 8, !noalias !863
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #57
          to label %bb.t unwind label %bb.gh, !noalias !863

bb.h:                                             ; preds = %bb.f
  %i.bv = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bq, 1      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.bx = load i64, ptr %i.ax, align 8, !noalias !868, !noundef !3 ; 2 uses
  %i.by = icmp ult i64 %.val40.i.i.i.i.i.i, %i.bx
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.ba, align 8, !noalias !868, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %.val40.i.i.i.i.i.i ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !47, !noalias !868, !noundef !3
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit.i.i.i.i.i.i", !prof !48

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val40.i.i.i.i.i.i, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535) #57
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !868

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc4.i.i.i.i.i.i.i unwind label %bb.l, !noalias !868

.noexc4.i.i.i.i.i.i.i:                            ; preds = %bb.k
  unreachable

"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit.i.i.i.i.i.i": ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !868, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !870, !noalias !871, !nonnull !3, !align !28, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !870, !noalias !871, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !870, !noalias !871, !nonnull !3, !noundef !3
  %i.cl = add nuw i64 %.val40.i.i.i.i.i.i, 1
  call fastcc void @_ZN4pest9iterators5pairs3new17hc537a28ad13868b5E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao, ptr noundef nonnull %.val39.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cg, i64 noundef %i.ci, ptr noundef nonnull %i.ck, i64 noundef %i.cl, i64 noundef %i.ce), !noalias !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !863
  invoke void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %bb.q unwind label %bb.p, !noalias !863

bb.l:                                             ; preds = %bb.k, %bb.j
  %lpad.thr_comm.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load i64, ptr %.val39.i.i.i.i.i.i, align 8, !noalias !872, !noundef !3
  %i.cn = add i64 %i.cm, -1                       ; 2 uses
  store i64 %i.cn, ptr %.val39.i.i.i.i.i.i, align 8, !noalias !872
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ar), !noalias !837
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !883, !noalias !871, !nonnull !3, !noundef !3 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !884, !noundef !3
  %i.cs = add i64 %i.cr, -1                       ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !noalias !884
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %common.resume.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cp), !noalias !871
  br label %common.resume.i.i.i.i

bb.p:                                             ; preds = %bb.s, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit.i.i.i.i.i.i"
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.q:                                             ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit.i.i.i.i.i.i"
  %i.cv = load ptr, ptr %i.am, align 8, !noalias !863, !noundef !3
  %.not21.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not21.i.i.i.i.i.i, label %bb.s, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !863
  %i.cw = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
          to label %bb.v unwind label %bb.u, !noalias !863 ; 2 uses

bb.s:                                             ; preds = %bb.q
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @242, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #57
          to label %bb.t unwind label %bb.p, !noalias !863

bb.t:                                             ; preds = %bb.dy, %bb.s, %bb.g
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habd7c78315f3dc08E":bb.a
  %lpad.thr_comm209.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.wo = load i64, ptr %.pr.i.i.i, align 8, !noalias !1407, !noundef !3
  %i.wp = add i64 %i.wo, -1                       ; 2 uses
  store i64 %i.wp, ptr %.pr.i.i.i, align 8, !noalias !1407
  %i.wq = icmp eq i64 %i.wp, 0
  br i1 %i.wq, label %bb.fx, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i.i.i"

bb.fx:                                            ; preds = %bb.fw
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ai), !noalias !863
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i.i.i": ; preds = %bb.fx, %bb.fw
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412), !noalias !1415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416), !noalias !1415
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !1419, !noalias !863, !nonnull !3, !noundef !3 ; 2 uses
  %i.wt = load i64, ptr %i.ws, align 8, !noalias !1420, !noundef !3
  %i.wu = add i64 %i.wt, -1                       ; 2 uses
  store i64 %i.wu, ptr %i.ws, align 8, !noalias !1420
  %i.wv = icmp eq i64 %i.wu, 0
  br i1 %i.wv, label %bb.fy, label %.thread201.i.i.i.i.i.i

bb.fy:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.wr), !noalias !863
  br label %.thread201.i.i.i.i.i.i

"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i.i.i.i.i.i": ; preds = %bb.ai, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i49.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.ww = load ptr, ptr %i.dl, align 8, !alias.scope !1424, !noalias !863, !nonnull !3, !noundef !3 ; 3 uses
  %i.wx = load i64, ptr %i.dm, align 8, !alias.scope !1424, !noalias !863, !noundef !3
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$$u5b$liquid_core..runtime..expression..Expression$u5d$$GT$17hbc18c3d7eb9645f3E"(ptr noalias noundef nonnull align 8 %i.ww, i64 noundef %i.wx) #61
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0d4c55f4435998cE.exit.i.i.i.i.i.i" unwind label %bb.fz, !noalias !1427, !inline_history !1428

bb.fz:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i.i.i.i.i.i"
  %i.wy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i3.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !540, !alias.scope !1421, !noalias !863, !noundef !3 ; 2 uses
  %i.wz = icmp eq i64 %.val2.i3.i.i.i.i.i, 0
  br i1 %i.wz, label %.body.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.xa = shl nuw i64 %.val2.i3.i.i.i.i.i, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ww, i64 noundef %i.xa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1427, !inline_history !1429
  br label %.body.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0d4c55f4435998cE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i.i.i.i.i.i"
  %.val.i4.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !540, !alias.scope !1421, !noalias !863, !noundef !3 ; 2 uses
  %i.xb = icmp eq i64 %.val.i4.i.i.i.i.i, 0
  br i1 %i.xb, label %.thread215.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0d4c55f4435998cE.exit.i.i.i.i.i.i"
  %i.xc = shl nuw i64 %.val.i4.i.i.i.i.i, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ww, i64 noundef %i.xc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1427, !inline_history !1429
  br label %.thread215.i.i.i.i.i.i

.thread215.i.i.i.i.i.i:                           ; preds = %bb.gb, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0d4c55f4435998cE.exit.i.i.i.i.i.i", %bb.as
  %.pn29.pn.pn161218.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hj, %bb.as ], [ %.pn29.pn.i.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0d4c55f4435998cE.exit.i.i.i.i.i.i" ], [ %.pn29.pn.i.i.i.i.i.i, %bb.gb ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !1430, !noalias !863, !nonnull !3, !noundef !3 ; 4 uses
  %.val5.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !1430, !noalias !863, !noundef !3 ; 4 uses
  %i.xd = icmp eq i64 %.val5.i.i.i.i.i.i, 0
  br i1 %i.xd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i", label %.lr.ph2866

"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph2866
  %i.xe = icmp eq i64 %i.xg, %.val5.i.i.i.i.i.i
  br i1 %i.xe, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i", label %.lr.ph2866

.lr.ph2866:                                       ; preds = %.thread215.i.i.i.i.i.i, %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i1.i.i.i.i.i2865 = phi i64 [ %i.xg, %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit.i.i.i.i.i.i.i.i" ], [ 0, %.thread215.i.i.i.i.i.i ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [80 x i8], ptr %.val4.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i1.i.i.i.i.i2865
  %i.xg = add i64 %.sroa.0.0.i.i.i1.i.i.i.i.i2865, 1 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  invoke void @"_ZN4core3ptr65drop_in_place$LT$liquid_core..runtime..expression..Expression$GT$17hfa008f83ab7366c1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.xh)
          to label %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit.i.i.i.i.i.i.i.i" unwind label %bb.gc, !noalias !1433

"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit7.i.i.i.i.i.i.i.i": ; preds = %.lr.ph2869
  %i.xi = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i2867, 1 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, %.val5.i.i.i.i.i.i
  br i1 %i.xj, label %.body.i.i.i.i.i.i, label %.lr.ph2869

bb.gc:                                            ; preds = %.lr.ph2866
  %i.xk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.xl = icmp eq i64 %i.xg, %.val5.i.i.i.i.i.i
  br i1 %i.xl, label %.body.i.i.i.i.i.i, label %.lr.ph2869

.lr.ph2869:                                       ; preds = %bb.gc, %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit7.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i.i.i2867 = phi i64 [ %i.xi, %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit7.i.i.i.i.i.i.i.i" ], [ %i.xg, %bb.gc ] ; 2 uses
  %i.xm = getelementptr inbounds nuw [80 x i8], ptr %.val4.i.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i2867
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  invoke void @"_ZN4core3ptr65drop_in_place$LT$liquid_core..runtime..expression..Expression$GT$17hfa008f83ab7366c1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.xn)
          to label %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit7.i.i.i.i.i.i.i.i" unwind label %bb.gd, !noalias !1433

bb.gd:                                            ; preds = %.lr.ph2869
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !1434
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit7.i.i.i.i.i.i.i.i", %bb.gc
  %.val2.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !540, !alias.scope !1430, !noalias !863, !noundef !3 ; 2 uses
  %i.xp = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.xp, label %.body.i.i.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %.body.i.i.i.i.i.i
  %i.xq = mul nuw i64 %.val2.i.i.i.i.i.i, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.xq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1433
  br label %.body.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr83drop_in_place$LT$$LP$$RF$str$C$liquid_core..runtime..expression..Expression$RP$$GT$17h6665738c061dd885E.exit.i.i.i.i.i.i.i.i", %.thread215.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i = load i64, ptr %i.al, align 8, !range !540, !alias.scope !1430, !noalias !863, !noundef !3 ; 2 uses
  %i.xr = icmp eq i64 %.val.i2.i.i.i.i.i, 0
  br i1 %i.xr, label %common.resume.i.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i"
  %i.xs = mul nuw i64 %.val.i2.i.i.i.i.i, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %i.xs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1433
  br label %common.resume.i.i.i.i

bb.gg:                                            ; preds = %bb.u, %bb.p
  %.pn29.pn.pn.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.cu, %bb.p ]
  call void @"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ao) #58, !noalias !863
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i5.i.i.i.i, %bb.gj, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i", %bb.gg, %bb.gf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i", %.body70.thread165.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i, %.body36.i.i.i.i.i.i, %bb.o, %bb.n
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.yc, %.body.i5.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i, %bb.o ], [ %.pn29.pn.pn161218.i.i.i.i.i.i, %bb.gf ], [ %i.nc, %.body.i.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i, %bb.n ], [ %.pn29.pn.pn.pn.ph.i.i.i.i.i.i, %bb.gg ], [ %i.hs, %.body36.i.i.i.i.i.i ], [ %i.no, %.critedge.i.i.i.i.i.i.i.i ], [ %eh.lpad-body71168.i.i.i.i.i.i, %.body70.thread165.i.i.i.i.i.i ], [ %.pn29.pn.pn161218.i.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f4b92b4c1618716E.exit.i.i.i.i.i.i" ], [ %lpad.thr_comm.i.i.i.i.i.i, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i" ], [ %lpad.thr_comm.i.i.i.i.i.i, %bb.gj ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.gh:                                            ; preds = %bb.g, %bb.f, %.invoke638.i.i.i.i.i.i, %.invoke640.i.i.i.i.i.i
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.xt = load i64, ptr %.val39.i.i.i.i.i.i, align 8, !noalias !1440, !noundef !3
  %i.xu = add i64 %i.xt, -1                       ; 2 uses
  store i64 %i.xu, ptr %.val39.i.i.i.i.i.i, align 8, !noalias !1440
  %i.xv = icmp eq i64 %i.xu, 0
  br i1 %i.xv, label %bb.gi, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i"

bb.gi:                                            ; preds = %bb.gh
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ar), !noalias !837
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i": ; preds = %bb.gi, %bb.gh
  %i.xw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1445), !noalias !1448
  call void @llvm.experimental.noalias.scope.decl(metadata !1449), !noalias !1448
  %i.xx = load ptr, ptr %i.xw, align 8, !alias.scope !1452, !noalias !861, !nonnull !3, !noundef !3 ; 2 uses
  %i.xy = load i64, ptr %i.xx, align 8, !noalias !1453, !noundef !3
  %i.xz = add i64 %i.xy, -1                       ; 2 uses
  store i64 %i.xz, ptr %i.xx, align 8, !noalias !1453
  %i.ya = icmp eq i64 %i.xz, 0
  br i1 %i.ya, label %bb.gj, label %common.resume.i.i.i.i

bb.gj:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.xw), !noalias !861
  br label %common.resume.i.i.i.i

bb.gk:                                            ; preds = %bb.bz, %"_ZN11liquid_core5error10result_ext12Key$LT$T$GT$10value_with28_$u7b$$u7b$closure$u7d$$u7d$17h46e96c0afb8c1b0dE.exit.i.i.i.i.i.i.i"
  %.sroa.6.0.ph.i.i.i.i = phi ptr [ %i.mw, %"_ZN11liquid_core5error10result_ext12Key$LT$T$GT$10value_with28_$u7b$$u7b$closure$u7d$$u7d$17h46e96c0afb8c1b0dE.exit.i.i.i.i.i.i.i" ], [ %i.ly, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !858
  %.val8.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !835, !noalias !1454, !align !29, !noundef !3 ; 4 uses
  %i.yb = icmp eq ptr %.val8.i.i.i.i.i, null
  br i1 %i.yb, label %"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i", label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val8.i.i.i.i.i)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$17he66c09088c880230E.exit.i.i.i.i.i.i" unwind label %.body.i5.i.i.i.i, !noalias !1457

.body.i5.i.i.i.i:                                 ; preds = %bb.gl
  %i.yc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef 64, i64 noundef 8) #59, !noalias !1457
  store ptr %.sroa.6.0.ph.i.i.i.i, ptr %i.at, align 8, !alias.scope !835, !noalias !1454
  br label %common.resume.i.i.i.i

"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$17he66c09088c880230E.exit.i.i.i.i.i.i": ; preds = %bb.gl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef 64, i64 noundef 8) #59, !noalias !1457
  br label %"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i"

bb.gm:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !858
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mw) ]
  store ptr %i.mt, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1461, !noalias !1462
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit"

"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$17he66c09088c880230E.exit.i.i.i.i.i.i", %bb.gk
  store ptr %.sroa.6.0.ph.i.i.i.i, ptr %i.at, align 8, !alias.scope !835, !noalias !1454
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit": ; preds = %bb.gm, %"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i"
  %.sink4.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.73.i.i.i, %bb.gm ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i" ]
  %.8.val1.sink.i.i.i.i.i = phi ptr [ %i.mw, %bb.gm ], [ null, %"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$liquid_core..error..error..Error$GT$$GT$$GT$17hbbfd17415e1c1e41E.exit.i.i.i.i.i" ]
  store ptr %.8.val1.sink.i.i.i.i.i, ptr %.sink4.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1461, !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !837
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1463, !noalias !1466 ; 2 uses
  %.sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i.i.i = load ptr, ptr %.sroa.73.i.i.i, align 8, !alias.scope !1463, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !837
  %i.yd = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0
  %.not = icmp eq ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, null
  %. = select i1 %.not, ptr undef, ptr %.sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.i.0..sroa.73.i.i.0..sroa.73.i.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i.i.i
  br label %"_ZN4core3ptr133drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..parser..filter..Filter$GT$$GT$$GT$17h100f353cfbdf32d5E.exit"

"_ZN4core3ptr133drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..parser..filter..Filter$GT$$GT$$GT$17h100f353cfbdf32d5E.exit": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit.thread"
  %.10 = phi ptr [ %., %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit" ], [ undef, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit.thread" ]
  %i.ye = phi { ptr, ptr } [ %i.yd, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit" ], [ { ptr null, ptr poison }, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h517383a0e0130d31E.exit.thread" ]
  %i.yf = insertvalue { ptr, ptr } %i.ye, ptr %.10, 1
  ret { ptr, ptr } %i.yf
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN106_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h11db603404427638E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1468, !noalias !1471, !noundef !3 ; 9 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i64 %i.c, 16
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1468, !noalias !1471 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !1468, !noalias !1471 ; 4 uses
  %i.f = icmp ugt i64 %.sroa.018.0.copyload.i, %i.c
  br i1 %i.f, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.g = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.c) #59, !noalias !1473 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !1482

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

.body.i:                                          ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1483
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1468, !noalias !1471, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !1486
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.k, i64 %i.c, i1 false), !noalias !1486
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !1468
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %i.c
  %i.l = inttoptr i64 %.sroa.0.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !1468 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %.val.i.i.i = load i64, ptr %1, align 8, !range !540, !alias.scope !1493, !noalias !1471, !noundef !3 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.m, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1494
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.g, %bb.c ], [ %.sroa.219.0.copyload.i, %bb.b ]
  %.sroa.75.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.e ], [ %.7..7..7..sroa.6.1.copyload, %bb.f ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN107_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$alloc..string..String$GT$$GT$2eq17he063d1adbc9716feE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  store i64 0, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %.sroa.57.0..sroa_idx, align 8
  %i.f = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN108_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$alloc..string..String$GT$$GT$11partial_cmp17h31a64cf36fc66d72E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  store i64 0, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %.sroa.57.0..sroa_idx, align 8
  %i.f = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN108_$LT$liquid_core..runtime..runtime..NullPartials$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get17h80f950e0e57c2abdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @51, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.65.0..sroa_idx, align 1
  %i.d = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = icmp slt i64 %3, 0
  br i1 %i.e, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !130

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1495
  %i.g = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #59, !noalias !1495 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !1503
  store i64 %3, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN108_$LT$liquid_core..runtime..runtime..NullPartials$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$5names17hde5e9edd987b33f5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #8 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$9as_scalar17h9b5e0738101a59b1E":bb.a
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !2997, !noalias !3000, !noundef !3
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !alias.scope !2997, !noalias !3000, !nonnull !3, !align !28, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2997, !noalias !3000, !noundef !3
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !2997, !noalias !3000, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2997, !noalias !3000, !noundef !3
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 8, !alias.scope !2997, !noalias !3000, !noundef !3
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.09.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.511.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %.sroa.511.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  store i64 %.sroa.09.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.511.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.511.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.61.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model6scalar3ser23scalar_must_be_a_string17hd619324c6cdf633dE() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_ZN11liquid_core5model6scalar4date4Date8from_str17hfb85b54e2d603f5bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 23 uses
  %i.b = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i98 = alloca [10 x i8], align 2       ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 23 uses
  %i.d = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i4 = alloca [10 x i8], align 2        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 23 uses
  %i.f = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i = alloca [10 x i8], align 2         ; 5 uses
  %i.g = alloca [64 x i8], align 16               ; 33 uses
  %.sroa.132 = alloca [10 x i8], align 2          ; 18 uses
  %i.h = alloca [24 x i8], align 8                ; 19 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %.not.i = icmp eq i64 %1, 5
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1633972084
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = xor i32 %i.n, 121
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 25 ; 3 uses
  %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %.sroa.811.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 54 ; 3 uses
  %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3012
  store i128 -170141183460469231731687303715884105728, ptr %i.b, align 16, !noalias !3030
  %.sroa.7.0..sroa_idx3.i99 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i99, align 16, !noalias !3030
  %.sroa.8.0..sroa_idx7.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i100, align 4, !noalias !3030
  %.sroa.9.0..sroa_idx11.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i101, align 8, !noalias !3030
  %.sroa.10.0..sroa_idx15.i102 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i102, align 4, !noalias !3030
  %.sroa.11.0..sroa_idx19.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i103, align 2, !noalias !3030
  %.sroa.12.0..sroa_idx23.i104 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i104, align 16, !noalias !3030
  %.sroa.13.0..sroa_idx27.i105 = getelementptr inbounds nuw i8, ptr %i.b, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx43.i109 = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i105, align 2, !noalias !3031
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i109, align 2, !noalias !3030
  %.sroa.25.0..sroa_idx75.i117 = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i117, align 2, !noalias !3030
  %.sroa.29.0..sroa_idx91.i121 = getelementptr inbounds nuw i8, ptr %i.b, i64 50 ; 2 uses
  %.sroa.32.0..sroa_idx103.i124 = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %.sroa.33.0..sroa_idx107.i125 = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i121, align 2, !noalias !3031
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @110, ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !3032, !inline_history !3033
  %i.w = load i64, ptr %i.a, align 8, !range !3034, !noalias !3012, !noundef !3
  %.not.i.i.i.i129 = icmp eq i64 %i.w, 3
  br i1 %.not.i.i.i.i129, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.u, align 8, !noalias !3012, !nonnull !3, !align !28, !noundef !3
  %i.y = load i64, ptr %i.v, align 8, !noalias !3012, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %i.y), !noalias !3032, !inline_history !3033
  %i.z = load i64, ptr %i.a, align 8, !range !3034, !noalias !3012, !noundef !3
  %.not.i.i.i.i129.1 = icmp eq i64 %i.z, 3
  br i1 %.not.i.i.i.i129.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.u, align 8, !noalias !3012, !nonnull !3, !align !28, !noundef !3
  %i.ab = load i64, ptr %i.v, align 8, !noalias !3012, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !noalias !3032, !inline_history !3033
  %i.ac = load i64, ptr %i.a, align 8, !range !3034, !noalias !3012, !noundef !3
  %.not.i.i.i.i129.2 = icmp eq i64 %i.ac, 3
  br i1 %.not.i.i.i.i129.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.u, align 8, !noalias !3012, !nonnull !3, !align !28, !noundef !3
  %i.ae = load i64, ptr %i.v, align 8, !noalias !3012, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae), !noalias !3032, !inline_history !3033
  %i.af = load i64, ptr %i.a, align 8, !range !3034, !noalias !3012, !noundef !3
  %.not.i.i.i.i129.3 = icmp eq i64 %i.af, 3
  br i1 %.not.i.i.i.i129.3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.u, align 8, !noalias !3012, !nonnull !3, !align !28, !noundef !3
  %i.ah = load i64, ptr %i.v, align 8, !noalias !3012, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef %i.ah), !noalias !3032, !inline_history !3033
  %i.ai = load i64, ptr %i.a, align 8, !range !3034, !noalias !3012, !noundef !3
  %.not.i.i.i.i129.4 = icmp eq i64 %i.ai, 3
  br i1 %.not.i.i.i.i129.4, label %.loopexit.loopexit.i136, label %bb.h

.loopexit.loopexit.i136:                          ; preds = %bb.g
  %i.aj = load i64, ptr %i.v, align 8, !noalias !3012, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  %.sroa.0.0.copyload2.pre.i137199 = load i64, ptr %i.b, align 16
  %.sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload2.pre.i137201 = load i64, ptr %.sroa_idx200, align 8 ; 2 uses
  %.sroa.7.0.copyload6.pre.i138 = load i64, ptr %.sroa.7.0..sroa_idx3.i99, align 16, !noalias !3030
  %.sroa.9.0.copyload14.pre.i140 = load i64, ptr %.sroa.9.0..sroa_idx11.i101, align 8, !noalias !3030 ; 2 uses
  %.sroa.12.0.copyload26.pre.i143 = load i16, ptr %.sroa.12.0..sroa_idx23.i104, align 16, !noalias !3030
  %i.ak = load <16 x i8>, ptr %.sroa.13.0..sroa_idx27.i105, align 2, !noalias !3030
  %.sroa.32.0.copyload106.pre.i163 = load i8, ptr %.sroa.32.0..sroa_idx103.i124, align 1, !noalias !3030
  %i.al = load <4 x i8>, ptr %.sroa.29.0..sroa_idx91.i121, align 2, !noalias !3030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i98, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx107.i125, i64 10, i1 false), !noalias !3030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3012
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3012
  br label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread: ; preds = %.loopexit.loopexit.i136, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i98)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191: ; preds = %.loopexit.loopexit.i136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i98, i64 10, i1 false), !noalias !3035
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i98)
  %i.an = icmp eq i8 %.sroa.32.0.copyload106.pre.i163, 2
  %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i = freeze i64 %.sroa.0.0.copyload2.pre.i137199 ; 2 uses
  %.sroa.21.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload2.pre.i137201 to i32 ; 2 uses
  br i1 %i.an, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191
  %.sroa.21.sroa.21.0.extract.shift360 = lshr i64 %.sroa.0.0.copyload2.pre.i137201, 32
  %.sroa.21.sroa.21.0.extract.trunc361 = trunc nuw i64 %.sroa.21.sroa.21.0.extract.shift360 to i32
  store i32 %.sroa.21.sroa.21.0.extract.trunc361, ptr %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i, align 4, !noalias !3008
  %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.copyload6.pre.i138, ptr %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx, align 16, !noalias !3008
  %.sroa.45.24.extract.trunc = trunc i64 %.sroa.9.0.copyload14.pre.i140 to i8
  %.sroa.45.25.extract.shift = lshr i64 %.sroa.9.0.copyload14.pre.i140, 8
  %.sroa.45.25.extract.trunc = trunc nuw i64 %.sroa.45.25.extract.shift to i56
  store i56 %.sroa.45.25.extract.trunc, ptr %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i, align 1, !noalias !3008
  store i16 %.sroa.12.0.copyload26.pre.i143, ptr %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i, align 16, !noalias !3008
  %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  store <16 x i8> %i.ak, ptr %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx, align 2, !noalias !3008
  %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.811.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, i64 10, i1 false), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  store i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i, ptr %i.g, align 16, !noalias !3008
  store i32 %.sroa.21.sroa.0.0.extract.trunc, ptr %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !3008
  store i8 %.sroa.45.24.extract.trunc, ptr %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i, align 8, !noalias !3008
  store <4 x i8> %i.al, ptr %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx, align 2, !noalias !3008
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.g), !noalias !3036
  %i.ao = load i8, ptr %i.t, align 8, !range !262, !noalias !3008, !noundef !3
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 3
  %i.ap = load i32, ptr %i.h, align 8, !noalias !3002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i: ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  %.not.i.i.i.i = icmp eq i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i"
  %i.aq = phi i32 [ %i.ap, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i" ], [ %.sroa.21.sroa.0.0.extract.trunc, %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i ] ; 2 uses
  %.not7.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not7.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i", label %_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3037
  store i128 -170141183460469231731687303715884105728, ptr %i.d, align 16, !noalias !3055
  %.sroa.7.0..sroa_idx3.i5 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i5, align 16, !noalias !3055
  %.sroa.8.0..sroa_idx7.i6 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i6, align 4, !noalias !3055
  %.sroa.9.0..sroa_idx11.i7 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i7, align 8, !noalias !3055
  %.sroa.10.0..sroa_idx15.i8 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i8, align 4, !noalias !3055
  %.sroa.11.0..sroa_idx19.i9 = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i9, align 2, !noalias !3055
  %.sroa.12.0..sroa_idx23.i10 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i10, align 16, !noalias !3055
  %.sroa.13.0..sroa_idx27.i11 = getelementptr inbounds nuw i8, ptr %i.d, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx43.i15 = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i11, align 2, !noalias !3056
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i15, align 2, !noalias !3055
  %.sroa.25.0..sroa_idx75.i23 = getelementptr inbounds nuw i8, ptr %i.d, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i23, align 2, !noalias !3055
  %.sroa.29.0..sroa_idx91.i27 = getelementptr inbounds nuw i8, ptr %i.d, i64 50 ; 2 uses
  %.sroa.32.0..sroa_idx103.i30 = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  %.sroa.33.0..sroa_idx107.i31 = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i27, align 2, !noalias !3056
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3037
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @111, ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !3057, !inline_history !3033
  %i.at = load i64, ptr %i.c, align 8, !range !3034, !noalias !3037, !noundef !3
  %.not.i.i.i.i35 = icmp eq i64 %i.at, 3
  br i1 %.not.i.i.i.i35, label %bb.i, label %bb.m

bb.i:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"
  %i.au = load ptr, ptr %i.ar, align 8, !noalias !3037, !nonnull !3, !align !28, !noundef !3
  %i.av = load i64, ptr %i.as, align 8, !noalias !3037, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3037
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @111, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %i.av), !noalias !3057, !inline_history !3033
  %i.aw = load i64, ptr %i.c, align 8, !range !3034, !noalias !3037, !noundef !3
  %.not.i.i.i.i35.1 = icmp eq i64 %i.aw, 3
  br i1 %.not.i.i.i.i35.1, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ar, align 8, !noalias !3037, !nonnull !3, !align !28, !noundef !3
  %i.ay = load i64, ptr %i.as, align 8, !noalias !3037, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3037
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @111, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.ay), !noalias !3057, !inline_history !3033
  %i.az = load i64, ptr %i.c, align 8, !range !3034, !noalias !3037, !noundef !3
  %.not.i.i.i.i35.2 = icmp eq i64 %i.az, 3
  br i1 %.not.i.i.i.i35.2, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.ar, align 8, !noalias !3037, !nonnull !3, !align !28, !noundef !3
  %i.bb = load i64, ptr %i.as, align 8, !noalias !3037, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3037
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @111, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.bb), !noalias !3057, !inline_history !3033
  %i.bc = load i64, ptr %i.c, align 8, !range !3034, !noalias !3037, !noundef !3
  %.not.i.i.i.i35.3 = icmp eq i64 %i.bc, 3
  br i1 %.not.i.i.i.i35.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ar, align 8, !noalias !3037, !nonnull !3, !align !28, !noundef !3
  %i.be = load i64, ptr %i.as, align 8, !noalias !3037, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3037
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @111, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bd, i64 noundef %i.be), !noalias !3057, !inline_history !3033
  %i.bf = load i64, ptr %i.c, align 8, !range !3034, !noalias !3037, !noundef !3
  %.not.i.i.i.i35.4 = icmp eq i64 %i.bf, 3
  br i1 %.not.i.i.i.i35.4, label %.loopexit.loopexit.i42, label %bb.m

.loopexit.loopexit.i42:                           ; preds = %bb.l
  %i.bg = load i64, ptr %i.as, align 8, !noalias !3037, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  %.sroa.0.0.copyload2.pre.i43195 = load i64, ptr %i.d, align 16
  %.sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload2.pre.i43197 = load i64, ptr %.sroa_idx196, align 8 ; 2 uses
  %.sroa.7.0.copyload6.pre.i44 = load i64, ptr %.sroa.7.0..sroa_idx3.i5, align 16, !noalias !3055
  %.sroa.9.0.copyload14.pre.i46 = load i64, ptr %.sroa.9.0..sroa_idx11.i7, align 8, !noalias !3055 ; 2 uses
  %.sroa.12.0.copyload26.pre.i49 = load i16, ptr %.sroa.12.0..sroa_idx23.i10, align 16, !noalias !3055
  %i.bh = load <16 x i8>, ptr %.sroa.13.0..sroa_idx27.i11, align 2, !noalias !3055
  %.sroa.32.0.copyload106.pre.i69 = load i8, ptr %.sroa.32.0..sroa_idx103.i30, align 1, !noalias !3055
  %i.bi = load <4 x i8>, ptr %.sroa.29.0..sroa_idx91.i27, align 2, !noalias !3055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i4, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx107.i31, i64 10, i1 false), !noalias !3055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3037
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit97, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i.thread

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3037
  br label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i.thread

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i.thread: ; preds = %.loopexit.loopexit.i42, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit97: ; preds = %.loopexit.loopexit.i42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i4, i64 10, i1 false), !noalias !3058
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i4)
  %i.bk = icmp eq i8 %.sroa.32.0.copyload106.pre.i69, 2
  %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.1.i = freeze i64 %.sroa.0.0.copyload2.pre.i43195 ; 2 uses
  %.sroa.21.sroa.0.0.extract.trunc348 = trunc i64 %.sroa.0.0.copyload2.pre.i43197 to i32 ; 2 uses
  br i1 %i.bk, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.1.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.1.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit97
  %.sroa.21.sroa.21.0.extract.shift358 = lshr i64 %.sroa.0.0.copyload2.pre.i43197, 32
  %.sroa.21.sroa.21.0.extract.trunc359 = trunc nuw i64 %.sroa.21.sroa.21.0.extract.shift358 to i32
  store i32 %.sroa.21.sroa.21.0.extract.trunc359, ptr %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i, align 4, !noalias !3008
  %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.copyload6.pre.i44, ptr %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx207, align 16, !noalias !3008
  %.sroa.45.24.extract.trunc238 = trunc i64 %.sroa.9.0.copyload14.pre.i46 to i8
  %.sroa.45.25.extract.shift242 = lshr i64 %.sroa.9.0.copyload14.pre.i46, 8
  %.sroa.45.25.extract.trunc243 = trunc nuw i64 %.sroa.45.25.extract.shift242 to i56
  store i56 %.sroa.45.25.extract.trunc243, ptr %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i, align 1, !noalias !3008
  store i16 %.sroa.12.0.copyload26.pre.i49, ptr %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i, align 16, !noalias !3008
  %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  store <16 x i8> %i.bh, ptr %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx269, align 2, !noalias !3008
  %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.811.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, i64 10, i1 false), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  store i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.1.i, ptr %i.g, align 16, !noalias !3008
  store i32 %.sroa.21.sroa.0.0.extract.trunc348, ptr %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !3008
  store i8 %.sroa.45.24.extract.trunc238, ptr %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i, align 8, !noalias !3008
  store <4 x i8> %i.bi, ptr %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx333, align 2, !noalias !3008
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.g), !noalias !3036
  %i.bl = load i8, ptr %i.t, align 8, !range !262, !noalias !3008, !noundef !3
  %.not.i.i.i.i.1.i = icmp eq i8 %i.bl, 3
  %i.bm = load i32, ptr %i.h, align 8, !noalias !3002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br i1 %.not.i.i.i.i.1.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i: ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  %.not.i.i.i.1.i = icmp eq i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.1.i, 2
  br i1 %.not.i.i.i.1.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.1.i"
  %i.bn = phi i32 [ %i.bm, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.1.i" ], [ %.sroa.21.sroa.0.0.extract.trunc348, %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i ] ; 2 uses
  %.not7.i.1.i = icmp eq i32 %i.bn, 0
  br i1 %.not7.i.1.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i", label %_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i.thread, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i", %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.1.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.1.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3059
  store i128 -170141183460469231731687303715884105728, ptr %i.f, align 16, !noalias !3077
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i, align 16, !noalias !3077
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i, align 4, !noalias !3077
  %.sroa.9.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i, align 8, !noalias !3077
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i, align 4, !noalias !3077
  %.sroa.11.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i, align 2, !noalias !3077
  %.sroa.12.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i, align 16, !noalias !3077
  %.sroa.13.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.f, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i, align 2, !noalias !3078
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i, align 2, !noalias !3077
  %.sroa.25.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i, align 2, !noalias !3077
  %.sroa.29.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.f, i64 50 ; 2 uses
  %.sroa.32.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.f, i64 53
  %.sroa.33.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %i.f, i64 54
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i, align 2, !noalias !3078
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3059
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @113, ptr noalias noundef align 16 dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !3079, !inline_history !3033
  %i.bq = load i64, ptr %i.e, align 8, !range !3034, !noalias !3059, !noundef !3
  %.not.i.i.i.i3 = icmp eq i64 %i.bq, 3
  br i1 %.not.i.i.i.i3, label %bb.n, label %bb.r

bb.n:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i"
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !3059, !nonnull !3, !align !28, !noundef !3
  %i.bs = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3059
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.bs), !noalias !3079, !inline_history !3033
  %i.bt = load i64, ptr %i.e, align 8, !range !3034, !noalias !3059, !noundef !3
  %.not.i.i.i.i3.1 = icmp eq i64 %i.bt, 3
  br i1 %.not.i.i.i.i3.1, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bo, align 8, !noalias !3059, !nonnull !3, !align !28, !noundef !3
  %i.bv = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3059
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.bv), !noalias !3079, !inline_history !3033
  %i.bw = load i64, ptr %i.e, align 8, !range !3034, !noalias !3059, !noundef !3
  %.not.i.i.i.i3.2 = icmp eq i64 %i.bw, 3
  br i1 %.not.i.i.i.i3.2, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bo, align 8, !noalias !3059, !nonnull !3, !align !28, !noundef !3
  %i.by = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3059
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bx, i64 noundef %i.by), !noalias !3079, !inline_history !3033
  %i.bz = load i64, ptr %i.e, align 8, !range !3034, !noalias !3059, !noundef !3
  %.not.i.i.i.i3.3 = icmp eq i64 %i.bz, 3
  br i1 %.not.i.i.i.i3.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.bo, align 8, !noalias !3059, !nonnull !3, !align !28, !noundef !3
  %i.cb = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3059
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @113, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, i64 noundef %i.cb), !noalias !3079, !inline_history !3033
  %i.cc = load i64, ptr %i.e, align 8, !range !3034, !noalias !3059, !noundef !3
  %.not.i.i.i.i3.4 = icmp eq i64 %i.cc, 3
  br i1 %.not.i.i.i.i3.4, label %.loopexit.loopexit.i, label %bb.r

.loopexit.loopexit.i:                             ; preds = %bb.q
  %i.cd = load i64, ptr %i.bp, align 8, !noalias !3059, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  %.sroa.0.0.copyload2.pre.i192 = load i64, ptr %i.f, align 16
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload2.pre.i193 = load i64, ptr %.sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload6.pre.i = load i64, ptr %.sroa.7.0..sroa_idx3.i, align 16, !noalias !3077
  %.sroa.9.0.copyload14.pre.i = load i64, ptr %.sroa.9.0..sroa_idx11.i, align 8, !noalias !3077 ; 2 uses
  %.sroa.12.0.copyload26.pre.i = load i16, ptr %.sroa.12.0..sroa_idx23.i, align 16, !noalias !3077
  %i.ce = load <16 x i8>, ptr %.sroa.13.0..sroa_idx27.i, align 2, !noalias !3077
  %.sroa.32.0.copyload106.pre.i = load i8, ptr %.sroa.32.0..sroa_idx103.i, align 1, !noalias !3077
  %i.cf = load <4 x i8>, ptr %.sroa.29.0..sroa_idx91.i, align 2, !noalias !3077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx107.i, i64 10, i1 false), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3059
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i.thread

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3059
  br label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i.thread

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i.thread: ; preds = %.loopexit.loopexit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit: ; preds = %.loopexit.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i, i64 10, i1 false), !noalias !3080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i)
  %i.ch = icmp eq i8 %.sroa.32.0.copyload106.pre.i, 2
  %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.2.i = freeze i64 %.sroa.0.0.copyload2.pre.i192 ; 2 uses
  %.sroa.21.sroa.0.0.extract.trunc350 = trunc i64 %.sroa.0.0.copyload2.pre.i193 to i32 ; 2 uses
  br i1 %i.ch, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.2.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.2.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit
  %.sroa.21.sroa.21.0.extract.shift356 = lshr i64 %.sroa.0.0.copyload2.pre.i193, 32
  %.sroa.21.sroa.21.0.extract.trunc357 = trunc nuw i64 %.sroa.21.sroa.21.0.extract.shift356 to i32
  store i32 %.sroa.21.sroa.21.0.extract.trunc357, ptr %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i, align 4, !noalias !3008
  %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx209 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.copyload6.pre.i, ptr %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx209, align 16, !noalias !3008
  %.sroa.45.24.extract.trunc240 = trunc i64 %.sroa.9.0.copyload14.pre.i to i8
  %.sroa.45.25.extract.shift245 = lshr i64 %.sroa.9.0.copyload14.pre.i, 8
  %.sroa.45.25.extract.trunc246 = trunc nuw i64 %.sroa.45.25.extract.shift245 to i56
  store i56 %.sroa.45.25.extract.trunc246, ptr %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i, align 1, !noalias !3008
  store i16 %.sroa.12.0.copyload26.pre.i, ptr %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i, align 16, !noalias !3008
  %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  store <16 x i8> %i.ce, ptr %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx271, align 2, !noalias !3008
  %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.811.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, i64 10, i1 false), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  store i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.2.i, ptr %i.g, align 16, !noalias !3008
  store i32 %.sroa.21.sroa.0.0.extract.trunc350, ptr %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !3008
  store i8 %.sroa.45.24.extract.trunc240, ptr %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i, align 8, !noalias !3008
  store <4 x i8> %i.cf, ptr %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx335, align 2, !noalias !3008
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.g), !noalias !3036
  %i.ci = load i8, ptr %i.t, align 8, !range !262, !noalias !3008, !noundef !3
  %.not.i.i.i.i.2.i = icmp eq i8 %i.ci, 3
  %i.cj = load i32, ptr %i.h, align 8, !noalias !3002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  br i1 %.not.i.i.i.i.2.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i: ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3002
  %.not.i.i.i.2.i = icmp eq i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.2.i, 2
  br i1 %.not.i.i.i.2.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.2.i"
  %i.ck = phi i32 [ %i.cj, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.2.i" ], [ %.sroa.21.sroa.0.0.extract.trunc350, %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i ] ; 2 uses
  %.not7.i.2.i = icmp eq i32 %i.ck, 0
  br i1 %.not7.i.2.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i", label %_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i.thread, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i", %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.2.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.2.i"
  br label %_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3081
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.i), !noalias !3081
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !range !2886, !noalias !3081, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3081
  br label %_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit

_ZN11liquid_core5model6scalar4date10parse_date17h413ad7904e39da05E.exit: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i", %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i", %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i", %bb.s
  %.sroa.0.0.i = phi i32 [ %i.cm, %bb.s ], [ %i.aq, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i" ], [ %i.ck, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.i" ], [ 0, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.2.thread.i" ], [ %i.bn, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.1.i" ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_ZN11liquid_core5model6scalar4date4Date8from_ymd17h52a54ab34f5253dcE(i32 noundef %0, i8 noundef %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.off = add i8 %1, -1
  %switch = icmp ult i8 %.off, 12
  br i1 %switch, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3082
  store ptr @663, ptr %i.b, align 8, !noalias !3086
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 5, ptr %.sroa.18.0..sroa_idx, align 8, !noalias !3086
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %.sroa.20.0..sroa_idx, align 8, !noalias !3086
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @114, i64 noundef 25, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #57, !noalias !3087
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit": ; preds = %bb.a
  %i.c = add i32 %0, -10000
  %or.cond.i = icmp ult i32 %i.c, -19999
  br i1 %or.cond.i, label %bb.f, label %bb.c, !prof !3088

bb.c:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit"
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %i.d = mul i32 %.sroa.012.0.i, 33555415
  %i.e = and i32 %i.d, 100695055
  %i.f = icmp samesign ult i32 %i.e, 31745        ; 3 uses
  %i.g = add i8 %2, -1
  %or.cond1.i = icmp ult i8 %i.g, 28
  br i1 %or.cond1.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h84cf7cd6a2b84558E.exit", label %bb.d, !prof !3089

bb.d:                                             ; preds = %bb.c
  %i.h = add i8 %2, -29
  %or.cond2.i = icmp ult i8 %i.h, 3
  br i1 %or.cond2.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i8 %1, 2
  %i.j = lshr i8 %1, 3
  %i.k = xor i8 %i.j, %1
  %i.l = or i8 %i.k, 30
  %..i = select i1 %i.f, i8 29, i8 28
  %.sroa.05.0.i = select i1 %i.i, i8 %..i, i8 %i.l
  %.not.i2 = icmp samesign ugt i8 %2, %.sroa.05.0.i
  br i1 %.not.i2, label %bb.f, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h84cf7cd6a2b84558E.exit"

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit", %bb.e, %bb.d
  %.sroa.0.0.ph = phi ptr [ @554, %bb.d ], [ @554, %bb.e ], [ @547, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit" ]
  %.sroa.7.0.ph = phi i64 [ 3, %bb.d ], [ 3, %bb.e ], [ 4, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit" ]
  %.sink.i1.ph = phi i8 [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hd1ccc9b2be90d27fE.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3090
  store ptr %.sroa.0.0.ph, ptr %i.a, align 8, !noalias !3094
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.7.0.ph, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3094
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sink.i1.ph, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !3094
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @117, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #57, !noalias !3095
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h84cf7cd6a2b84558E.exit": ; preds = %bb.e, %bb.c
  %i.m = zext nneg i8 %1 to i64
  %.sroa.sel.i = select i1 %i.f, ptr getelementptr inbounds nuw (i8, ptr @555, i64 24), ptr @555
  %i.n = getelementptr [2 x i8], ptr %.sroa.sel.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !noalias !3096, !noundef !3
  %i.q = zext nneg i8 %2 to i16
  %i.r = add i16 %i.p, %i.q
  %i.s = shl nsw i32 %0, 10
  %i.t = select i1 %i.f, i32 512, i32 0
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i16 %i.r to i32
  %i.w = or i32 %i.u, %i.v                        ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  ret i32 %i.w
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar75_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i8$GT$7to_kstr17hae16c4ebb2663155E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @119, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3099
  store i64 0, ptr %i.d, align 8, !noalias !3099
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3099
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3099
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3099
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3099
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3099
  store ptr %i.d, ptr %i.c, align 8, !noalias !3099
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3099
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !2911

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !540, !alias.scope !3109, !noalias !3099, !noundef !3 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3109, !noalias !3099, !nonnull !3, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3110
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3111

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3112 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3112 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3112 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3113 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3125

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3126
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3129
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3130
end_hunk_2
