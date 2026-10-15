Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe_datatype_plugin?download=true
inline.NumInlined: 929
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2qe14datatype_atoms8add_atomER12contains_appbP3app:bb.a

_ZNK11ast_manager5is_eqEPK4expr.exit:             ; preds = %bb.e
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !146
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, 2
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.f, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

bb.f:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bj = tail call noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.bi, ptr noundef %i.bh)
  br i1 %i.bj, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit, label %.split

.split:                                           ; preds = %bb.g
  %i.bk = tail call noundef zeroext i1 @_ZN2qe14datatype_atoms11solve_diseqER12contains_appP4exprS4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.bf, ptr noundef %i.bh)
  br i1 %i.bk, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i, label %.thread44

_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit: ; preds = %bb.g
  %i.bl = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !61, !align !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 832
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !215
  %i.bo = tail call noundef zeroext i1 @_ZN2qe14datatype_atoms8solve_eqER12contains_appP4exprS4_S4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bn)
  br i1 %i.bo, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %.thread46

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !64
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !57 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !57
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i, label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i: ; preds = %.split
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !64
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !57 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !57
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i, label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i, %bb.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, %bb.h
  %.sink = phi ptr [ %i.bs, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.bs, %bb.h ], [ %i.cd, %bb.i ], [ %i.cd, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i ] ; 2 uses
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink)
  %.pre.i.i5.sink.i = load ptr, ptr %.sink, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert.i.i6.i = getelementptr inbounds i8, ptr %.pre.i.i5.sink.i, i64 -4
  %.pre2.i.i7.i = load i32, ptr %.phi.trans.insert.i.i6.i, align 4, !tbaa !57
  br label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit

_ZN2qe14datatype_atoms8add_atomEP3appb.exit:      ; preds = %bb.h, %bb.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i
  %.sink17.i = phi ptr [ %i.bt, %bb.h ], [ %i.ce, %bb.i ], [ %.pre.i.i5.sink.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i32 [ %i.bw, %bb.h ], [ %i.ch, %bb.i ], [ %.pre2.i.i7.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sink17.i, i64 -4
  %i.cm = zext i32 %.sink.i to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sink17.i, i64 %i.cm
  store ptr %3, ptr %i.cn, align 8, !tbaa !115
  %i.co = add i32 %.sink.i, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !57
  br label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit.thread: ; preds = %bb.f
  %i.cp = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 2 uses
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !58 ; 3 uses
  %i.cr = tail call noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.bi, ptr noundef %i.cq)
  br i1 %i.cr, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread, label %bb.j

.thread46:                                        ; preds = %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit
  %i.cs = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.ct = load ptr, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.cu = tail call noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.bi, ptr noundef %i.ct)
  br i1 %i.cu, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28

.thread44:                                        ; preds = %.split
  %i.cv = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.cx = tail call noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.bi, ptr noundef %i.cw)
  br i1 %i.cx, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread, label %.split49

bb.j:                                             ; preds = %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit.thread
  br i1 %2, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28, label %.split49

.split49:                                         ; preds = %.thread44, %bb.j
  %i.cy = phi ptr [ %i.cp, %bb.j ], [ %i.cv, %.thread44 ]
  %i.cz = phi ptr [ %i.cq, %bb.j ], [ %i.cw, %.thread44 ]
  %i.da = tail call noundef zeroext i1 @_ZN2qe14datatype_atoms11solve_diseqER12contains_appP4exprS4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.cy, ptr noundef %i.cz)
  br i1 %i.da, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i30, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread

_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28: ; preds = %.thread46, %bb.j
  %i.db = phi ptr [ %i.cp, %bb.j ], [ %i.cs, %.thread46 ]
  %i.dc = phi ptr [ %i.cq, %bb.j ], [ %i.ct, %.thread46 ]
  %i.dd = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !61, !align !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 832
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !215
  %i.dg = tail call noundef zeroext i1 @_ZN2qe14datatype_atoms8solve_eqER12contains_appP4exprS4_S4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.db, ptr noundef %i.dc, ptr noundef %i.df)
  br i1 %i.dg, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i38, label %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i38: ; preds = %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !64
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !75 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i38
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !57 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !57
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33, label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit39

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i30: ; preds = %.split49
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !64
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !75 ; 4 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i30
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !57 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !57
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33, label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit39

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i30, %bb.l, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i38, %bb.k
  %.sink65 = phi ptr [ %i.dk, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i38 ], [ %i.dk, %bb.k ], [ %i.dv, %bb.l ], [ %i.dv, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i4.i30 ] ; 2 uses
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink65)
  %.pre.i.i5.sink.i35 = load ptr, ptr %.sink65, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert.i.i6.i36 = getelementptr inbounds i8, ptr %.pre.i.i5.sink.i35, i64 -4
  %.pre2.i.i7.i37 = load i32, ptr %.phi.trans.insert.i.i6.i36, align 4, !tbaa !57
  br label %_ZN2qe14datatype_atoms8add_atomEP3appb.exit39

_ZN2qe14datatype_atoms8add_atomEP3appb.exit39:    ; preds = %bb.k, %bb.l, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33
  %.sink17.i31 = phi ptr [ %i.dl, %bb.k ], [ %i.dw, %bb.l ], [ %.pre.i.i5.sink.i35, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33 ] ; 2 uses
  %.sink.i32 = phi i32 [ %i.do, %bb.k ], [ %i.dz, %bb.l ], [ %.pre2.i.i7.i37, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split.i33 ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sink17.i31, i64 -4
  %i.ee = zext i32 %.sink.i32 to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sink17.i31, i64 %i.ee
  store ptr %3, ptr %i.ef, align 8, !tbaa !115
  %i.eg = add i32 %.sink.i32, 1
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !57
  br label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread: ; preds = %.thread46, %.thread44, %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit.thread, %.split49, %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !58
  %i.ei = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.ej = tail call noundef zeroext i1 @_ZN2qe14datatype_atoms12add_unsat_eqER12contains_appP3appP4exprS6_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull %3, ptr noundef %i.eh, ptr noundef %i.ei)
  br label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZNK11ast_manager5is_eqEPK4expr.exit.thread:      ; preds = %bb.e, %_ZNK8datatype4util13is_recognizerEP9func_decl.exit.thread, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN2qe14datatype_atoms8add_atomEP3appb.exit, %_ZN2qe14datatype_atoms8add_atomEP3appb.exit39, %_ZNK11ast_manager5is_eqEPK4expr.exit, %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ true, %_ZN2qe14datatype_atoms8add_atomEP3appb.exit ], [ true, %_ZN2qe14datatype_atoms8add_atomEP3appb.exit39 ], [ %i.ej, %_ZN2qe14datatype_atoms6add_eqER12contains_appbP4exprS4_.exit28.thread ], [ false, %_ZNK11ast_manager5is_eqEPK4expr.exit ], [ false, %_ZNK8datatype4util13is_recognizerEP9func_decl.exit.thread ], [ false, %bb.e ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2qe14datatype_atoms12add_unsat_eqER12contains_appP3appP4exprS6_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.ptr_vector, align 8          ; 12 uses
  %6 = alloca %class.ast_mark, align 8            ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !79     ; 3 uses
  %.not = icmp eq ptr %i.a, %3                    ; 2 uses
  %spec.select47 = select i1 %.not, ptr %4, ptr %3 ; 2 uses
  %.not2348 = icmp eq ptr %4, %i.a
  %.not23 = or i1 %.not, %.not2348
  br i1 %.not23, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %i.b, ptr noundef %spec.select47)
  br i1 %i.c, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %6, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph unwind label %.loopexit.split-lp

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %bb.c
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !22  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !57 ; 2 uses
  %i.f = zext i32 %.pre2.i to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.f
  store ptr %spec.select47, ptr %i.g, align 8, !tbaa !58
  %i.h = add i32 %.pre2.i, 1
  store i32 %i.h, ptr %.phi.trans.insert.i, align 4, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %.backedge
  %i.j = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.s, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZN6vectorIP4exprLb0EjE4backEv.exit

_ZN6vectorIP4exprLb0EjE4backEv.exit:              ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 7 uses
  store i32 %i.n, ptr %i.k, align 4, !tbaa !57
  %i.r = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %i.q)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit
  br i1 %i.r, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.r, %_ZNK8datatype4util14is_constructorEPK3app.exit, %.noexc30, %bb.m, %.preheader, %bb.d, %bb.f
  %i.s = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, !llvm.loop !257

.loopexit:                                        ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.c, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %i.q, i1 noundef zeroext true)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 65535
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq ptr %i.q, %i.a
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !64
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !57
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.k:                                             ; preds = %bb.j, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !57
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.j, %.noexc28
  %i.ak = phi i32 [ %.pre2.i.i, %.noexc28 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.i, %.noexc28 ], [ %i.ad, %bb.j ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  store ptr %2, ptr %i.ao, align 8, !tbaa !115
  %i.ap = add i32 %i.ak, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !57
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.aq = invoke noundef i32 @_ZNK8datatype4util3fidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.l
  %i.ar = load i32, ptr %i.u, align 4
  %i.as = and i32 %i.ar, 65535
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %.backedge

bb.m:                                             ; preds = %.noexc30
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i29, label %.backedge, label %_ZNK8datatype4util14is_constructorEPK3app.exit

_ZNK8datatype4util14is_constructorEPK3app.exit:   ; preds = %bb.m
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !146
  %i.az = icmp eq i32 %i.ay, %i.aq
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %.preheader, label %.backedge, !llvm.loop !257

.preheader:                                       ; preds = %_ZNK8datatype4util14is_constructorEPK3app.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !216
  %.not50 = icmp eq i32 %i.bf, 0
  br i1 %.not50, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load ptr, ptr %5, align 8, !tbaa !22
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %.lr.ph, %bb.r
  %i.bi = phi ptr [ %.pre, %.lr.ph ], [ %i.br, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !58
  %i.bl = icmp eq ptr %i.bi, null
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !57 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc34 unwind label %bb.s

.noexc34:                                         ; preds = %bb.q
  %.pre.i31 = load ptr, ptr %5, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert.i32 = getelementptr inbounds i8, ptr %.pre.i31, i64 -4
  %.pre2.i33 = load i32, ptr %.phi.trans.insert.i32, align 4, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %.noexc34, %bb.p
  %i.br = phi ptr [ %.pre.i31, %.noexc34 ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bs = phi i32 [ %.pre2.i33, %.noexc34 ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !58
  %i.bw = add i32 %i.bs, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.be, align 8, !tbaa !216
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.o, label %.backedge, !llvm.loop !258

bb.s:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %.backedge, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.019 = phi i1 [ true, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ false, %.backedge ], [ false, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %6, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !121 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cc)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #16
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.t, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !121 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN8ast_markD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ch)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #16
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cl = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8ast_markD2Ev.exit
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cm)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #16
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN8ast_markD2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.aa

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.s
  %.pn25 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ca, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8ast_markD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn25

bb.aa:                                            ; preds = %bb.b, %bb.a, %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %.120 = phi i1 [ false, %bb.a ], [ %.019, %_ZN6vectorIP4exprLb0EjED2Ev.exit ], [ false, %bb.b ]
  ret i1 %.120
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2qe14datatype_atoms8solve_eqER12contains_appP4exprS4_S4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.obj_ref.59, align 8          ; 6 uses
  %6 = alloca %class.obj_ref.62, align 8          ; 6 uses
  %7 = alloca %class.obj_ref.62, align 8          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK8datatype4util14is_constructorEPK3app.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !79
  %i.h = icmp eq ptr %i.g, %2
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !64
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !64
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !57   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !57
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.e, %bb.f
  %i.t = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store ptr %3, ptr %i.x, align 8, !tbaa !58
  %i.y = add i32 %i.t, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !57
  %.not.i.i.i.i52 = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i52, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i53, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !64
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i53: ; preds = %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i53
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !57
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit57

bb.i:                                             ; preds = %bb.h, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i53
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %.pre.i.i54 = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert.i.i55 = getelementptr inbounds i8, ptr %.pre.i.i54, i64 -4
  %.pre2.i.i56 = load i32, ptr %.phi.trans.insert.i.i55, align 4, !tbaa !57
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit57

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit57: ; preds = %bb.h, %bb.i
  %i.ak = phi i32 [ %.pre2.i.i56, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.i54, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  store ptr %4, ptr %i.ao, align 8, !tbaa !58
  %i.ap = add i32 %i.ak, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !57
  br label %_ZNK8datatype4util14is_constructorEPK3app.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ar = tail call noundef i32 @_ZNK8datatype4util3fidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
  %i.as = load i32, ptr %i.c, align 4
  %i.at = and i32 %i.as, 65535
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %_ZNK8datatype4util14is_constructorEPK3app.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i58, label %_ZNK8datatype4util14is_constructorEPK3app.exit.thread, label %_ZNK8datatype4util14is_constructorEPK3app.exit

_ZNK8datatype4util14is_constructorEPK3app.exit:   ; preds = %bb.k
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !146
  %i.ba = icmp eq i32 %i.az, %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.l, label %_ZNK8datatype4util14is_constructorEPK3app.exit.thread

bb.l:                                             ; preds = %_ZNK8datatype4util14is_constructorEPK3app.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bf = tail call noundef ptr @_ZN8datatype4util18get_constructor_isEP9func_decl(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull %i.aw) ; 6 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !61, !align !62 ; 2 uses
  store ptr %i.bf, ptr %5, align 8, !tbaa !218
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !15
  %.not.i.i = icmp eq ptr %i.bf, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN7obj_refI9func_decl11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !64
  br label %_ZN7obj_refI9func_decl11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI9func_decl11ast_managerEC2EPS0_RS1_.exit: ; preds = %bb.l, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.bl = invoke noundef ptr @_ZN8datatype4util25get_constructor_accessorsEP9func_decl(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull %i.aw)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN7obj_refI9func_decl11ast_managerEC2EPS0_RS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bm = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !61, !align !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8, !tbaa !58
  %i.bn = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bm, ptr noundef %i.bf, i32 noundef 1, ptr noundef nonnull %i.b)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bo = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bm, i32 noundef 0, i32 noundef 5, ptr noundef %i.bn, ptr noundef %4)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %bb.p ; 6 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %bb.n
  %i.bp = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !61, !align !62 ; 2 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !114
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !15
  %.not.i.i59 = icmp eq ptr %i.bo, null           ; 2 uses
  br i1 %.not.i.i59, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i60

_ZN11ast_manager7inc_refEP3ast.exit.i.i60:        ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !64
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !64
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i.i60
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !216
  %.not73.not = icmp eq i32 %i.bv, 0
  br i1 %.not73.not, label %.critedge51, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.q

bb.o:                                             ; preds = %_ZN7obj_refI9func_decl11ast_managerEC2EPS0_RS1_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai
end_hunk_0
