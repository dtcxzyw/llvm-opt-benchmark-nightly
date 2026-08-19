inline.NumInlined: 3177
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E:bb.a

.preheader.1.i:                                   ; preds = %bb.k
  store float %.val8.i.1.i, ptr %.sroa.0.0.i35.1.i555, align 4, !alias.scope !3327, !noalias !3324
  %i.ag = icmp eq ptr %i.ah, %i.z
  br i1 %i.ag, label %._crit_edge557, label %.lr.ph556

.lr.ph556:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i35.1.i555 = phi ptr [ %i.ah, %.preheader.1.i ], [ %i.ae, %.preheader.1.i.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i35.1.i555, i64 -4 ; 3 uses
  %.val8.i.1.i = load float, ptr %i.ah, align 4, !alias.scope !3327, !noalias !3324, !noundef !4 ; 3 uses
  %brmerge.not.i11.i.1.i = fcmp uno float %.val8.i.1.i, %.val9.i.cast.1.i
  br i1 %brmerge.not.i11.i.1.i, label %.loopexit22.i, label %bb.k, !prof !1737

bb.k:                                             ; preds = %.lr.ph556
  %.mux.i12.i.1.i = fcmp ogt float %.val8.i.1.i, %.val9.i.cast.1.i
  br i1 %.mux.i12.i.1.i, label %.preheader.1.i, label %._crit_edge557

._crit_edge557:                                   ; preds = %.preheader.1.i, %bb.k, %.preheader.1.i.preheader
  %.sroa.0.0.i35.lcssa.1.i = phi ptr [ %i.z, %.preheader.1.i.preheader ], [ %i.z, %.preheader.1.i ], [ %.sroa.0.0.i35.1.i555, %bb.k ]
  store i32 %i.ad, ptr %.sroa.0.0.i35.lcssa.1.i, align 4, !alias.scope !3327, !noalias !3329
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i: ; preds = %._crit_edge557, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.1.i"
  %i.ai = icmp ult i64 %.sroa.08.113.1.i, %i.w    ; 2 uses
  %i.aj = zext i1 %i.ai to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.113.1.i, %i.aj
  br i1 %i.ai, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  %i.ak = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.z, i64 -4
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.111.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i"
  %i.ao = getelementptr i8, ptr %i.bd, i64 4      ; 2 uses
  %i.ap = getelementptr i8, ptr %i.bc, i64 4
  %i.aq = and i64 %.sroa.17.0.lcssa, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i", %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.au, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %.sroa.0.0.ph.lcssa184, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.as, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ 0, %.loopexit.1.i ]
  %.sroa.06.018.i.i = phi ptr [ %i.ax, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.017.i.i = phi ptr [ %i.az, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.z, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.016.i.i = phi ptr [ %i.bd, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.an, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.015.i.i = phi ptr [ %i.bc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.am, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.014.i.i = phi ptr [ %i.be, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.al, %.loopexit.1.i ] ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load float, ptr %.sroa.011.017.i.i, align 4, !alias.scope !3337, !noalias !3324, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i.i = load float, ptr %.sroa.06.018.i.i, align 4, !alias.scope !3337, !noalias !3324, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  br i1 %brmerge.not.i.i.i, label %.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i", !prof !1737

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i": ; preds = %.lr.ph.i.i
  %.mux.i.i.i = fcmp olt float %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.mux.i.i.i, ptr %.sroa.011.017.i.i, ptr %.sroa.06.018.i.i
  %i.at = load i32, ptr %..i23.i.i, align 4, !alias.scope !3337, !noalias !3338
  store i32 %i.at, ptr %.sroa.0.020.i.i, align 4, !alias.scope !3324, !noalias !3342
  %.sroa.017.0.val.i.i = load float, ptr %.sroa.017.015.i.i, align 4, !alias.scope !3337, !noalias !3324, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i.i = load float, ptr %.sroa.015.016.i.i, align 4, !alias.scope !3337, !noalias !3324, !noundef !4 ; 2 uses
  %brmerge.not.i24.i.i = fcmp uno float %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  br i1 %brmerge.not.i24.i.i, label %.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i", !prof !1737

.invoke.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i", %.lr.ph.i.i
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
          to label %.cont.i unwind label %bb.o, !noalias !3343

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 4 ; 2 uses
  %i.av = xor i1 %.mux.i.i.i, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.018.i.i, i64 %i.aw ; 5 uses
  %i.ay = zext i1 %.mux.i.i.i to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.017.i.i, i64 %i.ay ; 4 uses
  %.mux.i25.i.i = fcmp olt float %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %.mux.i25.i.i, ptr %.sroa.015.016.i.i, ptr %.sroa.017.015.i.i
  %i.ba = xor i1 %.mux.i25.i.i, true
  %i.bb = load i32, ptr %..i.i.i, align 4, !alias.scope !3337, !noalias !3344
  store i32 %i.bb, ptr %.sroa.019.014.i.i, align 4, !alias.scope !3324, !noalias !3348
  %.neg.i.i.i = sext i1 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.sroa.017.015.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.mux.i25.i.i to i64
  %i.bd = getelementptr [4 x i8], ptr %.sroa.015.016.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.019.014.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bf = icmp ult ptr %i.ax, %i.ao               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bf, ptr %i.ax, ptr %i.az
  %i.bg = load i32, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !3337, !noalias !3324
  store i32 %i.bg, ptr %i.au, align 4, !alias.scope !3324, !noalias !3337
  %i.bh = zext i1 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bh
  %i.bj = xor i1 %i.bf, true
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.az, %._crit_edge.i.i ], [ %i.bl, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.ax, %._crit_edge.i.i ], [ %i.bi, %bb.l ]
  %i.bm = icmp ne ptr %.sroa.06.1.i.i, %i.ao
  %i.bn = icmp ne ptr %.sroa.011.1.i.i, %i.ap
  %or.cond.i.i = select i1 %i.bm, i1 true, i1 %i.bn, !prof !19
  br i1 %or.cond.i.i, label %bb.n, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0317d08eb1c47f00E.exit, !prof !19

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc31.i unwind label %bb.o, !noalias !3343

.noexc31.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n, %.invoke.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = shl nuw nsw i64 %.sroa.17.0.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa184, ptr nonnull align 4 %2, i64 %i.bp, i1 false), !alias.scope !3343, !noalias !3349
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.bx, %bb.q ]
  resume { ptr, i32 } %.pn.i

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.113.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i ], [ %.sroa.08.111.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.012.i = phi i64 [ %.sroa.08.113.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %.sroa.08.012.i
  %.idx = shl nuw nsw i64 %.sroa.08.012.i, 2
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.bs = load i32, ptr %i.bq, align 4, !alias.scope !3324, !noalias !3327 ; 4 uses
  store i32 %i.bs, ptr %i.br, align 4, !alias.scope !3327, !noalias !3324
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %.val9.i.cast.i = bitcast i32 %i.bs to float    ; 4 uses
  %.val10.i.i = load float, ptr %i.bt, align 4, !alias.scope !3327, !noalias !3324, !noundef !4 ; 3 uses
  %brmerge.not.i.i32.i = fcmp uno float %.val10.i.i, %.val9.i.cast.i
  br i1 %brmerge.not.i.i32.i, label %.noexc36.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.i", !prof !1737

.noexc36.i:                                       ; preds = %.lr.ph.i, %.lr.ph.1.i
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3343
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.i": ; preds = %.lr.ph.i
  %.mux.i.i34.i = fcmp ogt float %.val10.i.i, %.val9.i.cast.i
  br i1 %.mux.i.i34.i, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i

.preheader.i.preheader:                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.i"
  store float %.val10.i.i, ptr %i.br, align 4, !alias.scope !3327, !noalias !3324
  %i.bu = icmp eq i64 %.sroa.08.012.i, 1
  br i1 %i.bu, label %._crit_edge552, label %.lr.ph551

.preheader.i:                                     ; preds = %bb.p
  store float %.val8.i.i, ptr %.sroa.0.0.i35.i550, align 4, !alias.scope !3327, !noalias !3324
  %i.bv = icmp eq ptr %i.bw, %2
  br i1 %i.bv, label %._crit_edge552, label %.lr.ph551

.lr.ph551:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i35.i550 = phi ptr [ %i.bw, %.preheader.i ], [ %i.bt, %.preheader.i.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0.0.i35.i550, i64 -4 ; 3 uses
  %.val8.i.i = load float, ptr %i.bw, align 4, !alias.scope !3327, !noalias !3324, !noundef !4 ; 3 uses
  %brmerge.not.i11.i.i = fcmp uno float %.val8.i.i, %.val9.i.cast.i
  br i1 %brmerge.not.i11.i.i, label %.loopexit22.i, label %bb.p, !prof !1737

.loopexit22.i:                                    ; preds = %.lr.ph551, %.lr.ph556
  %.lcssa20.i = phi i32 [ %i.ad, %.lr.ph556 ], [ %i.bs, %.lr.ph551 ]
  %.sroa.0.0.i35.lcssa18.i = phi ptr [ %.sroa.0.0.i35.1.i555, %.lr.ph556 ], [ %.sroa.0.0.i35.i550, %.lr.ph551 ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
          to label %.noexc.i.i unwind label %bb.q, !noalias !3343

.noexc.i.i:                                       ; preds = %.loopexit22.i
  unreachable

bb.p:                                             ; preds = %.lr.ph551
  %.mux.i12.i.i = fcmp ogt float %.val8.i.i, %.val9.i.cast.i
  br i1 %.mux.i12.i.i, label %.preheader.i, label %._crit_edge552

._crit_edge552:                                   ; preds = %.preheader.i, %bb.p, %.preheader.i.preheader
  %.sroa.0.0.i35.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i35.i550, %bb.p ]
  store i32 %i.bs, ptr %.sroa.0.0.i35.lcssa.i, align 4, !alias.scope !3327, !noalias !3329
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i

bb.q:                                             ; preds = %.loopexit22.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store i32 %.lcssa20.i, ptr %.sroa.0.0.i35.lcssa18.i, align 4, !alias.scope !3327, !noalias !3354
  br label %.body.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i: ; preds = %._crit_edge552, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.i"
  %i.by = icmp ult i64 %.sroa.08.113.i, %i.j      ; 2 uses
  %i.bz = zext i1 %i.by to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.113.i, %i.bz
  br i1 %i.by, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0187.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph193, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17h726109e7c0aba361E(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph194, i64 noundef %.sroa.17.0187.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0317d08eb1c47f00E.exit

.lr.ph546:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0186545 = phi i32 [ %i.ca, %bb.b ], [ %.sroa.027.0.ph192, %.lr.ph ]
  %.sroa.17.0187544 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph193, %.lr.ph ] ; 19 uses
  %i.ca = add i32 %.sroa.027.0186545, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  %i.cb = lshr i64 %.sroa.17.0187544, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.cb, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph194, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.cb, 28
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph194, i64 %.idx2.i ; 3 uses
  %i.ce = icmp ult i64 %.sroa.17.0187544, 64
  br i1 %i.ce, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph546
  %i.cf = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h79376be56bc75142E(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph194, ptr noundef readonly %i.cc, ptr noundef readonly %i.cd, i64 noundef %i.cb)
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph546
  %.val6.i = load float, ptr %.sroa.0.0.ph194, align 4, !alias.scope !3359, !noundef !4 ; 4 uses
  %.val7.i = load float, ptr %i.cc, align 4, !alias.scope !3359, !noundef !4 ; 4 uses
  %brmerge.not.i.i = fcmp uno float %.val6.i, %.val7.i
  br i1 %brmerge.not.i.i, label %bb.t, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i", !prof !1737

bb.t:                                             ; preds = %bb.s
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3359
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i": ; preds = %bb.s
  %.mux.i.i = fcmp olt float %.val6.i, %.val7.i   ; 2 uses
  %.val5.i = load float, ptr %i.cd, align 4, !alias.scope !3359, !noundef !4 ; 4 uses
  %brmerge.not.i8.i = fcmp uno float %.val6.i, %.val5.i
  br i1 %brmerge.not.i8.i, label %bb.u, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit10.i", !prof !1737

bb.u:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3359
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i"
  %.mux.i9.i = fcmp olt float %.val6.i, %.val5.i
  %i.cg = xor i1 %.mux.i.i, %.mux.i9.i
  br i1 %i.cg, label %bb.x, label %bb.v

bb.v:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit10.i"
  %brmerge.not.i11.i = fcmp uno float %.val7.i, %.val5.i
  br i1 %brmerge.not.i11.i, label %bb.w, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit13.i", !prof !1737

bb.w:                                             ; preds = %bb.v
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3359
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit13.i": ; preds = %bb.v
  %.mux.i12.i = fcmp olt float %.val7.i, %.val5.i
  %i.ch = xor i1 %.mux.i.i, %.mux.i12.i
  %..i.i = select i1 %i.ch, ptr %i.cd, ptr %i.cc
  br label %bb.x

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0317d08eb1c47f00E.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.x:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit13.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit10.i", %bb.r
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cf, %bb.r ], [ %.sroa.0.0.ph194, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit10.i" ], [ %..i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit13.i" ]
  %i.ci = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cj = sub nuw i64 %i.ci, %i.d                 ; 3 uses
  %.sroa.0.0.i43 = lshr exact i64 %i.cj, 2        ; 3 uses
  %i.ck = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0187544
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph194, i64 %i.cj
  %i.cm = load float, ptr %i.cl, align 4, !noundef !4 ; 13 uses
  store float %i.cm, ptr %i.b, align 4
  br i1 %.not, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.030.0.val = load float, ptr %.sroa.030.0.ph191, align 4, !noundef !4 ; 2 uses
  %brmerge.not.i = fcmp uno float %.sroa.030.0.val, %i.cm
  br i1 %brmerge.not.i, label %bb.z, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit", !prof !1737

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit": ; preds = %bb.y
  %.mux.i = fcmp uge float %.sroa.030.0.val, %i.cm
  br i1 %.mux.i, label %.critedge42, label %.critedge

.critedge:                                        ; preds = %bb.x, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %.not90 = icmp ult i64 %3, %.sroa.17.0187544
  br i1 %.not90, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %.critedge
  %i.cn = getelementptr [4 x i8], ptr %2, i64 %.sroa.17.0187544 ; 3 uses
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.ai, %bb.aa
  %.sroa.43.0.i = phi ptr [ %i.cn, %bb.aa ], [ %i.dv, %bb.ai ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.aa ], [ %.sroa.27.2.lcssa.i, %bb.ai ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph194, %bb.aa ], [ %i.dy, %bb.ai ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.aa ], [ %.sroa.17.0187544, %bb.ai ] ; 3 uses
  %i.co = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph194, i64 %i.co ; 2 uses
  %i.cq = icmp ult ptr %.sroa.9.0.i, %i.cp
  br i1 %i.cq, label %.lr.ph.i45, label %._crit_edge.i

.lr.ph.i45:                                       ; preds = %bb.ac, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i"
  %.sroa.9.146.i = phi ptr [ %i.dk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ], [ %.sroa.9.0.i, %bb.ac ] ; 5 uses
  %.sroa.27.145.i = phi i64 [ %i.dj, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ], [ %.sroa.27.0.i, %bb.ac ] ; 2 uses
  %.sroa.43.144.i = phi ptr [ %i.dg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ], [ %.sroa.43.0.i, %bb.ac ] ; 4 uses
  %.val35.i = load float, ptr %.sroa.9.146.i, align 4, !alias.scope !3362, !noalias !3365, !noundef !4 ; 3 uses
  %brmerge.not.i.i46 = fcmp uno float %.val35.i, %i.cm
  br i1 %brmerge.not.i.i46, label %bb.ad, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i47", !prof !1737

bb.ad:                                            ; preds = %.lr.ph.i45
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3367
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i47": ; preds = %.lr.ph.i45
  %.mux.i.i48 = fcmp olt float %.val35.i, %i.cm   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -4
  %.sroa.01.0.i.i = select i1 %.mux.i.i48, ptr %2, ptr %i.cr
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.145.i
  store float %.val35.i, ptr %i.cs, align 4, !alias.scope !3365, !noalias !3368
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 4
  %.val33.i = load float, ptr %i.ct, align 4, !alias.scope !3362, !noalias !3365, !noundef !4 ; 3 uses
  %brmerge.not.i37.i = fcmp uno float %.val33.i, %i.cm
  br i1 %brmerge.not.i37.i, label %bb.ae, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit39.i", !prof !1737

bb.ae:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i47"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3367
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit39.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i47"
  %i.cu = zext i1 %.mux.i.i48 to i64
  %i.cv = add i64 %.sroa.27.145.i, %i.cu          ; 2 uses
  %.mux.i38.i = fcmp olt float %.val33.i, %i.cm   ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -8
  %.sroa.01.0.i40.i = select i1 %.mux.i38.i, ptr %2, ptr %i.cw
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i40.i, i64 %i.cv
  store float %.val33.i, ptr %i.cx, align 4, !alias.scope !3365, !noalias !3371
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 8
  %.val31.i = load float, ptr %i.cy, align 4, !alias.scope !3362, !noalias !3365, !noundef !4 ; 3 uses
  %brmerge.not.i41.i = fcmp uno float %.val31.i, %i.cm
  br i1 %brmerge.not.i41.i, label %bb.af, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43.i", !prof !1737

bb.af:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit39.i"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3367
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit39.i"
  %i.cz = zext i1 %.mux.i38.i to i64
  %i.da = add i64 %i.cv, %i.cz                    ; 2 uses
  %.mux.i42.i = fcmp olt float %.val31.i, %i.cm   ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -12
  %.sroa.01.0.i44.i = select i1 %.mux.i42.i, ptr %2, ptr %i.db
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i44.i, i64 %i.da
  store float %.val31.i, ptr %i.dc, align 4, !alias.scope !3365, !noalias !3374
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 12
  %.val29.i = load float, ptr %i.dd, align 4, !alias.scope !3362, !noalias !3365, !noundef !4 ; 3 uses
  %brmerge.not.i45.i = fcmp uno float %.val29.i, %i.cm
  br i1 %brmerge.not.i45.i, label %bb.ag, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i", !prof !1737

bb.ag:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43.i"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !3367
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43.i"
  %i.de = zext i1 %.mux.i42.i to i64
  %i.df = add i64 %i.da, %i.de                    ; 2 uses
  %.mux.i46.i = fcmp olt float %.val29.i, %i.cm   ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -16 ; 3 uses
  %.sroa.01.0.i48.i = select i1 %.mux.i46.i, ptr %2, ptr %i.dg
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i48.i, i64 %i.df
  store float %.val29.i, ptr %i.dh, align 4, !alias.scope !3365, !noalias !3377
  %i.di = zext i1 %.mux.i46.i to i64
  %i.dj = add i64 %i.df, %i.di                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 16 ; 3 uses
  %i.dl = icmp ult ptr %i.dk, %i.cp
  br i1 %i.dl, label %.lr.ph.i45, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i", %bb.ac
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.ac ], [ %i.dg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.ac ], [ %i.dj, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.ac ], [ %i.dk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit47.i" ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dn = icmp ult ptr %.sroa.9.1.lcssa.i, %i.dm
  br i1 %i.dn, label %.lr.ph53.i, label %._crit_edge54.i
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable9quicksort9quicksort17h2f812a2b2fdc6be1E:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bp = call i16 @llvm.umin.i16(i16 %.val.i38.i, i16 %.val5.i39.i)
  store i16 %i.bp, ptr %i.bo, align 2, !alias.scope !3419, !noalias !3416
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.br = call i16 @llvm.umax.i16(i16 %.val.i38.i, i16 %.val5.i39.i)
  store i16 %i.br, ptr %i.bq, align 2, !alias.scope !3419, !noalias !3416
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.bt = call i16 @llvm.umax.i16(i16 %.val6.i36.i, i16 %.val7.i37.i)
  store i16 %i.bt, ptr %i.bs, align 2, !alias.scope !3419, !noalias !3416
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bu = load i16, ptr %.sroa.0.0.ph.lcssa121, align 2, !alias.scope !3416, !noalias !3419
  store i16 %i.bu, ptr %2, align 2, !alias.scope !3419, !noalias !3416
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %i.j
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j
  %i.bx = load i16, ptr %i.bv, align 2, !alias.scope !3416, !noalias !3419
  store i16 %i.bx, ptr %i.bw, align 2, !alias.scope !3419, !noalias !3416
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.by = sub nsw i64 %.sroa.17.0.lcssa, %i.j     ; 2 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.bz, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i, %bb.j
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %i.j
  %i.cb = getelementptr [2 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cc = icmp ult i64 %.sroa.0.0.i, %i.by
  br i1 %i.cc, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.sroa.08.09.1.i
  %.idx352 = shl nuw nsw i64 %.sroa.08.09.1.i, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx352 ; 3 uses
  %i.cf = load i16, ptr %i.cd, align 2, !alias.scope !3416, !noalias !3419 ; 4 uses
  store i16 %i.cf, ptr %i.ce, align 2, !alias.scope !3419, !noalias !3416
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -2 ; 2 uses
  %.val10.i47.1.i = load i16, ptr %i.cg, align 2, !alias.scope !3435, !noalias !3438, !noundef !4 ; 2 uses
  %i.ch = icmp ult i16 %i.cf, %.val10.i47.1.i
  br i1 %i.ch, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i16 %.val10.i47.1.i, ptr %i.ce, align 2, !alias.scope !3419, !noalias !3416
  %i.ci = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ci, label %._crit_edge311, label %.lr.ph310

.preheader.1.i:                                   ; preds = %.lr.ph310
  store i16 %.val8.i49.1.i, ptr %.sroa.0.0.i48.1.i309, align 2, !alias.scope !3419, !noalias !3416
  %i.cj = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cj, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i48.1.i309 = phi ptr [ %i.ck, %.preheader.1.i ], [ %i.cg, %.preheader.1.i.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i48.1.i309, i64 -2 ; 3 uses
  %.val8.i49.1.i = load i16, ptr %i.ck, align 2, !alias.scope !3435, !noalias !3438, !noundef !4 ; 2 uses
  %i.cl = icmp ult i16 %i.cf, %.val8.i49.1.i
  br i1 %i.cl, label %.preheader.1.i, label %._crit_edge311

._crit_edge311:                                   ; preds = %.preheader.1.i, %.lr.ph310, %.preheader.1.i.preheader
  %.sroa.0.0.i48.lcssa.1.i = phi ptr [ %i.cb, %.preheader.1.i.preheader ], [ %i.cb, %.preheader.1.i ], [ %.sroa.0.0.i48.1.i309, %.lr.ph310 ]
  store i16 %i.cf, ptr %.sroa.0.0.i48.lcssa.1.i, align 2, !alias.scope !3419, !noalias !3440
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i: ; preds = %._crit_edge311, %.lr.ph.1.i
  %i.cm = icmp ult i64 %.sroa.08.110.1.i, %i.by   ; 2 uses
  %i.cn = zext i1 %i.cm to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cn
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  %i.co = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cb, i64 -2
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cs = getelementptr i8, ptr %i.dj, i64 2      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.di, i64 2
  %i.cu = and i64 %.sroa.17.0.lcssa, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa121, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.012.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.cb, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cq, %.loopexit.1.i ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cp, %.loopexit.1.i ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i16, ptr %.sroa.011.011.i.i, align 2, !alias.scope !3448, !noalias !3451, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i.i = load i16, ptr %.sroa.06.012.i.i, align 2, !alias.scope !3453, !noalias !3454, !noundef !4 ; 2 uses
  %i.cx = icmp ult i16 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 2 uses
  %i.cy = xor i1 %i.cx, true
  %i.cz = call i16 @llvm.umin.i16(i16 %.sroa.011.0.val.i.i, i16 %.sroa.06.0.val.i.i)
  store i16 %i.cz, ptr %.sroa.0.014.i.i, align 2, !alias.scope !3416, !noalias !3455
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.sroa.011.011.i.i, i64 %i.da ; 4 uses
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.012.i.i, i64 %i.dc ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 2 ; 2 uses
  %.sroa.017.0.val.i.i = load i16, ptr %.sroa.017.09.i.i, align 2, !alias.scope !3448, !noalias !3451, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i.i = load i16, ptr %.sroa.015.010.i.i, align 2, !alias.scope !3453, !noalias !3454, !noundef !4 ; 2 uses
  %i.df = icmp ult i16 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 2 uses
  %i.dg = xor i1 %i.df, true
  %i.dh = call i16 @llvm.umax.i16(i16 %.sroa.017.0.val.i.i, i16 %.sroa.015.0.val.i.i)
  store i16 %i.dh, ptr %.sroa.019.08.i.i, align 2, !alias.scope !3416, !noalias !3459
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [2 x i8], ptr %.sroa.015.010.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -2
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dl = icmp ult ptr %i.dd, %i.cs               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dl, ptr %i.dd, ptr %i.db
  %i.dm = load i16, ptr %.sroa.06.0..sroa.011.0.i.i, align 2, !alias.scope !3463, !noalias !3416
  store i16 %i.dm, ptr %i.de, align 2, !alias.scope !3416, !noalias !3463
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.dn
  %i.dp = xor i1 %i.dl, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.db, %._crit_edge.i.i ], [ %i.dr, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dd, %._crit_edge.i.i ], [ %i.do, %bb.k ]
  %i.ds = icmp ne ptr %.sroa.06.1.i.i, %i.cs
  %i.dt = icmp ne ptr %.sroa.011.1.i.i, %i.ct
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd61fa2c7680c788cE.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n, !noalias !3464

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = shl nuw nsw i64 %.sroa.17.0.lcssa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph.lcssa121, ptr nonnull align 2 %2, i64 %i.dv, i1 false), !alias.scope !3464, !noalias !3465
  resume { ptr, i32 } %i.du

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %.sroa.08.09.i
  %.idx = shl nuw nsw i64 %.sroa.08.09.i, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.dy = load i16, ptr %i.dw, align 2, !alias.scope !3416, !noalias !3419 ; 4 uses
  store i16 %i.dy, ptr %i.dx, align 2, !alias.scope !3419, !noalias !3416
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -2 ; 2 uses
  %.val10.i47.i = load i16, ptr %i.dz, align 2, !alias.scope !3435, !noalias !3438, !noundef !4 ; 2 uses
  %i.ea = icmp ult i16 %i.dy, %.val10.i47.i
  br i1 %i.ea, label %.preheader.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i16 %.val10.i47.i, ptr %i.dx, align 2, !alias.scope !3419, !noalias !3416
  %i.eb = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.eb, label %._crit_edge306, label %.lr.ph305

.preheader.i:                                     ; preds = %.lr.ph305
  store i16 %.val8.i49.i, ptr %.sroa.0.0.i48.i304, align 2, !alias.scope !3419, !noalias !3416
  %i.ec = icmp eq ptr %i.ed, %2
  br i1 %i.ec, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i48.i304 = phi ptr [ %i.ed, %.preheader.i ], [ %i.dz, %.preheader.i.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.0.i48.i304, i64 -2 ; 3 uses
  %.val8.i49.i = load i16, ptr %i.ed, align 2, !alias.scope !3435, !noalias !3438, !noundef !4 ; 2 uses
  %i.ee = icmp ult i16 %i.dy, %.val8.i49.i
  br i1 %i.ee, label %.preheader.i, label %._crit_edge306

._crit_edge306:                                   ; preds = %.preheader.i, %.lr.ph305, %.preheader.i.preheader
  %.sroa.0.0.i48.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i48.i304, %.lr.ph305 ]
  store i16 %i.dy, ptr %.sroa.0.0.i48.lcssa.i, align 2, !alias.scope !3419, !noalias !3440
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0606b715514f7c40E.exit.i: ; preds = %._crit_edge306, %.lr.ph.i
  %i.ef = icmp ult i64 %.sroa.08.110.i, %i.j      ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.eg
  br i1 %i.ef, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0124.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph130, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17h5fc3b1ca0c4bac2cE(ptr noalias noundef nonnull align 2 %.sroa.0.0.ph131, i64 noundef %.sroa.17.0124.lcssa, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd61fa2c7680c788cE.exit

.lr.ph300:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0123299 = phi i32 [ %i.eh, %bb.b ], [ %.sroa.027.0.ph129, %.lr.ph ]
  %.sroa.17.0124298 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph130, %.lr.ph ] ; 20 uses
  %i.eh = add i32 %.sroa.027.0123299, -1          ; 4 uses
  %i.ei = lshr i64 %.sroa.17.0124298, 3           ; 2 uses
  %.idx.i = and i64 %.sroa.17.0124298, -8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ei, 14
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx2.i ; 3 uses
  %i.el = icmp ult i64 %.sroa.17.0124298, 64
  br i1 %i.el, label %_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph300
  %i.em = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he73df08035ec556fE(ptr noundef nonnull readonly align 2 %.sroa.0.0.ph131, ptr noundef readonly %i.ej, ptr noundef readonly %i.ek, i64 noundef %i.ei)
  br label %bb.p

_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit.i: ; preds = %.lr.ph300
  %.val6.i = load i16, ptr %.sroa.0.0.ph131, align 2, !alias.scope !3470, !noalias !3475, !noundef !4 ; 2 uses
  %.val7.i = load i16, ptr %i.ej, align 2, !alias.scope !3477, !noalias !3478, !noundef !4 ; 2 uses
  %i.en = icmp ult i16 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i16, ptr %i.ek, align 2, !alias.scope !3477, !noalias !3478, !noundef !4 ; 2 uses
  %i.eo = icmp ult i16 %.val6.i, %.val5.i
  %i.ep = xor i1 %i.en, %i.eo
  %i.eq = icmp ult i16 %.val7.i, %.val5.i
  %i.er = xor i1 %i.en, %i.eq
  %..i.i = select i1 %i.er, ptr %i.ek, ptr %i.ej
  %.sroa.0.0.i.i = select i1 %i.ep, ptr %.sroa.0.0.ph131, ptr %..i.i
  br label %bb.p

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd61fa2c7680c788cE.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit.i ], [ %i.em, %bb.o ]
  %i.es = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.et = sub nuw i64 %i.es, %i.d                 ; 3 uses
  %.sroa.0.0.i43 = lshr exact i64 %i.et, 1        ; 3 uses
  %i.eu = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0124298
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.et
  %i.ew = load i16, ptr %i.ev, align 2, !noundef !4 ; 7 uses
  store i16 %i.ew, ptr %i.b, align 2
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.030.0.val = load i16, ptr %.sroa.030.0.ph128, align 2, !alias.scope !1883, !noalias !1886, !noundef !4
  %.not85 = icmp ult i16 %.sroa.030.0.val, %i.ew
  br i1 %.not85, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  %.not86 = icmp ult i64 %3, %.sroa.17.0124298
  br i1 %.not86, label %bb.s, label %bb.r, !prof !19

bb.r:                                             ; preds = %.critedge
  %i.ex = getelementptr [2 x i8], ptr %2, i64 %.sroa.17.0124298 ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.43.0.i = phi ptr [ %i.ex, %bb.r ], [ %i.gk, %bb.u ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph131, %bb.r ], [ %i.gn, %bb.u ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.r ], [ %.sroa.17.0124298, %bb.u ] ; 3 uses
  %i.ey = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph131, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %.sroa.9.0.i, %i.ez
  br i1 %i.fa, label %.lr.ph.i45, label %._crit_edge.i

.lr.ph.i45:                                       ; preds = %bb.t, %.lr.ph.i45
  %.sroa.9.131.i = phi ptr [ %i.fy, %.lr.ph.i45 ], [ %.sroa.9.0.i, %bb.t ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.fx, %.lr.ph.i45 ], [ %.sroa.27.0.i, %bb.t ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.fu, %.lr.ph.i45 ], [ %.sroa.43.0.i, %bb.t ] ; 4 uses
  %.val35.i = load i16, ptr %.sroa.9.131.i, align 2, !alias.scope !3484, !noalias !3487, !noundef !4 ; 2 uses
  %i.fb = icmp ult i16 %.val35.i, %i.ew           ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -2
  %.sroa.01.0.i.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i16 %.val35.i, ptr %i.fd, align 2, !alias.scope !3482, !noalias !3489
  %i.fe = zext i1 %i.fb to i64
  %i.ff = add i64 %.sroa.27.130.i, %i.fe          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 2
  %.val33.i = load i16, ptr %i.fg, align 2, !alias.scope !3484, !noalias !3487, !noundef !4 ; 2 uses
  %i.fh = icmp ult i16 %.val33.i, %i.ew           ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -4
  %.sroa.01.0.i37.i = select i1 %i.fh, ptr %2, ptr %i.fi
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i37.i, i64 %i.ff
  store i16 %.val33.i, ptr %i.fj, align 2, !alias.scope !3482, !noalias !3492
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %i.ff, %i.fk                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 4
  %.val31.i = load i16, ptr %i.fm, align 2, !alias.scope !3484, !noalias !3487, !noundef !4 ; 2 uses
  %i.fn = icmp ult i16 %.val31.i, %i.ew           ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -6
  %.sroa.01.0.i38.i = select i1 %i.fn, ptr %2, ptr %i.fo
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i38.i, i64 %i.fl
  store i16 %.val31.i, ptr %i.fp, align 2, !alias.scope !3482, !noalias !3495
  %i.fq = zext i1 %i.fn to i64
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 6
  %.val29.i = load i16, ptr %i.fs, align 2, !alias.scope !3484, !noalias !3487, !noundef !4 ; 2 uses
  %i.ft = icmp ult i16 %.val29.i, %i.ew           ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %i.ft, ptr %2, ptr %i.fu
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i39.i, i64 %i.fr
  store i16 %.val29.i, ptr %i.fv, align 2, !alias.scope !3482, !noalias !3498
  %i.fw = zext i1 %i.ft to i64
  %i.fx = add i64 %i.fr, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.ez
  br i1 %i.fz, label %.lr.ph.i45, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i45, %bb.t
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.fu, %.lr.ph.i45 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.fx, %.lr.ph.i45 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.fy, %.lr.ph.i45 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i44 ; 2 uses
  %i.gb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ga
  br i1 %i.gb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ge, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gh, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gi, %.lr.ph38.i ] ; 2 uses
  %i.gc = icmp eq i64 %.sroa.0.0.i44, %.sroa.17.0124298
  br i1 %i.gc, label %bb.v, label %bb.u

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gi, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.gh, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.ge, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i16, ptr %.sroa.9.236.i, align 2, !alias.scope !3484, !noalias !3487, !noundef !4 ; 2 uses
  %i.gd = icmp ult i16 %.val.i, %i.ew             ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -2 ; 3 uses
  %.sroa.01.0.i40.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i40.i, i64 %.sroa.27.235.i
  store i16 %.val.i, ptr %i.gf, align 2, !alias.scope !3482, !noalias !3501
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %.sroa.27.235.i, %i.gg          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 2 ; 3 uses
  %i.gj = icmp ult ptr %i.gi, %i.ga
  br i1 %i.gj, label %.lr.ph38.i, label %._crit_edge39.i

bb.u:                                             ; preds = %._crit_edge39.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %.sroa.27.2.lcssa.i
  %i.gm = load i16, ptr %.sroa.9.2.lcssa.i, align 2, !alias.scope !3479, !noalias !3504
  store i16 %i.gm, ptr %i.gl, align 2, !alias.scope !3482, !noalias !3507
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 2
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge39.i
  %i.go = shl i64 %.sroa.27.2.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph131, ptr nonnull align 2 %2, i64 %i.go, i1 false), !alias.scope !3508
  %i.gp = sub i64 %.sroa.17.0124298, %.sroa.27.2.lcssa.i ; 9 uses
  %.not47.i = icmp eq i64 %.sroa.17.0124298, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h82c2772c7f971205E.exit, label %iter.check338

iter.check338:                                    ; preds = %bb.v
  %i.gq = getelementptr [2 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check323 = icmp ult i64 %i.gp, 4
  br i1 %min.iters.check323, label %vec.epilog.scalar.ph339.preheader, label %vector.main.loop.iter.check324

vector.main.loop.iter.check324:                   ; preds = %iter.check338
  %min.iters.check325 = icmp ult i64 %i.gp, 16
  br i1 %min.iters.check325, label %vec.epilog.ph342, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check324
  %i.gr = and i64 %i.gp, 12
  %n.vec327 = and i64 %i.gp, -16                  ; 4 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 3 uses
  %i.gs = xor i64 %index329, -1
  %i.gt = getelementptr [2 x i8], ptr %i.ex, i64 %i.gs ; 2 uses
  %i.gu = getelementptr [2 x i8], ptr %i.gq, i64 %index329 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gt, i64 -14
  %i.gw = getelementptr i8, ptr %i.gt, i64 -30
  %wide.load330 = load <8 x i16>, ptr %i.gv, align 2, !alias.scope !3482, !noalias !3479
  %wide.load331 = load <8 x i16>, ptr %i.gw, align 2, !alias.scope !3482, !noalias !3479
  %reverse332 = shufflevector <8 x i16> %wide.load330, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse333 = shufflevector <8 x i16> %wide.load331, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.gx = getelementptr i8, ptr %i.gu, i64 16
  store <8 x i16> %reverse332, ptr %i.gu, align 2, !alias.scope !3479, !noalias !3482
  store <8 x i16> %reverse333, ptr %i.gx, align 2, !alias.scope !3479, !noalias !3482
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable9quicksort9quicksort17h4165a221dceb7bd2E:bb.a
  %i.ak = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val9.i.1.i, i64 %spec.store.select.i.i.i.i15.i.1.i), !alias.scope !3627, !noalias !3617 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %spec.select.i.i.i.i16.i.1.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i16.i.1.i, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge278

._crit_edge278:                                   ; preds = %bb.j, %.lr.ph277, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i32.1.i275, %bb.j ], [ %.sroa.5.0.i.1.i274, %.lr.ph277 ] ; 3 uses
  %.sroa.0.0.i32.lcssa.1.i = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.sroa.0.0.i32.1.i275, %.lr.ph277 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !alias.scope !3620
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -104
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3622, !noalias !3631
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -96
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3622, !noalias !3631
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false), !alias.scope !3620
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.1.i: ; preds = %._crit_edge278, %.lr.ph.1.i
  %i.ap = icmp ult i64 %.sroa.08.110.1.i, %i.r    ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3636)
  %i.ar = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %i.ar
  %i.at = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.q, i64 -136
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bx, i64 136    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bw, i64 136
  %i.ax = and i64 %.sroa.17.0.lcssa, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa105, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.q, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.au, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.at, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.011.07.i.i, i64 32
  %.sroa.011.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !3639, !noalias !3617, !nonnull !4, !noundef !4
  %i.bb = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val24.i.i = load i64, ptr %i.bb, align 8, !alias.scope !3639, !noalias !3617, !noundef !4 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.06.08.i.i, i64 32
  %.sroa.06.0.val.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !3639, !noalias !3617, !nonnull !4, !noundef !4
  %i.bd = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val25.i.i = load i64, ptr %i.bd, align 8, !alias.scope !3639, !noalias !3617, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.011.0.val24.i.i, i64 %.sroa.06.0.val25.i.i)
  %i.be = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.011.0.val.i.i, ptr nonnull readonly align 1 %.sroa.06.0.val.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3640, !noalias !3644 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf ; 2 uses
  %i.bi = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bi, ptr %.sroa.06.08.i.i, ptr %.sroa.011.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(136) %..i23.i.i, i64 136, i1 false), !alias.scope !3620, !noalias !3645
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.bj = getelementptr inbounds nuw [136 x i8], ptr %.sroa.011.07.i.i, i64 %spec.select.i.i.i.i.lobit.i.i ; 4 uses
  %i.bk = zext i1 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [136 x i8], ptr %.sroa.06.08.i.i, i64 %i.bk ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 136 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.017.05.i.i, i64 32
  %.sroa.017.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !3639, !noalias !3617, !nonnull !4, !noundef !4
  %i.bo = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val26.i.i = load i64, ptr %i.bo, align 8, !alias.scope !3639, !noalias !3617, !noundef !4 ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.015.06.i.i, i64 32
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !3639, !noalias !3617, !nonnull !4, !noundef !4
  %i.bq = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val27.i.i = load i64, ptr %i.bq, align 8, !alias.scope !3639, !noalias !3617, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.017.0.val26.i.i, i64 %.sroa.015.0.val27.i.i)
  %i.br = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.017.0.val.i.i, ptr nonnull readonly align 1 %.sroa.015.0.val.i.i, i64 %spec.store.select.i.i.i.i28.i.i), !alias.scope !3649, !noalias !3644 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %i.bu = sub i64 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %spec.select.i.i.i.i29.i.i = select i1 %i.bt, i64 %i.bu, i64 %i.bs ; 2 uses
  %i.bv = icmp sgt i64 %spec.select.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bv, ptr %.sroa.017.05.i.i, ptr %.sroa.015.06.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(136) %..i.i.i, i64 136, i1 false), !alias.scope !3620, !noalias !3653
  %.neg.i.i.i = sext i1 %i.bv to i64
  %i.bw = getelementptr [136 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.select.i.i.i.i29.lobit.i.i = ashr i64 %spec.select.i.i.i.i29.i.i, 63
  %i.bx = getelementptr [136 x i8], ptr %.sroa.015.06.i.i, i64 %spec.select.i.i.i.i29.lobit.i.i ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -136
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bz = icmp ult ptr %i.bl, %i.av               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bz, ptr %i.bl, ptr %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bm, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.06.0..sroa.011.0.i.i, i64 136, i1 false), !alias.scope !3620
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [136 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = xor i1 %i.bz, true
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [136 x i8], ptr %i.bj, i64 %i.cd
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.ce, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.bl, %._crit_edge.i.i ], [ %i.cb, %bb.k ]
  %i.cf = icmp ne ptr %.sroa.06.1.i.i, %i.av
  %i.cg = icmp ne ptr %.sroa.011.1.i.i, %i.aw
  %or.cond.i.i = select i1 %i.cf, i1 true, i1 %i.cg, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h557f99020919cc24E.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n, !noalias !3617

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = mul nuw nsw i64 %.sroa.17.0.lcssa, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr nonnull align 8 %2, i64 %i.ci, i1 false), !alias.scope !3620, !noalias !3657
  resume { ptr, i32 } %i.ch

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %.sroa.08.09.i ; 3 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 136
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ck, ptr noundef nonnull align 8 dereferenceable(136) %i.cj, i64 136, i1 false), !alias.scope !3620
  %i.cl = getelementptr i8, ptr %i.ck, i64 32
  %.val11.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !3622, !noalias !3617, !nonnull !4, !noundef !4 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 40
  %.val12.i.i = load i64, ptr %i.cm, align 8, !alias.scope !3622, !noalias !3617, !noundef !4 ; 5 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 -104
  %.val13.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !3622, !noalias !3617, !nonnull !4, !noundef !4
  %i.co = getelementptr i8, ptr %i.ck, i64 -96
  %.val14.i.i = load i64, ptr %i.co, align 8, !alias.scope !3622, !noalias !3617, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i30.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.cp = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val13.i.i, i64 %spec.store.select.i.i.i.i.i30.i), !alias.scope !3623, !noalias !3617 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i31.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq
  %i.ct = icmp slt i64 %spec.select.i.i.i.i.i31.i, 0
  br i1 %i.ct, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.0.0.i32.i262 = getelementptr inbounds i8, ptr %i.ck, i64 -136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ck, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0.i32.i262, i64 136, i1 false), !alias.scope !3622, !noalias !3617
  %i.cv = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.cv, label %._crit_edge267, label %.lr.ph266

bb.p:                                             ; preds = %.lr.ph266
  %.sroa.0.0.i32.i = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i264, i64 -136 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0.i32.i264, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0.i32.i, i64 136, i1 false), !alias.scope !3622, !noalias !3617
  %i.cw = icmp eq ptr %.sroa.0.0.i32.i, %2
  br i1 %i.cw, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i32.i264 = phi ptr [ %.sroa.0.0.i32.i, %bb.p ], [ %.sroa.0.0.i32.i262, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i263 = phi ptr [ %.sroa.0.0.i32.i264, %bb.p ], [ %i.ck, %bb.o ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.5.0.i.i263, i64 -240
  %.val9.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !3622, !noalias !3617, !nonnull !4, !noundef !4
  %i.cy = getelementptr i8, ptr %.sroa.5.0.i.i263, i64 -232
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !3622, !noalias !3617, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.cz = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val9.i.i, i64 %spec.store.select.i.i.i.i15.i.i), !alias.scope !3627, !noalias !3617 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = sub i64 %.val12.i.i, %.val10.i.i
  %spec.select.i.i.i.i16.i.i = select i1 %i.db, i64 %i.dc, i64 %i.da
  %i.dd = icmp slt i64 %spec.select.i.i.i.i16.i.i, 0
  br i1 %i.dd, label %bb.p, label %._crit_edge267

._crit_edge267:                                   ; preds = %bb.p, %.lr.ph266, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ck, %bb.o ], [ %.sroa.0.0.i32.i264, %bb.p ], [ %.sroa.5.0.i.i263, %.lr.ph266 ] ; 3 uses
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i32.i264, %.lr.ph266 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false), !alias.scope !3620
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -104
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3622, !noalias !3631
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -96
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3622, !noalias !3631
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.cu, i64 88, i1 false), !alias.scope !3620
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcb8bd1d5ede62798E.exit.i: ; preds = %._crit_edge267, %.lr.ph.i
  %i.de = icmp ult i64 %.sroa.08.110.i, %i.n      ; 2 uses
  %i.df = zext i1 %i.de to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.df
  br i1 %i.de, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0107.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph113, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17h16f627ad282f5aadE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph114, i64 noundef %.sroa.17.0107.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h557f99020919cc24E.exit

.lr.ph258:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0106257 = phi i32 [ %i.dg, %bb.b ], [ %.sroa.027.0.ph112, %.lr.ph ]
  %.sroa.17.0107256 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph113, %.lr.ph ] ; 21 uses
  %i.dg = add i32 %.sroa.027.0106257, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %i.dh = lshr i64 %.sroa.17.0107256, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dh, 544
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.dh, 952
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx2.i ; 4 uses
  %i.dk = icmp ult i64 %.sroa.17.0107256, 64
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph258
  %i.dl = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd66019edf9f64805E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph114, ptr noundef readonly %i.di, ptr noundef readonly %i.dj, i64 noundef %i.dh)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph258
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !3662, !nonnull !4, !noundef !4 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !3662, !noundef !4 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 32
  %.val12.i = load ptr, ptr %i.dm, align 8, !alias.scope !3662, !nonnull !4, !noundef !4 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.di, i64 40
  %.val13.i = load i64, ptr %i.dn, align 8, !alias.scope !3662, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.do = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !3665, !noalias !3662 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %i.dr = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i = select i1 %i.dq, i64 %i.dr, i64 %i.dp ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dj, i64 32
  %.val8.i = load ptr, ptr %i.ds, align 8, !alias.scope !3662, !nonnull !4, !noundef !4 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dj, i64 40
  %.val9.i = load i64, ptr %i.dt, align 8, !alias.scope !3662, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.du = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %spec.store.select.i.i.i.i14.i), !alias.scope !3669, !noalias !3662 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %i.dx = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i15.i = select i1 %i.dw, i64 %i.dx, i64 %i.dv
  %i.dy = xor i64 %spec.select.i.i.i.i15.i, %spec.select.i.i.i.i.i
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.store.select.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ea = call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %spec.store.select.i.i.i.i16.i), !alias.scope !3673, !noalias !3662 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp eq i32 %i.ea, 0
  %i.ed = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i17.i = select i1 %i.ec, i64 %i.ed, i64 %i.eb
  %i.ee = xor i64 %spec.select.i.i.i.i17.i, %spec.select.i.i.i.i.i
  %i.ef = icmp slt i64 %i.ee, 0
  %..i.i = select i1 %i.ef, ptr %i.dj, ptr %i.di
  br label %bb.t

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h557f99020919cc24E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dl, %bb.q ], [ %.sroa.0.0.ph114, %bb.r ], [ %..i.i, %bb.s ]
  %i.eg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eh = sub nuw i64 %i.eg, %i.f                 ; 2 uses
  %.sroa.0.0.i45 = udiv exact i64 %i.eh, 136      ; 3 uses
  %i.ei = icmp ult i64 %.sroa.0.0.i45, %.sroa.17.0107256
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %i.eh ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.ej, i64 136, i1 false)
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.030.0.val = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %.sroa.030.0.val43 = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 32
  %.val = load ptr, ptr %i.ek, align 8, !nonnull !4, !noundef !4
  %i.el = getelementptr i8, ptr %i.ej, i64 40
  %.val44 = load i64, ptr %i.el, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.030.0.val43, i64 %.val44)
  %i.em = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.030.0.val, ptr nonnull readonly align 1 %.val, i64 %spec.store.select.i.i.i.i), !alias.scope !3677 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp eq i32 %i.em, 0
  %i.ep = sub i64 %.sroa.030.0.val43, %.val44
  %spec.select.i.i.i.i = select i1 %i.eo, i64 %i.ep, i64 %i.en
  %i.eq = icmp sgt i64 %spec.select.i.i.i.i, -1
  br i1 %i.eq, label %.critedge42, label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  %.not76 = icmp ult i64 %3, %.sroa.17.0107256
  br i1 %.not76, label %bb.w, label %bb.v, !prof !19

bb.v:                                             ; preds = %.critedge
  %i.er = getelementptr [136 x i8], ptr %2, i64 %.sroa.17.0107256 ; 4 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 32
  %i.et = getelementptr i8, ptr %i.ej, i64 40
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.v
  %.sroa.19.0.i = phi ptr [ %i.er, %bb.v ], [ %i.fj, %bb.y ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.11.1.lcssa.i, %bb.y ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph114, %bb.v ], [ %i.fl, %bb.y ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i45, %bb.v ], [ %.sroa.17.0107256, %bb.y ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i46 ; 2 uses
  %i.ev = icmp ult ptr %.sroa.5.0.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i47, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i47, %bb.x
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.x ], [ %i.fe, %.lr.ph.i47 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.x ], [ %i.fg, %.lr.ph.i47 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.x ], [ %i.fh, %.lr.ph.i47 ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.0.0.i46, %.sroa.17.0107256
  br i1 %i.ew, label %bb.z, label %bb.y

.lr.ph.i47:                                       ; preds = %bb.x, %.lr.ph.i47
  %.sroa.5.111.i = phi ptr [ %i.fh, %.lr.ph.i47 ], [ %.sroa.5.0.i, %bb.x ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.fg, %.lr.ph.i47 ], [ %.sroa.11.0.i, %bb.x ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.fe, %.lr.ph.i47 ], [ %.sroa.19.0.i, %bb.x ]
  %i.ex = getelementptr i8, ptr %.sroa.5.111.i, i64 32
  %.val.i = load ptr, ptr %i.ex, align 8, !alias.scope !3681, !noalias !3684, !nonnull !4, !noundef !4
  %i.ey = getelementptr i8, ptr %.sroa.5.111.i, i64 40
  %.val25.i = load i64, ptr %i.ey, align 8, !alias.scope !3681, !noalias !3684, !noundef !4 ; 2 uses
  %.val26.i = load ptr, ptr %i.es, align 8, !alias.scope !3681, !noalias !3684, !nonnull !4, !noundef !4
  %.val27.i = load i64, ptr %i.et, align 8, !alias.scope !3681, !noalias !3684, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i48 = call i64 @llvm.umin.i64(i64 %.val25.i, i64 %.val27.i)
  %i.ez = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val26.i, i64 %spec.store.select.i.i.i.i.i48), !alias.scope !3686, !noalias !3690 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp eq i32 %i.ez, 0
  %i.fc = sub i64 %.val25.i, %.val27.i
  %spec.select.i.i.i.i.i49 = select i1 %i.fb, i64 %i.fc, i64 %i.fa ; 2 uses
  %i.fd = icmp slt i64 %spec.select.i.i.i.i.i49, 0
  %i.fe = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -136 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fd, ptr %2, ptr %i.fe
  %i.ff = getelementptr inbounds nuw [136 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ff, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.111.i, i64 136, i1 false), !alias.scope !3690, !noalias !3691
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i49, 63
  %i.fg = add i64 %spec.select.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 136 ; 3 uses
  %i.fi = icmp ult ptr %i.fh, %i.eu
  br i1 %i.fi, label %.lr.ph.i47, label %._crit_edge.i

bb.y:                                             ; preds = %._crit_edge.i
  %i.fj = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -136 ; 2 uses
  %i.fk = getelementptr inbounds nuw [136 x i8], ptr %i.fj, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fk, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.1.lcssa.i, i64 136, i1 false), !alias.scope !3690, !noalias !3694
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 136
  br label %bb.x

bb.z:                                             ; preds = %._crit_edge.i
  %i.fm = mul i64 %.sroa.11.1.lcssa.i, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph114, ptr nonnull align 8 %2, i64 %i.fm, i1 false), !alias.scope !3690
  %i.fn = sub i64 %.sroa.17.0107256, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.17.0107256, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h996f679ec9f67704E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fo = getelementptr [136 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fn, 1
  %i.fp = icmp eq i64 %.sroa.17.0107256, %.neg
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fn, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ft, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fq = xor i64 %.sroa.06.014.i, -1
  %i.fr = getelementptr [136 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr [136 x i8], ptr %i.fo, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fs, ptr noundef nonnull align 8 dereferenceable(136) %i.fr, i64 136, i1 false), !alias.scope !3690
  %i.ft = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fu = xor i64 %.sroa.06.014.i, -2
  %i.fv = getelementptr [136 x i8], ptr %i.er, i64 %i.fu
  %i.fw = getelementptr [136 x i8], ptr %i.fo, i64 %.sroa.06.014.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fx, ptr noundef nonnull align 8 dereferenceable(136) %i.fv, i64 136, i1 false), !alias.scope !3690
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h996f679ec9f67704E.exit.loopexit.unr-lcssa, label %bb.aa

_ZN4core5slice4sort6stable9quicksort16stable_partition17h996f679ec9f67704E.exit.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h996f679ec9f67704E.exit, label %.epil.preheader
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable9quicksort9quicksort17h593689e23a0f092aE:bb.a
  %.sroa.0.036.i.i = phi ptr [ %i.bi, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %.sroa.0.0.ph.lcssa134, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.035.i.i = phi i64 [ %i.au, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ 0, %.loopexit.1.i ]
  %.sroa.06.034.i.i = phi ptr [ %i.bh, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.033.i.i = phi ptr [ %i.bf, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %i.o, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.032.i.i = phi ptr [ %i.bt, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %i.ap, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.031.i.i = phi ptr [ %i.bs, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %i.ao, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.030.i.i = phi ptr [ %i.bu, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i" ], [ %i.an, %.loopexit.1.i ] ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.04.035.i.i, 1    ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.011.033.i.i, i64 24
  %.sroa.011.0.val24.i.i = load i32, ptr %i.av, align 8, !alias.scope !3724, !noalias !3713, !noundef !4
  %i.aw = getelementptr i8, ptr %.sroa.06.034.i.i, i64 24
  %.sroa.06.0.val25.i.i = load i32, ptr %i.aw, align 8, !alias.scope !3724, !noalias !3713, !noundef !4
  %i.ax = icmp eq i32 %.sroa.011.0.val24.i.i, 0
  %i.ay = icmp eq i32 %.sroa.06.0.val25.i.i, 0
  %i.az = zext i1 %i.ax to i8
  %.neg.i.i.i.i = sext i1 %i.ay to i8
  %i.ba = add nsw i8 %.neg.i.i.i.i, %i.az
  switch i8 %i.ba, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread8.i.i"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread8.i.i": ; preds = %.lr.ph.i.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i": ; preds = %.lr.ph.i.i
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.034.i.i, align 8, !alias.scope !3724, !noalias !3713
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.033.i.i, align 8, !alias.scope !3724, !noalias !3713
  %i.bb = icmp slt i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %cond.fr.i.i = freeze i1 %i.bb                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %.sroa.011.033.i.i, ptr %.sroa.06.034.i.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread8.i.i", %.lr.ph.i.i
  %.sroa.0.0.i.i6.i.i = phi i1 [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread8.i.i" ], [ %cond.fr.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i" ], [ true, %.lr.ph.i.i ] ; 2 uses
  %i.bc = phi ptr [ %.sroa.06.034.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread8.i.i" ], [ %spec.select.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i" ], [ %.sroa.011.033.i.i, %.lr.ph.i.i ]
  %i.bd = xor i1 %.sroa.0.0.i.i6.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.036.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !alias.scope !3718, !noalias !3727
  %i.be = zext i1 %.sroa.0.0.i.i6.i.i to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.033.i.i, i64 %i.be ; 4 uses
  %i.bg = zext i1 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.034.i.i, i64 %i.bg ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i, i64 32 ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.017.031.i.i, i64 24
  %.sroa.017.0.val26.i.i = load i32, ptr %i.bj, align 8, !alias.scope !3724, !noalias !3713, !noundef !4
  %i.bk = getelementptr i8, ptr %.sroa.015.032.i.i, i64 24
  %.sroa.015.0.val27.i.i = load i32, ptr %i.bk, align 8, !alias.scope !3724, !noalias !3713, !noundef !4
  %i.bl = icmp eq i32 %.sroa.017.0.val26.i.i, 0
  %i.bm = icmp eq i32 %.sroa.015.0.val27.i.i, 0
  %i.bn = zext i1 %i.bl to i8
  %.neg.i.i28.i.i = sext i1 %i.bm to i8
  %i.bo = add nsw i8 %.neg.i.i28.i.i, %i.bn
  switch i8 %i.bo, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.i.i"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread16.i.i"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread16.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.032.i.i, align 8, !alias.scope !3724, !noalias !3713
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.031.i.i, align 8, !alias.scope !3724, !noalias !3713
  %i.bp = icmp slt i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %cond.fr11.i.i = freeze i1 %i.bp                ; 2 uses
  %spec.select19.i.i = select i1 %cond.fr11.i.i, ptr %.sroa.015.032.i.i, ptr %.sroa.017.031.i.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.i.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread16.i.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
  %.sroa.0.0.i.i2914.i.i = phi i1 [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread16.i.i" ], [ %cond.fr11.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.i.i" ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ] ; 2 uses
  %i.bq = phi ptr [ %.sroa.017.031.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.thread16.i.i" ], [ %spec.select19.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit31.i.i" ], [ %.sroa.015.032.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ]
  %i.br = xor i1 %.sroa.0.0.i.i2914.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.030.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !alias.scope !3718, !noalias !3731
  %.neg.i.i.i = sext i1 %i.br to i64
  %i.bs = getelementptr [32 x i8], ptr %.sroa.017.031.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i2914.i.i to i64
  %i.bt = getelementptr [32 x i8], ptr %.sroa.015.032.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.019.030.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bv = icmp ult ptr %i.bh, %i.aq               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bv, ptr %i.bh, ptr %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !alias.scope !3718
  %i.bw = zext i1 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bw
  %i.by = xor i1 %i.bv, true
  %i.bz = zext i1 %i.by to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.bz
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bf, %._crit_edge.i.i ], [ %i.ca, %bb.i ]
  %.sroa.06.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.bx, %bb.i ]
  %i.cb = icmp ne ptr %.sroa.06.1.i.i, %i.aq
  %i.cc = icmp ne ptr %.sroa.011.1.i.i, %i.ar
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.cc, !prof !19
  br i1 %or.cond.i.i, label %bb.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb324a83580c8251bE.exit, !prof !19

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.l, !noalias !3713

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = shl nuw nsw i64 %.sroa.17.0.lcssa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa134, ptr nonnull align 8 %2, i64 %i.ce, i1 false), !alias.scope !3718, !noalias !3735
  resume { ptr, i32 } %i.cd

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.111.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i ], [ %.sroa.08.19.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.010.i = phi i64 [ %.sroa.08.111.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %.sroa.08.010.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.08.010.i, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !alias.scope !3718
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 24
  %.val12.i.i = load i32, ptr %i.ci, align 8, !alias.scope !3716, !noalias !3713, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 -8
  %.val14.i.i = load i32, ptr %i.cj, align 8, !alias.scope !3716, !noalias !3713, !noundef !4
  %i.ck = icmp eq i32 %.val12.i.i, 0
  %i.cl = icmp eq i32 %.val14.i.i, 0
  %i.cm = zext i1 %i.ck to i8                     ; 2 uses
  %.neg.i.i.i30.i = sext i1 %i.cl to i8
  %i.cn = add nsw i8 %.neg.i.i.i30.i, %i.cm
  switch i8 %i.cn, label %default.unreachable [
    i8 -1, label %"._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread_crit_edge.i.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i31.i"
    i8 1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i
  ]

"._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread_crit_edge.i.i": ; preds = %.lr.ph.i
  %.sroa.017.0.copyload.pre.i.i = load i64, ptr %i.cg, align 8, !alias.scope !3716, !noalias !3713
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i"

default.unreachable:                              ; preds = %bb.u, %bb.q, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i", %bb.n, %.lr.ph.i69, %.lr.ph.i51, %.lr.ph.i, %.lr.ph.i33.i, %.lr.ph.1.i, %.lr.ph.i33.1.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i", %.lr.ph.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i31.i": ; preds = %.lr.ph.i
  %.val13.i.i = load i64, ptr %i.ch, align 8, !alias.scope !3716, !noalias !3713
  %.val11.i.i = load i64, ptr %i.cg, align 8, !alias.scope !3716, !noalias !3713 ; 2 uses
  %i.co = icmp slt i64 %.val11.i.i, %.val13.i.i
  br i1 %i.co, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i", label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i31.i", %"._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread_crit_edge.i.i"
  %.sroa.017.0.copyload.i.i = phi i64 [ %.sroa.017.0.copyload.pre.i.i, %"._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread_crit_edge.i.i" ], [ %.val11.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i31.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !noalias !3716
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %.sroa.619.0.copyload.i.i = load i32, ptr %.sroa.619.0..sroa_idx.i.i, align 4, !alias.scope !3716, !noalias !3713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false), !alias.scope !3716, !noalias !3713
  %i.cq = icmp eq i64 %.sroa.08.010.i, 1
  br i1 %i.cq, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i", label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i"
  %.sroa.0.010.i.i = phi ptr [ %i.cr, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i" ], [ %i.ch, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i" ] ; 5 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -32 ; 4 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8
  %.val10.i.i = load i32, ptr %i.cs, align 8, !alias.scope !3716, !noalias !3713, !noundef !4
  %i.ct = icmp eq i32 %.val10.i.i, 0
  %.neg.i.i15.i.i = sext i1 %i.ct to i8
  %i.cu = add nsw i8 %.neg.i.i15.i.i, %i.cm
  switch i8 %i.cu, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i"
    i8 0, label %.split.i.i
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i"
  ]

.split.i.i:                                       ; preds = %.lr.ph.i33.i
  %.val9.i.i = load i64, ptr %i.cr, align 8, !alias.scope !3716, !noalias !3713
  %i.cv = icmp slt i64 %.sroa.017.0.copyload.i.i, %.val9.i.i
  br i1 %i.cv, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i", label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i": ; preds = %.split.i.i, %.lr.ph.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false), !alias.scope !3716, !noalias !3713
  %i.cw = icmp eq ptr %i.cr, %2
  br i1 %i.cw, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i", label %.lr.ph.i33.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i", %.split.i.i, %.lr.ph.i33.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i"
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ch, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i32.i" ], [ %.sroa.0.010.i.i, %.lr.ph.i33.i ], [ %.sroa.0.010.i.i, %.split.i.i ], [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.backedge.i.i" ] ; 4 uses
  store i64 %.sroa.017.0.copyload.i.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !3716, !noalias !3719
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !3719
  %.sroa.514.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 24
  store i32 %.val12.i.i, ptr %.sroa.514.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3716, !noalias !3719
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 28
  store i32 %.sroa.619.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !3716, !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5b6c1d22263faf70E.exit.i: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit18.thread.i.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i31.i", %.lr.ph.i
  %i.cx = icmp ult i64 %.sroa.08.111.i, %i.l      ; 2 uses
  %i.cy = zext i1 %i.cx to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.111.i, %i.cy
  br i1 %i.cx, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0136.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph142, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17hec9d0be5a8666350E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph143, i64 noundef %.sroa.17.0136.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb324a83580c8251bE.exit

.lr.ph345:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0135344 = phi i32 [ %i.cz, %bb.b ], [ %.sroa.027.0.ph141, %.lr.ph ]
  %.sroa.17.0136343 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph142, %.lr.ph ] ; 21 uses
  %i.cz = add i32 %.sroa.027.0135344, -1          ; 4 uses
  %i.da = lshr i64 %.sroa.17.0136343, 3           ; 3 uses
  %.idx.i45 = shl nuw nsw i64 %i.da, 7
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx.i45 ; 4 uses
  %.idx2.i = mul nuw i64 %i.da, 224
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx2.i ; 4 uses
  %i.dd = icmp ult i64 %.sroa.17.0136343, 64
  br i1 %i.dd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph345
  %i.de = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb45f3aa2d96aa57cE(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph143, ptr noundef readonly %i.db, ptr noundef readonly %i.dc, i64 noundef %i.da)
  br label %bb.t

bb.n:                                             ; preds = %.lr.ph345
  %.val10.i = load i64, ptr %.sroa.0.0.ph143, align 8, !alias.scope !3740 ; 2 uses
  %.val11.i = load i32, ptr %i.d, align 8, !alias.scope !3740, !noundef !4
  %.val12.i = load i64, ptr %i.db, align 8, !alias.scope !3740 ; 2 uses
  %i.df = getelementptr i8, ptr %i.db, i64 24
  %.val13.i = load i32, ptr %i.df, align 8, !alias.scope !3740, !noundef !4
  %i.dg = icmp eq i32 %.val11.i, 0
  %i.dh = icmp eq i32 %.val13.i, 0                ; 2 uses
  %i.di = zext i1 %i.dg to i8                     ; 2 uses
  %.neg.i.i.i47 = sext i1 %i.dh to i8
  %i.dj = add nsw i8 %.neg.i.i.i47, %i.di
  switch i8 %i.dj, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"
    i8 0, label %bb.o
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp slt i64 %.val10.i, %.val12.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"

bb.p:                                             ; preds = %bb.n
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i": ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i.i = phi i1 [ false, %bb.p ], [ %i.dk, %bb.o ], [ true, %bb.n ] ; 4 uses
  %.val8.i = load i64, ptr %i.dc, align 8, !alias.scope !3740 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 24
  %.val9.i = load i32, ptr %i.dl, align 8, !alias.scope !3740, !noundef !4
  %i.dm = icmp eq i32 %.val9.i, 0
  %.neg.i.i14.i = sext i1 %i.dm to i8             ; 2 uses
  %i.dn = add nsw i8 %.neg.i.i14.i, %i.di
  switch i8 %i.dn, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17_crit_edge.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17.i"
    i8 1, label %.split.i
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17_crit_edge.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"
  br i1 %.sroa.0.0.i.i.i, label %bb.q, label %bb.t

.split.i:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"
  br i1 %.sroa.0.0.i.i.i, label %bb.t, label %bb.q

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i"
  %i.do = icmp slt i64 %.val10.i, %.val8.i
  %i.dp = xor i1 %.sroa.0.0.i.i.i, %i.do
  br i1 %i.dp, label %bb.t, label %bb.q

bb.q:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17.i", %.split.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17_crit_edge.i"
  %i.dq = zext i1 %i.dh to i8
  %i.dr = add nsw i8 %.neg.i.i14.i, %i.dq
  switch i8 %i.dr, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i"
    i8 0, label %bb.r
    i8 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ds = icmp slt i64 %.val12.i, %.val8.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i"

bb.s:                                             ; preds = %bb.q
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i": ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.i19.i = phi i1 [ false, %bb.s ], [ %i.ds, %bb.r ], [ true, %bb.q ]
  %i.dt = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i19.i
  %..i.i = select i1 %i.dt, ptr %i.dc, ptr %i.db
  br label %bb.t

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb324a83580c8251bE.exit: ; preds = %.outer._crit_edge.thread, %bb.j, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17.i", %.split.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17_crit_edge.i", %bb.m
  %.sroa.0.0.i.sink.i = phi ptr [ %i.de, %bb.m ], [ %.sroa.0.0.ph143, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17.i" ], [ %..i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit21.i" ], [ %.sroa.0.0.ph143, %.split.i ], [ %.sroa.0.0.ph143, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit._ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit17_crit_edge.i" ]
  %i.du = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.dv = sub nuw i64 %i.du, %i.e                 ; 2 uses
  %.sroa.0.0.i46 = lshr exact i64 %i.dv, 5        ; 3 uses
  %i.dw = icmp ult i64 %.sroa.0.0.i46, %.sroa.17.0136343
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %i.dv ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 32, i1 false)
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.030.0.val43 = load i32, ptr %i.f, align 8, !noundef !4
  %i.dy = getelementptr i8, ptr %i.dx, i64 24
  %.val44 = load i32, ptr %i.dy, align 8, !noundef !4
  %i.dz = icmp eq i32 %.sroa.030.0.val43, 0
  %i.ea = icmp eq i32 %.val44, 0
  %i.eb = zext i1 %i.dz to i8
  %.neg.i.i = sext i1 %i.ea to i8
  %i.ec = add nsw i8 %.neg.i.i, %i.eb
  switch i8 %i.ec, label %default.unreachable [
    i8 -1, label %.critedge
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit"
    i8 1, label %.critedge42
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit": ; preds = %bb.u
  %.val = load i64, ptr %i.dx, align 8
  %.sroa.030.0.val = load i64, ptr %.sroa.030.0.ph140, align 8
  %.not85 = icmp slt i64 %.sroa.030.0.val, %.val
  br i1 %.not85, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.u, %bb.t, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  %.not86 = icmp ult i64 %3, %.sroa.17.0136343
  br i1 %.not86, label %bb.w, label %bb.v, !prof !19

bb.v:                                             ; preds = %.critedge
  %i.ed = getelementptr [32 x i8], ptr %2, i64 %.sroa.17.0136343 ; 4 uses
  %i.ee = getelementptr i8, ptr %i.dx, i64 24
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.z, %bb.v
  %.sroa.19.0.i = phi ptr [ %i.ed, %bb.v ], [ %i.ey, %bb.z ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.11.1.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph143, %bb.v ], [ %i.fa, %bb.z ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i46, %bb.v ], [ %.sroa.17.0136343, %bb.z ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i50 ; 2 uses
  %i.eg = icmp ult ptr %.sroa.5.0.i, %i.ef
  br i1 %i.eg, label %.lr.ph.i51, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.y, %bb.x
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.x ], [ %i.es, %bb.y ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.x ], [ %i.ev, %bb.y ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.x ], [ %i.ew, %bb.y ] ; 2 uses
  %i.eh = icmp eq i64 %.sroa.0.0.i50, %.sroa.17.0136343
  br i1 %i.eh, label %bb.aa, label %bb.z

.lr.ph.i51:                                       ; preds = %bb.x, %bb.y
  %.sroa.5.121.i = phi ptr [ %i.ew, %bb.y ], [ %.sroa.5.0.i, %bb.x ] ; 4 uses
  %.sroa.11.120.i = phi i64 [ %i.ev, %bb.y ], [ %.sroa.11.0.i, %bb.x ] ; 2 uses
  %.sroa.19.119.i = phi ptr [ %i.es, %bb.y ], [ %.sroa.19.0.i, %bb.x ] ; 3 uses
  %i.ei = getelementptr i8, ptr %.sroa.5.121.i, i64 24
  %.val25.i = load i32, ptr %i.ei, align 8, !alias.scope !3746, !noalias !3743, !noundef !4
  %.val27.i = load i32, ptr %i.ee, align 8, !alias.scope !3746, !noalias !3743, !noundef !4
  %i.ej = icmp eq i32 %.val25.i, 0
  %i.ek = icmp eq i32 %.val27.i, 0
  %i.el = zext i1 %i.ej to i8
  %.neg.i.i.i52 = sext i1 %i.ek to i8
  %i.em = add nsw i8 %.neg.i.i.i52, %i.el
  switch i8 %i.em, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i53"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread13.i"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i": ; preds = %.lr.ph.i51
  %i.en = getelementptr inbounds i8, ptr %.sroa.19.119.i, i64 -32
  br label %bb.y

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread13.i": ; preds = %.lr.ph.i51
  %i.eo = getelementptr inbounds i8, ptr %.sroa.19.119.i, i64 -32 ; 2 uses
  br label %bb.y

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i53": ; preds = %.lr.ph.i51
  %.val26.i = load i64, ptr %i.dx, align 8, !alias.scope !3746, !noalias !3743
  %.val.i = load i64, ptr %.sroa.5.121.i, align 8, !alias.scope !3746, !noalias !3743
  %i.ep = icmp slt i64 %.val.i, %.val26.i
  %cond.fr.i = freeze i1 %i.ep                    ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.19.119.i, i64 -32 ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, ptr %2, ptr %i.eq
  %i.er = zext i1 %cond.fr.i to i64
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i53", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread13.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i"
  %i.es = phi ptr [ %i.eo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread13.i" ], [ %i.eq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i53" ], [ %i.en, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i" ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable9quicksort9quicksort17h5d7b53934487d760E:bb.a
  br i1 %i.ck, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i, %bb.h
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.l
  %i.cm = getelementptr [40 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cn = icmp ult i64 %.sroa.0.0.i, %i.cj
  br i1 %i.cn, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx277 = mul nuw nsw i64 %.sroa.08.09.1.i, 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx277 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false), !alias.scope !3772
  %i.cq = getelementptr i8, ptr %i.cp, i64 24
  %.val9.i40.1.i = load i64, ptr %i.cq, align 8, !alias.scope !3770, !noalias !3767, !noundef !4 ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 -16
  %.val10.i41.1.i = load i64, ptr %i.cr, align 8, !alias.scope !3770, !noalias !3767, !noundef !4
  %i.cs = icmp slt i64 %.val9.i40.1.i, %.val10.i41.1.i
  br i1 %i.cs, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.59.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %.sroa.59.0.copyload.i.1.i = load i64, ptr %.sroa.59.0..sroa_idx.i.1.i, align 8, !alias.scope !3770, !noalias !3767
  %.sroa.0.0.i42.1.i266 = getelementptr inbounds i8, ptr %i.cp, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.1.i266, i64 40, i1 false), !alias.scope !3770, !noalias !3767
  %i.ct = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ct, label %._crit_edge271, label %.lr.ph270

bb.j:                                             ; preds = %.lr.ph270
  %.sroa.0.0.i42.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i268, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.1.i268, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.1.i, i64 40, i1 false), !alias.scope !3770, !noalias !3767
  %i.cu = icmp eq ptr %.sroa.0.0.i42.1.i, %i.cm
  br i1 %i.cu, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i42.1.i268 = phi ptr [ %.sroa.0.0.i42.1.i, %bb.j ], [ %.sroa.0.0.i42.1.i266, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i267 = phi ptr [ %.sroa.0.0.i42.1.i268, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.5.0.i.1.i267, i64 -56
  %.val8.i43.1.i = load i64, ptr %i.cv, align 8, !alias.scope !3770, !noalias !3767, !noundef !4
  %i.cw = icmp slt i64 %.val9.i40.1.i, %.val8.i43.1.i
  br i1 %i.cw, label %bb.j, label %._crit_edge271

._crit_edge271:                                   ; preds = %bb.j, %.lr.ph270, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cp, %bb.i ], [ %.sroa.0.0.i42.1.i268, %bb.j ], [ %.sroa.5.0.i.1.i267, %.lr.ph270 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.cm, %bb.i ], [ %i.cm, %bb.j ], [ %.sroa.0.0.i42.1.i268, %.lr.ph270 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i42.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !alias.scope !3772
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3770, !noalias !3773
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3770, !noalias !3773
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i: ; preds = %._crit_edge271, %.lr.ph.1.i
  %i.cx = icmp ult i64 %.sroa.08.110.1.i, %i.cj   ; 2 uses
  %i.cy = zext i1 %i.cx to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cy
  br i1 %i.cx, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.1.i, %.loopexit.i
  %i.cz = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.cz
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.cm, i64 -40
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dd = getelementptr i8, ptr %i.dw, i64 40     ; 2 uses
  %i.de = getelementptr i8, ptr %i.dv, i64 40
  %i.df = and i64 %.sroa.17.0.lcssa, 1
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa98, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.cm, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.dc, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.db, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.da, %.loopexit.1.i ] ; 2 uses
  %i.dh = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.011.07.i.i, i64 24
  %.sroa.011.0.val.i.i = load i64, ptr %i.di, align 8, !alias.scope !3778, !noalias !3767, !noundef !4
  %i.dj = getelementptr i8, ptr %.sroa.06.08.i.i, i64 24
  %.sroa.06.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !3778, !noalias !3767, !noundef !4
  %i.dk = icmp slt i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.dk, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dl = xor i1 %i.dk, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i23.i.i, i64 40, i1 false), !alias.scope !3772, !noalias !3781
  %i.dm = zext i1 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.dm ; 4 uses
  %i.do = zext i1 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.do ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.017.05.i.i, i64 24
  %.sroa.017.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !3778, !noalias !3767, !noundef !4
  %i.ds = getelementptr i8, ptr %.sroa.015.06.i.i, i64 24
  %.sroa.015.0.val.i.i = load i64, ptr %i.ds, align 8, !alias.scope !3778, !noalias !3767, !noundef !4
  %i.dt = icmp slt i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dt, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.du = xor i1 %i.dt, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !3772, !noalias !3785
  %.neg.i.i.i = sext i1 %i.du to i64
  %i.dv = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dt to i64
  %i.dw = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.dh, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dy = icmp ult ptr %i.dp, %i.dd               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dy, ptr %i.dp, ptr %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !3772
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = xor i1 %i.dy, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %i.ec
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dn, %._crit_edge.i.i ], [ %i.ed, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ea, %bb.k ]
  %i.ee = icmp ne ptr %.sroa.06.1.i.i, %i.dd
  %i.ef = icmp ne ptr %.sroa.011.1.i.i, %i.de
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha52c8d2c04cf180aE.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = mul nuw nsw i64 %.sroa.17.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa98, ptr nonnull align 8 %2, i64 %i.eh, i1 false), !alias.scope !3772, !noalias !3789
  resume { ptr, i32 } %i.eg

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 40
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %i.ei, i64 40, i1 false), !alias.scope !3772
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %.val9.i40.i = load i64, ptr %i.ek, align 8, !alias.scope !3770, !noalias !3767, !noundef !4 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -16
  %.val10.i41.i = load i64, ptr %i.el, align 8, !alias.scope !3770, !noalias !3767, !noundef !4
  %i.em = icmp slt i64 %.val9.i40.i, %.val10.i41.i
  br i1 %i.em, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3770, !noalias !3767
  %.sroa.0.0.i42.i255 = getelementptr inbounds i8, ptr %i.ej, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.i255, i64 40, i1 false), !alias.scope !3770, !noalias !3767
  %i.en = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.en, label %._crit_edge260, label %.lr.ph259

bb.p:                                             ; preds = %.lr.ph259
  %.sroa.0.0.i42.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i257, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.i257, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.i, i64 40, i1 false), !alias.scope !3770, !noalias !3767
  %i.eo = icmp eq ptr %.sroa.0.0.i42.i, %2
  br i1 %i.eo, label %._crit_edge260, label %.lr.ph259

.lr.ph259:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i42.i257 = phi ptr [ %.sroa.0.0.i42.i, %bb.p ], [ %.sroa.0.0.i42.i255, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i256 = phi ptr [ %.sroa.0.0.i42.i257, %bb.p ], [ %i.ej, %bb.o ] ; 2 uses
  %i.ep = getelementptr i8, ptr %.sroa.5.0.i.i256, i64 -56
  %.val8.i43.i = load i64, ptr %i.ep, align 8, !alias.scope !3770, !noalias !3767, !noundef !4
  %i.eq = icmp slt i64 %.val9.i40.i, %.val8.i43.i
  br i1 %i.eq, label %bb.p, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.p, %.lr.ph259, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ej, %bb.o ], [ %.sroa.0.0.i42.i257, %bb.p ], [ %.sroa.5.0.i.i256, %.lr.ph259 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i42.i257, %.lr.ph259 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i42.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !alias.scope !3772
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3770, !noalias !3773
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3770, !noalias !3773
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9206b0d87023b412E.exit.i: ; preds = %._crit_edge260, %.lr.ph.i
  %i.er = icmp ult i64 %.sroa.08.110.i, %i.l      ; 2 uses
  %i.es = zext i1 %i.er to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.es
  br i1 %i.er, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17ha6506a8452454716E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.17.0100.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha52c8d2c04cf180aE.exit

.lr.ph251:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.099250 = phi i32 [ %i.et, %bb.b ], [ %.sroa.027.0.ph105, %.lr.ph ]
  %.sroa.17.0100249 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ] ; 21 uses
  %i.et = add i32 %.sroa.027.099250, -1           ; 4 uses
  %i.eu = lshr i64 %.sroa.17.0100249, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.eu, 160
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.eu, 280
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 3 uses
  %i.ex = icmp ult i64 %.sroa.17.0100249, 64
  br i1 %i.ex, label %_ZN4core5slice4sort6shared5pivot7median317hdd17a6e3a100e0ebE.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph251
  %i.ey = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hbf5da27f7e77fa83E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef readonly %i.ev, ptr noundef readonly %i.ew, i64 noundef %i.eu)
  br label %bb.r

_ZN4core5slice4sort6shared5pivot7median317hdd17a6e3a100e0ebE.exit.i: ; preds = %.lr.ph251
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !3794, !noundef !4 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ev, i64 24
  %.val7.i = load i64, ptr %i.ez, align 8, !alias.scope !3794, !noundef !4 ; 2 uses
  %i.fa = icmp slt i64 %.val6.i, %.val7.i         ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ew, i64 24
  %.val5.i = load i64, ptr %i.fb, align 8, !alias.scope !3794, !noundef !4 ; 2 uses
  %i.fc = icmp slt i64 %.val6.i, %.val5.i
  %i.fd = xor i1 %i.fa, %i.fc
  %i.fe = icmp slt i64 %.val7.i, %.val5.i
  %i.ff = xor i1 %i.fa, %i.fe
  %..i.i = select i1 %i.ff, ptr %i.ew, ptr %i.ev
  %.sroa.0.0.i.i = select i1 %i.fd, ptr %.sroa.0.0.ph107, ptr %..i.i
  br label %bb.r

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha52c8d2c04cf180aE.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317hdd17a6e3a100e0ebE.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317hdd17a6e3a100e0ebE.exit.i ], [ %i.ey, %bb.q ]
  %i.fg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fh = sub nuw i64 %i.fg, %i.e                 ; 2 uses
  %.sroa.0.0.i43 = udiv exact i64 %i.fh, 40       ; 3 uses
  %i.fi = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0100249
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.fh ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.fj, i64 40, i1 false)
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.030.0.val = load i64, ptr %i.f, align 8, !noundef !4
  %i.fk = getelementptr i8, ptr %i.fj, i64 24
  %.val = load i64, ptr %i.fk, align 8, !noundef !4
  %.not68 = icmp slt i64 %.sroa.030.0.val, %.val
  br i1 %.not68, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !3797)
  %.not69 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not69, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %.critedge
  %i.fl = getelementptr [40 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fj, i64 24
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.19.0.i = phi ptr [ %i.fl, %bb.t ], [ %i.fy, %bb.w ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.t ], [ %.sroa.11.1.lcssa.i, %bb.w ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.t ], [ %i.ga, %bb.w ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.t ], [ %.sroa.17.0100249, %bb.w ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i44 ; 2 uses
  %i.fo = icmp ult ptr %.sroa.5.0.i, %i.fn
  br i1 %i.fo, label %.lr.ph.i45, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i45, %bb.v
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.v ], [ %i.fs, %.lr.ph.i45 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.v ], [ %i.fv, %.lr.ph.i45 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.v ], [ %i.fw, %.lr.ph.i45 ] ; 2 uses
  %i.fp = icmp eq i64 %.sroa.0.0.i44, %.sroa.17.0100249
  br i1 %i.fp, label %bb.x, label %bb.w

.lr.ph.i45:                                       ; preds = %bb.v, %.lr.ph.i45
  %.sroa.5.111.i = phi ptr [ %i.fw, %.lr.ph.i45 ], [ %.sroa.5.0.i, %bb.v ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.fv, %.lr.ph.i45 ], [ %.sroa.11.0.i, %bb.v ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.fs, %.lr.ph.i45 ], [ %.sroa.19.0.i, %bb.v ]
  %i.fq = getelementptr i8, ptr %.sroa.5.111.i, i64 24
  %.val.i = load i64, ptr %i.fq, align 8, !alias.scope !3800, !noalias !3797, !noundef !4
  %.val25.i = load i64, ptr %i.fm, align 8, !alias.scope !3800, !noalias !3797, !noundef !4
  %i.fr = icmp slt i64 %.val.i, %.val25.i         ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fr, ptr %2, ptr %i.fs
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !3802, !noalias !3803
  %i.fu = zext i1 %i.fr to i64
  %i.fv = add i64 %.sroa.11.110.i, %i.fu          ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.fx = icmp ult ptr %i.fw, %i.fn
  br i1 %i.fx, label %.lr.ph.i45, label %._crit_edge.i

bb.w:                                             ; preds = %._crit_edge.i
  %i.fy = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fy, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fz, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !3802, !noalias !3806
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.v

bb.x:                                             ; preds = %._crit_edge.i
  %i.gb = mul i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.gb, i1 false), !alias.scope !3802
  %i.gc = sub i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.x
  %i.gd = getelementptr [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.gc, 1
  %i.ge = icmp eq i64 %.sroa.17.0100249, %.neg
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.gc, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.gi, %bb.y ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.y ]
  %i.gf = xor i64 %.sroa.06.014.i, -1
  %i.gg = getelementptr [40 x i8], ptr %i.fl, i64 %i.gf
  %i.gh = getelementptr [40 x i8], ptr %i.gd, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %i.gg, i64 40, i1 false), !alias.scope !3802
  %i.gi = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.gj = xor i64 %.sroa.06.014.i, -2
  %i.gk = getelementptr [40 x i8], ptr %i.fl, i64 %i.gj
  %i.gl = getelementptr [40 x i8], ptr %i.gd, i64 %.sroa.06.014.i
  %i.gm = getelementptr i8, ptr %i.gl, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gm, ptr noundef nonnull align 8 dereferenceable(40) %i.gk, i64 40, i1 false), !alias.scope !3802
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit.loopexit.unr-lcssa, label %bb.y

_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.gi, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i64 %i.gc to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.gn = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.go = getelementptr [40 x i8], ptr %i.fl, i64 %i.gn
  %i.gp = getelementptr [40 x i8], ptr %i.gd, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, ptr noundef nonnull align 8 dereferenceable(40) %i.go, i64 40, i1 false), !alias.scope !3802
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit.loopexit.unr-lcssa, %bb.x
  %i.gq = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.gq, label %.critedge42, label %bb.z

bb.z:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit
  %.not40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.17.0100249
  br i1 %.not40, label %bb.ag, label %bb.ah, !prof !25

.critedge42:                                      ; preds = %bb.s, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h54418818cc797968E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  %.not70 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not70, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %.critedge42
  %i.gr = getelementptr [40 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  %i.gs = getelementptr i8, ptr %i.fj, i64 24
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge42
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.19.0.i48 = phi ptr [ %i.gr, %bb.aa ], [ %i.he, %bb.ad ] ; 2 uses
  %.sroa.11.0.i49 = phi i64 [ 0, %bb.aa ], [ %i.hg, %bb.ad ] ; 2 uses
  %.sroa.5.0.i50 = phi ptr [ %.sroa.0.0.ph107, %bb.aa ], [ %i.hh, %bb.ad ] ; 3 uses
  %.sroa.0.0.i51 = phi i64 [ %.sroa.0.0.i43, %bb.aa ], [ %.sroa.17.0100249, %bb.ad ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i51 ; 2 uses
  %i.gu = icmp ult ptr %.sroa.5.0.i50, %i.gt
  br i1 %i.gu, label %.lr.ph.i60, label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %.lr.ph.i60, %bb.ac
  %.sroa.19.1.lcssa.i53 = phi ptr [ %.sroa.19.0.i48, %bb.ac ], [ %i.gy, %.lr.ph.i60 ]
  %.sroa.11.1.lcssa.i54 = phi i64 [ %.sroa.11.0.i49, %bb.ac ], [ %i.hb, %.lr.ph.i60 ] ; 10 uses
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1755e8b3ef913aE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !alias.scope !3826
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.ph.lcssa98, i64 40, i1 false), !alias.scope !3826
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.j
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false), !alias.scope !3826
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.bt = sub nsw i64 %.sroa.17.0.lcssa, %i.j     ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.bu, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i, %bb.h
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.j
  %i.bw = getelementptr [40 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.bx = icmp ult i64 %.sroa.0.0.i, %i.bt
  br i1 %i.bx, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx269 = mul nuw nsw i64 %.sroa.08.09.1.i, 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx269 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false), !alias.scope !3826
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -40 ; 3 uses
  %.val9.i40.1.i = load i64, ptr %i.bz, align 8, !alias.scope !3824, !noalias !3821, !noundef !4 ; 3 uses
  %.val10.i41.1.i = load i64, ptr %i.ca, align 8, !alias.scope !3824, !noalias !3821, !noundef !4
  %i.cb = icmp slt i64 %.val9.i40.1.i, %.val10.i41.1.i
  br i1 %i.cb, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !noalias !3824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !alias.scope !3824, !noalias !3821
  %i.cd = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.cd, label %._crit_edge265, label %.lr.ph264

bb.j:                                             ; preds = %.lr.ph264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.1.i262, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !alias.scope !3824, !noalias !3821
  %i.ce = icmp eq ptr %i.cf, %i.bw
  br i1 %i.ce, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i42.1.i262 = phi ptr [ %i.cf, %bb.j ], [ %i.ca, %bb.i ] ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i262, i64 -40 ; 4 uses
  %.val8.i43.1.i = load i64, ptr %i.cf, align 8, !alias.scope !3824, !noalias !3821, !noundef !4
  %i.cg = icmp slt i64 %.val9.i40.1.i, %.val8.i43.1.i
  br i1 %i.cg, label %bb.j, label %._crit_edge265

._crit_edge265:                                   ; preds = %bb.j, %.lr.ph264, %bb.i
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.bw, %bb.i ], [ %i.bw, %bb.j ], [ %.sroa.0.0.i42.1.i262, %.lr.ph264 ] ; 2 uses
  store i64 %.val9.i40.1.i, ptr %.sroa.0.0.i42.lcssa.1.i, align 8, !alias.scope !3824, !noalias !3827
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i42.lcssa.1.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !3827
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i: ; preds = %._crit_edge265, %.lr.ph.1.i
  %i.ch = icmp ult i64 %.sroa.08.110.1.i, %i.bt   ; 2 uses
  %i.ci = zext i1 %i.ch to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.ci
  br i1 %i.ch, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.1.i, %.loopexit.i
  %i.cj = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.bw, i64 -40
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cn = getelementptr i8, ptr %i.dc, i64 40     ; 2 uses
  %i.co = getelementptr i8, ptr %i.db, i64 40
  %i.cp = and i64 %.sroa.17.0.lcssa, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa98, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.bw, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.cm, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.cl, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.ck, %.loopexit.1.i ] ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.07.i.i, align 8, !alias.scope !3832, !noalias !3821, !noundef !4
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.08.i.i, align 8, !alias.scope !3832, !noalias !3821, !noundef !4
  %i.cs = icmp slt i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.cs, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.ct = xor i1 %i.cs, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i23.i.i, i64 40, i1 false), !alias.scope !3826, !noalias !3835
  %i.cu = zext i1 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.cu ; 4 uses
  %i.cw = zext i1 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.cw ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.05.i.i, align 8, !alias.scope !3832, !noalias !3821, !noundef !4
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.06.i.i, align 8, !alias.scope !3832, !noalias !3821, !noundef !4
  %i.cz = icmp slt i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.cz, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.da = xor i1 %i.cz, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !3826, !noalias !3839
  %.neg.i.i.i = sext i1 %i.da to i64
  %i.db = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.cz to i64
  %i.dc = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.de = icmp ult ptr %i.cx, %i.cn               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.de, ptr %i.cx, ptr %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !3826
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.df
  %i.dh = xor i1 %i.de, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.di
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cv, %._crit_edge.i.i ], [ %i.dj, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.cx, %._crit_edge.i.i ], [ %i.dg, %bb.k ]
  %i.dk = icmp ne ptr %.sroa.06.1.i.i, %i.cn
  %i.dl = icmp ne ptr %.sroa.011.1.i.i, %i.co
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h26b1994d0900770dE.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n, !noalias !3821

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = mul nuw nsw i64 %.sroa.17.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa98, ptr nonnull align 8 %2, i64 %i.dn, i1 false), !alias.scope !3826, !noalias !3843
  resume { ptr, i32 } %i.dm

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 40
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, ptr noundef nonnull align 8 dereferenceable(40) %i.do, i64 40, i1 false), !alias.scope !3826
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -40 ; 3 uses
  %.val9.i40.i = load i64, ptr %i.dp, align 8, !alias.scope !3824, !noalias !3821, !noundef !4 ; 3 uses
  %.val10.i41.i = load i64, ptr %i.dq, align 8, !alias.scope !3824, !noalias !3821, !noundef !4
  %i.dr = icmp slt i64 %.val9.i40.i, %.val10.i41.i
  br i1 %i.dr, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !3824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, ptr noundef nonnull align 8 dereferenceable(40) %i.dq, i64 40, i1 false), !alias.scope !3824, !noalias !3821
  %i.dt = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.dt, label %._crit_edge258, label %.lr.ph257

bb.p:                                             ; preds = %.lr.ph257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.i255, ptr noundef nonnull align 8 dereferenceable(40) %i.dv, i64 40, i1 false), !alias.scope !3824, !noalias !3821
  %i.du = icmp eq ptr %i.dv, %2
  br i1 %i.du, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i42.i255 = phi ptr [ %i.dv, %bb.p ], [ %i.dq, %bb.o ] ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i255, i64 -40 ; 4 uses
  %.val8.i43.i = load i64, ptr %i.dv, align 8, !alias.scope !3824, !noalias !3821, !noundef !4
  %i.dw = icmp slt i64 %.val9.i40.i, %.val8.i43.i
  br i1 %i.dw, label %bb.p, label %._crit_edge258

._crit_edge258:                                   ; preds = %bb.p, %.lr.ph257, %bb.o
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i42.i255, %.lr.ph257 ] ; 2 uses
  store i64 %.val9.i40.i, ptr %.sroa.0.0.i42.lcssa.i, align 8, !alias.scope !3824, !noalias !3827
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i42.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !3827
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h7e65b665a7a55e16E.exit.i: ; preds = %._crit_edge258, %.lr.ph.i
  %i.dx = icmp ult i64 %.sroa.08.110.i, %i.j      ; 2 uses
  %i.dy = zext i1 %i.dx to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.dy
  br i1 %i.dx, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17hb65551d2b66659a5E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.17.0100.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h26b1994d0900770dE.exit

.lr.ph251:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.099250 = phi i32 [ %i.dz, %bb.b ], [ %.sroa.027.0.ph105, %.lr.ph ]
  %.sroa.17.0100249 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ] ; 21 uses
  %i.dz = add i32 %.sroa.027.099250, -1           ; 4 uses
  %i.ea = lshr i64 %.sroa.17.0100249, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ea, 160
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ea, 280
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 3 uses
  %i.ed = icmp ult i64 %.sroa.17.0100249, 64
  br i1 %i.ed, label %_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph251
  %i.ee = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he6822995b0759bf6E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef readonly %i.eb, ptr noundef readonly %i.ec, i64 noundef %i.ea)
  br label %bb.r

_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit.i: ; preds = %.lr.ph251
  %.val6.i = load i64, ptr %.sroa.0.0.ph107, align 8, !alias.scope !3848, !noundef !4 ; 2 uses
  %.val7.i = load i64, ptr %i.eb, align 8, !alias.scope !3848, !noundef !4 ; 2 uses
  %i.ef = icmp slt i64 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i64, ptr %i.ec, align 8, !alias.scope !3848, !noundef !4 ; 2 uses
  %i.eg = icmp slt i64 %.val6.i, %.val5.i
  %i.eh = xor i1 %i.ef, %i.eg
  %i.ei = icmp slt i64 %.val7.i, %.val5.i
  %i.ej = xor i1 %i.ef, %i.ei
  %..i.i = select i1 %i.ej, ptr %i.ec, ptr %i.eb
  %.sroa.0.0.i.i = select i1 %i.eh, ptr %.sroa.0.0.ph107, ptr %..i.i
  br label %bb.r

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h26b1994d0900770dE.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit.i ], [ %i.ee, %bb.q ]
  %i.ek = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.el = sub nuw i64 %i.ek, %i.d                 ; 2 uses
  %.sroa.0.0.i43 = udiv exact i64 %i.el, 40       ; 3 uses
  %i.em = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0100249
  call void @llvm.assume(i1 %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.el ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 40, i1 false)
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.030.0.val = load i64, ptr %.sroa.030.0.ph104, align 8, !noundef !4
  %.val = load i64, ptr %i.en, align 8, !noundef !4
  %.not68 = icmp slt i64 %.sroa.030.0.val, %.val
  br i1 %.not68, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  %.not69 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not69, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %.critedge
  %i.eo = getelementptr [40 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.x, %bb.t
  %.sroa.19.0.i = phi ptr [ %i.eo, %bb.t ], [ %i.ez, %bb.x ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.t ], [ %.sroa.11.1.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.t ], [ %i.fb, %bb.x ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.t ], [ %.sroa.17.0100249, %bb.x ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i44 ; 2 uses
  %i.eq = icmp ult ptr %.sroa.5.0.i, %i.ep
  br i1 %i.eq, label %.lr.ph.i45, label %._crit_edge.i

.lr.ph.i45:                                       ; preds = %bb.v
  %.val25.i = load i64, ptr %i.en, align 8, !alias.scope !3854, !noalias !3851, !noundef !4
  br label %bb.w

._crit_edge.i:                                    ; preds = %bb.w, %bb.v
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.v ], [ %i.et, %bb.w ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.v ], [ %i.ew, %bb.w ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.v ], [ %i.ex, %bb.w ] ; 2 uses
  %i.er = icmp eq i64 %.sroa.0.0.i44, %.sroa.17.0100249
  br i1 %i.er, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph.i45
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i45 ], [ %i.ex, %bb.w ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i45 ], [ %i.ew, %bb.w ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i45 ], [ %i.et, %bb.w ]
  %.val.i = load i64, ptr %.sroa.5.111.i, align 8, !alias.scope !3854, !noalias !3851, !noundef !4
  %i.es = icmp slt i64 %.val.i, %.val25.i         ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.es, ptr %2, ptr %i.et
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !3856, !noalias !3857
  %i.ev = zext i1 %i.es to i64
  %i.ew = add i64 %.sroa.11.110.i, %i.ev          ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.ey = icmp ult ptr %i.ex, %i.ep
  br i1 %i.ey, label %bb.w, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.ez = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !3856, !noalias !3860
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.v

bb.y:                                             ; preds = %._crit_edge.i
  %i.fc = mul i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.fc, i1 false), !alias.scope !3856
  %i.fd = sub i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.y
  %i.fe = getelementptr [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fd, 1
  %i.ff = icmp eq i64 %.sroa.17.0100249, %.neg
  br i1 %i.ff, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fd, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fj, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.z ]
  %i.fg = xor i64 %.sroa.06.014.i, -1
  %i.fh = getelementptr [40 x i8], ptr %i.eo, i64 %i.fg
  %i.fi = getelementptr [40 x i8], ptr %i.fe, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %i.fh, i64 40, i1 false), !alias.scope !3856
  %i.fj = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fk = xor i64 %.sroa.06.014.i, -2
  %i.fl = getelementptr [40 x i8], ptr %i.eo, i64 %i.fk
  %i.fm = getelementptr [40 x i8], ptr %i.fe, i64 %.sroa.06.014.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i64 40, i1 false), !alias.scope !3856
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit.loopexit.unr-lcssa, label %bb.z

_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fj, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod329 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod329)
  %i.fo = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.fp = getelementptr [40 x i8], ptr %i.eo, i64 %i.fo
  %i.fq = getelementptr [40 x i8], ptr %i.fe, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, ptr noundef nonnull align 8 dereferenceable(40) %i.fp, i64 40, i1 false), !alias.scope !3856
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit.loopexit.unr-lcssa, %bb.y
  %i.fr = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fr, label %.critedge42, label %bb.aa

bb.aa:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit
  %.not40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.17.0100249
  br i1 %.not40, label %bb.ai, label %bb.aj, !prof !25

.critedge42:                                      ; preds = %bb.s, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hcf08d7272294679dE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3863)
  %.not70 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not70, label %bb.ac, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %.critedge42
  %i.fs = getelementptr [40 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge42
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.19.0.i48 = phi ptr [ %i.fs, %bb.ab ], [ %i.gd, %bb.af ] ; 2 uses
  %.sroa.11.0.i49 = phi i64 [ 0, %bb.ab ], [ %i.gf, %bb.af ] ; 2 uses
  %.sroa.5.0.i50 = phi ptr [ %.sroa.0.0.ph107, %bb.ab ], [ %i.gg, %bb.af ] ; 3 uses
  %.sroa.0.0.i51 = phi i64 [ %.sroa.0.0.i43, %bb.ab ], [ %.sroa.17.0100249, %bb.af ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i51 ; 2 uses
  %i.fu = icmp ult ptr %.sroa.5.0.i50, %i.ft
  br i1 %i.fu, label %.lr.ph.i60, label %._crit_edge.i52

.lr.ph.i60:                                       ; preds = %bb.ad
  %.val25.i61 = load i64, ptr %i.en, align 8, !alias.scope !3866, !noalias !3863, !noundef !4
  br label %bb.ae

._crit_edge.i52:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.19.1.lcssa.i53 = phi ptr [ %.sroa.19.0.i48, %bb.ad ], [ %i.fx, %bb.ae ]
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable9quicksort9quicksort17h8447aa38f9c89168E:bb.a
  br i1 %i.ck, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i, %bb.h
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.l
  %i.cm = getelementptr [56 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cn = icmp ult i64 %.sroa.0.0.i, %i.cj
  br i1 %i.cn, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx277 = mul nuw nsw i64 %.sroa.08.09.1.i, 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx277 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 8 dereferenceable(56) %i.co, i64 56, i1 false), !alias.scope !3880
  %i.cq = getelementptr i8, ptr %i.cp, i64 48
  %.val9.i40.1.i = load i32, ptr %i.cq, align 8, !alias.scope !3878, !noalias !3875, !noundef !4 ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 -8
  %.val10.i41.1.i = load i32, ptr %i.cr, align 8, !alias.scope !3878, !noalias !3875, !noundef !4
  %i.cs = icmp ult i32 %.val9.i40.1.i, %.val10.i41.1.i
  br i1 %i.cs, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.59.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  %.sroa.59.0.copyload.i.1.i = load i32, ptr %.sroa.59.0..sroa_idx.i.1.i, align 4, !alias.scope !3878, !noalias !3875
  %.sroa.0.0.i42.1.i266 = getelementptr inbounds i8, ptr %i.cp, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i266, i64 56, i1 false), !alias.scope !3878, !noalias !3875
  %i.ct = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ct, label %._crit_edge271, label %.lr.ph270

bb.j:                                             ; preds = %.lr.ph270
  %.sroa.0.0.i42.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i268, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i268, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i, i64 56, i1 false), !alias.scope !3878, !noalias !3875
  %i.cu = icmp eq ptr %.sroa.0.0.i42.1.i, %i.cm
  br i1 %i.cu, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i42.1.i268 = phi ptr [ %.sroa.0.0.i42.1.i, %bb.j ], [ %.sroa.0.0.i42.1.i266, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i267 = phi ptr [ %.sroa.0.0.i42.1.i268, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.5.0.i.1.i267, i64 -64
  %.val8.i43.1.i = load i32, ptr %i.cv, align 8, !alias.scope !3878, !noalias !3875, !noundef !4
  %i.cw = icmp ult i32 %.val9.i40.1.i, %.val8.i43.1.i
  br i1 %i.cw, label %bb.j, label %._crit_edge271

._crit_edge271:                                   ; preds = %bb.j, %.lr.ph270, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cp, %bb.i ], [ %.sroa.0.0.i42.1.i268, %bb.j ], [ %.sroa.5.0.i.1.i267, %.lr.ph270 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.cm, %bb.i ], [ %i.cm, %bb.j ], [ %.sroa.0.0.i42.1.i268, %.lr.ph270 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i42.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(48) %i.co, i64 48, i1 false), !alias.scope !3880
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i32 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3878, !noalias !3881
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !3878, !noalias !3881
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i: ; preds = %._crit_edge271, %.lr.ph.1.i
  %i.cx = icmp ult i64 %.sroa.08.110.1.i, %i.cj   ; 2 uses
  %i.cy = zext i1 %i.cx to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cy
  br i1 %i.cx, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.1.i, %.loopexit.i
  %i.cz = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.da = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.cz
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.cm, i64 -56
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dd = getelementptr i8, ptr %i.dw, i64 56     ; 2 uses
  %i.de = getelementptr i8, ptr %i.dv, i64 56
  %i.df = and i64 %.sroa.17.0.lcssa, 1
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa98, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.cm, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.dc, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.db, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.da, %.loopexit.1.i ] ; 2 uses
  %i.dh = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.011.07.i.i, i64 48
  %.sroa.011.0.val.i.i = load i32, ptr %i.di, align 8, !alias.scope !3886, !noalias !3875, !noundef !4
  %i.dj = getelementptr i8, ptr %.sroa.06.08.i.i, i64 48
  %.sroa.06.0.val.i.i = load i32, ptr %i.dj, align 8, !alias.scope !3886, !noalias !3875, !noundef !4
  %i.dk = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.dk, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dl = xor i1 %i.dk, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !3880, !noalias !3889
  %i.dm = zext i1 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.07.i.i, i64 %i.dm ; 4 uses
  %i.do = zext i1 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.08.i.i, i64 %i.do ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.017.05.i.i, i64 48
  %.sroa.017.0.val.i.i = load i32, ptr %i.dr, align 8, !alias.scope !3886, !noalias !3875, !noundef !4
  %i.ds = getelementptr i8, ptr %.sroa.015.06.i.i, i64 48
  %.sroa.015.0.val.i.i = load i32, ptr %i.ds, align 8, !alias.scope !3886, !noalias !3875, !noundef !4
  %i.dt = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dt, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.du = xor i1 %i.dt, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !3880, !noalias !3893
  %.neg.i.i.i = sext i1 %i.du to i64
  %i.dv = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dt to i64
  %i.dw = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.dh, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dy = icmp ult ptr %i.dp, %i.dd               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dy, ptr %i.dp, ptr %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !3880
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.dp, i64 %i.dz
  %i.eb = xor i1 %i.dy, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %i.ec
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dn, %._crit_edge.i.i ], [ %i.ed, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ea, %bb.k ]
  %i.ee = icmp ne ptr %.sroa.06.1.i.i, %i.dd
  %i.ef = icmp ne ptr %.sroa.011.1.i.i, %i.de
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6bdba84c2bf59a94E.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = mul nuw nsw i64 %.sroa.17.0.lcssa, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa98, ptr nonnull align 8 %2, i64 %i.eh, i1 false), !alias.scope !3880, !noalias !3897
  resume { ptr, i32 } %i.eg

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 56
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %i.ei, i64 56, i1 false), !alias.scope !3880
  %i.ek = getelementptr i8, ptr %i.ej, i64 48
  %.val9.i40.i = load i32, ptr %i.ek, align 8, !alias.scope !3878, !noalias !3875, !noundef !4 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -8
  %.val10.i41.i = load i32, ptr %i.el, align 8, !alias.scope !3878, !noalias !3875, !noundef !4
  %i.em = icmp ult i32 %.val9.i40.i, %.val10.i41.i
  br i1 %i.em, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 52
  %.sroa.59.0.copyload.i.i = load i32, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !alias.scope !3878, !noalias !3875
  %.sroa.0.0.i42.i255 = getelementptr inbounds i8, ptr %i.ej, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i255, i64 56, i1 false), !alias.scope !3878, !noalias !3875
  %i.en = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.en, label %._crit_edge260, label %.lr.ph259

bb.p:                                             ; preds = %.lr.ph259
  %.sroa.0.0.i42.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i257, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i257, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i, i64 56, i1 false), !alias.scope !3878, !noalias !3875
  %i.eo = icmp eq ptr %.sroa.0.0.i42.i, %2
  br i1 %i.eo, label %._crit_edge260, label %.lr.ph259

.lr.ph259:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i42.i257 = phi ptr [ %.sroa.0.0.i42.i, %bb.p ], [ %.sroa.0.0.i42.i255, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i256 = phi ptr [ %.sroa.0.0.i42.i257, %bb.p ], [ %i.ej, %bb.o ] ; 2 uses
  %i.ep = getelementptr i8, ptr %.sroa.5.0.i.i256, i64 -64
  %.val8.i43.i = load i32, ptr %i.ep, align 8, !alias.scope !3878, !noalias !3875, !noundef !4
  %i.eq = icmp ult i32 %.val9.i40.i, %.val8.i43.i
  br i1 %i.eq, label %bb.p, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.p, %.lr.ph259, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ej, %bb.o ], [ %.sroa.0.0.i42.i257, %bb.p ], [ %.sroa.5.0.i.i256, %.lr.ph259 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i42.i257, %.lr.ph259 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i42.lcssa.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, i64 48, i1 false), !alias.scope !3880
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3878, !noalias !3881
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !3878, !noalias !3881
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit.i: ; preds = %._crit_edge260, %.lr.ph.i
  %i.er = icmp ult i64 %.sroa.08.110.i, %i.l      ; 2 uses
  %i.es = zext i1 %i.er to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.es
  br i1 %i.er, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17h05dc83366e083f86E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.17.0100.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6bdba84c2bf59a94E.exit

.lr.ph251:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.099250 = phi i32 [ %i.et, %bb.b ], [ %.sroa.027.0.ph105, %.lr.ph ]
  %.sroa.17.0100249 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph106, %.lr.ph ] ; 21 uses
  %i.et = add i32 %.sroa.027.099250, -1           ; 4 uses
  %i.eu = lshr i64 %.sroa.17.0100249, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.eu, 224
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.eu, 392
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 3 uses
  %i.ex = icmp ult i64 %.sroa.17.0100249, 64
  br i1 %i.ex, label %_ZN4core5slice4sort6shared5pivot7median317h0c29f3b32577bc13E.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph251
  %i.ey = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0028934a2ea094d1E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef readonly %i.ev, ptr noundef readonly %i.ew, i64 noundef %i.eu)
  br label %bb.r

_ZN4core5slice4sort6shared5pivot7median317h0c29f3b32577bc13E.exit.i: ; preds = %.lr.ph251
  %.val6.i = load i32, ptr %i.d, align 8, !alias.scope !3902, !noundef !4 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ev, i64 48
  %.val7.i = load i32, ptr %i.ez, align 8, !alias.scope !3902, !noundef !4 ; 2 uses
  %i.fa = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ew, i64 48
  %.val5.i = load i32, ptr %i.fb, align 8, !alias.scope !3902, !noundef !4 ; 2 uses
  %i.fc = icmp ult i32 %.val6.i, %.val5.i
  %i.fd = xor i1 %i.fa, %i.fc
  %i.fe = icmp ult i32 %.val7.i, %.val5.i
  %i.ff = xor i1 %i.fa, %i.fe
  %..i.i = select i1 %i.ff, ptr %i.ew, ptr %i.ev
  %.sroa.0.0.i.i = select i1 %i.fd, ptr %.sroa.0.0.ph107, ptr %..i.i
  br label %bb.r

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6bdba84c2bf59a94E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317h0c29f3b32577bc13E.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317h0c29f3b32577bc13E.exit.i ], [ %i.ey, %bb.q ]
  %i.fg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fh = sub nuw i64 %i.fg, %i.e                 ; 2 uses
  %.sroa.0.0.i43 = udiv exact i64 %i.fh, 56       ; 3 uses
  %i.fi = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0100249
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.fh ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.fj, i64 56, i1 false)
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.030.0.val = load i32, ptr %i.f, align 8, !noundef !4
  %i.fk = getelementptr i8, ptr %i.fj, i64 48
  %.val = load i32, ptr %i.fk, align 8, !noundef !4
  %.not68 = icmp ult i32 %.sroa.030.0.val, %.val
  br i1 %.not68, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %.not69 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not69, label %bb.u, label %bb.t, !prof !19

bb.t:                                             ; preds = %.critedge
  %i.fl = getelementptr [56 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fj, i64 48
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.19.0.i = phi ptr [ %i.fl, %bb.t ], [ %i.fy, %bb.w ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.t ], [ %.sroa.11.1.lcssa.i, %bb.w ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.t ], [ %i.ga, %bb.w ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.t ], [ %.sroa.17.0100249, %bb.w ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i44 ; 2 uses
  %i.fo = icmp ult ptr %.sroa.5.0.i, %i.fn
  br i1 %i.fo, label %.lr.ph.i45, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i45, %bb.v
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.v ], [ %i.fs, %.lr.ph.i45 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.v ], [ %i.fv, %.lr.ph.i45 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.v ], [ %i.fw, %.lr.ph.i45 ] ; 2 uses
  %i.fp = icmp eq i64 %.sroa.0.0.i44, %.sroa.17.0100249
  br i1 %i.fp, label %bb.x, label %bb.w

.lr.ph.i45:                                       ; preds = %bb.v, %.lr.ph.i45
  %.sroa.5.111.i = phi ptr [ %i.fw, %.lr.ph.i45 ], [ %.sroa.5.0.i, %bb.v ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.fv, %.lr.ph.i45 ], [ %.sroa.11.0.i, %bb.v ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.fs, %.lr.ph.i45 ], [ %.sroa.19.0.i, %bb.v ]
  %i.fq = getelementptr i8, ptr %.sroa.5.111.i, i64 48
  %.val.i = load i32, ptr %i.fq, align 8, !alias.scope !3908, !noalias !3905, !noundef !4
  %.val25.i = load i32, ptr %i.fm, align 8, !alias.scope !3908, !noalias !3905, !noundef !4
  %i.fr = icmp ult i32 %.val.i, %.val25.i         ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -56 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fr, ptr %2, ptr %i.fs
  %i.ft = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ft, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.111.i, i64 56, i1 false), !alias.scope !3910, !noalias !3911
  %i.fu = zext i1 %i.fr to i64
  %i.fv = add i64 %.sroa.11.110.i, %i.fu          ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 56 ; 3 uses
  %i.fx = icmp ult ptr %i.fw, %i.fn
  br i1 %i.fx, label %.lr.ph.i45, label %._crit_edge.i

bb.w:                                             ; preds = %._crit_edge.i
  %i.fy = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56 ; 2 uses
  %i.fz = getelementptr inbounds nuw [56 x i8], ptr %i.fy, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !alias.scope !3910, !noalias !3914
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56
  br label %bb.v

bb.x:                                             ; preds = %._crit_edge.i
  %i.gb = mul i64 %.sroa.11.1.lcssa.i, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.gb, i1 false), !alias.scope !3910
  %i.gc = sub i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.17.0100249, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.x
  %i.gd = getelementptr [56 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.gc, 1
  %i.ge = icmp eq i64 %.sroa.17.0100249, %.neg
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.gc, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.gi, %bb.y ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.y ]
  %i.gf = xor i64 %.sroa.06.014.i, -1
  %i.gg = getelementptr [56 x i8], ptr %i.fl, i64 %i.gf
  %i.gh = getelementptr [56 x i8], ptr %i.gd, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, ptr noundef nonnull align 8 dereferenceable(56) %i.gg, i64 56, i1 false), !alias.scope !3910
  %i.gi = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.gj = xor i64 %.sroa.06.014.i, -2
  %i.gk = getelementptr [56 x i8], ptr %i.fl, i64 %i.gj
  %i.gl = getelementptr [56 x i8], ptr %i.gd, i64 %.sroa.06.014.i
  %i.gm = getelementptr i8, ptr %i.gl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gm, ptr noundef nonnull align 8 dereferenceable(56) %i.gk, i64 56, i1 false), !alias.scope !3910
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit.loopexit.unr-lcssa, label %bb.y

_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.gi, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i64 %i.gc to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.gn = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.go = getelementptr [56 x i8], ptr %i.fl, i64 %i.gn
  %i.gp = getelementptr [56 x i8], ptr %i.gd, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gp, ptr noundef nonnull align 8 dereferenceable(56) %i.go, i64 56, i1 false), !alias.scope !3910
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit.loopexit.unr-lcssa, %bb.x
  %i.gq = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.gq, label %.critedge42, label %bb.z

bb.z:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit
  %.not40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.17.0100249
  br i1 %.not40, label %bb.ag, label %bb.ah, !prof !25

.critedge42:                                      ; preds = %bb.s, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h3e31228ca24d83c4E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3917)
  %.not70 = icmp ult i64 %3, %.sroa.17.0100249
  br i1 %.not70, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %.critedge42
  %i.gr = getelementptr [56 x i8], ptr %2, i64 %.sroa.17.0100249 ; 4 uses
  %i.gs = getelementptr i8, ptr %i.fj, i64 48
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge42
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.19.0.i48 = phi ptr [ %i.gr, %bb.aa ], [ %i.he, %bb.ad ] ; 2 uses
  %.sroa.11.0.i49 = phi i64 [ 0, %bb.aa ], [ %i.hg, %bb.ad ] ; 2 uses
  %.sroa.5.0.i50 = phi ptr [ %.sroa.0.0.ph107, %bb.aa ], [ %i.hh, %bb.ad ] ; 3 uses
  %.sroa.0.0.i51 = phi i64 [ %.sroa.0.0.i43, %bb.aa ], [ %.sroa.17.0100249, %bb.ad ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i51 ; 2 uses
  %i.gu = icmp ult ptr %.sroa.5.0.i50, %i.gt
  br i1 %i.gu, label %.lr.ph.i60, label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %.lr.ph.i60, %bb.ac
  %.sroa.19.1.lcssa.i53 = phi ptr [ %.sroa.19.0.i48, %bb.ac ], [ %i.gy, %.lr.ph.i60 ]
  %.sroa.11.1.lcssa.i54 = phi i64 [ %.sroa.11.0.i49, %bb.ac ], [ %i.hb, %.lr.ph.i60 ] ; 10 uses
end_hunk_6
begin_hunk_7_@_ZN4core5slice4sort6stable9quicksort9quicksort17h8a6878e8cf5dd85dE:bb.a

bb.i:                                             ; preds = %bb.f
  %i.cf = load i64, ptr %.sroa.0.0.ph.lcssa122, align 4, !alias.scope !3929, !noalias !3932
  store i64 %i.cf, ptr %2, align 4, !alias.scope !3932, !noalias !3929
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa122, i64 %i.k
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.ci = load i64, ptr %i.cg, align 4, !alias.scope !3929, !noalias !3932
  store i64 %i.ci, ptr %i.ch, align 4, !alias.scope !3932, !noalias !3929
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.cj = sub nsw i64 %.sroa.17.0.lcssa, %i.k     ; 2 uses
  %i.ck = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.ck, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i, %bb.j
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa122, i64 %i.k
  %i.cm = getelementptr [8 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.cn = icmp ult i64 %.sroa.0.0.i, %i.cj
  br i1 %i.cn, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.08.09.1.i
  %.idx329 = shl nuw nsw i64 %.sroa.08.09.1.i, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx329 ; 3 uses
  %i.cq = load i64, ptr %i.co, align 4, !alias.scope !3929, !noalias !3932 ; 3 uses
  store i64 %i.cq, ptr %i.cp, align 4, !alias.scope !3932, !noalias !3929
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 3 uses
  %i.cs = trunc i64 %i.cq to i8                   ; 2 uses
  %.val10.i41.1.i = load i8, ptr %i.cr, align 4, !alias.scope !3932, !noalias !3929, !noundef !4
  %i.ct = icmp ugt i8 %.val10.i41.1.i, %i.cs
  br i1 %i.ct, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cu = load i64, ptr %i.cr, align 4, !alias.scope !3932, !noalias !3929
  store i64 %i.cu, ptr %i.cp, align 4, !alias.scope !3932, !noalias !3929
  %i.cv = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.cv, label %._crit_edge310, label %.lr.ph309

.preheader:                                       ; preds = %.lr.ph309
  %i.cw = load i64, ptr %i.cy, align 4, !alias.scope !3932, !noalias !3929
  store i64 %i.cw, ptr %.sroa.0.0.i42.1.i308, align 4, !alias.scope !3932, !noalias !3929
  %i.cx = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cx, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i42.1.i308 = phi ptr [ %i.cy, %.preheader ], [ %i.cr, %.preheader.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i308, i64 -8 ; 4 uses
  %.val8.i43.1.i = load i8, ptr %i.cy, align 4, !alias.scope !3932, !noalias !3929, !noundef !4
  %i.cz = icmp ugt i8 %.val8.i43.1.i, %i.cs
  br i1 %i.cz, label %.preheader, label %._crit_edge310

._crit_edge310:                                   ; preds = %.preheader, %.lr.ph309, %.preheader.preheader
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.cm, %.preheader.preheader ], [ %i.cm, %.preheader ], [ %.sroa.0.0.i42.1.i308, %.lr.ph309 ]
  %.sroa.0.sroa.0.0.insert.insert.i.1.i = and i64 %i.cq, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.1.i, ptr %.sroa.0.0.i42.lcssa.1.i, align 4, !alias.scope !3932, !noalias !3934
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i: ; preds = %._crit_edge310, %.lr.ph.1.i
  %i.da = icmp ult i64 %.sroa.08.110.1.i, %i.cj   ; 2 uses
  %i.db = zext i1 %i.da to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.db
  br i1 %i.da, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  %i.dc = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa122, i64 %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.cm, i64 -8
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dw, i64 8
  %i.di = and i64 %.sroa.17.0.lcssa, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa122, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %i.cm, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.de, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dd, %.loopexit.1.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i8, ptr %.sroa.011.07.i.i, align 4, !alias.scope !3942, !noalias !3929, !noundef !4
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.08.i.i, align 4, !alias.scope !3942, !noalias !3929, !noundef !4
  %i.dl = icmp ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.dl, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dm = xor i1 %i.dl, true
  %i.dn = load i64, ptr %..i23.i.i, align 4, !alias.scope !3942, !noalias !3943
  store i64 %i.dn, ptr %.sroa.0.010.i.i, align 4, !alias.scope !3929, !noalias !3947
  %i.do = zext i1 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.do ; 4 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.dq ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i8, ptr %.sroa.017.05.i.i, align 4, !alias.scope !3942, !noalias !3929, !noundef !4
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.06.i.i, align 4, !alias.scope !3942, !noalias !3929, !noundef !4
  %i.dt = icmp ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dt, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.du = xor i1 %i.dt, true
  %i.dv = load i64, ptr %..i.i.i, align 4, !alias.scope !3942, !noalias !3948
  store i64 %i.dv, ptr %.sroa.019.04.i.i, align 4, !alias.scope !3929, !noalias !3952
  %.neg.i.i.i = sext i1 %i.du to i64
  %i.dw = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dt to i64
  %i.dx = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dz = icmp ult ptr %i.dr, %i.dg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dz, ptr %i.dr, ptr %i.dp
  %i.ea = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !3942, !noalias !3929
  store i64 %i.ea, ptr %i.ds, align 4, !alias.scope !3929, !noalias !3942
  %i.eb = zext i1 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eb
  %i.ed = xor i1 %i.dz, true
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ee
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dp, %._crit_edge.i.i ], [ %i.ef, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dr, %._crit_edge.i.i ], [ %i.ec, %bb.k ]
  %i.eg = icmp ne ptr %.sroa.06.1.i.i, %i.dg
  %i.eh = icmp ne ptr %.sroa.011.1.i.i, %i.dh
  %or.cond.i.i = select i1 %i.eg, i1 true, i1 %i.eh, !prof !19
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17heb70b5be454b13c5E.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.n, !noalias !3929

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = shl nuw nsw i64 %.sroa.17.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa122, ptr nonnull align 4 %2, i64 %i.ej, i1 false), !alias.scope !3953, !noalias !3954
  resume { ptr, i32 } %i.ei

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa122, i64 %.sroa.08.09.i
  %.idx = shl nuw nsw i64 %.sroa.08.09.i, 3
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.em = load i64, ptr %i.ek, align 4, !alias.scope !3929, !noalias !3932 ; 3 uses
  store i64 %i.em, ptr %i.el, align 4, !alias.scope !3932, !noalias !3929
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 3 uses
  %i.eo = trunc i64 %i.em to i8                   ; 2 uses
  %.val10.i41.i = load i8, ptr %i.en, align 4, !alias.scope !3932, !noalias !3929, !noundef !4
  %i.ep = icmp ugt i8 %.val10.i41.i, %i.eo
  br i1 %i.ep, label %.preheader88.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i

.preheader88.preheader:                           ; preds = %.lr.ph.i
  %i.eq = load i64, ptr %i.en, align 4, !alias.scope !3932, !noalias !3929
  store i64 %i.eq, ptr %i.el, align 4, !alias.scope !3932, !noalias !3929
  %i.er = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.er, label %._crit_edge305, label %.lr.ph304

.preheader88:                                     ; preds = %.lr.ph304
  %i.es = load i64, ptr %i.eu, align 4, !alias.scope !3932, !noalias !3929
  store i64 %i.es, ptr %.sroa.0.0.i42.i303, align 4, !alias.scope !3932, !noalias !3929
  %i.et = icmp eq ptr %i.eu, %2
  br i1 %i.et, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.preheader88.preheader, %.preheader88
  %.sroa.0.0.i42.i303 = phi ptr [ %i.eu, %.preheader88 ], [ %i.en, %.preheader88.preheader ] ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i303, i64 -8 ; 4 uses
  %.val8.i43.i = load i8, ptr %i.eu, align 4, !alias.scope !3932, !noalias !3929, !noundef !4
  %i.ev = icmp ugt i8 %.val8.i43.i, %i.eo
  br i1 %i.ev, label %.preheader88, label %._crit_edge305

._crit_edge305:                                   ; preds = %.preheader88, %.lr.ph304, %.preheader88.preheader
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %2, %.preheader88.preheader ], [ %2, %.preheader88 ], [ %.sroa.0.0.i42.i303, %.lr.ph304 ]
  %.sroa.0.sroa.0.0.insert.insert.i.i = and i64 %i.em, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %.sroa.0.0.i42.lcssa.i, align 4, !alias.scope !3932, !noalias !3934
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4555c6640cb17a13E.exit.i: ; preds = %._crit_edge305, %.lr.ph.i
  %i.ew = icmp ult i64 %.sroa.08.110.i, %i.k      ; 2 uses
  %i.ex = zext i1 %i.ew to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.ex
  br i1 %i.ew, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0124.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph130, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17hcdb394ae7d3963e7E(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph131, i64 noundef %.sroa.17.0124.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17heb70b5be454b13c5E.exit

.lr.ph299:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0123298 = phi i32 [ %i.ey, %bb.b ], [ %.sroa.027.0.ph129, %.lr.ph ]
  %.sroa.17.0124297 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.17.0.ph130, %.lr.ph ] ; 19 uses
  %i.ey = add i32 %.sroa.027.0123298, -1          ; 4 uses
  %i.ez = lshr i64 %.sroa.17.0124297, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ez, 5
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.ez, 56
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx2.i ; 3 uses
  %i.fc = icmp ult i64 %.sroa.17.0124297, 64
  br i1 %i.fc, label %_ZN4core5slice4sort6shared5pivot7median317hb606936e919d17ccE.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph299
  %i.fd = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdec20e94ea0b9dfaE(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph131, ptr noundef readonly %i.fa, ptr noundef readonly %i.fb, i64 noundef %i.ez)
  br label %bb.p

_ZN4core5slice4sort6shared5pivot7median317hb606936e919d17ccE.exit.i: ; preds = %.lr.ph299
  %.val6.i = load i8, ptr %.sroa.0.0.ph131, align 4, !alias.scope !3959, !noundef !4 ; 2 uses
  %.val7.i = load i8, ptr %i.fa, align 4, !alias.scope !3959, !noundef !4 ; 2 uses
  %i.fe = icmp ult i8 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i8, ptr %i.fb, align 4, !alias.scope !3959, !noundef !4 ; 2 uses
  %i.ff = icmp ult i8 %.val6.i, %.val5.i
  %i.fg = xor i1 %i.fe, %i.ff
  %i.fh = icmp ult i8 %.val7.i, %.val5.i
  %i.fi = xor i1 %i.fe, %i.fh
  %..i.i = select i1 %i.fi, ptr %i.fb, ptr %i.fa
  %.sroa.0.0.i.i = select i1 %i.fg, ptr %.sroa.0.0.ph131, ptr %..i.i
  br label %bb.p

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17heb70b5be454b13c5E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317hb606936e919d17ccE.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317hb606936e919d17ccE.exit.i ], [ %i.fd, %bb.o ]
  %i.fj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fk = sub nuw i64 %i.fj, %i.e                 ; 2 uses
  %.sroa.0.0.i43 = lshr exact i64 %i.fk, 3        ; 3 uses
  %i.fl = icmp ult i64 %.sroa.0.0.i43, %.sroa.17.0124297
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.fk ; 4 uses
  %i.fn = load i8, ptr %i.fm, align 4, !noundef !4 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !range !2470, !noundef !4
  store i8 %i.fn, ptr %i.b, align 4
  store i32 %i.fp, ptr %i.d, align 4
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.030.0.val = load i8, ptr %.sroa.030.0.ph128, align 4, !noundef !4
  %.not85 = icmp ult i8 %.sroa.030.0.val, %i.fn
  br i1 %.not85, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3962)
  call void @llvm.experimental.noalias.scope.decl(metadata !3965)
  %.not86 = icmp ult i64 %3, %.sroa.17.0124297
  br i1 %.not86, label %bb.s, label %bb.r, !prof !19

bb.r:                                             ; preds = %.critedge
  %i.fq = getelementptr [8 x i8], ptr %2, i64 %.sroa.17.0124297 ; 3 uses
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.43.0.i = phi ptr [ %i.fq, %bb.r ], [ %i.hi, %bb.u ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph131, %bb.r ], [ %i.hl, %bb.u ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i43, %bb.r ], [ %.sroa.17.0124297, %bb.u ] ; 3 uses
  %i.fr = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %i.fr ; 2 uses
  %i.ft = icmp ult ptr %.sroa.9.0.i, %i.fs
  br i1 %i.ft, label %.lr.ph.i45, label %._crit_edge.i

.lr.ph.i45:                                       ; preds = %bb.t, %.lr.ph.i45
  %.sroa.9.131.i = phi ptr [ %i.gv, %.lr.ph.i45 ], [ %.sroa.9.0.i, %bb.t ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.gu, %.lr.ph.i45 ], [ %.sroa.27.0.i, %bb.t ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gq, %.lr.ph.i45 ], [ %.sroa.43.0.i, %bb.t ] ; 4 uses
  %.val35.i = load i8, ptr %.sroa.9.131.i, align 4, !alias.scope !3962, !noalias !3965, !noundef !4
  %i.fu = icmp ult i8 %.val35.i, %i.fn            ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fu, ptr %2, ptr %i.fv
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.fx = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !3962, !noalias !3967
  store i64 %i.fx, ptr %i.fw, align 4, !alias.scope !3965, !noalias !3970
  %i.fy = zext i1 %i.fu to i64
  %i.fz = add i64 %.sroa.27.130.i, %i.fy          ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val33.i = load i8, ptr %i.ga, align 4, !alias.scope !3962, !noalias !3965, !noundef !4
  %i.gb = icmp ult i8 %.val33.i, %i.fn            ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i37.i = select i1 %i.gb, ptr %2, ptr %i.gc
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fz
  %i.ge = load i64, ptr %i.ga, align 4, !alias.scope !3962, !noalias !3971
  store i64 %i.ge, ptr %i.gd, align 4, !alias.scope !3965, !noalias !3974
  %i.gf = zext i1 %i.gb to i64
  %i.gg = add i64 %i.fz, %i.gf                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val31.i = load i8, ptr %i.gh, align 4, !alias.scope !3962, !noalias !3965, !noundef !4
  %i.gi = icmp ult i8 %.val31.i, %i.fn            ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i38.i = select i1 %i.gi, ptr %2, ptr %i.gj
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i38.i, i64 %i.gg
  %i.gl = load i64, ptr %i.gh, align 4, !alias.scope !3962, !noalias !3975
  store i64 %i.gl, ptr %i.gk, align 4, !alias.scope !3965, !noalias !3978
  %i.gm = zext i1 %i.gi to i64
  %i.gn = add i64 %i.gg, %i.gm                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val29.i = load i8, ptr %i.go, align 4, !alias.scope !3962, !noalias !3965, !noundef !4
  %i.gp = icmp ult i8 %.val29.i, %i.fn            ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %i.gp, ptr %2, ptr %i.gq
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %i.gn
  %i.gs = load i64, ptr %i.go, align 4, !alias.scope !3962, !noalias !3979
  store i64 %i.gs, ptr %i.gr, align 4, !alias.scope !3965, !noalias !3982
  %i.gt = zext i1 %i.gp to i64
  %i.gu = add i64 %i.gn, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.gw = icmp ult ptr %i.gv, %i.fs
  br i1 %i.gw, label %.lr.ph.i45, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i45, %bb.t
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.gq, %.lr.ph.i45 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.gu, %.lr.ph.i45 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.gv, %.lr.ph.i45 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i44 ; 2 uses
  %i.gy = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gx
  br i1 %i.gy, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hb, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hf, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hg, %.lr.ph38.i ] ; 2 uses
  %i.gz = icmp eq i64 %.sroa.0.0.i44, %.sroa.17.0124297
  br i1 %i.gz, label %bb.v, label %bb.u

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hg, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hf, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.hb, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i8, ptr %.sroa.9.236.i, align 4, !alias.scope !3962, !noalias !3965, !noundef !4
  %i.ha = icmp ult i8 %.val.i, %i.fn              ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i40.i = select i1 %i.ha, ptr %2, ptr %i.hb
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i40.i, i64 %.sroa.27.235.i
  %i.hd = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !3962, !noalias !3983
  store i64 %i.hd, ptr %i.hc, align 4, !alias.scope !3965, !noalias !3986
  %i.he = zext i1 %i.ha to i64
  %i.hf = add i64 %.sroa.27.235.i, %i.he          ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.hh = icmp ult ptr %i.hg, %i.gx
  br i1 %i.hh, label %.lr.ph38.i, label %._crit_edge39.i

bb.u:                                             ; preds = %._crit_edge39.i
  %i.hi = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.sroa.27.2.lcssa.i
  %i.hk = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !3962, !noalias !3987
  store i64 %i.hk, ptr %i.hj, align 4, !alias.scope !3965, !noalias !3990
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hm = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.hm, i1 false), !alias.scope !3991
  %i.hn = sub i64 %.sroa.17.0124297, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.17.0124297, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hee2abb3afe0b0acaE.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.v
  %i.ho = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.hn, 4
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph45.i
  %n.vec318 = and i64 %i.hn, -4                   ; 3 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 3 uses
  %i.hp = xor i64 %index320, -1
  %i.hq = getelementptr [8 x i8], ptr %i.fq, i64 %i.hp ; 2 uses
  %i.hr = getelementptr [8 x i8], ptr %i.ho, i64 %index320 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hq, i64 -8
  %i.ht = getelementptr i8, ptr %i.hq, i64 -24
  %wide.load321 = load <2 x i64>, ptr %i.hs, align 4, !alias.scope !3965, !noalias !3962
  %wide.load322 = load <2 x i64>, ptr %i.ht, align 4, !alias.scope !3965, !noalias !3962
  %reverse323 = shufflevector <2 x i64> %wide.load321, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse324 = shufflevector <2 x i64> %wide.load322, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
end_hunk_7
begin_hunk_8_@_ZN4core5slice4sort6stable9quicksort9quicksort17hfa3f4919c91c26b8E:bb.a
  %.val16.i.i.i.i.i.i.i35.i.i = load i32, ptr %i.cd, align 4, !alias.scope !4168, !noalias !4169, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i36.i.i = load i32, ptr %i.ce, align 4, !alias.scope !4170, !noalias !4171, !noundef !4 ; 2 uses
  %i.cf = icmp eq i32 %.val16.i.i.i.i.i.i.i35.i.i, %.val17.i.i.i.i.i.i.i36.i.i
  br i1 %i.cf, label %bb.s, label %.loopexit.i.i.i.i.i.i.i37.i.i

.loopexit.i.i.i.i.i.i.i37.i.i:                    ; preds = %.lr.ph339
  %i.cg = icmp ult i32 %.val16.i.i.i.i.i.i.i35.i.i, %.val17.i.i.i.i.i.i.i36.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit38.i.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit38.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i37.i.i, %._crit_edge340, %bb.q
  %.sroa.0.0.i.i27.i.i = phi i1 [ %i.bw, %bb.q ], [ %i.cc, %._crit_edge340 ], [ %i.cg, %.loopexit.i.i.i.i.i.i.i37.i.i ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i27.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ch = xor i1 %.sroa.0.0.i.i27.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !alias.scope !4029, !noalias !4172
  %.neg.i.i.i = sext i1 %i.ch to i64
  %i.ci = getelementptr [32 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i27.i.i to i64
  %i.cj = getelementptr [32 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cl = icmp ult ptr %i.bu, %i.ba               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.cl, ptr %i.bu, ptr %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !alias.scope !4029
  %i.cm = zext i1 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.cm
  %i.co = xor i1 %i.cl, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.cp
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bs, %._crit_edge.i.i ], [ %i.cq, %bb.t ]
  %.sroa.06.1.i.i = phi ptr [ %i.bu, %._crit_edge.i.i ], [ %i.cn, %bb.t ]
  %i.cr = icmp ne ptr %.sroa.06.1.i.i, %i.ba
  %i.cs = icmp ne ptr %.sroa.011.1.i.i, %i.bb
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs, !prof !19
  br i1 %or.cond.i.i, label %bb.v, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha0432ebe85f296c5E.exit, !prof !19

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.w, !noalias !4026

.noexc.i:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = shl nuw nsw i64 %.sroa.17.0.lcssa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa125, ptr nonnull align 8 %2, i64 %i.cu, i1 false), !alias.scope !4029, !noalias !4176
  resume { ptr, i32 } %i.ct

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa125, i64 %.sroa.08.09.i
  %.idx.i = shl nuw nsw i64 %.sroa.08.09.i, 5
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i64 32, i1 false), !alias.scope !4029
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  call void @llvm.experimental.noalias.scope.decl(metadata !4183)
  call void @llvm.experimental.noalias.scope.decl(metadata !4185)
  call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %.val.i.i.i30.i = load i64, ptr %i.cw, align 8, !alias.scope !4189, !noalias !4190, !noundef !4 ; 5 uses
  %.val3.i.i.i31.i = load i64, ptr %i.cx, align 8, !alias.scope !4191, !noalias !4192, !noundef !4 ; 2 uses
  %cond.i.i.i.i.i32.i = icmp eq i64 %.val.i.i.i30.i, %.val3.i.i.i31.i
  br i1 %cond.i.i.i.i.i32.i, label %bb.x, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.cy = icmp slt i64 %.val.i.i.i30.i, %.val3.i.i.i31.i
  br i1 %i.cy, label %.split._crit_edge.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i

.split._crit_edge.i.i:                            ; preds = %.split.i.i
  %.sroa.516.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.516.0.copyload.pre.i.i = load ptr, ptr %.sroa.516.0..sroa_idx.phi.trans.insert.i.i, align 8, !alias.scope !4045, !noalias !4026
  %.sroa.617.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.617.0.copyload.pre.i.i = load i64, ptr %.sroa.617.0..sroa_idx.phi.trans.insert.i.i, align 8, !alias.scope !4045, !noalias !4026
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.val4.i.i.i34.i = load ptr, ptr %i.cz, align 8, !alias.scope !4189, !noalias !4190, !nonnull !4, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.val5.i.i.i35.i = load i64, ptr %i.da, align 8, !alias.scope !4189, !noalias !4190, !noundef !4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %.val6.i.i.i36.i = load ptr, ptr %i.db, align 8, !alias.scope !4191, !noalias !4192, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %.val7.i.i.i37.i = load i64, ptr %i.dc, align 8, !alias.scope !4191, !noalias !4192, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  call void @llvm.experimental.noalias.scope.decl(metadata !4195)
  call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i38.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i.i.i37.i, i64 %.val5.i.i.i35.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i40.i315 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i38.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i40.i315, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i, label %.lr.ph318

bb.y:                                             ; preds = %.lr.ph318
  %i.dd = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i39.i316, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i40.i = icmp eq i64 %i.dd, %.sroa.0.0.i.i.i.i.i.i.i.i.i38.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i40.i, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i, label %.lr.ph318

.lr.ph318:                                        ; preds = %bb.x, %bb.y
  %.sroa.01.0.i.i.i.i.i.i.i.i39.i316 = phi i64 [ %i.dd, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i34.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i39.i316
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i36.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i39.i316
  %.val16.i.i.i.i.i.i.i.i41.i = load i32, ptr %i.de, align 4, !alias.scope !4205, !noalias !4206, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i.i42.i = load i32, ptr %i.df, align 4, !alias.scope !4207, !noalias !4208, !noundef !4 ; 2 uses
  %i.dg = icmp eq i32 %.val16.i.i.i.i.i.i.i.i41.i, %.val17.i.i.i.i.i.i.i.i42.i
  br i1 %i.dg, label %bb.y, label %.loopexit.i.i.i.i.i.i.i.i43.i

.loopexit.i.i.i.i.i.i.i.i43.i:                    ; preds = %.lr.ph318
  %i.dh = icmp ult i32 %.val16.i.i.i.i.i.i.i.i41.i, %.val17.i.i.i.i.i.i.i.i42.i
  br i1 %i.dh, label %bb.z, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i: ; preds = %bb.y, %bb.x
  %i.di = icmp ult i64 %.val5.i.i.i35.i, %.val7.i.i.i37.i
  br i1 %i.di, label %bb.z, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i

bb.z:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i, %.loopexit.i.i.i.i.i.i.i.i43.i, %.split._crit_edge.i.i
  %.sroa.617.0.copyload.i.i = phi i64 [ %.sroa.617.0.copyload.pre.i.i, %.split._crit_edge.i.i ], [ %.val5.i.i.i35.i, %.loopexit.i.i.i.i.i.i.i.i43.i ], [ %.val5.i.i.i35.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i ] ; 3 uses
  %.sroa.516.0.copyload.i.i = phi ptr [ %.sroa.516.0.copyload.pre.i.i, %.split._crit_edge.i.i ], [ %.val4.i.i.i34.i, %.loopexit.i.i.i.i.i.i.i.i43.i ], [ %.val4.i.i.i34.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4045, !noalias !4026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false), !alias.scope !4045, !noalias !4026
  %i.dj = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.dj, label %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %bb.z, %.backedge.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.dk, %.backedge.i.i ], [ %i.cx, %bb.z ] ; 7 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  %.val3.i.i9.i.i = load i64, ptr %i.dk, align 8, !alias.scope !4213, !noalias !4072, !noundef !4 ; 2 uses
  %cond.i.i.i.i10.i.i = icmp eq i64 %.val.i.i.i30.i, %.val3.i.i9.i.i
  br i1 %cond.i.i.i.i10.i.i, label %bb.aa, label %.split5.i.i

.split5.i.i:                                      ; preds = %.lr.ph.i33.i
  %i.dl = icmp slt i64 %.val.i.i.i30.i, %.val3.i.i9.i.i
  br i1 %i.dl, label %.backedge.i.i, label %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i

bb.aa:                                            ; preds = %.lr.ph.i33.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -16
  %.val6.i.i14.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !4213, !noalias !4072, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -8
  %.val7.i.i15.i.i = load i64, ptr %i.dn, align 8, !alias.scope !4213, !noalias !4072, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4214)
  call void @llvm.experimental.noalias.scope.decl(metadata !4216)
  call void @llvm.experimental.noalias.scope.decl(metadata !4218)
  call void @llvm.experimental.noalias.scope.decl(metadata !4220)
  call void @llvm.experimental.noalias.scope.decl(metadata !4222)
  call void @llvm.experimental.noalias.scope.decl(metadata !4224)
  %.sroa.0.0.i.i.i.i.i.i.i.i16.i.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i.i15.i.i, i64 %.sroa.617.0.copyload.i.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i18.i.i319 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i16.i.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i18.i.i319, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i, label %.lr.ph322

bb.ab:                                            ; preds = %.lr.ph322
  %i.do = add i64 %.sroa.01.0.i.i.i.i.i.i.i17.i.i320, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i18.i.i = icmp eq i64 %i.do, %.sroa.0.0.i.i.i.i.i.i.i.i16.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i18.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.aa, %bb.ab
  %.sroa.01.0.i.i.i.i.i.i.i17.i.i320 = phi i64 [ %i.do, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.516.0.copyload.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i17.i.i320
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i14.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i17.i.i320
  %.val16.i.i.i.i.i.i.i19.i.i = load i32, ptr %i.dp, align 4, !alias.scope !4226, !noalias !4227, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i20.i.i = load i32, ptr %i.dq, align 4, !alias.scope !4228, !noalias !4229, !noundef !4 ; 2 uses
  %i.dr = icmp eq i32 %.val16.i.i.i.i.i.i.i19.i.i, %.val17.i.i.i.i.i.i.i20.i.i
  br i1 %i.dr, label %bb.ab, label %.loopexit.i.i.i.i.i.i.i21.i.i

.loopexit.i.i.i.i.i.i.i21.i.i:                    ; preds = %.lr.ph322
  %i.ds = icmp ult i32 %.val16.i.i.i.i.i.i.i19.i.i, %.val17.i.i.i.i.i.i.i20.i.i
  br i1 %i.ds, label %.backedge.i.i, label %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i: ; preds = %bb.ab, %bb.aa
  %i.dt = icmp ult i64 %.sroa.617.0.copyload.i.i, %.val7.i.i15.i.i
  br i1 %i.dt, label %.backedge.i.i, label %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i, %.loopexit.i.i.i.i.i.i.i21.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i64 32, i1 false), !alias.scope !4045, !noalias !4026
  %i.du = icmp eq ptr %i.dk, %2
  br i1 %i.du, label %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i, label %.lr.ph.i33.i

.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i:         ; preds = %.backedge.i.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i, %.loopexit.i.i.i.i.i.i.i21.i.i, %.split5.i.i, %bb.z
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.cx, %bb.z ], [ %.sroa.0.06.i.i, %.loopexit.i.i.i.i.i.i.i21.i.i ], [ %.sroa.0.06.i.i, %.split5.i.i ], [ %.sroa.0.06.i.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit22.i.i ], [ %2, %.backedge.i.i ] ; 4 uses
  store i64 %.val.i.i.i30.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !4045, !noalias !4094
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !4045, !noalias !4094
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  store ptr %.sroa.516.0.copyload.i.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !4045, !noalias !4094
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 24
  store i64 %.sroa.617.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !4045, !noalias !4094
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5675a86bb3d9adc7E.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i21._crit_edge.i.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i44.i, %.loopexit.i.i.i.i.i.i.i.i43.i, %.split.i.i
  %i.dv = icmp ult i64 %.sroa.08.110.i, %i.n      ; 2 uses
  %i.dw = zext i1 %i.dv to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.dw
  br i1 %i.dv, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.0127.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph133, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17h83bf399888a68561E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph134, i64 noundef %.sroa.17.0127.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha0432ebe85f296c5E.exit

.lr.ph305:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.0126304 = phi i32 [ %i.dx, %bb.b ], [ %.sroa.027.0.ph132, %.lr.ph ]
  %.sroa.17.0127303 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph133, %.lr.ph ] ; 21 uses
  %i.dx = add i32 %.sroa.027.0126304, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  %i.dy = lshr i64 %.sroa.17.0127303, 3           ; 3 uses
  %.idx.i43 = shl nuw nsw i64 %i.dy, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph134, i64 %.idx.i43 ; 7 uses
  %.idx2.i = mul nuw i64 %i.dy, 224
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph134, i64 %.idx2.i ; 7 uses
  %i.eb = icmp ult i64 %.sroa.17.0127303, 64
  br i1 %i.eb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph305
  %i.ec = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha73be9d17147a0f6E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph134, ptr noundef readonly %i.dz, ptr noundef readonly %i.ea, i64 noundef %i.dy)
  br label %bb.ao

bb.ad:                                            ; preds = %.lr.ph305
  call void @llvm.experimental.noalias.scope.decl(metadata !4233)
  call void @llvm.experimental.noalias.scope.decl(metadata !4236)
  call void @llvm.experimental.noalias.scope.decl(metadata !4238)
  call void @llvm.experimental.noalias.scope.decl(metadata !4241)
  %.val.i.i.i = load i64, ptr %.sroa.0.0.ph134, align 8, !alias.scope !4243, !noalias !4244, !noundef !4 ; 4 uses
  %.val3.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !4245, !noalias !4246, !noundef !4 ; 4 uses
  %cond.i.i.i.i.i = icmp eq i64 %.val.i.i.i, %.val3.i.i.i
  br i1 %cond.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = icmp slt i64 %.val.i.i.i, %.val3.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i

bb.af:                                            ; preds = %bb.ad
  %.val4.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4243, !noalias !4244, !nonnull !4, !noundef !4
  %.val5.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4243, !noalias !4244, !noundef !4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.val6.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !4245, !noalias !4246, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.val7.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !4245, !noalias !4246, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  call void @llvm.experimental.noalias.scope.decl(metadata !4250)
  call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  call void @llvm.experimental.noalias.scope.decl(metadata !4255)
  call void @llvm.experimental.noalias.scope.decl(metadata !4257)
  call void @llvm.experimental.noalias.scope.decl(metadata !4260)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i.i.i, i64 %.val5.i.i.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i281 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i281, label %._crit_edge, label %.lr.ph283

bb.ag:                                            ; preds = %.lr.ph283
  %i.eg = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i282, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.eg, %.sroa.0.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph283

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  %i.eh = icmp ult i64 %.val5.i.i.i, %.val7.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i

.lr.ph283:                                        ; preds = %bb.af, %bb.ag
  %.sroa.01.0.i.i.i.i.i.i.i.i282 = phi i64 [ %i.eg, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i282
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i282
  %.val16.i.i.i.i.i.i.i.i = load i32, ptr %i.ei, align 4, !alias.scope !4262, !noalias !4263, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i.i = load i32, ptr %i.ej, align 4, !alias.scope !4264, !noalias !4265, !noundef !4 ; 2 uses
  %i.ek = icmp eq i32 %.val16.i.i.i.i.i.i.i.i, %.val17.i.i.i.i.i.i.i.i
  br i1 %i.ek, label %bb.ag, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph283
  %i.el = icmp ult i32 %.val16.i.i.i.i.i.i.i.i, %.val17.i.i.i.i.i.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %._crit_edge, %bb.ae
  %.sroa.0.0.i.i.i = phi i1 [ %i.ed, %bb.ae ], [ %i.eh, %._crit_edge ], [ %i.el, %.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4266)
  call void @llvm.experimental.noalias.scope.decl(metadata !4269)
  call void @llvm.experimental.noalias.scope.decl(metadata !4271)
  call void @llvm.experimental.noalias.scope.decl(metadata !4274)
  %.val3.i.i4.i = load i64, ptr %i.ea, align 8, !alias.scope !4276, !noalias !4277, !noundef !4 ; 4 uses
  %cond.i.i.i.i5.i = icmp eq i64 %.val.i.i.i, %.val3.i.i4.i
  br i1 %cond.i.i.i.i5.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i
  %i.em = icmp slt i64 %.val.i.i.i, %.val3.i.i4.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i

bb.ai:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i
  %.val4.i.i7.i = load ptr, ptr %i.d, align 8, !alias.scope !4278, !noalias !4279, !nonnull !4, !noundef !4
  %.val5.i.i8.i = load i64, ptr %i.e, align 8, !alias.scope !4278, !noalias !4279, !noundef !4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.val6.i.i9.i = load ptr, ptr %i.en, align 8, !alias.scope !4276, !noalias !4277, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.val7.i.i10.i = load i64, ptr %i.eo, align 8, !alias.scope !4276, !noalias !4277, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4280)
  call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  call void @llvm.experimental.noalias.scope.decl(metadata !4293)
  %.sroa.0.0.i.i.i.i.i.i.i.i11.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i.i10.i, i64 %.val5.i.i8.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i13.i284 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i11.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i13.i284, label %._crit_edge288, label %.lr.ph287

bb.aj:                                            ; preds = %.lr.ph287
  %i.ep = add i64 %.sroa.01.0.i.i.i.i.i.i.i12.i285, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i13.i = icmp eq i64 %i.ep, %.sroa.0.0.i.i.i.i.i.i.i.i11.i
  br i1 %exitcond.not.i.i.i.i.i.i.i13.i, label %._crit_edge288, label %.lr.ph287

._crit_edge288:                                   ; preds = %bb.aj, %bb.ai
  %i.eq = icmp ult i64 %.val5.i.i8.i, %.val7.i.i10.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i

.lr.ph287:                                        ; preds = %bb.ai, %bb.aj
  %.sroa.01.0.i.i.i.i.i.i.i12.i285 = phi i64 [ %i.ep, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i7.i, i64 %.sroa.01.0.i.i.i.i.i.i.i12.i285
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i9.i, i64 %.sroa.01.0.i.i.i.i.i.i.i12.i285
  %.val16.i.i.i.i.i.i.i14.i = load i32, ptr %i.er, align 4, !alias.scope !4295, !noalias !4296, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i15.i = load i32, ptr %i.es, align 4, !alias.scope !4297, !noalias !4298, !noundef !4 ; 2 uses
  %i.et = icmp eq i32 %.val16.i.i.i.i.i.i.i14.i, %.val17.i.i.i.i.i.i.i15.i
  br i1 %i.et, label %bb.aj, label %.loopexit.i.i.i.i.i.i.i16.i

.loopexit.i.i.i.i.i.i.i16.i:                      ; preds = %.lr.ph287
  %i.eu = icmp ult i32 %.val16.i.i.i.i.i.i.i14.i, %.val17.i.i.i.i.i.i.i15.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i: ; preds = %.loopexit.i.i.i.i.i.i.i16.i, %._crit_edge288, %bb.ah
  %.sroa.0.0.i.i6.i = phi i1 [ %i.em, %bb.ah ], [ %i.eq, %._crit_edge288 ], [ %i.eu, %.loopexit.i.i.i.i.i.i.i16.i ]
  %i.ev = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i6.i
  br i1 %i.ev, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  call void @llvm.experimental.noalias.scope.decl(metadata !4302)
  call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  %cond.i.i.i.i20.i = icmp eq i64 %.val3.i.i.i, %.val3.i.i4.i
  br i1 %cond.i.i.i.i20.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = icmp slt i64 %.val3.i.i.i, %.val3.i.i4.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit32.i

bb.am:                                            ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.val4.i.i22.i = load ptr, ptr %i.ex, align 8, !alias.scope !4309, !noalias !4310, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.val5.i.i23.i = load i64, ptr %i.ey, align 8, !alias.scope !4309, !noalias !4310, !noundef !4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.val6.i.i24.i = load ptr, ptr %i.ez, align 8, !alias.scope !4311, !noalias !4312, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.val7.i.i25.i = load i64, ptr %i.fa, align 8, !alias.scope !4311, !noalias !4312, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  call void @llvm.experimental.noalias.scope.decl(metadata !4321)
  call void @llvm.experimental.noalias.scope.decl(metadata !4323)
  call void @llvm.experimental.noalias.scope.decl(metadata !4326)
  %.sroa.0.0.i.i.i.i.i.i.i.i26.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i.i25.i, i64 %.val5.i.i23.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i28.i289 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i26.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i28.i289, label %._crit_edge293, label %.lr.ph292

bb.an:                                            ; preds = %.lr.ph292
  %i.fb = add i64 %.sroa.01.0.i.i.i.i.i.i.i27.i290, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i28.i = icmp eq i64 %i.fb, %.sroa.0.0.i.i.i.i.i.i.i.i26.i
  br i1 %exitcond.not.i.i.i.i.i.i.i28.i, label %._crit_edge293, label %.lr.ph292

._crit_edge293:                                   ; preds = %bb.an, %bb.am
  %i.fc = icmp ult i64 %.val5.i.i23.i, %.val7.i.i25.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit32.i

.lr.ph292:                                        ; preds = %bb.am, %bb.an
  %.sroa.01.0.i.i.i.i.i.i.i27.i290 = phi i64 [ %i.fb, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i22.i, i64 %.sroa.01.0.i.i.i.i.i.i.i27.i290
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i24.i, i64 %.sroa.01.0.i.i.i.i.i.i.i27.i290
  %.val16.i.i.i.i.i.i.i29.i = load i32, ptr %i.fd, align 4, !alias.scope !4328, !noalias !4329, !noundef !4 ; 2 uses
  %.val17.i.i.i.i.i.i.i30.i = load i32, ptr %i.fe, align 4, !alias.scope !4330, !noalias !4331, !noundef !4 ; 2 uses
  %i.ff = icmp eq i32 %.val16.i.i.i.i.i.i.i29.i, %.val17.i.i.i.i.i.i.i30.i
  br i1 %i.ff, label %bb.an, label %.loopexit.i.i.i.i.i.i.i31.i

.loopexit.i.i.i.i.i.i.i31.i:                      ; preds = %.lr.ph292
  %i.fg = icmp ult i32 %.val16.i.i.i.i.i.i.i29.i, %.val17.i.i.i.i.i.i.i30.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit32.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit32.i: ; preds = %.loopexit.i.i.i.i.i.i.i31.i, %._crit_edge293, %bb.al
  %.sroa.0.0.i.i21.i = phi i1 [ %i.ew, %bb.al ], [ %i.fc, %._crit_edge293 ], [ %i.fg, %.loopexit.i.i.i.i.i.i.i31.i ]
  %i.fh = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i21.i
  %..i.i = select i1 %i.fh, ptr %i.ea, ptr %i.dz
  br label %bb.ao

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha0432ebe85f296c5E.exit: ; preds = %.outer._crit_edge.thread, %bb.u, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ao:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit32.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit17.i, %bb.ac
end_hunk_8
