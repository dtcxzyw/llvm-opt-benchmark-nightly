Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_regex_bisim?download=true
inline.NumInlined: 348
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3seq11regex_bisim24classical_distinguishingEP4expr:bb.a
bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %2, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.x)
  %i.y = load i32, ptr %2, align 4, !tbaa !139
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %3, align 4, !tbaa !139
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i8, ptr %i.ac, align 4, !range !167
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %i.ab, i1 %i.ae, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load i8, ptr %i.af, align 4, !range !167
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond5 = select i1 %or.cond, i1 %i.ah, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !168
  %.not = icmp eq i32 %i.aj, %i.al
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

_ZNK8seq_util3rex8is_emptyEPK4expr.exit:          ; preds = %bb.c, %_ZNK8seq_util3rex6is_xorEPK4expr.exit.i
  %i.am = load i32, ptr %i.k, align 8, !tbaa !137
  %i.an = icmp eq i32 %i.am, %i.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, 36
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.i, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread

_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread:   ; preds = %bb.b, %bb.a, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %1)
  %i.as = load i32, ptr %4, align 4, !tbaa !139
  %i.at = icmp eq i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i8, ptr %i.au, align 4, !range !167
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread, %bb.h
  %.1 = phi i1 [ %.0, %bb.h ], [ %i.ax, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread ], [ false, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3seq11regex_bisim10merge_leafEP4expr(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK8seq_util3rex6is_xorEPK4expr.exit.i

_ZNK8seq_util3rex6is_xorEPK4expr.exit.i:          ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8, !tbaa !137
  %i.m = icmp eq i32 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 32
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK8seq_util3rex6is_xorEPK4expr.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !146
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %_ZNK8seq_util3rex6is_xorEPK4exprRPS1_S5_.exit, label %bb.d

_ZNK8seq_util3rex6is_xorEPK4exprRPS1_S5_.exit:    ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  br label %bb.h

bb.d:                                             ; preds = %bb.c, %_ZNK8seq_util3rex6is_xorEPK4expr.exit.i, %bb.a, %bb.b
  %i.y = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.z = tail call noundef ptr @_ZN8seq_util3rex8mk_emptyEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.y) ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !58
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !54
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.f, %bb.g
  %i.al = phi i32 [ %.pre2.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !55
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8seq_util3rex6is_xorEPK4exprRPS1_S5_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.017 = phi ptr [ %i.v, %_ZNK8seq_util3rex6is_xorEPK4exprRPS1_S5_.exit ], [ %i.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %.0 = phi ptr [ %i.x, %_ZNK8seq_util3rex6is_xorEPK4exprRPS1_S5_.exit ], [ %1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %i.ar = tail call noundef i32 @_ZN3seq11regex_bisim7node_ofEP4expr(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %.017) ; 8 uses
  %i.as = tail call noundef i32 @_ZN3seq11regex_bisim7node_ofEP4expr(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %.0) ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60 ; 7 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK16basic_union_find4findEj.exit14.thread, label %_ZNK16basic_union_find12get_num_varsEv.exit.i

_ZNK16basic_union_find12get_num_varsEv.exit.i:    ; preds = %bb.h
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !54 ; 2 uses
  %.not.i = icmp ult i32 %i.ar, %i.ax             ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i8

.preheader.i:                                     ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i, %.preheader.i
  %.09.i = phi i32 [ %i.ba, %.preheader.i ], [ %i.ar, %_ZNK16basic_union_find12get_num_varsEv.exit.i ] ; 3 uses
  %i.ay = zext i32 %.09.i to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !54 ; 2 uses
  %.not17.i = icmp eq i32 %i.ba, %.09.i
  br i1 %.not17.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i8, label %.preheader.i

_ZNK16basic_union_find12get_num_varsEv.exit.i8:   ; preds = %.preheader.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i
  %.2.i.ph = phi i32 [ %i.ar, %_ZNK16basic_union_find12get_num_varsEv.exit.i ], [ %.09.i, %.preheader.i ]
  %.not.i9 = icmp ult i32 %i.as, %i.ax            ; 2 uses
  br i1 %.not.i9, label %.preheader.i11, label %_ZNK16basic_union_find4findEj.exit14

.preheader.i11:                                   ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i8, %.preheader.i11
  %.09.i12 = phi i32 [ %i.bd, %.preheader.i11 ], [ %i.as, %_ZNK16basic_union_find12get_num_varsEv.exit.i8 ] ; 3 uses
  %i.bb = zext i32 %.09.i12 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54 ; 2 uses
  %.not17.i13 = icmp eq i32 %i.bd, %.09.i12
  br i1 %.not17.i13, label %_ZNK16basic_union_find4findEj.exit14, label %.preheader.i11

_ZNK16basic_union_find4findEj.exit14:             ; preds = %.preheader.i11, %_ZNK16basic_union_find12get_num_varsEv.exit.i8
  %.2.i10 = phi i32 [ %i.as, %_ZNK16basic_union_find12get_num_varsEv.exit.i8 ], [ %.09.i12, %.preheader.i11 ]
  %.not = icmp eq i32 %.2.i.ph, %.2.i10
  br i1 %.not, label %_ZN16basic_union_find5mergeEjj.exit, label %_ZNK16basic_union_find12get_num_varsEv.exit.i.i

_ZNK16basic_union_find4findEj.exit14.thread:      ; preds = %bb.h
  %.not27 = icmp eq i32 %i.ar, %i.as
  br i1 %.not27, label %_ZN16basic_union_find5mergeEjj.exit, label %.preheader.i15.preheader

_ZNK16basic_union_find12get_num_varsEv.exit.i.i:  ; preds = %_ZNK16basic_union_find4findEj.exit14
  br i1 %.not.i, label %.preheader.i.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i

.preheader.i.i:                                   ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i.i, %.preheader.i.i
  %.09.i.i = phi i32 [ %i.bg, %.preheader.i.i ], [ %i.ar, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ] ; 3 uses
  %i.be = zext i32 %.09.i.i to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !54 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.bg, %.09.i.i
  br i1 %.not17.i.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i, label %.preheader.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.i4.i: ; preds = %.preheader.i.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i
  %.2.i.ph.i = phi i32 [ %i.ar, %_ZNK16basic_union_find12get_num_varsEv.exit.i.i ], [ %.09.i.i, %.preheader.i.i ] ; 2 uses
  br i1 %.not.i9, label %.preheader.i7.i, label %_ZNK16basic_union_find4findEj.exit10.i

.preheader.i7.i:                                  ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i, %.preheader.i7.i
  %.09.i8.i = phi i32 [ %i.bj, %.preheader.i7.i ], [ %i.as, %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i ] ; 3 uses
  %i.bh = zext i32 %.09.i8.i to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !54 ; 2 uses
  %.not17.i9.i = icmp eq i32 %i.bj, %.09.i8.i
  br i1 %.not17.i9.i, label %_ZNK16basic_union_find4findEj.exit10.i, label %.preheader.i7.i

_ZNK16basic_union_find4findEj.exit10.i:           ; preds = %.preheader.i7.i, %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i
  %.2.i6.i = phi i32 [ %i.as, %_ZNK16basic_union_find12get_num_varsEv.exit.i4.i ], [ %.09.i8.i, %.preheader.i7.i ] ; 2 uses
  %i.bk = icmp eq i32 %.2.i.ph.i, %.2.i6.i
  br i1 %i.bk, label %_ZN16basic_union_find5mergeEjj.exit, label %.preheader.i15.preheader

.preheader.i15.preheader:                         ; preds = %_ZNK16basic_union_find4findEj.exit14.thread, %_ZNK16basic_union_find4findEj.exit10.i
  %.2.i6.i46 = phi i32 [ %.2.i6.i, %_ZNK16basic_union_find4findEj.exit10.i ], [ %i.as, %_ZNK16basic_union_find4findEj.exit14.thread ] ; 3 uses
  %.2.i30.i45 = phi i32 [ %.2.i.ph.i, %_ZNK16basic_union_find4findEj.exit10.i ], [ %i.ar, %_ZNK16basic_union_find4findEj.exit14.thread ] ; 3 uses
  br label %.preheader.i15

.preheader.i15:                                   ; preds = %.preheader.i15.preheader, %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i.i
  %i.bl = phi ptr [ %.pre.i, %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i.i ], [ %i.au, %.preheader.i15.preheader ] ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i11.i

_ZNK16basic_union_find12get_num_varsEv.exit.i11.i: ; preds = %.preheader.i15
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !54
  %.not.i12.i = icmp ult i32 %i.ar, %i.bo
  br i1 %.not.i12.i, label %_ZN16basic_union_find11ensure_sizeEj.exit.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i.i

_ZNK16basic_union_find12get_num_varsEv.exit.thread.i.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i11.i, %.preheader.i15
  %i.bp = tail call noundef i32 @_ZN16basic_union_find6mk_varEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !60
  br label %.preheader.i15, !llvm.loop !169

_ZN16basic_union_find11ensure_sizeEj.exit.i:      ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i11.i, %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i15.i
  %i.bq = phi ptr [ %.pre32.i, %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i15.i ], [ %i.bl, %_ZNK16basic_union_find12get_num_varsEv.exit.i11.i ] ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i15.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.i13.i

_ZNK16basic_union_find12get_num_varsEv.exit.i13.i: ; preds = %_ZN16basic_union_find11ensure_sizeEj.exit.i
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !54
  %.not.i14.i = icmp ult i32 %i.as, %i.bt
  br i1 %.not.i14.i, label %_ZN16basic_union_find11ensure_sizeEj.exit16.i, label %_ZNK16basic_union_find12get_num_varsEv.exit.thread.i15.i

_ZNK16basic_union_find12get_num_varsEv.exit.thread.i15.i: ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i13.i, %_ZN16basic_union_find11ensure_sizeEj.exit.i
  %i.bu = tail call noundef i32 @_ZN16basic_union_find6mk_varEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  %.pre32.i = load ptr, ptr %i.at, align 8, !tbaa !60
  br label %_ZN16basic_union_find11ensure_sizeEj.exit.i, !llvm.loop !169

_ZN16basic_union_find11ensure_sizeEj.exit16.i:    ; preds = %_ZNK16basic_union_find12get_num_varsEv.exit.i13.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 4 uses
  %i.bx = zext i32 %.2.i30.i45 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !54
  %i.ca = zext i32 %.2.i6.i46 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !54
  %i.cd = icmp ugt i32 %i.bz, %i.cc               ; 2 uses
  %spec.select.i = select i1 %i.cd, i32 %.2.i6.i46, i32 %.2.i30.i45
  %spec.select31.i = select i1 %i.cd, i32 %.2.i30.i45, i32 %.2.i6.i46 ; 2 uses
  %i.ce = zext i32 %spec.select.i to i64          ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ce
  store i32 %spec.select31.i, ptr %i.cf, align 4, !tbaa !54
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !54
  %i.ci = zext i32 %spec.select31.i to i64        ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !54
  %i.cl = add i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ce ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ci ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !54
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !54
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !54
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !54
  br label %_ZN16basic_union_find5mergeEjj.exit

_ZN16basic_union_find5mergeEjj.exit:              ; preds = %_ZN16basic_union_find11ensure_sizeEj.exit16.i, %_ZNK16basic_union_find4findEj.exit10.i, %_ZNK16basic_union_find4findEj.exit14.thread, %_ZNK16basic_union_find4findEj.exit14
  %i.cs = phi i1 [ false, %_ZNK16basic_union_find4findEj.exit14.thread ], [ false, %_ZNK16basic_union_find4findEj.exit14 ], [ true, %_ZNK16basic_union_find4findEj.exit10.i ], [ true, %_ZN16basic_union_find11ensure_sizeEj.exit16.i ]
  ret i1 %i.cs
}

declare noundef ptr @_ZN8seq_util3rex8mk_emptyEP4sort(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN3seq11regex_bisim14are_equivalentEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN3seq11regex_bisim19are_equivalent_coreEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN3seq11regex_bisim19are_equivalent_coreEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.3, align 8           ; 5 uses
  %4 = alloca %class.obj_ref.3, align 8           ; 5 uses
  %5 = alloca %"struct.seq_util::rex::info", align 4 ; 4 uses
  %6 = alloca %"struct.seq_util::rex::info", align 4 ; 4 uses
  %7 = alloca %class.obj_ref.3, align 8           ; 11 uses
  %8 = alloca %class.obj_ref.3, align 8           ; 10 uses
  %9 = alloca %class.ref_pair_vector, align 8     ; 10 uses
  %10 = alloca %class.ref_vector, align 8         ; 9 uses
  %i.a = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !133
  %i.g = load i32, ptr %i.c, align 8, !tbaa !137
  %i.h = icmp eq i32 %i.g, %i.f
  br i1 %i.h, label %_ZNK8seq_util5is_reEP4expr.exit.i, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

_ZNK8seq_util5is_reEP4expr.exit.i:                ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !138
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.b:                                             ; preds = %_ZNK8seq_util5is_reEP4expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull %1)
  %i.m = load i32, ptr %6, align 4, !tbaa !139
  %i.n = icmp eq i32 %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.n, label %bb.c, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

_ZN3seq11regex_bisim12is_supportedEP4expr.exit:   ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.t = load i8, ptr %i.s, align 2
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.d:                                             ; preds = %_ZN3seq11regex_bisim12is_supportedEP4expr.exit
  %i.v = call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132  ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i93

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i93: ; preds = %bb.d
  %i.z = load i32, ptr %i.e, align 8, !tbaa !133
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !137
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %_ZNK8seq_util5is_reEP4expr.exit.i95, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

_ZNK8seq_util5is_reEP4expr.exit.i95:              ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !138
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.e:                                             ; preds = %_ZNK8seq_util5is_reEP4expr.exit.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull %2)
  %i.af = load i32, ptr %5, align 4, !tbaa !139
  %i.ag = icmp eq i32 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.ag, label %bb.f, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 65535
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit96, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

_ZN3seq11regex_bisim12is_supportedEP4expr.exit96: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.am = load i8, ptr %i.al, align 2
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread

bb.g:                                             ; preds = %_ZN3seq11regex_bisim12is_supportedEP4expr.exit96
  %i.ao = icmp eq ptr %1, %2
  br i1 %i.ao, label %_ZN3seq11regex_bisim12is_supportedEP4expr.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN3seq11regex_bisim5resetEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66, !nonnull !31, !align !32
  call void @_ZN12seq_rewriter20mk_re_xor_simplifiedEP4exprS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.3) align 8 %7, ptr noundef nonnull align 8 dereferenceable(1800) %i.aq, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.ar = load ptr, ptr %7, align 8, !tbaa !68    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load i32, ptr %i.as, align 8, !tbaa !140
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 65535
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit

_ZNK8seq_util3rex8is_emptyEPK4expr.exit:          ; preds = %bb.i
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !137
  %i.bd = icmp eq i32 %i.bc, %i.at
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp eq i32 %i.bf, 36
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread

_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread:   ; preds = %bb.i, %bb.h, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !66, !nonnull !31, !align !32
  invoke void @_ZN12seq_rewriter11is_nullableEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.3) align 8 %4, ptr noundef nonnull align 8 dereferenceable(1800) %i.bi, ptr noundef nonnull %i.ar)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread
  %i.bj = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !31, !align !32 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !68    ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 832
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !127
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 840
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !128
  %i.bq = icmp eq ptr %i.bk, %i.bp
  %..i = sext i1 %i.bq to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  %.0.i97 = phi i32 [ 1, %.noexc ], [ %..i, %bb.j ]
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129, !nonnull !31, !align !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !58
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !58
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.o

end_hunk_0
