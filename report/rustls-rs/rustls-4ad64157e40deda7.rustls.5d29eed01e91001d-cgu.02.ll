Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.02?download=true
inline.NumInlined: 614
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3b_11VacantEntrytB1E_E12insert_entry0ECs7ZUl82OSlxp_6rustls:bb.a
  store ptr %i.eh, ptr %i.gc, align 8, !noalias !135
  %i.gd = trunc nuw nsw i64 %i.fv to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i16 %i.gd, ptr %i.ge, align 8, !noalias !134
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.unr-lcssa, label %bb.an

bb.ao:                                            ; preds = %bb.ak
  unreachable

bb.ap:                                            ; preds = %bb.al, %bb.ag
  %.pn.i.i = phi { ptr, i32 } [ %i.ff, %bb.al ], [ %i.ep, %bb.ag ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eh, i64 noundef 136, i64 noundef 8) #31, !noalias !128
  br label %common.resume

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.unr-lcssa: ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.unr-lcssa, %bb.am
  %.sroa.0.09.i.i.i.i.epil.init = phi i64 [ 0, %bb.am ], [ %i.ga, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.unr-lcssa ]
  %lcmp.mod381 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod381)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %.sroa.0.09.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.epil.init, %.epil.preheader ], [ %i.gf, %bb.aq ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aq ]
  %i.gf = add nuw nsw i64 %.sroa.0.09.i.i.i.i.epil, 1
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.sroa.0.09.i.i.i.i.epil
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !133, !noalias !134, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.eh, ptr %i.gh, align 8, !noalias !135
  %i.gi = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.epil to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !134
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i, label %bb.aq, !llvm.loop !95

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.aq, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.unr-lcssa
  %spec.select.i36 = select i1 %.sroa.03.0.i, ptr %i.eh, ptr %i.bu ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %spec.select.i36, i64 10 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !noalias !136, !noundef !5 ; 2 uses
  %i.gm = zext i16 %i.gl to i64                   ; 5 uses
  %i.gn = add i16 %i.gl, 1
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select.i36, i64 12 ; 2 uses
  %i.gp = add nuw nsw i64 %.sroa.5.0.i, 1         ; 6 uses
  %.not.i8.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.gm
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %.sroa.5.0.i ; 2 uses
  br i1 %.not.i8.not.i, label %bb.ar, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i10.i

bb.ar:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gp
  %i.gs = sub nuw nsw i64 %i.gm, %.sroa.5.0.i     ; 2 uses
  %i.gt = shl nuw nsw i64 %i.gs, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.gr, ptr nonnull align 2 %i.gq, i64 %i.gt, i1 false), !alias.scope !137, !noalias !136
  %i.gu = getelementptr inbounds nuw i8, ptr %spec.select.i36, i64 40 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gp
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.sroa.5.0.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = shl nuw nsw i64 %i.gs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull align 8 %i.gv, i64 %i.gy, i1 false), !alias.scope !138, !noalias !136
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i10.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i10.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i, %bb.ar
  store i16 %.sroa.11.0124, ptr %i.gq, align 2, !alias.scope !137, !noalias !136
  %i.gz = getelementptr inbounds nuw i8, ptr %spec.select.i36, i64 40 ; 6 uses
  %i.ha = add nuw nsw i64 %i.gm, 2                ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gp
  store ptr %.sroa.7.0126, ptr %i.hb, align 8, !alias.scope !138, !noalias !136
  store i16 %i.gn, ptr %i.gk, align 2, !noalias !136
  %i.hc = icmp samesign ult i64 %i.gp, %i.ha
  br i1 %i.hc, label %.lr.ph.i.i11.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit

.lr.ph.i.i11.i.preheader:                         ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i10.i
  %i.hd = add nuw nsw i64 %i.gm, 1
  %i.he = sub nsw i64 %i.hd, %.sroa.5.0.i
  %i.hf = sub nsw i64 %i.gm, %.sroa.5.0.i
  %xtraiter382 = and i64 %i.he, 3                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.hg, %.lr.ph.i.i11.i.prol ], [ %i.gp, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.hg = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.hh = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.sroa.0.06.i.i12.i.prol
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !136, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i36, ptr %i.hj, align 8, !noalias !136
  %i.hk = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i16 %i.hk, ptr %i.hl, align 8, !noalias !136
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter382
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !102

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.gp, %.lr.ph.i.i11.i.preheader ], [ %i.hg, %.lr.ph.i.i11.i.prol ]
  %i.hm = icmp ult i64 %i.hf, 3
  br i1 %i.hm, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.ic, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.hn = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.sroa.0.06.i.i12.i
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !136, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i36, ptr %i.hp, align 8, !noalias !136
  %i.hq = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i16 %i.hq, ptr %i.hr, align 8, !noalias !136
  %i.hs = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hn
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !136, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i36, ptr %i.hu, align 8, !noalias !136
  %i.hv = trunc nuw nsw i64 %i.hn to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i16 %i.hv, ptr %i.hw, align 8, !noalias !136
  %i.hx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hs
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !136, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i36, ptr %i.hz, align 8, !noalias !136
  %i.ia = trunc nuw nsw i64 %i.hs to i16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i16 %i.ia, ptr %i.ib, align 8, !noalias !136
  %i.ic = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.id = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hx
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !136, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %spec.select.i36, ptr %i.if, align 8, !noalias !136
  %i.ig = trunc nuw nsw i64 %i.hx to i16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i16 %i.ig, ptr %i.ih, align 8, !noalias !136
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.ic, %i.ha
  br i1 %exitcond.not.i.i13.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph.i.i11.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i10.i
  %i.ii = load ptr, ptr %i.bu, align 8, !noalias !117, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ii, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i.i, %bb.m, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtBb_7set_val9SetValZSTE12insert_entry0Cs7ZUl82OSlxp_6rustls.exit
  %spec.select37.i.sink = phi ptr [ %spec.select37.i, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtBb_7set_val9SetValZSTE12insert_entry0Cs7ZUl82OSlxp_6rustls.exit ], [ %i.a, %bb.m ], [ %spec.select37.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i.i ], [ %spec.select37.i, %.lr.ph.i.i.i ], [ %spec.select37.i, %.lr.ph.i.i.i.prol.loopexit ]
  %spec.select.i.sink = phi i64 [ %spec.select.i, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtBb_7set_val9SetValZSTE12insert_entry0Cs7ZUl82OSlxp_6rustls.exit ], [ %i.ay, %bb.m ], [ %spec.select.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i.i ], [ %spec.select.i, %.lr.ph.i.i.i ], [ %spec.select.i, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.510.0.i.sink = phi i64 [ %.sroa.510.0.i, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtBb_7set_val9SetValZSTE12insert_entry0Cs7ZUl82OSlxp_6rustls.exit ], [ %i.k, %bb.m ], [ %.sroa.510.0.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtB4_7set_val9SetValZSTEEECs7ZUl82OSlxp_6rustls.exit.i.i ], [ %.sroa.510.0.i, %.lr.ph.i.i.i ], [ %.sroa.510.0.i, %.lr.ph.i.i.i.prol.loopexit ]
  store ptr %spec.select37.i.sink, ptr %0, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.sink, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i.sink, ptr %i.ik, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MuttNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treetECs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val51 = load i16, ptr %3, align 2
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !noundef !5 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i83, i64 2 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i82, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.03.i83 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i82 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.val6.i = load i16, ptr %.sroa.0.03.i83, align 2, !noundef !5
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16 %.val51, i16 %.val6.i)
  switch i8 %i.j, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i82, %.lr.ph ] ; 3 uses
  %i.k = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.k, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i82, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.l, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !143, !noundef !5 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.07, i64 noundef %..i, i64 noundef 8) #31, !noalias !144
  %i.g = load ptr, ptr %i.e, align 8, !noalias !143, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i4, i64 noundef 8) #31, !noalias !144
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 890
  %i.g = load i16, ptr %i.f, align 2, !noundef !5
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.ab, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.039, align 8, !noalias !153, !noundef !5 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.k = zext i16 %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ab, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %i.l = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.m = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls.exit

bb.c:                                             ; preds = %._crit_edge
  %i.n = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 904
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.i.prol = phi ptr [ %i.q, %.prol.preheader ], [ %i.p, %bb.c ]
  %.sroa.019.0.in.i.prol = phi i64 [ %.sroa.019.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.i.prol = add i64 %.sroa.019.0.in.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.prol = load ptr, ptr %.sroa.017.0.in.i.prol, align 8, !noalias !154, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 896 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !152

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.unr = phi ptr [ %i.p, %bb.c ], [ %i.q, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %i.r = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.r, label %_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i = phi ptr [ %i.aa, %.new ], [ %.sroa.017.0.in.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i = phi i64 [ %.sroa.019.0.i.7, %.new ], [ %.sroa.019.0.in.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 896
  %.sroa.017.0.i.1 = load ptr, ptr %i.s, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.1, i64 896
  %.sroa.017.0.i.2 = load ptr, ptr %i.t, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.2, i64 896
  %.sroa.017.0.i.3 = load ptr, ptr %i.u, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.3, i64 896
  %.sroa.017.0.i.4 = load ptr, ptr %i.v, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.4, i64 896
  %.sroa.017.0.i.5 = load ptr, ptr %i.w, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.5, i64 896
  %.sroa.017.0.i.6 = load ptr, ptr %i.x, align 8, !noalias !154, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.6, i64 896
  %.sroa.019.0.i.7 = add i64 %.sroa.019.0.in.i, -8 ; 2 uses
  %.sroa.017.0.i.7 = load ptr, ptr %i.y, align 8, !noalias !154, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %.sroa.019.0.i.7, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.7, i64 896
  br i1 %i.z, label %_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls.exit, label %.new

_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.7.0 = phi i64 [ %i.m, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.029 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.017.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.7, %.new ]
  store ptr %.sroa.0.029, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = add i64 %.sroa.5.038, 1                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 888
  %i.ad = load i16, ptr %i.ac, align 8, !noalias !153 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.038, 0
  %..i = select i1 %.not.i, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i, i64 noundef 8) #31, !noalias !155
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 890
  %i.af = load i16, ptr %i.ae, align 2, !noundef !5
  %i.ag = icmp ult i16 %i.ad, %i.af
  br i1 %i.ag, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 896, i64 992
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i34, i64 noundef 8) #31, !noalias !155
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls.exit, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !160, !noundef !5 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 40, i64 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.07, i64 noundef %..i, i64 noundef 8) #31, !noalias !161
  %i.g = load ptr, ptr %i.e, align 8, !noalias !160, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 40, i64 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i4, i64 noundef 8) #31, !noalias !161
  ret void
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs7ZUl82OSlxp_6rustls6client2hsNtB2_16ClientHelloInput3new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.gb, align 8
  store i64 -1, ptr %0, align 8
  %i.gc = load i64, ptr %i.s, align 8, !range !12, !alias.scope !693, !noundef !5
  %i.gd = icmp eq i64 %i.gc, -2
  br i1 %i.gd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client2hs18ClientSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63 unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  %i.ge = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %i.ge, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.014.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false)
  %.sroa.014.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.gf = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.014.sroa.0.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.sroa.0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.014.sroa.0.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %i.s, i64 152, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.014.sroa.0, i64 232, i1 false)
  %.sroa.014.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 -2, ptr %.sroa.014.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.gf, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %.sroa.5.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i, %bb.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65, %bb.cm
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit61: ; preds = %bb.ch, %bb.ci, %bb.cn
  %.pn = phi { ptr, i32 } [ %i.gg, %bb.cn ], [ %i.fw, %bb.ci ], [ %i.fw, %bb.ch ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client6common18ClientHelloDetailsEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u) #33
          to label %.body unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit61

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63: ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.sroa.0)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client6common18ClientHelloDetailsEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u)
          to label %bb.co unwind label %bb.ar

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit: ; preds = %bb.bi, %bb.bh, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.gh = load ptr, ptr %i.ab, align 8, !alias.scope !696, !nonnull !5, !noundef !5
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !696
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #35
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65 unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cw, %bb.ci, %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit61, %bb.ca
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB1e_.exit: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit: ; preds = %.body, %bb.ao, %bb.cr
  %.pn44 = phi { ptr, i32 } [ %i.gl, %bb.cr ], [ %.pn42, %bb.ao ], [ %.pn42, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #33
          to label %common.resume unwind label %bb.cq

bb.cr:                                            ; preds = %bb.cp
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist9RetrievedNtNtNtB14_6client2hs18ClientSessionValueEEEB14_.exit, %bb.cp
  %i.gm = load i8, ptr %1, align 8, !range !16, !alias.scope !697, !noundef !5
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

bb.cs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit65
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.gp = load i64, ptr %i.go, align 8, !range !9, !alias.scope !698, !noundef !5
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %common.resume unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit, %bb.cu
  %common.resume.op = phi { ptr, i32 } [ %i.gr, %bb.cu ], [ %.pn44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i: ; preds = %bb.ct
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.go)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

.thread:                                          ; preds = %bb.cd, %bb.ca, %.thread77
  %.pn4070 = phi { ptr, i32 } [ %i.fe, %bb.ca ], [ %lpad.thr_comm, %.thread77 ], [ %i.fi, %bb.cd ] ; 2 uses
  %i.gt = load i64, ptr %i.aa, align 8, !range !12, !alias.scope !699, !noundef !5
  %i.gu = icmp eq i64 %i.gt, -2
  br i1 %i.gu, label %.body, label %bb.cw

bb.cw:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client2hs18ClientSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.aa)
          to label %.body unwind label %bb.cq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage24into_plain_message_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp ult i64 %3, %2
  %.not = icmp ugt i64 %3, %i.b
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !700, !noundef !5
  %i.j = sub nuw i64 %3, %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.g, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.o = load <2 x i16>, ptr %i.e, align 2
  store <2 x i16> %i.o, ptr %i.n, align 2
  store ptr %i.k, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.p, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 16385
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !705, !nonnull !5 ; 2 uses
  %.not.i32 = icmp eq i64 %i.b, 0
  br i1 %.not.i32, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.f = add nsw i64 %i.e, -1                     ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !noalias !706, !noundef !5 ; 2 uses
  switch i8 %i.h, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit [
    i8 0, label %bb.c
    i8 20, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11
    i8 21, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit
    i8 22, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27
    i8 23, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37
    i8 24, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread
  ]

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit: ; preds = %bb.c, %.lr.ph, %bb.b
  %i.i = phi i64 [ 0, %bb.b ], [ %i.f, %.lr.ph ], [ %i.f, %bb.c ]
  %.sroa.8.0.i = phi i8 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.8.0.i, 0
  br i1 %i.j, label %bb.e, label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

bb.d:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit
  store i8 9, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 22, ptr %.sroa.45.0..sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread, %bb.e, %bb.d
  ret void

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37: ; preds = %.lr.ph
  br label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread

_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread: ; preds = %.lr.ph, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit
  %.sroa.0.0.i22 = phi i8 [ 5, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ 2, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ 1, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ 3, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ 4, %.lr.ph ]
  %.sroa.8.0.i21 = phi i8 [ %.sroa.8.0.i, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ 0, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ 0, %.lr.ph ]
  %i.k = phi i64 [ %i.i, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.loopexit11 ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit27 ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit ], [ %i.f, %_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inbound19unpad_tls13_payload.exit.thread.loopexit37 ], [ %i.f, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0.0.i22, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.8.0.i21, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 5, ptr %.sroa.7.0..sroa_idx, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit, label %bb.b

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCs7ZUl82OSlxp_6rustls.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs7ZUl82OSlxp_6rustls5tls13NtB5_13VerifyMessage3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(34) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [162 x i8], align 1               ; 6 uses
  %i.b = tail call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(162) %i.a, i8 32, i64 162, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.c, i64 noundef 34, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
  %i.d = call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  %i.e = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %.not = icmp ugt i64 %i.e, 64
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  %i.g = extractvalue { ptr, i64 } %i.b, 1
  %i.h = add i64 %i.g, 98
  %i.i = call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(162) %i.l, ptr noundef nonnull align 1 dereferenceable(162) %i.a, i64 162, i1 false)
  store i64 %i.h, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9wrap_copyCs7ZUl82OSlxp_6rustls(i64 %.0.val, ptr nofree captures(none) %.8.val, i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %0                           ; 2 uses
  %i.d = add i64 %i.c, %.0.val                    ; 2 uses
  %.not = icmp ult i64 %i.d, %.0.val
  %. = select i1 %.not, i64 %i.d, i64 %i.c
  %i.e = icmp ult i64 %., %2                      ; 2 uses
  %i.f = sub i64 %.0.val, %0                      ; 11 uses
  %i.g = sub i64 %.0.val, %1                      ; 11 uses
  %i.h = icmp ult i64 %i.f, %2
  %i.i = icmp ult i64 %i.g, %2                    ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.l = mul nuw nsw i64 %2, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.j, i64 %i.l, i1 false)
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = getelementptr [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = sub nuw i64 %2, %i.g
  %i.q = getelementptr [24 x i8], ptr %i.m, i64 %i.g
  %i.r = mul nuw nsw i64 %i.p, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.q, i64 %i.r, i1 false)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.t = getelementptr [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.u = getelementptr [24 x i8], ptr %i.t, i64 %i.g
  %i.v = mul nuw nsw i64 %i.s, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.u, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %1
  %i.x = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr %.8.val, i64 %1 ; 4 uses
  %i.aa = mul nuw nsw i64 %i.f, 24                ; 2 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.ab = sub nuw i64 %2, %i.f
  %i.ac = getelementptr [24 x i8], ptr %i.z, i64 %i.f
  %i.ad = mul nuw nsw i64 %i.ab, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr nonnull align 8 %.8.val, i64 %i.ad, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ae = sub i64 %i.g, %i.f                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.af = getelementptr [24 x i8], ptr %i.z, i64 %i.f
  %i.ag = mul nuw nsw i64 %i.ae, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr nonnull align 8 %.8.val, i64 %i.ag, i1 false)
  %i.ah = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %i.ae
  %i.aj = mul nuw nsw i64 %i.ah, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ak = sub nuw i64 %2, %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.al = getelementptr [24 x i8], ptr %.8.val, i64 %1 ; 2 uses
  %i.am = getelementptr [24 x i8], ptr %i.al, i64 %i.f
  %i.an = mul nuw nsw i64 %i.ak, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %.8.val, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
  %i.ap = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.aq = sub i64 %i.f, %i.g                      ; 3 uses
  %i.ar = sub nuw i64 %2, %i.f
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %i.aq
  %i.at = mul nuw nsw i64 %i.ar, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %.8.val, i64 %i.at, i1 false)
end_hunk_1
