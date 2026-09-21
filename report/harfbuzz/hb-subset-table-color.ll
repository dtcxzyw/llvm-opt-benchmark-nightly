Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-color?download=true
inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
.split.thread:                                    ; preds = %.critedge.i.thread
  call void @hb_free(ptr noundef %.sroa.21.0.lcssa322.i) #20
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

.split:                                           ; preds = %.critedge.i
  call void @hb_free(ptr noundef %.sroa.21.0.lcssa322.i) #20
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread

_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread: ; preds = %.critedge.i, %.split, %.loopexit
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.na = load i8, ptr %i.mz, align 2, !tbaa !332, !range !192, !noundef !208
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.ax, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit

bb.ax:                                            ; preds = %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread
  call void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit: ; preds = %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread, %bb.ax
  %i.nc = load i8, ptr %i.m, align 1, !tbaa !288, !range !192, !noundef !208
  %i.nd = trunc nuw i8 %i.nc to i1
  %.not.i75 = xor i1 %i.nd, true
  %i.ne = load i32, ptr %3, align 8
  %i.nf = icmp slt i32 %i.ne, 0
  %or.cond.i76 = select i1 %.not.i75, i1 true, i1 %i.nf
  %i.ng = load i32, ptr %i.r, align 8
  %i.nh = icmp slt i32 %i.ng, 0
  %or.cond4.i77 = select i1 %or.cond.i76, i1 true, i1 %i.nh
  %i.ni = load i32, ptr %i.u, align 8
  %i.nj = icmp slt i32 %i.ni, 0
  %i.nk = select i1 %or.cond4.i77, i1 true, i1 %i.nj
  br i1 %i.nk, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit
  %i.nl = call noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef null)
  br i1 %i.nl, label %bb.az, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

bb.az:                                            ; preds = %bb.ay, %bb.d
  %i.nm = call noundef zeroext i1 @_ZN5graph7graph_t13assign_spacesEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br i1 %i.nm, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.no = load i8, ptr %i.nn, align 2, !tbaa !332, !range !192, !noundef !208
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split: ; preds = %bb.ba, %bb.az
  call void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br label %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78

_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78: ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78.sink.split, %bb.ba, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.nq = load i8, ptr %i.m, align 1, !tbaa !288, !range !192, !noundef !208
  %i.nr = trunc nuw i8 %i.nq to i1
  %.not.i79203 = xor i1 %i.nr, true
  %i.ns = load i32, ptr %3, align 8
  %i.nt = icmp slt i32 %i.ns, 0
  %or.cond.i80204 = select i1 %.not.i79203, i1 true, i1 %i.nt
  %i.nu = load i32, ptr %i.r, align 8
  %i.nv = icmp slt i32 %i.nu, 0
  %or.cond4.i81205 = select i1 %or.cond.i80204, i1 true, i1 %i.nv
  %i.nw = load i32, ptr %i.u, align 8
  %i.nx = icmp slt i32 %i.nw, 0
  %i.ny = select i1 %or.cond4.i81205, i1 true, i1 %i.nx
  br i1 %i.ny, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5graph7graph_t32sort_shortest_distance_if_neededEv.exit78
  %i.nz = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.od = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.of = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ol = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 6 uses
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ov = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.pi = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.sink.in.i.i.i.i.i.i.i95 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.pj = getelementptr inbounds nuw i8, ptr %17, i64 64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.et
  %.0207 = phi i32 [ 0, %.lr.ph ], [ %i.pn, %bb.et ] ; 2 uses
  %.046206 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.et ] ; 3 uses
  %i.pk = call noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %16)
  br i1 %i.pk, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %bb.bb
  %i.pl = icmp ult i32 %.046206, %1
  %i.pm = icmp samesign ult i32 %.0207, 500
  %or.cond5 = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond5, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.pn = add nuw nsw i32 %.0207, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store atomic i32 1, ptr %17 monotonic, align 8
  store atomic i8 1, ptr %i.nz monotonic, align 4
  store atomic ptr null, ptr %i.oa monotonic, align 8
  store i8 1, ptr %i.ob, align 8, !tbaa !300
  store i32 0, ptr %i.oc, align 4, !tbaa !237
  store atomic i32 0, ptr %i.od monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.oe, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.of monotonic, align 4
  store atomic ptr null, ptr %i.og monotonic, align 8
  store i8 1, ptr %i.oh, align 8, !tbaa !300
  store i32 0, ptr %i.oi, align 4, !tbaa !237
  store atomic i32 0, ptr %i.oj monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ok, i8 0, i64 33, i1 false)
  %i.po = load i32, ptr %i.ol, align 4, !tbaa !335
  %.03878.i = add i32 %i.po, -1                   ; 2 uses
  %i.pp = icmp sgt i32 %.03878.i, -1
  br i1 %i.pp, label %.lr.ph.i85, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 -1, ptr %i.f, align 4, !tbaa !197
  br label %bb.be

.lr.ph.i85:                                       ; preds = %bb.bd
  %i.pq = zext nneg i32 %.03878.i to i64
  br label %bb.bi

._crit_edge.i88:                                  ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i
  %.pre.i89 = load i8, ptr %i.om, align 8, !tbaa !236, !range !192
  %i.pr = trunc nuw i8 %.pre.i89 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 -1, ptr %i.f, align 4, !tbaa !197
  br i1 %i.pr, label %bb.bf, label %bb.be, !prof !984

bb.be:                                            ; preds = %._crit_edge.i88, %._crit_edge.thread.i
  %.039.lcssa117.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.241.i, %._crit_edge.i88 ]
  %i.ps = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.f) ; 0 uses
  %.pre.i.i.i.i = load i32, ptr %i.f, align 4, !tbaa !197
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i

bb.bf:                                            ; preds = %._crit_edge.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 -1, ptr %i.d, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 -1, ptr %i.e, align 4, !tbaa !197
  %i.pt = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.e) ; 0 uses
  %i.pu = load i32, ptr %i.e, align 4, !tbaa !197
  %.not.i.i.i.i90 = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i.i.i90, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 -1, ptr %i.e, align 4, !tbaa !197
  %i.pv = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.pw = load i32, ptr %i.e, align 4, !tbaa !197
  %i.px = add i32 %i.pw, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink.i.i.i.i.i = phi i32 [ %i.px, %bb.bg ], [ 0, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i: ; preds = %bb.bh, %bb.be
  %.039.lcssa116.i = phi i32 [ %.039.lcssa117.i, %bb.be ], [ %.241.i, %bb.bh ] ; 2 uses
  %i.py = phi i32 [ %.pre.i.i.i.i, %bb.be ], [ %.sink.i.i.i.i.i, %bb.bh ]
  %.not = icmp eq i32 %i.py, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br i1 %.not, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit.thread, label %bb.bo

_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit.thread: ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.pz = add i32 %.046206, 1                     ; 2 uses
  %i.qa = load i32, ptr %i.ol, align 4, !tbaa !335
  %.02180.i = add i32 %i.qa, -1                   ; 2 uses
  %i.qb = icmp sgt i32 %.02180.i, -1
  br i1 %i.qb, label %.lr.ph.i94, label %.thread

bb.bi:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %.lr.ph.i85
  %indvars.iv.i = phi i64 [ %i.pq, %.lr.ph.i85 ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 4 uses
  %.03979.i = phi i32 [ 0, %.lr.ph.i85 ], [ %.241.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 5 uses
  %i.qc = load i32, ptr %i.ol, align 4, !tbaa !335
  %i.qd = zext i32 %i.qc to i64
  %.not.i.i86 = icmp samesign ult i64 %indvars.iv.i, %i.qd
  %i.qe = load ptr, ptr %i.on, align 8
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i
  %.0.i.i87 = select i1 %.not.i.i86, ptr %i.qf, ptr @_hb_NullPool, !prof !191
  %i.qg = load i32, ptr %.0.i.i87, align 4, !tbaa !337 ; 3 uses
  %i.qh = load i32, ptr %i.oo, align 4, !tbaa !289 ; 3 uses
  %.not.i29.i.i = icmp ult i32 %i.qg, %i.qh
  %i.qi = load ptr, ptr %i.op, align 8            ; 3 uses
  %i.qj = zext i32 %i.qg to i64
  %i.qk = getelementptr inbounds nuw [216 x i8], ptr %i.qi, i64 %i.qj
  %.0.i30.i.i = select i1 %.not.i29.i.i, ptr %i.qk, ptr @_hb_NullPool, !prof !191 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i30.i.i, i64 64
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !338 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not31.i.i, label %.lr.ph.preheader.i.i, label %_ZNK5graph7graph_t9space_forEjPj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bi
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i30.i.i, i64 80
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !293
  %.not1867.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not1867.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %.lr.ph69.i.i

.lr.ph.i.i:                                       ; preds = %bb.bj
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !293
  %.not18.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not18.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %.lr.ph69.i.i

.lr.ph69.i.i:                                     ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %.pre3979.i.i = phi ptr [ %.pre3980.i.i, %.lr.ph.i.i ], [ %i.qi, %.lr.ph.preheader.i.i ] ; 4 uses
  %.pre3876.i.i = phi i32 [ %.pre3877.i.i, %.lr.ph.i.i ], [ %i.qh, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0.i3368.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i ], [ %.0.i30.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qr = phi i32 [ %i.rf, %.lr.ph.i.i ], [ %i.qh, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qs = phi ptr [ %i.re, %.lr.ph.i.i ], [ %i.qi, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 84
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !339, !noalias !985 ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 124
  %.val.i.i.i = load i32, ptr %i.qv, align 4, !tbaa !340, !noalias !985
  %i.qw = add i32 %.val.i.i.i, 1                  ; 2 uses
  %.not15.i.i.i.i.i.i.i.i = icmp ult i32 %i.qw, 2
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i: ; preds = %.lr.ph69.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i3368.i.i, i64 136
  %.val1.i.i.i91 = load ptr, ptr %i.qx, align 8, !tbaa !341, !noalias !985
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i32 [ %i.rb, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %i.qw, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ]
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.rc, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %.val1.i.i.i91, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !986
  %i.ra = trunc i32 %i.qz to i1
  br i1 %i.ra, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %i.rb = add i32 %.sroa.5.sroa.0.0.i.i.i.i, -1   ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 12
  %i.rd = icmp eq i32 %i.rb, 0
  br i1 %i.rd, label %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %.not25.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not25.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i", label %bb.bj

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i
  %.not2559.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not2559.i.i, label %.thread.i.i93, label %bb.bj

_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i: ; preds = %.lr.ph69.i.i
  %.not2548.i.i = icmp eq i32 %i.qu, -1
  br i1 %.not2548.i.i, label %.thread.i.i93, label %bb.bj

.thread.i.i93:                                    ; preds = %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  %.pre38.pre.i.i = load i32, ptr %i.oo, align 4, !tbaa !289
  %.pre39.pre.i.i = load ptr, ptr %i.op, align 8
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i": ; preds = %.thread.i.i93, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i
  %.pre39.i.i = phi ptr [ %.pre39.pre.i.i, %.thread.i.i93 ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ] ; 2 uses
  %.pre38.i.i = phi i32 [ %.pre38.pre.i.i, %.thread.i.i93 ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %.thread.i.i93 ], [ %.sroa.02.0.i.i.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ]
  %.pre.i.i = load i32, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !197
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i", %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i
  %.pre3980.i.i = phi ptr [ %.pre39.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %.pre3979.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ]
  %.pre3877.i.i = phi i32 [ %.pre38.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %.pre3876.i.i, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ]
  %i.re = phi ptr [ %.pre39.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qs, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 2 uses
  %i.rf = phi i32 [ %.pre38.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qr, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 2 uses
  %i.rg = phi i32 [ %.pre.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb0EE6item_tEEMS5_KFbvERK4$_19LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EESE_EdeEv.exit.i.i.i.i" ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.i.i ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread.i.i ], [ %i.qu, %_ZNK5graph7graph_t8vertex_t12parents_iterEv.exit.thread57.i.i ] ; 3 uses
  %.not.i.i.i92 = icmp ult i32 %i.rg, %i.rf
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [216 x i8], ptr %i.re, i64 %i.rh
  %.0.i.i.i = select i1 %.not.i.i.i92, ptr %i.ri, ptr @_hb_NullPool, !prof !191 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !338 ; 2 uses
  %.not.i48.i = icmp eq i32 %i.rk, 0
  br i1 %.not.i48.i, label %.lr.ph.i.i, label %_ZNK5graph7graph_t9space_forEjPj.exit.i

_ZNK5graph7graph_t9space_forEjPj.exit.i:          ; preds = %bb.bj, %bb.bi
  %.pre40.i.i = phi i32 [ %i.qm, %bb.bi ], [ %i.rk, %bb.bj ] ; 6 uses
  %.014.lcssa.i.i = phi i32 [ %i.qg, %bb.bi ], [ %i.rg, %bb.bj ] ; 2 uses
  %i.rl = load i32, ptr %i.oq, align 4, !tbaa !279
  %.not.i.i49.i = icmp ult i32 %.pre40.i.i, %i.rl
  %i.rm = load ptr, ptr %i.or, align 8
  %i.rn = zext i32 %.pre40.i.i to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.rn
  %.0.i.i50.i = select i1 %.not.i.i49.i, ptr %i.ro, ptr @_hb_NullPool, !prof !191
  %i.rp = load i32, ptr %.0.i.i50.i, align 4, !tbaa !197
  %i.rq = icmp ult i32 %i.rp, 2
  br i1 %i.rq, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNK5graph7graph_t9space_forEjPj.exit.i
  %.not47.i = icmp eq i32 %.03979.i, 0
  %spec.select.i = select i1 %.not47.i, i32 %.pre40.i.i, i32 %.03979.i ; 2 uses
  %i.rr = icmp eq i32 %spec.select.i, %.pre40.i.i
  br i1 %i.rr, label %bb.bl, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.rs = load i8, ptr %i.om, align 8, !tbaa !236, !range !192, !noundef !208
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.bm, label %bb.bn, !prof !92

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, i32 noundef %.014.lcssa.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.bn:                                            ; preds = %bb.bl
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, i32 noundef %.014.lcssa.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i: ; preds = %.lr.ph.i.i, %bb.bn, %bb.bm, %bb.bk, %_ZNK5graph7graph_t9space_forEjPj.exit.i, %.lr.ph.preheader.i.i
  %.241.i = phi i32 [ %.03979.i, %.lr.ph.preheader.i.i ], [ %.03979.i, %_ZNK5graph7graph_t9space_forEjPj.exit.i ], [ %.pre40.i.i, %bb.bn ], [ %spec.select.i, %bb.bk ], [ %.pre40.i.i, %bb.bm ], [ %.03979.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ru = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ru, label %bb.bi, label %._crit_edge.i88, !llvm.loop !975

bb.bo:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tEcvbEv.exit.i
  %i.rv = load i32, ptr %i.oq, align 4, !tbaa !279
  %.not.i.i51.i = icmp ult i32 %.039.lcssa116.i, %i.rv
  %i.rw = load ptr, ptr %i.or, align 8
  %i.rx = zext i32 %.039.lcssa116.i to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rx
  %.0.i.i52.i = select i1 %.not.i.i51.i, ptr %i.ry, ptr @_hb_NullPool, !prof !191
  %i.rz = load i32, ptr %.0.i.i52.i, align 4, !tbaa !197
  %i.sa = lshr i32 %i.rz, 1
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.sa, i32 1) ; 2 uses
  %i.sb = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.oh)
  %i.sc = icmp ugt i32 %i.sb, %.sroa.speculated.i
  br i1 %i.sc, label %bb.bp, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit

bb.bp:                                            ; preds = %bb.bo
  %i.sd = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.oh)
  %i.se = load ptr, ptr %i.os, align 8, !tbaa !278 ; 2 uses
  %i.sf = load i32, ptr %i.ot, align 4, !tbaa !279 ; 2 uses
  %i.sg = zext i32 %i.sf to i64
  %.idx.i = shl nuw nsw i64 %i.sg, 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %.idx.i
  %.not81.i = icmp eq i32 %i.sf, 0
  br i1 %.not81.i, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %bb.bp
  %i.si = sub i32 %i.sd, %.sroa.speculated.i
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ci, %.lr.ph85.i
  %.083.i = phi ptr [ %i.se, %.lr.ph85.i ], [ %i.ve, %bb.ci ] ; 2 uses
  %.03682.i = phi i32 [ %i.si, %.lr.ph85.i ], [ %.2.i, %bb.ci ] ; 3 uses
  %i.sj = load i32, ptr %.083.i, align 4, !tbaa !197 ; 6 uses
  %.not45.not.i = icmp eq i32 %.03682.i, 0
  br i1 %.not45.not.i, label %_ZL24_try_isolating_subgraphsRK11hb_vector_tIN5graph17overflow_record_tELb0EERNS0_7graph_tE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sk = lshr i32 %i.sj, 9                       ; 6 uses
  %i.sl = load atomic i32, ptr %i.oj monotonic, align 8 ; 2 uses
  %i.sm = load i32, ptr %i.ou, align 4, !tbaa !342 ; 6 uses
  %i.sn = icmp ult i32 %i.sl, %i.sm
  %i.so = load ptr, ptr %i.ov, align 8, !tbaa !343 ; 6 uses
  br i1 %i.sn, label %bb.bs, label %._crit_edge.i.i.i.i.i.i.i, !prof !191

bb.bs:                                            ; preds = %bb.br
  %i.sp = zext i32 %i.sl to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !345
  %.not.i.i.i.i.i.i.i84 = icmp eq i32 %i.sr, %i.sk
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bs, %bb.br
end_hunk_0
begin_hunk_1_@_ZNK5graph14PairPosFormat211clone_rangeERNS0_15split_context_tEjj:bb.a
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0.i.i.i162, i64 24
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !410
  %wide.trip.count.i168 = zext i32 %i.bjk to i64
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lk
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i168
  br i1 %exitcond.not.i172, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174, label %bb.lk, !llvm.loop !22

bb.lk:                                            ; preds = %bb.lj, %.lr.ph.i167
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.i167 ], [ %indvars.iv.next.i171, %bb.lj ] ; 2 uses
  %i.bjn = getelementptr inbounds nuw [12 x i8], ptr %i.bjm, i64 %indvars.iv.i169 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 4
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !263
  %i.bjq = zext i32 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjf, i64 %i.bjq
  %.not23.not.i170 = icmp eq ptr %i.bja, %i.bjr
  br i1 %.not23.not.i170, label %.thread.i173, label %bb.lj

.thread.i173:                                     ; preds = %bb.lk
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !261
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174: ; preds = %bb.lj, %bb.lh, %bb.li, %.thread.i173
  %.4.i165 = phi i32 [ -1, %bb.lh ], [ %i.bjt, %.thread.i173 ], [ -1, %bb.li ], [ -1, %bb.lj ] ; 3 uses
  %.not.i175 = icmp ult i32 %i.m, %i.bjb
  br i1 %.not.i175, label %bb.lm, label %bb.ll, !prof !191

bb.ll:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

bb.lm:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  %i.bju = getelementptr inbounds nuw [216 x i8], ptr %i.bjc, i64 %i.s
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177: ; preds = %bb.ll, %bb.lm
  %.0.i176 = phi ptr [ @_hb_CrapPool, %bb.ll ], [ %i.bju, %bb.lm ] ; 4 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0.i176, i64 20 ; 3 uses
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !249 ; 2 uses
  %i.bjx = add i32 %i.bjw, 1                      ; 5 uses
  %i.bjy = icmp slt i32 %i.bjx, 0
  br i1 %i.bjy, label %bb.lr, label %bb.ln, !prof !92

bb.ln:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0.i176, i64 16
  %i.bka = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bjz, i32 noundef %i.bjx, i1 noundef zeroext false)
  br i1 %i.bka, label %bb.lo, label %bb.lr, !prof !259

bb.lo:                                            ; preds = %bb.ln
  %i.bkb = load i32, ptr %i.bjv, align 4, !tbaa !249 ; 3 uses
  %i.bkc = icmp ugt i32 %i.bjx, %i.bkb
  br i1 %i.bkc, label %bb.lp, label %bb.ls

bb.lp:                                            ; preds = %bb.lo
  %i.bkd = sub nuw nsw i32 %i.bjx, %i.bkb
  %i.bke = mul i32 %i.bkd, 12                     ; 2 uses
  %.not.i.i.i.i.i179 = icmp eq i32 %i.bke, 0
  br i1 %.not.i.i.i.i.i179, label %bb.ls, label %bb.lq, !prof !92

bb.lq:                                            ; preds = %bb.lp
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !250
  %i.bkh = zext nneg i32 %i.bkb to i64
  %i.bki = getelementptr inbounds nuw [12 x i8], ptr %i.bkg, i64 %i.bkh
  %i.bkj = zext i32 %i.bke to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bki, i8 0, i64 %i.bkj, i1 false)
  br label %bb.ls

bb.lr:                                            ; preds = %bb.ln, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.ls:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  store i32 %i.bjx, ptr %i.bjv, align 4, !tbaa !249
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !250
  %i.bkm = zext i32 %i.bjw to i64
  %i.bkn = getelementptr inbounds nuw [12 x i8], ptr %i.bkl, i64 %i.bkm
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.lr, %bb.ls
  %.0.i178 = phi ptr [ @_hb_CrapPool, %bb.lr ], [ %i.bkn, %bb.ls ] ; 4 uses
  %i.bko = load i32, ptr %.0.i178, align 4
  %i.bkp = and i32 %i.bko, -8
  %i.bkq = or disjoint i32 %i.bkp, 2
  store i32 %i.bkq, ptr %.0.i178, align 4
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0.i178, i64 8
  store i32 %.4.i165, ptr %i.bkr, align 4, !tbaa !261
  %i.bks = getelementptr inbounds nuw i8, ptr %.0.i178, i64 4
  store i32 10, ptr %i.bks, align 4, !tbaa !263
  %i.bkt = load i32, ptr %i.o, align 4, !tbaa !289
  %.not.i180 = icmp ult i32 %.4.i165, %i.bkt
  br i1 %.not.i180, label %bb.lu, label %bb.lt, !prof !191

bb.lt:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

bb.lu:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.bku = load ptr, ptr %i.q, align 8, !tbaa !295
  %i.bkv = zext i32 %.4.i165 to i64
  %i.bkw = getelementptr inbounds nuw [216 x i8], ptr %i.bku, i64 %i.bkv
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182: ; preds = %bb.lt, %bb.lu
  %.0.i181 = phi ptr [ @_hb_CrapPool, %bb.lt ], [ %i.bkw, %bb.lu ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i181, i32 noundef %i.m, i1 noundef zeroext false)
  br label %bb.lv

bb.lv:                                            ; preds = %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit", %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182
  %.0 = phi i32 [ %i.m, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182 ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit" ], [ -1, %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0206)
  br label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %bb.v, %bb.t, %bb.s, %bb.u, %bb.q, %bb.n, %bb.m, %bb.o, %.split, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit, %bb.lv
  %.1 = phi i32 [ %.0, %bb.lv ], [ -1, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79 ], [ -1, %.split ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.u ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.lw

bb.lw:                                            ; preds = %bb.a, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread
  %.2 = phi i32 [ %.1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5graph14PairPosFormat220clone_class1_recordsERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !432  ; 2 uses
  %i.e = sub i32 %4, %3
  %i.f = mul i32 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !475, !nonnull !208, !align !320
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !319, !nonnull !208, !align !320 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !289
  %.not.i.i = icmp ult i32 %2, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.a
  %.0.i.i = select i1 %.not.i.i, ptr %i.o, ptr @_hb_NullPool, !prof !191
  %i.p = load ptr, ptr %.0.i.i, align 8, !tbaa !262
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = mul i32 %i.d, %3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.t, i64 %i.g, i1 false), !alias.scope !1666
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1667, !nonnull !208, !align !320
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !279
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1668, !nonnull !208, !align !320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !279
  %.not66 = icmp eq i32 %i.ab, 0
  br i1 %.not66, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9hb_memcpyPvPKvm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !228 ; 2 uses
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 3 uses
  %i.ag = icmp ult i32 %3, %4
  br i1 %i.ag, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %.not71 = icmp eq i16 %i.ad, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04270 = phi i32 [ %i.ap, %._crit_edge ], [ %3, %.preheader.lr.ph ] ; 3 uses
  %i.am = mul i32 %.04270, %i.af
  %i.an = sub nuw i32 %.04270, %3
  %i.ao = mul i32 %i.an, %i.af
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %i.ap = add nuw i32 %.04270, 1                  ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ap, %4
  br i1 %exitcond74.not, label %.loopexit, label %.preheader, !llvm.loop !1663

bb.e:                                             ; preds = %.preheader, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %.069 = phi i32 [ 0, %.preheader ], [ %i.fu, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65 ] ; 3 uses
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !433 ; 2 uses
  %i.ar = add i32 %.069, %i.am
  %i.as = mul i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !434 ; 2 uses
  %i.au = add i32 %i.as, %i.at
  %i.av = add i32 %.069, %i.ao
  %i.aw = mul i32 %i.aq, %i.av                    ; 2 uses
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !1667, !nonnull !208, !align !320 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !278 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !279 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.idx26.i = shl nuw nsw i64 %i.bd, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx26.i
  %.not24.i = icmp eq i32 %i.bc, 0
  br i1 %.not24.i, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bf = load ptr, ptr %1, align 8, !tbaa !475, !nonnull !208, !align !320
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !319, !nonnull !208, !align !320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !289
  %.not.i.i.i = icmp ult i32 %2, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [216 x i8], ptr %i.bl, i64 %i.a
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.bm, ptr @_hb_NullPool, !prof !191
  %i.bn = load ptr, ptr %.0.i.i.i, align 8, !tbaa !262
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !1669, !nonnull !208, !align !320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !341
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i
  %.02125.i = phi ptr [ %i.di, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %i.bt = load i32, ptr %.02125.i, align 4, !tbaa !197 ; 2 uses
  %i.bu = add i32 %i.bt, %i.as                    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv
  %.idx.i = shl i32 %i.bu, 1
  %i.bx = add i32 %.idx.i, 16                     ; 3 uses
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !1669, !nonnull !208, !align !320 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i44, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cb = mul i32 %i.bx, 506952113
  %i.cc = and i32 %i.cb, 1073741822
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !381
  %i.cf = urem i32 %i.cc, %i.ce                   ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.cj, 2
  %.not15.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !197
  %i.co = icmp eq i32 %i.cn, %i.bx
  br i1 %i.co, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = load i32, ptr %i.cv, align 4, !tbaa !197
  %i.cq = icmp eq i32 %i.cp, %i.bx
  br i1 %i.cq, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.01016.i20.i.i.i = phi i32 [ %i.ct, %bb.g ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.cr, %bb.g ], [ 0, %.lr.ph.i.i.i.i ]
  %i.cr = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.cs = add i32 %i.cr, %.01016.i20.i.i.i
  %i.ct = and i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.g, !llvm.loop !19

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.cx, %bb.g ]
  %i.cz = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.cz, label %bb.h, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

bb.h:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !475, !nonnull !208, !align !320
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !319, !nonnull !208, !align !320
  %i.dd = load i32, ptr %i.ak, align 8, !tbaa !431
  %i.de = add i32 %i.bt, %i.aw
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.df
  %i.dh = tail call noundef i32 @_ZN5graph7graph_t10move_childIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEjjPKT_jS9_(ptr noundef nonnull align 8 dereferenceable(88) %i.dc, i32 noundef %i.dd, ptr noundef nonnull %i.bw, i32 noundef %2, ptr noundef nonnull %i.dg) ; 0 uses
  br label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, %bb.f, %.lr.ph.split.i
  %i.di = getelementptr inbounds nuw i8, ptr %.02125.i, i64 4 ; 2 uses
  %.not.i45 = icmp eq ptr %i.di, %i.be
  br i1 %.not.i45, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.split.i, !llvm.loop !1664

_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, %bb.e, %.lr.ph.i
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !1668, !nonnull !208, !align !320 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !278 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !279 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx26.i46 = shl nuw nsw i64 %i.do, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx26.i46
  %.not24.i47 = icmp eq i32 %i.dn, 0
  br i1 %.not24.i47, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit
  %i.dq = load ptr, ptr %1, align 8, !tbaa !475, !nonnull !208, !align !320
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !319, !nonnull !208, !align !320 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !289
  %.not.i.i.i49 = icmp ult i32 %2, %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw [216 x i8], ptr %i.dw, i64 %i.a
  %.0.i.i.i50 = select i1 %.not.i.i.i49, ptr %i.dx, ptr @_hb_NullPool, !prof !191
  %i.dy = load ptr, ptr %.0.i.i.i50, align 8, !tbaa !262
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !1669, !nonnull !208, !align !320
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !341
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65, label %.lr.ph.split.i51

.lr.ph.split.i51:                                 ; preds = %.lr.ph.i48, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63
  %.02125.i52 = phi ptr [ %i.ft, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63 ], [ %i.dl, %.lr.ph.i48 ] ; 2 uses
  %i.ee = load i32, ptr %.02125.i52, align 4, !tbaa !197 ; 2 uses
  %i.ef = add i32 %i.au, %i.ee                    ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eg
  %.idx.i53 = shl i32 %i.ef, 1
  %i.ei = add i32 %.idx.i53, 16                   ; 3 uses
  %i.ej = load ptr, ptr %i.aj, align 8, !tbaa !1669, !nonnull !208, !align !320 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !341 ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.el, null
  br i1 %.not.i.i54, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i51
  %i.em = mul i32 %i.ei, 506952113
  %i.en = and i32 %i.em, 1073741822
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !381
  %i.eq = urem i32 %i.en, %i.ep                   ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = and i32 %i.eu, 2
  %.not15.i.i.i.i55 = icmp eq i32 %i.ev, 0
  br i1 %.not15.i.i.i.i55, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i63, label %.lr.ph.i.i.i.i56

.lr.ph.i.i.i.i56:                                 ; preds = %bb.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !197
  %i.ez = icmp eq i32 %i.ey, %i.ei
  br i1 %i.ez, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i61, label %.lr.ph.i.i.i57

bb.j:                                             ; preds = %.lr.ph.i.i.i57
  %i.fa = load i32, ptr %i.fg, align 4, !tbaa !197
  %i.fb = icmp eq i32 %i.fa, %i.ei
  br i1 %i.fb, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i61, label %.lr.ph.i.i.i57, !llvm.loop !19

.lr.ph.i.i.i57:                                   ; preds = %.lr.ph.i.i.i.i56, %bb.j
  %.01016.i20.i.i.i58 = phi i32 [ %i.fe, %bb.j ], [ %i.eq, %.lr.ph.i.i.i.i56 ]
  %.017.i19.i.i.i59 = phi i32 [ %i.fc, %bb.j ], [ 0, %.lr.ph.i.i.i.i56 ]
  %i.fc = add i32 %.017.i19.i.i.i59, 1            ; 2 uses
  %i.fd = add i32 %i.fc, %.01016.i20.i.i.i58
  %i.fe = and i32 %i.fd, %i.ex                    ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %i.fj = and i32 %i.fi, 2
end_hunk_1
begin_hunk_2_@_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE5allocEjb:bb.a
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !92

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !772
  tail call void @hb_free(ptr noundef %i.m) #20
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !772  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #20 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !92

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !768  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !92

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !772
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !3409
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !179

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !767   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !772
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !767
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !771  ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = shl i32 %i.f, 3                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.e, !prof !92

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !775
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store i32 %1, ptr %i.c, align 4, !tbaa !771
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit: ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i
  %.1.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT19IndexSubtableRecord16add_new_subtableEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tEPS0_PK11hb_vector_tI9hb_pair_tIjPKS0_ELb0EEPKvPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !171
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.g
  %i.l = icmp slt i64 %i.k, 8
  br i1 %i.l, label %.critedge.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i, !prof !92

.critedge.i.i.i:                                  ; preds = %bb.b
  store i32 4, ptr %i.e, align 4, !tbaa !171
  br label %select.unfold

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.b
  store i64 0, ptr %i.d, align 1
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  store ptr %i.m, ptr %i.c, align 8, !tbaa !172
  %i.n = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.n, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, !prof !92

_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1, !tbaa !231  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %i.s
  %.0.i.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !92 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !758
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.z = load <2 x i16>, ptr %.0.i.i.i, align 1, !tbaa !228
  %i.aa = load i16, ptr %.0.i.i.i, align 1, !tbaa !228
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  store <2 x i16> %i.z, ptr %i.d, align 1, !tbaa !256
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.ad, ptr %i.ac, align 1, !tbaa !256
  switch i16 %i.ab, label %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit [
    i16 1, label %.sink.split.i
    i16 3, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !197
  %i.af = add i32 %i.ae, 8
  store i32 %i.af, ptr %i.y, align 8, !tbaa !197
  br label %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit

_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, %.sink.split.i
  %i.ag = load i32, ptr %6, align 4, !tbaa !197   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !768 ; 2 uses
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.thread116.a

.lr.ph:                                           ; preds = %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.0154 = phi i32 [ %i.ag, %.lr.ph ], [ %8, %bb.s ] ; 3 uses
  %.083153 = phi i32 [ 0, %.lr.ph ], [ %i.eu, %bb.s ] ; 5 uses
  %i.ao = load ptr, ptr %i.ak, align 8
  %7 = zext i32 %.0154 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %7 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3419 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !774 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 1, !tbaa !231 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 %i.ax
  %.0.i.i.i67 = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !92 ; 2 uses
  %.not64 = icmp eq ptr %.0.i.i.i67, %.0.i.i.i
  br i1 %.not64, label %bb.d, label %.thread116.a

bb.d:                                             ; preds = %bb.c
  %i.az = load i16, ptr %3, align 1, !tbaa !228
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = load i16, ptr %i.al, align 1, !tbaa !228
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb) ; 2 uses
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = icmp ugt i16 %i.ba, %i.bc
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = trunc i32 %i.aq to i16
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %i.bf) ; 2 uses
  store i16 %i.bg, ptr %3, align 1, !tbaa !256
  br label %.sink.split.i68

bb.f:                                             ; preds = %bb.d
  %i.bh = icmp ult i32 %i.aq, %i.bd
  br i1 %i.bh, label %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = xor i32 %i.bd, -1
  %i.bj = add i32 %i.aq, %i.bi
  %i.bk = trunc i32 %i.aq to i16
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %i.bk)
  br label %.sink.split.i68

.sink.split.i68:                                  ; preds = %bb.g, %bb.e
  %.sink.i = phi i16 [ %i.bl, %bb.g ], [ %i.bg, %bb.e ]
  %.0.ph.i = phi i32 [ %i.bj, %bb.g ], [ 0, %bb.e ]
  store i16 %.sink.i, ptr %i.al, align 1, !tbaa !256
  br label %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit

_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit: ; preds = %bb.f, %.sink.split.i68
  %.0.i69 = phi i32 [ 0, %bb.f ], [ %.0.ph.i, %.sink.split.i68 ] ; 6 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !189 ; 6 uses
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !758
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !153
  %i.bq = load i32, ptr %i.ac, align 1, !tbaa !231
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = sub i32 %i.bp, %i.br                    ; 2 uses
  %i.bt = load i16, ptr %i.d, align 1, !tbaa !228
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  switch i16 %i.bu, label %select.unfold [
    i16 1, label %bb.h
    i16 3, label %bb.l
  ]

bb.h:                                             ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %.not2344.not.i = icmp eq i32 %.0.i69, 0
  br i1 %.not2344.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.h
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bz = add i32 %.0.i69, %.083153
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph46.i
  %.02045.i = phi i32 [ 0, %.lr.ph46.i ], [ %i.ck, %bb.k ]
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !197
  %i.cb = add i32 %i.ca, 4
  store i32 %i.cb, ptr %i.y, align 8, !tbaa !197
  %i.cc = load i32, ptr %i.bw, align 4, !tbaa !171
  %.not.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %select.unfold, !prof !191

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !173
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !172 ; 4 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp slt i64 %i.ch, 4
  br i1 %i.ci, label %.critedge.i.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i, !prof !92

.critedge.i.i.i.i.i:                              ; preds = %bb.j
  store i32 4, ptr %i.bw, align 4, !tbaa !171
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cj, ptr %i.by, align 8, !tbaa !172
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %select.unfold, label %bb.k, !prof !190

bb.k:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i
  store i32 %i.bv, ptr %i.ce, align 1, !alias.scope !3420
  %i.ck = add nuw i32 %.02045.i, 1                ; 2 uses
  %exitcond53.not.i = icmp eq i32 %i.ck, %.0.i69
  br i1 %exitcond53.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %bb.i, !llvm.loop !3413

bb.l:                                             ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %.not39.not.i = icmp eq i32 %.0.i69, 0
  br i1 %.not39.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cl = trunc i32 %i.bs to i16
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cq = add i32 %.0.i69, %.083153
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.040.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %bb.o ]
  %i.cr = load i32, ptr %i.y, align 8, !tbaa !197
  %i.cs = add i32 %i.cr, 2
  store i32 %i.cs, ptr %i.y, align 8, !tbaa !197
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !171
  %.not.i.i.i.i24.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i24.i, label %bb.n, label %select.unfold, !prof !191

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !173
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !172 ; 4 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp slt i64 %i.cy, 2
  br i1 %i.cz, label %.critedge.i.i.i.i27.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i, !prof !92

.critedge.i.i.i.i27.i:                            ; preds = %bb.n
  store i32 4, ptr %i.cn, align 4, !tbaa !171
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !172
  %.not.i.i.i26.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i26.i, label %select.unfold, label %bb.o, !prof !190

bb.o:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i
  store i16 %i.cm, ptr %i.cv, align 1, !alias.scope !3421
  %i.db = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %.0.i69
  br i1 %exitcond.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %bb.m, !llvm.loop !3417

_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit: ; preds = %bb.o, %bb.k, %bb.l, %bb.h
  %.689 = phi i32 [ %.083153, %bb.l ], [ %.083153, %bb.h ], [ %i.bz, %bb.k ], [ %i.cq, %bb.o ]
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !188
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !268 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !269 ; 4 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit
  %i.dh = mul i32 %i.aq, 506952113
  %i.di = and i32 %i.dh, 1073741823
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !270
  %i.dl = urem i32 %i.di, %i.dk                   ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not15.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = load i32, ptr %i.dn, align 4, !tbaa !197
  %i.du = icmp eq i32 %i.dt, %i.aq
  br i1 %i.du, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.dv = load i32, ptr %i.ef, align 4, !tbaa !197
  %i.dw = icmp eq i32 %i.dv, %i.aq
  br i1 %i.dw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.dp, %.lr.ph.i.i.i.i ], [ %i.eh, %bb.q ]
  %i.dx = phi i64 [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.ee, %bb.q ]
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dx
  %i.dz = trunc i32 %.lcssa10.i.i.i to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %spec.select.i.i.i = select i1 %i.dz, ptr %i.ea, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.01016.i13.i.i.i = phi i32 [ %i.ed, %bb.q ], [ %i.dl, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.eb, %bb.q ], [ 0, %.lr.ph.i.i.i.i ]
  %i.eb = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.ec = add i32 %i.eb, %.01016.i13.i.i.i
  %i.ed = and i32 %i.ec, %i.ds                    ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = and i32 %i.eh, 2
  %.not.i.i.i.i70 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i70, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.q, !llvm.loop !5

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.p, %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit
  %.0.i.i71 = phi ptr [ @minus_1, %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.p ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.ej = load i32, ptr %.0.i.i71, align 4, !tbaa !197 ; 2 uses
  %.not = icmp eq i32 %i.ej, -1
  %spec.select = select i1 %.not, i32 0, i32 %i.ej ; 2 uses
  %i.ek = load i16, ptr %i.as, align 1, !tbaa !228
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = icmp ult i32 %spec.select, %i.em
  br i1 %i.en, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.eo = sub nuw i32 %spec.select, %i.em
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.eq = load ptr, ptr %2, align 8, !tbaa !756
  %i.er = load i32, ptr %i.an, align 8, !tbaa !757
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !758
  %i.et = tail call noundef zeroext i1 @_ZNK2OT13IndexSubtable17copy_glyph_at_idxEP22hb_serialize_context_tjPKcjP11hb_vector_tIcLb0EEPS0_Pj(ptr noundef nonnull align 1 dereferenceable(12) %.0.i.i.i67, ptr noundef %i.ep, i32 noundef %i.eo, ptr noundef %i.eq, i32 noundef %i.er, ptr noundef %i.es, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y)
  br i1 %i.et, label %bb.s, label %select.unfold, !prof !191

bb.s:                                             ; preds = %bb.r
  %i.eu = add i32 %.689, 1                        ; 2 uses
  %8 = add nuw i32 %.0154, 1                      ; 2 uses
  %i.ev = load i32, ptr %i.ah, align 4, !tbaa !768 ; 2 uses
  %i.ew = icmp ult i32 %8, %i.ev
  br i1 %i.ew, label %bb.c, label %.thread116.a, !llvm.loop !3418

.thread116.a:                                     ; preds = %bb.s, %bb.c, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit
  %storemerge = phi i32 [ %i.ai, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit ], [ %i.ev, %bb.s ], [ %.0154, %bb.c ]
  %.083152 = phi i32 [ 0, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit ], [ %i.eu, %bb.s ], [ %.083153, %bb.c ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !197
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.ey = load ptr, ptr %i.u, align 8, !tbaa !758
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !153
  %i.fb = tail call noundef zeroext i1 @_ZN2OT13IndexSubtable15finish_subtableEP22hb_serialize_context_tjjPj(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef %i.ex, i32 noundef %i.fa, i32 noundef %.083152, ptr noundef nonnull %i.y)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, %bb.r, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i, %bb.i, %.thread116.a, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i27.i, %_ZL9hb_memsetPvij.exit.i.i.i, %.critedge.i.i.i, %bb.a
  %.7 = phi i1 [ %i.fb, %.thread116.a ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %.critedge.i.i.i.i.i ], [ false, %.critedge.i.i.i.i27.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i ], [ false, %bb.m ], [ false, %bb.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i ], [ false, %bb.r ], [ false, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i ], [ false, %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !776    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.k, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !197
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.k

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.k, !prof !92

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !3422

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 5 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !92

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp ne i32 %.138, 0                ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48 = icmp eq i32 %i.a, 0
  br i1 %.not48, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = shl nuw i32 %.138, 3
  %i.m = zext i32 %i.l to i64
  %i.n = tail call ptr @hb_malloc(i64 noundef %i.m) #20 ; 4 uses
  %.not15.i.i = icmp eq ptr %i.n, null
  br i1 %.not15.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %.preheader.i.i, !prof !92

.preheader.i.i:                                   ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !771
  %.not18.i.i = icmp eq i32 %i.p, 0
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.h, %.preheader.i.i
  %i.r = load i32, ptr %0, align 8, !tbaa !776
  %i.s = add i32 %i.r, -1
  %spec.select.i16.i.i = icmp ult i32 %i.s, -2
  br i1 %spec.select.i16.i.i, label %.sink.split.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 4 uses
  store i64 0, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !775
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i ; 3 uses
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.z = load i16, ptr %i.x, align 1
  store i16 %i.z, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !231
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !256
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !771
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ae
  br i1 %i.af, label %bb.h, label %._crit_edge.i.i, !llvm.loop !3423

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.f
  %.012.ph.i.i = phi ptr [ null, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !775
  tail call void @hb_free(ptr noundef %i.ah) #20
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.g, %.sink.split.i.i
  %.012.i.i = phi ptr [ %.012.ph.i.i, %.sink.split.i.i ], [ null, %bb.g ] ; 2 uses
  %.not22 = icmp eq ptr %.012.i.i, null
  %spec.select = and i1 %.not.i.i, %.not22
  br i1 %spec.select, label %bb.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !3424

bb.i:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ai = load i32, ptr %0, align 8, !tbaa !776   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ai
  br i1 %.not23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = xor i32 %i.ai, -1
  br label %.sink.split

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %._crit_edge.i.i, %bb.f, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.012.i.i42 = phi ptr [ %.012.i.i, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.012.i.i42, ptr %i.ak, align 8, !tbaa !775
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.j
  %.sink = phi i32 [ %i.aj, %bb.j ], [ %.138, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.j ], [ true, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !776
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %bb.d, %bb.i, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.i ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT13IndexSubtable17copy_glyph_at_idxEP22hb_serialize_context_tjPKcjP11hb_vector_tIcLb0EEPS0_Pj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !228
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit [
    i16 1, label %bb.b
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = add i32 %2, 1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 1, !tbaa !231
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g) ; 2 uses
  %i.i = zext i32 %2 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load i32, ptr %i.j, align 1, !tbaa !231
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 3 uses
  %.not.i.i = icmp ugt i32 %i.h, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit, !prof !191

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1, !tbaa !231
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = add i32 %i.o, %i.l
  %i.q = sub nuw i32 %i.h, %i.l
  br label %_ZNK2OT13IndexSubtable14get_image_dataEjPjS1_S1_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = add i32 %2, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !tbaa !228
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.x = zext i32 %2 to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.x
  %i.z = load i16, ptr %i.y, align 1, !tbaa !228
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z) ; 3 uses
  %.not.i8.i = icmp ugt i16 %i.w, %i.aa
  br i1 %.not.i8.i, label %bb.e, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit, !prof !191

bb.e:                                             ; preds = %bb.d
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !231
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = add i32 %i.ae, %i.ab
end_hunk_2
