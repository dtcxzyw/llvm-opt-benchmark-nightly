Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/factor_rewriter?download=true
inline.NumInlined: 1699
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN15factor_rewriter7mk_mulsEv:bb.a
  br i1 %i.ap, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !47
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit, %bb.g
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %.pre.i8 = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i9 = getelementptr inbounds i8, ptr %.pre.i8, i64 -4
  %.pre2.i10 = load i32, ptr %.phi.trans.insert.i9, align 4, !tbaa !47
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46, !nonnull !59, !noundef !59
  br label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12

_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12: ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  %.pre.i8.sink42 = phi ptr [ %.pre.i8, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %i.ao, %bb.g ] ; 2 uses
  %.pre2.i10.sink41 = phi i32 [ %.pre2.i10, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %i.ar, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %.pre, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %i.ac, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.pre.i8.sink42, i64 -4
  %i.ax = zext i32 %.pre2.i10.sink41 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i8.sink42, i64 %i.ax
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !43
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !43
  %i.ba = add i32 %.pre2.i10.sink41, 1
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !47
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = add i32 %i.bc, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.be
  tail call void @_ZN15factor_rewriter14mk_expand_mulsER10ptr_vectorI4exprE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !46  ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = add i32 %i.bj, -1
  %i.bl = zext i32 %i.bk to i64
  br label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14

_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14: ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12, %bb.h
  %.0.i.i13 = phi i64 [ %i.bl, %bb.h ], [ 4294967295, %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit12 ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.0.i.i13
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !47
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge: ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %.pre21 = load ptr, ptr %i.n, align 8, !tbaa !137
  %i.bs = add nuw i32 %.019, 1
  br label %bb.l

_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i: ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.bt = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bz)
          to label %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i unwind label %bb.j

._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i:    ; preds = %bb.i
  %.pre.i15 = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre.i15, i64 -4
  %.pre20 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  %.pre22 = add i32 %.pre20, -1
  br label %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #17
  unreachable

_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit: ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i
  %.pre-phi = phi i32 [ %i.bv, %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i ], [ %.pre22, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i ]
  %i.cc = phi ptr [ %i.bg, %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i ], [ %.pre.i15, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %.pre-phi, ptr %i.cd, align 4, !tbaa !47
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !137 ; 6 uses
  %.idx = shl nuw nsw i64 %i.am, 4                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 2 uses
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %.lr.ph.i.preheader, label %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i

_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i:   ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 4                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ck
  %i.cm = add nuw nsw i64 %.idx, 16
  %.not11.i = icmp samesign eq i64 %i.cm, %i.ck
  br i1 %.not11.i, label %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i
  %i.cn = phi ptr [ %i.cl, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i ], [ null, %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit ]
  %.0910.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0914.i = phi ptr [ %.09.i, %.lr.ph.i ], [ %.0910.i, %.lr.ph.i.preheader ] ; 2 uses
  %.013.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %i.cf, %.lr.ph.i.preheader ] ; 4 uses
  %i.co = load ptr, ptr %.0914.i, align 8, !tbaa !43
  store ptr %i.co, ptr %.013.i, align 8, !tbaa !141
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !231, !range !140, !noundef !59
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !139
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.09.i = getelementptr inbounds nuw i8, ptr %.0914.i, i64 16 ; 2 uses
  %.not.i17 = icmp eq ptr %.09.i, %i.cn
  br i1 %.not.i17, label %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit, label %.lr.ph.i, !llvm.loop !229

_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit: ; preds = %.lr.ph.i, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i
  %i.ct = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !47
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !47
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.cw

bb.l:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit
  %i.cx = phi ptr [ %i.ce, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %.pre21, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ] ; 2 uses
  %i.cy = phi ptr [ %i.cc, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %i.bg, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ]
  %.1 = phi i32 [ %.019, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %i.bs, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ]
  %i.cz = icmp eq ptr %i.cx, null
  br i1 %i.cz, label %.critedge, label %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit, !llvm.loop !230
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !121
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !121
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !123    ; 3 uses
  %.not.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i4, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124, !nonnull !59, !align !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !121
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !121
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull %i.d)
  br label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !123
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN15factor_rewriter15extract_factorsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %3 = alloca %class.svector.21, align 8          ; 11 uses
  %4 = alloca %class.rational, align 8            ; 14 uses
  %5 = alloca %class.rational, align 8            ; 16 uses
  %6 = alloca %class.rational, align 8            ; 12 uses
  %7 = alloca %class.ref_vector, align 8          ; 7 uses
  %8 = alloca %class.rational, align 8            ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 19 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i, align 8, !tbaa !43 ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !135, !nonnull !59, !align !60
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !121
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !121
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.k)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.j
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.s = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 0, ptr %i.t, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.u = phi ptr [ null, %bb.a ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !148
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46   ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit

_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread

bb.d:                                             ; preds = %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !30  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.i.i91.preheader, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread

.lr.ph.i.i91.preheader:                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ag = zext i32 %i.ae to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ai = phi ptr [ %i.at, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.u, %.lr.ph.i.i91.preheader ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.ab, %.lr.ph.i.i91.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !121
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !121
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i91
  %i.an = icmp eq ptr %i.ai, null
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc, %bb.f
  %i.at = phi ptr [ %.pre.i.i.i.i, %.noexc ], [ %i.ai, %bb.f ] ; 3 uses
  %i.au = phi i32 [ %.pre2.i.i.i.i, %.noexc ], [ %i.ap, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !43
  %i.ay = add i32 %i.au, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ah
  br i1 %i.ba, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i91

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !139, !range !140, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.ap, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bi)
          to label %bb.i unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 0, ptr %4, align 8, !tbaa !131
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -4
  store i8 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !130
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.bo, align 8, !tbaa !131
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = and i8 %i.bq, -4
  store i8 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.bs, align 8, !tbaa !130
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.i, %bb.ab
  %i.cd = phi ptr [ %i.ed, %bb.ab ], [ %i.cb, %bb.i ] ; 2 uses
  %indvars.iv424 = phi i64 [ %indvars.iv.next, %bb.ab ], [ 0, %bb.i ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv424, %i.cg
  br i1 %i.ch, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv424
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ck = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.ck, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  store i32 0, ptr %5, align 8, !tbaa !131, !alias.scope !238
  %i.cl = load i8, ptr %i.bu, align 4, !alias.scope !238
  %i.cm = and i8 %i.cl, -4                        ; 2 uses
  store i8 %i.cm, ptr %i.bu, align 4, !alias.scope !238
  store ptr null, ptr %i.bv, align 8, !tbaa !130, !alias.scope !238
  store i32 1, ptr %i.bw, align 8, !tbaa !131, !alias.scope !238
  %i.cn = load i8, ptr %i.bx, align 4, !alias.scope !238
  %i.co = and i8 %i.cn, -4
  store i8 %i.co, ptr %i.bx, align 4, !alias.scope !238
  store ptr null, ptr %i.by, align 8, !tbaa !130, !alias.scope !238
  %i.cp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133, !noalias !238 ; 2 uses
  %i.cq = load i8, ptr %i.bk, align 4, !noalias !238
  %i.cr = and i8 %i.cq, 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %4, align 8, !tbaa !131, !noalias !238
  store i32 %i.ct, ptr %5, align 8, !tbaa !131, !alias.scope !238
  store i8 %i.cm, ptr %i.bu, align 4, !alias.scope !238
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.z

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cu = load i8, ptr %i.bp, align 4, !noalias !238
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.cx = load i32, ptr %i.bo, align 8, !tbaa !131, !noalias !238
  store i32 %i.cx, ptr %i.bw, align 8, !tbaa !131, !alias.scope !238
  %i.cy = load i8, ptr %i.bx, align 4, !alias.scope !238
  %i.cz = and i8 %i.cy, -2
  store i8 %i.cz, ptr %i.bx, align 4, !alias.scope !238
  br label %_ZN8rationalC2ERKS_.exit.i

bb.p:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.z

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.p, %bb.o
  %i.da = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133, !noalias !238
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZngRK8rational.exit unwind label %9

9:                                                ; preds = %_ZN8rationalC2ERKS_.exit.i
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #16
  br label %.body

_ZngRK8rational.exit:                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.db = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %_ZngRK8rational.exit
  %i.dd = load i32, ptr %i.db, align 8, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 5
  br i1 %i.de, label %bb.q, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i

bb.q:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !42
  %i.dh = icmp eq i32 %i.dg, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i

_ZNK17arith_recognizers6is_intEPK4sort.exit.i:    ; preds = %bb.q, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %_ZngRK8rational.exit
  %i.di = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i ], [ %i.dh, %bb.q ], [ false, %_ZngRK8rational.exit ]
  %i.dj = load ptr, ptr %i.ca, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i

bb.r:                                             ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc96 unwind label %bb.aa

.noexc96:                                         ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %i.ca, align 8, !tbaa !134
  br label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i: ; preds = %.noexc96, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i
  %i.dk = phi ptr [ %.pre.i.i.i, %.noexc96 ], [ %i.dj, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i ]
  %i.dl = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.di)
          to label %bb.s unwind label %bb.aa      ; 3 uses

bb.s:                                             ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv424 ; 2 uses
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !135, !nonnull !59, !align !60
  %.not.i.i100 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i100, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !121
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !121
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.t, %bb.s
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !43 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.ds, null
  br i1 %.not.i3.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !121
  %i.dv = add i32 %i.du, -1                       ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !121
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.do, ptr noundef nonnull %i.ds)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.u, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.v
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !43
  %i.dx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.w
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.critedge86.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.noexc.i, %bb.w
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #17
  unreachable

bb.y:                                             ; preds = %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.z:                                             ; preds = %bb.p, %bb.n
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.r, %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i, %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #16
  br label %.body

.body:                                            ; preds = %bb.z, %9, %bb.aa
  %.pn76.pn = phi { ptr, i32 } [ %i.ec, %bb.aa ], [ %i.eb, %bb.z ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ao

bb.ab:                                            ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv424, 1
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.ab, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = and i8 %i.eg, -4
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ei, align 8, !tbaa !130
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.ej, align 8, !tbaa !131
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = and i8 %i.el, -4
  store i8 %i.em, ptr %i.ek, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.en, align 8, !tbaa !130
  %i.eo = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133
  store i32 -1, ptr %6, align 8, !tbaa !131
  store i8 %i.eh, ptr %i.ef, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %.critedge
  store i32 1, ptr %i.ej, align 8, !tbaa !131
  %i.ep = load i8, ptr %i.ek, align 4
  %i.eq = and i8 %i.ep, -2
  store i8 %i.eq, ptr %i.ek, align 4
  %i.er = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104: ; preds = %bb.ac
  %i.et = load i32, ptr %i.er, align 8, !tbaa !41
  %i.eu = icmp eq i32 %i.et, 5
  br i1 %i.eu, label %bb.ad, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105

bb.ad:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !42
  %i.ex = icmp eq i32 %i.ew, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105

_ZNK17arith_recognizers6is_intEPK4sort.exit.i105: ; preds = %bb.ad, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104, %bb.ac
  %i.ey = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104 ], [ %i.ex, %bb.ad ], [ false, %bb.ac ]
  %i.ez = load ptr, ptr %i.ca, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i106, label %bb.ae, label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107

bb.ae:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc109 unwind label %bb.al

.noexc109:                                        ; preds = %bb.ae
  %.pre.i.i.i108 = load ptr, ptr %i.ca, align 8, !tbaa !134
  br label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107: ; preds = %.noexc109, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105
  %i.fa = phi ptr [ %.pre.i.i.i108, %.noexc109 ], [ %i.ez, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105 ]
  %i.fb = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ey)
          to label %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111 unwind label %bb.al ; 3 uses

_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111: ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107
  %.not.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !121
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !121
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.af, %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !30  ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !47
  %i.fl = icmp eq i32 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc112 unwind label %bb.al

.noexc112:                                        ; preds = %bb.ah
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc112, %bb.ag
  %i.fm = phi i32 [ %.pre2.i.i, %.noexc112 ], [ %i.fi, %bb.ag ] ; 2 uses
  %i.fn = phi ptr [ %.pre.i.i, %.noexc112 ], [ %i.ff, %bb.ag ] ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fp = zext i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fp
  store ptr %i.fb, ptr %i.fq, align 8, !tbaa !43
  %i.fr = add i32 %i.fm, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !47
  %i.fs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i113 unwind label %bb.aj

.noexc.i113:                                      ; preds = %bb.ai
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
          to label %_ZN8rationalD2Ev.exit114 unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc.i113, %bb.ai
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #17
  unreachable

_ZN8rationalD2Ev.exit114:                         ; preds = %.noexc.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge86

bb.ak:                                            ; preds = %.critedge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah, %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107, %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn80 = phi { ptr, i32 } [ %i.fw, %bb.al ], [ %i.fv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ao

.critedge86.loopexit:                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge86

.critedge86:                                      ; preds = %.critedge86.loopexit, %_ZN8rationalD2Ev.exit114
  %i.fx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i115 unwind label %bb.an

.noexc.i115:                                      ; preds = %.critedge86
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_ZN8rationalD2Ev.exit116 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i115, %.critedge86
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #17
  unreachable

_ZN8rationalD2Ev.exit116:                         ; preds = %.noexc.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ap

bb.ao:                                            ; preds = %bb.y, %.body, %bb.am
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.am ], [ %.pn76.pn, %.body ], [ %i.ea, %bb.y ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body204

bb.ap:                                            ; preds = %_ZN8rationalD2Ev.exit116, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  invoke void @_ZN15factor_rewriter14collect_powersEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit
  %i.ga = load ptr, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %.critedge223, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118:          ; preds = %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread, %.critedge87
  %i.gc = phi ptr [ %i.ll, %.critedge87 ], [ null, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ]
  %i.gd = phi ptr [ %i.lm, %.critedge87 ], [ null, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 4 uses
  %i.ge = phi ptr [ %i.lo, %.critedge87 ], [ %i.ga, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 2 uses
  %storemerge249 = phi i32 [ %.0216, %.critedge87 ], [ 0, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 7 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !47
  %i.gh = icmp ult i32 %storemerge249, %i.gg
  br i1 %i.gh, label %bb.aq, label %.critedge223.loopexit

.critedge223.loopexit:                            ; preds = %.critedge87, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118
  %.pre278 = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %.critedge223

end_hunk_0
