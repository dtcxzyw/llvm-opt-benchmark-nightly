Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/rewriter?download=true
inline.NumInlined: 3961
inline.NumDeleted: 323
begin_hunk_0_@_ZN16var_shifter_core5visitEP4expr:bb.a
  %i.bx = load ptr, ptr %i.bu, align 8
  %.not.i.i = icmp eq ptr %1, %i.bx
  %or.cond.i.i = select i1 %i.bw, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK13rewriter_core10must_cacheEP4expr.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !124
  %.not6.i.i = icmp ne i32 %i.bz, 0
  %spec.select = zext i1 %.not6.i.i to i32
  %i.ca = or disjoint i32 %i.bs, %spec.select
  br label %_ZNK13rewriter_core10must_cacheEP4expr.exit.i

_ZNK13rewriter_core10must_cacheEP4expr.exit.i:    ; preds = %bb.j, %bb.i
  %i.cb = phi i32 [ %i.ca, %bb.j ], [ %i.bs, %bb.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK13rewriter_core10must_cacheEP4expr.exit.i
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.k, %_ZNK13rewriter_core10must_cacheEP4expr.exit.i
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.k ], [ 0, %_ZNK13rewriter_core10must_cacheEP4expr.exit.i ]
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !126 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.m, label %_ZN13rewriter_core10push_frameEP4exprj.exit

bb.m:                                             ; preds = %bb.l, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIN13rewriter_core5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %.pre.i.i.i = load ptr, ptr %i.cc, align 8, !tbaa !126 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !51
  br label %_ZN13rewriter_core10push_frameEP4exprj.exit

_ZN13rewriter_core10push_frameEP4exprj.exit:      ; preds = %bb.l, %bb.m
  %i.cp = phi i32 [ %.pre2.i.i.i, %bb.m ], [ %i.cl, %bb.l ]
  %i.cq = phi ptr [ %.pre.i.i.i, %bb.m ], [ %i.ci, %bb.l ]
  %i.cr = or disjoint i32 %i.cb, 48
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cs ; 3 uses
  store ptr %1, ptr %i.ct, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 %.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !51
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !126
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !51
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !51
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

bb.n:                                             ; preds = %.critedge
  %i.cy = load ptr, ptr %0, align 8, !tbaa !148
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

_ZNK13rewriter_core10must_cacheEP4expr.exit.i28:  ; preds = %.critedge
  %i.db = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.dc = icmp ugt i32 %i.db, 1
  %i.dd = load ptr, ptr %i.bu, align 8
  %.not.i.i26 = icmp ne ptr %1, %i.dd
  %or.cond.i.i27.not = select i1 %i.dc, i1 %.not.i.i26, i1 false
  %spec.select43 = zext i1 %or.cond.i.i27.not to i32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !127 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i29, label %bb.o

bb.o:                                             ; preds = %_ZNK13rewriter_core10must_cacheEP4expr.exit.i28
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i29

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i29: ; preds = %bb.o, %_ZNK13rewriter_core10must_cacheEP4expr.exit.i28
  %.0.i.i.i.i30 = phi i32 [ %i.dj, %bb.o ], [ 0, %_ZNK13rewriter_core10must_cacheEP4expr.exit.i28 ]
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !126 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i29
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !51 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.q, label %_ZN13rewriter_core10push_frameEP4exprj.exit37

bb.q:                                             ; preds = %bb.p, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i29
  tail call void @_ZN6vectorIN13rewriter_core5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
  %.pre.i.i.i33 = load ptr, ptr %i.de, align 8, !tbaa !126 ; 2 uses
  %.phi.trans.insert.i.i.i34 = getelementptr inbounds i8, ptr %.pre.i.i.i33, i64 -4
  %.pre2.i.i.i35 = load i32, ptr %.phi.trans.insert.i.i.i34, align 4, !tbaa !51
  br label %_ZN13rewriter_core10push_frameEP4exprj.exit37

_ZN13rewriter_core10push_frameEP4exprj.exit37:    ; preds = %bb.p, %bb.q
  %i.dr = phi i32 [ %.pre2.i.i.i35, %bb.q ], [ %i.dn, %bb.p ]
  %i.ds = phi ptr [ %.pre.i.i.i33, %bb.q ], [ %i.dk, %bb.p ]
  %i.dt = or disjoint i32 %i.bs, %spec.select43
  %i.du = or disjoint i32 %i.dt, 48
  %i.dv = zext i32 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dv ; 3 uses
  store ptr %1, ptr %i.dw, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.du, ptr %.sroa.4.0..sroa_idx.i.i31, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %.0.i.i.i.i30, ptr %.sroa.5.0..sroa_idx.i.i32, align 4, !tbaa !51
  %i.dx = load ptr, ptr %i.de, align 8, !tbaa !126
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !51
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !51
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

bb.r:                                             ; preds = %.critedge
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 264, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i, %bb.h, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit24, %_ZN13rewriter_core10push_frameEP4exprj.exit, %bb.n, %_ZN13rewriter_core10push_frameEP4exprj.exit37, %bb.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.2 = phi i1 [ true, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ true, %bb.r ], [ false, %_ZN13rewriter_core10push_frameEP4exprj.exit ], [ true, %bb.n ], [ false, %_ZN13rewriter_core10push_frameEP4exprj.exit37 ], [ true, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit24 ], [ true, %bb.h ], [ true, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i.i ], [ true, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !51
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %.pre2.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !125
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !51
  ret ptr %0
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16var_shifter_core11process_appEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr %i.c, align 8              ; 4 uses
  %i.f = lshr i32 %i.e, 6                         ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.b
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %3 = and i32 %i.e, -64
  %i.k = add i32 %3, 64
  %4 = and i32 %i.e, 63
  %5 = or disjoint i32 %i.k, %4
  store i32 %5, ptr %i.c, align 8
  %i.l = tail call noundef zeroext i1 @_ZN16var_shifter_core5visitEP4expr(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.j)
  br i1 %i.l, label %bb.b, label %.loopexit, !llvm.loop !219

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %i.e, 2
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !158
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159
  %i.x = tail call noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.u, ptr noundef %i.w, i32 noundef %i.b, ptr noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.x, %bb.e ], [ %1, %bb.d ]    ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !127 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = icmp ugt i32 %i.af, %i.aa
  br i1 %i.ai, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.aj = zext i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ar, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ak, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !129
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.am, ptr noundef nonnull %i.al)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ah
  br i1 %i.as, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.at = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ac, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.aa, ptr %i.au, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.av = phi ptr [ null, %bb.f ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.at, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !129
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.az = icmp eq ptr %i.av, null
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.k:                                             ; preds = %bb.j, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.j, %bb.k
  %i.bf = phi i32 [ %.pre2.i.i, %bb.k ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi
  store ptr %.0, ptr %i.bj, align 8, !tbaa !125
  %i.bk = add i32 %i.bf, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !126 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !51 ; 2 uses
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !51
  %.not.i = icmp eq ptr %1, %.0
  %i.bq = icmp eq i32 %i.bp, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %i.bq
  br i1 %or.cond, label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.br = add i32 %i.bo, -2
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = or i32 %i.bv, 2
  store i32 %i.bw, ptr %i.bu, align 8
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i
  %i.bx = load i32, ptr %i.c, align 8
  %i.by = and i32 %i.bx, 1
  %.not24 = icmp eq i32 %i.by, 0
  br i1 %.not24, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !49
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.ca, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %.0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit, %bb.l
  ret void
}

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16var_shifter_core18process_quantifierEP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !132
  %i.h = add i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.j, ptr %i.k, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !140
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !141
  %i.q = add i32 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.c
  %i.u = load i32, ptr %i.a, align 8              ; 4 uses
  %i.v = lshr i32 %i.u, 6                         ; 5 uses
  %i.w = icmp ult i32 %i.v, %i.q
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %_ZNK10quantifier9get_childEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.l, align 8, !tbaa !140  ; 2 uses
  %.not.i = icmp ugt i32 %i.v, %i.y
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.r, align 4, !tbaa !142
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %1, i64 %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = xor i32 %i.y, -1
  %i.ah = add nsw i32 %i.v, %i.ag
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !142
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.e, %bb.g, %bb.h
  %.0.in.i = phi ptr [ %i.an, %bb.h ], [ %i.af, %bb.g ], [ %i.t, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !125
  %3 = and i32 %i.u, -64
  %i.ao = add i32 %3, 64
  %4 = and i32 %i.u, 63
  %5 = or disjoint i32 %i.ao, %4
  store i32 %5, ptr %i.a, align 8
  %i.ap = tail call noundef zeroext i1 @_ZN16var_shifter_core5visitEP4expr(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %.0.i)
  br i1 %i.ap, label %bb.d, label %.loopexit, !llvm.loop !220

bb.i:                                             ; preds = %bb.d
  %i.aq = and i32 %i.u, 2
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !158
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.l, align 8, !tbaa !140 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.be = load i32, ptr %i.o, align 4, !tbaa !141
  %i.bf = tail call noundef ptr @_ZN11ast_manager17update_quantifierEP10quantifierjPKP4exprjS5_S3_(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull %1, i32 noundef %i.az, ptr noundef nonnull %i.ay, i32 noundef %i.be, ptr noundef nonnull %i.bb, ptr noundef %i.ax)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.032 = phi ptr [ %i.bf, %bb.j ], [ %1, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !158 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.k
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bo
  %i.bq = icmp ugt i32 %i.bn, %i.bi
  br i1 %i.bq, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.br = zext i32 %i.bi to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.br
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.bs, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bt = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !129
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !129
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bu, ptr noundef nonnull %i.bt)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.bp
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cb = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bk, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  store i32 %i.bi, ptr %i.cc, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.cd = phi ptr [ null, %bb.k ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.cb, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.032, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !129
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.ch = icmp eq ptr %i.cd, null
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !51
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.p, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.o, %bb.p
  %i.cn = phi i32 [ %.pre2.i.i, %bb.p ], [ %i.cj, %bb.o ] ; 2 uses
  %i.co = phi ptr [ %.pre.i.i, %bb.p ], [ %i.cd, %bb.o ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = zext i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cq
  store ptr %.032, ptr %i.cr, align 8, !tbaa !125
  %i.cs = add i32 %i.cn, 1
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !126 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !51 ; 2 uses
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !51
  %.not.i35 = icmp eq ptr %1, %.032
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond = select i1 %.not.i35, i1 true, i1 %i.cy
  br i1 %or.cond, label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.cz = add i32 %i.cw, -2
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = or i32 %i.dd, 2
  store i32 %i.de, ptr %i.dc, align 8
  br label %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit

_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  tail call void @_ZN9act_cache5resetEv(ptr noundef nonnull align 8 dereferenceable(92) %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !53, !range !54, !noundef !47
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !55
  tail call void @_ZN9act_cache5resetEv(ptr noundef nonnull align 8 dereferenceable(92) %i.dl)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN13rewriter_core18set_new_child_flagEP4exprS1_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !130 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZNK6vectorIN13rewriter_core5scopeELb0EjE4sizeEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !51
  %i.dr = add i32 %i.dq, -1
  %i.ds = zext i32 %i.dr to i64
  br label %_ZNK6vectorIN13rewriter_core5scopeELb0EjE4sizeEv.exit.i

_ZNK6vectorIN13rewriter_core5scopeELb0EjE4sizeEv.exit.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 4294967295, %bb.r ]
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %.0.i.i.i ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !134
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !131
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !135
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !132
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !50
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !52 ; 2 uses
  store ptr %i.eg, ptr %i.df, align 8, !tbaa !49
  %i.eh = load i8, ptr %i.dh, align 8, !tbaa !53, !range !54, !noundef !47
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.t, label %_ZN13rewriter_core9end_scopeEv.exit

bb.t:                                             ; preds = %_ZNK6vectorIN13rewriter_core5scopeELb0EjE4sizeEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplI16beta_reducer_cfgE11process_varILb1EEEvP3var:bb.a
  %i.co = add i32 %i.cm, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.cr, align 8
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.pre.i.i59 = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.df = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.db, %bb.n ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %1, ptr %i.dj, align 8, !tbaa !125
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !51
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !144    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !144
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !174
  %i.r = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !177  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !176
  %i.y = load i64, ptr %i.s, align 8, !tbaa !157
  store i64 %i.y, ptr %i.q, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !177
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !177
  store ptr %i.s, ptr %1, align 8, !tbaa !176
  store i64 0, ptr %i.aa, align 8, !tbaa !177
  store i8 0, ptr %i.s, align 8, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !176   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !157
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @__cxa_free_exception(ptr %i.o) #16
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !144
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16beta_reducer_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.41, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable306 [
    i32 0, label %bb.b
    i32 1, label %bb.av
    i32 2, label %bb.cc
    i32 3, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI16beta_reducer_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !241

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !158 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !129
  store ptr %1, ptr %3, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !129
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !129
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !192
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !192
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !158
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !129
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !129
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !192
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.aa, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.aq, %bb.an, %bb.ak, %.noexc145, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ce

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = and i32 %i.by, 2
  %.not67 = icmp eq i32 %i.bz, 0
  br i1 %.not67, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef %i.cb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !162
  %i.cf = invoke noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, ptr noundef nonnull %1, ptr noundef %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI3app11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cf)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull %1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cj = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !127 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit137, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i127

_ZN6vectorIP4exprLb0EjE3endEv.exit.i127:          ; preds = %bb.y
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = icmp ugt i32 %i.cn, %i.cj
  br i1 %i.cq, label %.lr.ph.i.i129.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i128

.lr.ph.i.i129.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i127
  %i.cr = zext i32 %i.cj to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  br label %.lr.ph.i.i129
end_hunk_1
begin_hunk_2_@_ZN12rewriter_tplI16beta_reducer_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.by, %bb.bz
  %i.mq = phi i32 [ %.pre2.i.i240, %bb.bz ], [ %i.mm, %bb.by ] ; 2 uses
  %i.mr = phi ptr [ %.pre.i.i238, %bb.bz ], [ %i.mj, %bb.by ] ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4
  %i.mt = zext i32 %i.mq to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mt
  store ptr %i.mf, ptr %i.mu, align 8, !tbaa !125
  %i.mv = add i32 %i.mq, 1
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !51
  %i.mw = load i32, ptr %i.a, align 8
  %i.mx = trunc i32 %i.mw to i1
  br i1 %i.mx, label %bb.ca, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.my = load ptr, ptr %i.ix, align 8, !tbaa !192
  %i.mz = load ptr, ptr %i.ku, align 8, !tbaa !162
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !49
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.nb, ptr noundef %1, i32 noundef 0, ptr noundef %i.mz)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !55
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.nd, ptr noundef %1, i32 noundef 0, ptr noundef %i.my)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.ca, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !126 ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -4 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !51 ; 2 uses
  %i.ni = add i32 %i.nh, -1                       ; 2 uses
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !51
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.nk = add i32 %i.nh, -2
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 8
  %i.np = or i32 %i.no, 2
  store i32 %i.np, ptr %i.nn, align 8
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245

bb.cb:                                            ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ce

bb.cc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 515, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245

bb.cd:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 520, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245

default.unreachable306:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.cd, %bb.cc
  ret void

bb.ce:                                            ; preds = %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.nq, %bb.cb ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16beta_reducer_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.46, align 8          ; 6 uses
  %8 = alloca %class.obj_ref.41, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !142  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not308 = icmp eq i32 %i.b, 0
  br i1 %.not308, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !132
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !132
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075298 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !127  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !51
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !125
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !193 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !51
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !51
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !51
  %i.ar = add nuw i32 %.075298, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !242

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !140
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !125
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI16beta_reducer_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit291, !llvm.loop !243

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !158
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !142
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !127
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit290, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !51 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !125
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit290.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %common.resume

.loopexit290.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !46
  %.pre333 = load i32, ptr %i.a, align 4, !tbaa !142
  %.pre336 = zext i32 %.pre333 to i64
  %.pre337 = ptrtoint ptr %.pre to i64
  br label %.loopexit290

.loopexit290:                                     ; preds = %.loopexit290.loopexit, %bb.o
  %.pre-phi338 = phi i64 [ %.pre337, %.loopexit290.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre336, %.loopexit290.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi338, ptr %4, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !127
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit290, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit290 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit290 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !129
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !125
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit290
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge302:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge302
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !51 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_2
begin_hunk_3_@_ZN12rewriter_tplI16beta_reducer_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a
  %.not.i.i.i = icmp eq ptr %.pre.i257, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.tj = phi ptr [ %.pre.i257, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256 ], [ %i.su, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.tk = getelementptr inbounds i8, ptr %i.tj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.tk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.dt

bb.dt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  %i.tl = landingpad { ptr, i32 }
          catch ptr null
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  call void @__clang_call_terminate(ptr %i.tm) #17
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.tn = landingpad { ptr, i32 }
          catch ptr null
  %i.to = extractvalue { ptr, i32 } %i.tn, 0
  call void @__clang_call_terminate(ptr %i.to) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4exprS3_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.tp = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 -4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !51 ; 2 uses
  %i.tt = zext i32 %i.ts to i64
  %i.tu = shl nuw nsw i64 %i.tt, 3
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.tu
  %.not.i260 = icmp eq i32 %i.ts, 0
  br i1 %.not.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.06.i.i262 = phi ptr [ %i.uc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 ], [ %i.tp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ] ; 2 uses
  %i.tw = load ptr, ptr %.06.i.i262, align 8, !tbaa !125 ; 3 uses
  %i.tx = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i263 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i263, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i261
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !129
  %i.ua = add i32 %i.tz, -1                       ; 2 uses
  store i32 %i.ua, ptr %i.ty, align 4, !tbaa !129
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.dw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.tx, ptr noundef nonnull %i.tw)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 unwind label %bb.dy

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264: ; preds = %bb.dw, %bb.dv, %.lr.ph.i.i261
  %i.uc = getelementptr inbounds nuw i8, ptr %.06.i.i262, i64 8 ; 2 uses
  %i.ud = icmp ult ptr %i.uc, %i.tv
  br i1 %i.ud, label %.lr.ph.i.i261, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.pre.i266 = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.pre.i266, null
  br i1 %.not.i.i.i267, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259
  %i.ue = phi ptr [ %.pre.i266, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265 ], [ %i.tp, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ]
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.uf)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269 unwind label %bb.dx

bb.dx:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  call void @__clang_call_terminate(ptr %i.uh) #17
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.ui = landingpad { ptr, i32 }
          catch ptr null
  %i.uj = extractvalue { ptr, i32 } %i.ui, 0
  call void @__clang_call_terminate(ptr %i.uj) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit291

.loopexit291:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269
  ret void

bb.dz:                                            ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #16
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dz ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ea, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.ea ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp435, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

declare noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager15mk_transitivityEP3appS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11ast_manager10is_patternEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #1

declare void @_Z12verbose_lockv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager13mk_bind_proofEP10quantifierP3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager14mk_quant_introEP10quantifierS1_P3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246, !nonnull !47, !align !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !129
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #17
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16beta_reducer_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable254 [
    i32 0, label %bb.b
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI16beta_reducer_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI16beta_reducer_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !247

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %.invoke, %bb.r, %bb.p, %bb.n, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bf

bb.g:                                             ; preds = %bb.f, %_ZNK9func_decl14is_associativeEv.exit.thread
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !158 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ai = and i32 %i.h, 2
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aj
  %i.al = sub i32 %.0.i.i, %i.ad
  %i.am = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.v, i32 noundef %i.al, ptr noundef %i.ak)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %1, %bb.g ]
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.invoke
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !158 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !127 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111

_ZN6vectorIP4exprLb0EjE3endEv.exit.i111:          ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i113.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

.lr.ph.i.i113.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.06.i.i114 = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 ], [ %i.ay, %.lr.ph.i.i113.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i114, align 8, !tbaa !125 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i115 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !129
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116: ; preds = %bb.k, %bb.j, %.lr.ph.i.i113
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i114, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i113, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.pre.i118 = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.bh = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %bb.i
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ null, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.n
  %.pre.i.i124 = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i125 = getelementptr inbounds i8, ptr %.pre.i.i124, i64 -4
  %.pre2.i.i126 = load i32, ptr %.phi.trans.insert.i.i125, align 4, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %.noexc127, %bb.m
  %i.bu = phi i32 [ %.pre2.i.i126, %.noexc127 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i124, %.noexc127 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !125
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !51
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !162
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.ce, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130: ; preds = %bb.o, %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !126 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !51 ; 2 uses
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !51
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 2 uses
  %.not.i131 = icmp eq ptr %1, %i.ck
  %i.cl = icmp eq i32 %i.cj, 0
  %or.cond = select i1 %.not.i131, i1 true, i1 %i.cl
  br i1 %or.cond, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4exprS3_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.cm = add i32 %i.ci, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cp, align 8
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !162
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4exprS3_.exit

_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4exprS3_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.cs = phi ptr [ %.pr, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ], [ %i.ck, %_ZN12rewriter_tplI16beta_reducer_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 ] ; 3 uses
  %.not.i4.i132 = icmp eq ptr %i.cs, null
  br i1 %.not.i4.i132, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN12rewriter_tplI16beta_reducer_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  store ptr %i.kn, ptr %i.lb, align 8, !tbaa !125
  %i.lc = add i32 %i.kx, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !51
  %i.ld = load i32, ptr %i.a, align 8
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %bb.ba, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201

bb.ba:                                            ; preds = %bb.az
  %i.lf = load ptr, ptr %i.io, align 8, !tbaa !162
  %i.lg = load ptr, ptr %i.gw, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.lg, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.lf)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201 unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201: ; preds = %bb.ba, %bb.az
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !126 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -4 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !51 ; 2 uses
  %i.ll = add i32 %i.lk, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !51
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit203, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.ln = add i32 %i.lk, -2
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = or i32 %i.lr, 2
  store i32 %i.ls, ptr %i.lq, align 8
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit203

_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit203: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.lt = load ptr, ptr %4, align 8, !tbaa !162   ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i204, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit203
  %i.lu = load ptr, ptr %i.ge, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !129
  %i.lx = add i32 %i.lw, -1                       ; 2 uses
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !129
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lu, ptr noundef nonnull %i.lt)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit203, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit162

bb.be:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 520, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit162

default.unreachable254:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI16beta_reducer_cfgE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.be, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bf:                                            ; preds = %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16beta_reducer_cfgE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !142  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not255 = icmp eq i32 %i.b, 0
  br i1 %.not255, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !132
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !132
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072245 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !127  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !51
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !125
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !193 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !51
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !51
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !51
  %i.ar = add nuw i32 %.072245, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !248

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !140
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !125
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI16beta_reducer_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit238, !llvm.loop !249

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !158
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !142
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !127
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit237, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !51 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !125
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit237.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %common.resume

.loopexit237.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !46
  %.pre276 = load i32, ptr %i.a, align 4, !tbaa !142
  %.pre279 = zext i32 %.pre276 to i64
  %.pre280 = ptrtoint ptr %.pre to i64
  br label %.loopexit237

.loopexit237:                                     ; preds = %.loopexit237.loopexit, %bb.o
  %.pre-phi281 = phi i64 [ %.pre280, %.loopexit237.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre279, %.loopexit237.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi281, ptr %4, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !127
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit237, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit237 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit237 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !129
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !125
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit237
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge249:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge249
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !51 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_4
begin_hunk_5_@_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_varILb1EEEvP3var:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !125
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !51
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46, !nonnull !47, !align !48
  store ptr null, ptr %2, align 8, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !149
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !162
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %2, align 8, !tbaa !162
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.bp, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit unwind label %bb.j

_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit: ; preds = %bb.i
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bq

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
  %.pre.i.i50 = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cc = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.by, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  store ptr %i.aa, ptr %i.cg, align 8, !tbaa !125
  %i.ch = add i32 %i.cc, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !126 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.co = add i32 %i.cm, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.cr, align 8
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.pre.i.i59 = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.df = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.db, %bb.n ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %1, ptr %i.dj, align 8, !tbaa !125
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !51
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %5 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %6 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %7 = alloca %class.obj_ref.41, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.db
    i32 2, label %bb.ei
    i32 3, label %bb.ej
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !254

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !158 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !129
  store ptr %1, ptr %3, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !129
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !129
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !192
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !192
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !158
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !129
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !129
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !192
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !197, !nonnull !47, !align !48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.bx, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !127 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !129
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_5
begin_hunk_6_@_ZN12rewriter_tplI19ng_push_app_ite_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !51 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ni
  %.not.i251 = icmp eq i32 %i.ng, 0
  br i1 %.not.i251, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258, label %.lr.ph.i.i252

.lr.ph.i.i252:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.06.i.i253 = phi ptr [ %i.nq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 ], [ %i.nd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.nk = load ptr, ptr %.06.i.i253, align 8, !tbaa !125 ; 3 uses
  %i.nl = load ptr, ptr %4, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i254 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i254, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i252
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !129
  %i.no = add i32 %i.nn, -1                       ; 2 uses
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !129
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.by, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nl, ptr noundef nonnull %i.nk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 unwind label %bb.ca

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255: ; preds = %bb.by, %bb.bx, %.lr.ph.i.i252
  %i.nq = getelementptr inbounds nuw i8, ptr %.06.i.i253, i64 8 ; 2 uses
  %i.nr = icmp ult ptr %i.nq, %i.nj
  br i1 %i.nr, label %.lr.ph.i.i252, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.pre.i257 = load ptr, ptr %i.cu, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i257, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ns = phi ptr [ %.pre.i257, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256 ], [ %i.nd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.nt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #17
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4exprS3_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ny = load ptr, ptr %i.bs, align 8, !tbaa !127 ; 5 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 -4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !51 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = shl nuw nsw i64 %i.oc, 3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.od
  %.not.i260 = icmp eq i32 %i.ob, 0
  br i1 %.not.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.06.i.i262 = phi ptr [ %i.ol, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 ], [ %i.ny, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ] ; 2 uses
  %i.of = load ptr, ptr %.06.i.i262, align 8, !tbaa !125 ; 3 uses
  %i.og = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i263 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i.i.i263, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i261
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !129
  %i.oj = add i32 %i.oi, -1                       ; 2 uses
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !129
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.cc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.og, ptr noundef nonnull %i.of)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 unwind label %bb.ce

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264: ; preds = %bb.cc, %bb.cb, %.lr.ph.i.i261
  %i.ol = getelementptr inbounds nuw i8, ptr %.06.i.i262, i64 8 ; 2 uses
  %i.om = icmp ult ptr %i.ol, %i.oe
  br i1 %i.om, label %.lr.ph.i.i261, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.pre.i266 = load ptr, ptr %i.bs, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.pre.i266, null
  br i1 %.not.i.i.i267, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259
  %i.on = phi ptr [ %.pre.i266, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265 ], [ %i.ny, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ]
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.oo)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269 unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #17
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit281

.loopexit281:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269
  ret void

bb.cf:                                            ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fq, %bb.ai ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cf ], [ %i.fp, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cg ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI19ng_push_app_ite_cfgE12cache_resultILb1EEEvP4exprS4_P3appb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.b, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.d, ptr noundef %1, i32 noundef 0, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable267 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.by
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !257

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !158 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46, !nonnull !47, !align !48
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !149
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !197, !nonnull !47, !align !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !158 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !127 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !129
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !125
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !51
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !162
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.cf, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !126 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !51
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cm = add i32 %i.cj, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cp, align 8
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cs = load ptr, ptr %i.am, align 8, !tbaa !162 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cs, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.invoke268, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke268:                                       ; preds = %bb.q, %bb.al
  %i.cz = phi ptr [ %i.gu, %bb.al ], [ %i.cu, %bb.q ]
  %i.da = phi ptr [ %i.gs, %bb.al ], [ %i.cs, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, ptr noundef nonnull %i.da)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.db = and i32 %i.cb, -13
  %i.dc = or disjoint i32 %i.db, 4
end_hunk_6
begin_hunk_7_@_ZN12rewriter_tplI16push_app_ite_cfgE11process_varILb1EEEvP3var:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !125
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !51
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46, !nonnull !47, !align !48
  store ptr null, ptr %2, align 8, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !149
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !162
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %2, align 8, !tbaa !162
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.bp, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit unwind label %bb.j

_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit: ; preds = %bb.i
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bq

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
  %.pre.i.i50 = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cc = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.by, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  store ptr %i.aa, ptr %i.cg, align 8, !tbaa !125
  %i.ch = add i32 %i.cc, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !126 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.co = add i32 %i.cm, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.cr, align 8
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.pre.i.i59 = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.df = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.db, %bb.n ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %1, ptr %i.dj, align 8, !tbaa !125
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !51
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16push_app_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %5 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %6 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %7 = alloca %class.obj_ref.41, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.db
    i32 2, label %bb.ei
    i32 3, label %bb.ej
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !262

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !158 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !129
  store ptr %1, ptr %3, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !129
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !129
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !192
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !192
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !158
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !129
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !129
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !192
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !201, !nonnull !47, !align !48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.bx, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !127 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !51 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !129
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_7
begin_hunk_8_@_ZN12rewriter_tplI16push_app_ite_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !51 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ni
  %.not.i251 = icmp eq i32 %i.ng, 0
  br i1 %.not.i251, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258, label %.lr.ph.i.i252

.lr.ph.i.i252:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.06.i.i253 = phi ptr [ %i.nq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 ], [ %i.nd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.nk = load ptr, ptr %.06.i.i253, align 8, !tbaa !125 ; 3 uses
  %i.nl = load ptr, ptr %4, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i254 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i254, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i252
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !129
  %i.no = add i32 %i.nn, -1                       ; 2 uses
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !129
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.by, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nl, ptr noundef nonnull %i.nk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 unwind label %bb.ca

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255: ; preds = %bb.by, %bb.bx, %.lr.ph.i.i252
  %i.nq = getelementptr inbounds nuw i8, ptr %.06.i.i253, i64 8 ; 2 uses
  %i.nr = icmp ult ptr %i.nq, %i.nj
  br i1 %i.nr, label %.lr.ph.i.i252, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.pre.i257 = load ptr, ptr %i.cu, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i257, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ns = phi ptr [ %.pre.i257, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256 ], [ %i.nd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.nt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #17
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4exprS3_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ny = load ptr, ptr %i.bs, align 8, !tbaa !127 ; 5 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 -4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !51 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = shl nuw nsw i64 %i.oc, 3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.od
  %.not.i260 = icmp eq i32 %i.ob, 0
  br i1 %.not.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.06.i.i262 = phi ptr [ %i.ol, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 ], [ %i.ny, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ] ; 2 uses
  %i.of = load ptr, ptr %.06.i.i262, align 8, !tbaa !125 ; 3 uses
  %i.og = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i263 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i.i.i263, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i261
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !129
  %i.oj = add i32 %i.oi, -1                       ; 2 uses
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !129
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.cc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.og, ptr noundef nonnull %i.of)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 unwind label %bb.ce

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264: ; preds = %bb.cc, %bb.cb, %.lr.ph.i.i261
  %i.ol = getelementptr inbounds nuw i8, ptr %.06.i.i262, i64 8 ; 2 uses
  %i.om = icmp ult ptr %i.ol, %i.oe
  br i1 %i.om, label %.lr.ph.i.i261, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.pre.i266 = load ptr, ptr %i.bs, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.pre.i266, null
  br i1 %.not.i.i.i267, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259
  %i.on = phi ptr [ %.pre.i266, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265 ], [ %i.ny, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ]
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.oo)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269 unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #17
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit281

.loopexit281:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269
  ret void

bb.cf:                                            ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fq, %bb.ai ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cf ], [ %i.fp, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cg ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16push_app_ite_cfgE12cache_resultILb1EEEvP4exprS4_P3appb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.b, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.d, ptr noundef %1, i32 noundef 0, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16push_app_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable267 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.by
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !265

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !158 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46, !nonnull !47, !align !48
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !149
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201, !nonnull !47, !align !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !158 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !127 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !129
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !125
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !51
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !162
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.cf, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !126 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !51
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cm = add i32 %i.cj, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cp, align 8
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cs = load ptr, ptr %i.am, align 8, !tbaa !162 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cs, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.invoke268, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke268:                                       ; preds = %bb.q, %bb.al
  %i.cz = phi ptr [ %i.gu, %bb.al ], [ %i.cu, %bb.q ]
  %i.da = phi ptr [ %i.gs, %bb.al ], [ %i.cs, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, ptr noundef nonnull %i.da)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.db = and i32 %i.cb, -13
  %i.dc = or disjoint i32 %i.db, 4
end_hunk_8
begin_hunk_9_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_varILb1EEEvP3var:bb.a
  %i.am = sub i32 %i.u, %i.al                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !125
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !51
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46, !nonnull !47, !align !48
  store ptr null, ptr %2, align 8, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !149
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !162
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %2, align 8, !tbaa !162
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.bp, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit unwind label %bb.j

_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit: ; preds = %bb.i
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bq

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
  %.pre.i.i50 = load ptr, ptr %i.bu, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cc = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.by, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  store ptr %i.aa, ptr %i.cg, align 8, !tbaa !125
  %i.ch = add i32 %i.cc, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !126 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.co = add i32 %i.cm, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.cr, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.pre.i.i59 = load ptr, ptr %i.cx, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.df = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.db, %bb.n ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %1, ptr %i.dj, align 8, !tbaa !125
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !51
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.41, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable306 [
    i32 0, label %bb.b
    i32 1, label %bb.av
    i32 2, label %bb.cc
    i32 3, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !268

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !158 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !129
  store ptr %1, ptr %3, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !129
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !129
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !192
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !192
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !144
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !158
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !129
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !192 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !194, !nonnull !47, !align !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !129
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !192
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.aa, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.aq, %bb.an, %bb.ak, %.noexc145, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ce

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = and i32 %i.by, 2
  %.not67 = icmp eq i32 %i.bz, 0
  br i1 %.not67, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef %i.cb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !162
  %i.cf = invoke noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, ptr noundef nonnull %1, ptr noundef %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI3app11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cf)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull %1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cj = load i32, ptr %i.z, align 4, !tbaa !158 ; 3 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !127 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit137, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i127

_ZN6vectorIP4exprLb0EjE3endEv.exit.i127:          ; preds = %bb.y
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !51 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = icmp ugt i32 %i.cn, %i.cj
  br i1 %i.cq, label %.lr.ph.i.i129.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i128

.lr.ph.i.i129.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i127
  %i.cr = zext i32 %i.cj to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  br label %.lr.ph.i.i129
end_hunk_9
begin_hunk_10_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.by, %bb.bz
  %i.mq = phi i32 [ %.pre2.i.i240, %bb.bz ], [ %i.mm, %bb.by ] ; 2 uses
  %i.mr = phi ptr [ %.pre.i.i238, %bb.bz ], [ %i.mj, %bb.by ] ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4
  %i.mt = zext i32 %i.mq to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mt
  store ptr %i.mf, ptr %i.mu, align 8, !tbaa !125
  %i.mv = add i32 %i.mq, 1
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !51
  %i.mw = load i32, ptr %i.a, align 8
  %i.mx = trunc i32 %i.mw to i1
  br i1 %i.mx, label %bb.ca, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.my = load ptr, ptr %i.ix, align 8, !tbaa !192
  %i.mz = load ptr, ptr %i.ku, align 8, !tbaa !162
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !49
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.nb, ptr noundef %1, i32 noundef 0, ptr noundef %i.mz)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !55
  tail call void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.nd, ptr noundef %1, i32 noundef 0, ptr noundef %i.my)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.ca, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !126 ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -4 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !51 ; 2 uses
  %i.ni = add i32 %i.nh, -1                       ; 2 uses
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !51
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.nk = add i32 %i.nh, -2
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 8
  %i.np = or i32 %i.no, 2
  store i32 %i.np, ptr %i.nn, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

bb.cb:                                            ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ce

bb.cc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 515, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

bb.cd:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 520, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

default.unreachable306:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.cd, %bb.cc
  ret void

bb.ce:                                            ; preds = %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.nq, %bb.cb ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.46, align 8          ; 6 uses
  %8 = alloca %class.obj_ref.41, align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !142  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not308 = icmp eq i32 %i.b, 0
  br i1 %.not308, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !132
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !132
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075298 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !127  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !51
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !125
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !193 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !51
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !51
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !51
  %i.ar = add nuw i32 %.075298, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !269

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !140
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !125
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit291, !llvm.loop !270

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !158
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !142
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !127
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit290, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !51 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !125
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit290.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %common.resume

.loopexit290.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !46
  %.pre333 = load i32, ptr %i.a, align 4, !tbaa !142
  %.pre336 = zext i32 %.pre333 to i64
  %.pre337 = ptrtoint ptr %.pre to i64
  br label %.loopexit290

.loopexit290:                                     ; preds = %.loopexit290.loopexit, %bb.o
  %.pre-phi338 = phi i64 [ %.pre337, %.loopexit290.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre336, %.loopexit290.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi338, ptr %4, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !127
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit290, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit290 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit290 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !129
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !125
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit290
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge302:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge302
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !51 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_10
begin_hunk_11_@_ZN12rewriter_tplI15elim_bounds_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a
  br i1 %or.cond, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %bb.dx
  %i.ti = add i32 %i.tf, -2
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8
  %i.tn = or i32 %i.tm, 2
  store i32 %i.tn, ptr %i.tl, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %bb.dx
  %i.to = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 5 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.tq = getelementptr inbounds i8, ptr %i.to, i64 -4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !51 ; 2 uses
  %i.ts = zext i32 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 3
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tt
  %.not.i251 = icmp eq i32 %i.tr, 0
  br i1 %.not.i251, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258, label %.lr.ph.i.i252

.lr.ph.i.i252:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.06.i.i253 = phi ptr [ %i.ub, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 ], [ %i.to, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.tv = load ptr, ptr %.06.i.i253, align 8, !tbaa !125 ; 3 uses
  %i.tw = load ptr, ptr %4, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i254 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i.i.i254, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i252
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !129
  %i.tz = add i32 %i.ty, -1                       ; 2 uses
  store i32 %i.tz, ptr %i.tx, align 4, !tbaa !129
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.dz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.tw, ptr noundef nonnull %i.tv)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255 unwind label %bb.eb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255: ; preds = %bb.dz, %bb.dy, %.lr.ph.i.i252
  %i.ub = getelementptr inbounds nuw i8, ptr %.06.i.i253, i64 8 ; 2 uses
  %i.uc = icmp ult ptr %i.ub, %i.tu
  br i1 %i.uc, label %.lr.ph.i.i252, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i255
  %.pre.i257 = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i257, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ud = phi ptr [ %.pre.i257, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256 ], [ %i.to, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ue)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ea

bb.ea:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  call void @__clang_call_terminate(ptr %i.ug) #17
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i256, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.uj = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 -4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !51 ; 2 uses
  %i.un = zext i32 %i.um to i64
  %i.uo = shl nuw nsw i64 %i.un, 3
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.uo
  %.not.i260 = icmp eq i32 %i.um, 0
  br i1 %.not.i260, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.06.i.i262 = phi ptr [ %i.uw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 ], [ %i.uj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ] ; 2 uses
  %i.uq = load ptr, ptr %.06.i.i262, align 8, !tbaa !125 ; 3 uses
  %i.ur = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i263 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i.i.i263, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i261
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !129
  %i.uu = add i32 %i.ut, -1                       ; 2 uses
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !129
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.ed, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ur, ptr noundef nonnull %i.uq)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264 unwind label %bb.ef

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264: ; preds = %bb.ed, %bb.ec, %.lr.ph.i.i261
  %i.uw = getelementptr inbounds nuw i8, ptr %.06.i.i262, i64 8 ; 2 uses
  %i.ux = icmp ult ptr %i.uw, %i.up
  br i1 %i.ux, label %.lr.ph.i.i261, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i264
  %.pre.i266 = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.pre.i266, null
  br i1 %.not.i.i.i267, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259
  %i.uy = phi ptr [ %.pre.i266, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265 ], [ %i.uj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i259 ]
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.uz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269 unwind label %bb.ee

bb.ee:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #17
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.vc = landingpad { ptr, i32 }
          catch ptr null
  %i.vd = extractvalue { ptr, i32 } %i.vc, 0
  call void @__clang_call_terminate(ptr %i.vd) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i265, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit291

.loopexit291:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit269
  ret void

bb.eg:                                            ; preds = %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.eg ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.eh ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

declare noundef zeroext i1 @_ZN15elim_bounds_cfg17reduce_quantifierEP10quantifierP4exprPKS3_S5_R7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.41, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable254 [
    i32 0, label %bb.b
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !273

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %.invoke, %bb.r, %bb.p, %bb.n, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bf

bb.g:                                             ; preds = %bb.f, %_ZNK9func_decl14is_associativeEv.exit.thread
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !158 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46, !nonnull !47, !align !48 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ai = and i32 %i.h, 2
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aj
  %i.al = sub i32 %.0.i.i, %i.ad
  %i.am = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.v, i32 noundef %i.al, ptr noundef %i.ak)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %1, %bb.g ]
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.invoke
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !158 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !127 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111

_ZN6vectorIP4exprLb0EjE3endEv.exit.i111:          ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i113.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

.lr.ph.i.i113.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.06.i.i114 = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 ], [ %i.ay, %.lr.ph.i.i113.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i114, align 8, !tbaa !125 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i115 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !129
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116: ; preds = %bb.k, %bb.j, %.lr.ph.i.i113
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i114, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i113, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.pre.i118 = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.bh = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %bb.i
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ null, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.n
  %.pre.i.i124 = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i125 = getelementptr inbounds i8, ptr %.pre.i.i124, i64 -4
  %.pre2.i.i126 = load i32, ptr %.phi.trans.insert.i.i125, align 4, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %.noexc127, %bb.m
  %i.bu = phi i32 [ %.pre2.i.i126, %.noexc127 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i124, %.noexc127 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !125
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !51
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !162
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.ce, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130: ; preds = %bb.o, %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !126 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !51 ; 2 uses
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !51
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 2 uses
  %.not.i131 = icmp eq ptr %1, %i.ck
  %i.cl = icmp eq i32 %i.cj, 0
  %or.cond = select i1 %.not.i131, i1 true, i1 %i.cl
  br i1 %or.cond, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.cm = add i32 %i.ci, -2
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cp, align 8
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !162
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.cs = phi ptr [ %.pr, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ], [ %i.ck, %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 ] ; 3 uses
  %.not.i4.i132 = icmp eq ptr %i.cs, null
  br i1 %.not.i4.i132, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit
end_hunk_11
begin_hunk_12_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  store ptr %i.kn, ptr %i.lb, align 8, !tbaa !125
  %i.lc = add i32 %i.kx, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !51
  %i.ld = load i32, ptr %i.a, align 8
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %bb.ba, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201

bb.ba:                                            ; preds = %bb.az
  %i.lf = load ptr, ptr %i.io, align 8, !tbaa !162
  %i.lg = load ptr, ptr %i.gw, align 8, !tbaa !49
  invoke void @_ZN9act_cache6insertEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(92) %i.lg, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.lf)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201 unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201: ; preds = %bb.ba, %bb.az
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !126 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -4 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !51 ; 2 uses
  %i.ll = add i32 %i.lk, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !51
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit203, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.ln = add i32 %i.lk, -2
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = or i32 %i.lr, 2
  store i32 %i.ls, ptr %i.lq, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit203

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit203: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i202, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i201
  %i.lt = load ptr, ptr %4, align 8, !tbaa !162   ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i204, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit203
  %i.lu = load ptr, ptr %i.ge, align 8, !tbaa !163, !nonnull !47, !align !48
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !129
  %i.lx = add i32 %i.lw, -1                       ; 2 uses
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !129
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lu, ptr noundef nonnull %i.lt)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit203, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162

bb.be:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.8, i32 noundef 520, ptr noundef nonnull @.str.10)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162

default.unreachable254:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.be, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bf:                                            ; preds = %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !142  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not255 = icmp eq i32 %i.b, 0
  br i1 %.not255, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !132
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !132
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072245 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !127  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !51
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !125
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !193 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !193 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !51
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !51
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !51
  %i.ar = add nuw i32 %.072245, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !274

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !140
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !141
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !142
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !125
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit238, !llvm.loop !275

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !158
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !141 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46, !nonnull !47, !align !48
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !142
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !127
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit237, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !51 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !125
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit237.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %common.resume

.loopexit237.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !46
  %.pre276 = load i32, ptr %i.a, align 4, !tbaa !142
  %.pre279 = zext i32 %.pre276 to i64
  %.pre280 = ptrtoint ptr %.pre to i64
  br label %.loopexit237

.loopexit237:                                     ; preds = %.loopexit237.loopexit, %bb.o
  %.pre-phi281 = phi i64 [ %.pre280, %.loopexit237.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre279, %.loopexit237.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi281, ptr %4, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !127
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit237, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit237 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit237 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !129
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !129
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !51
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !125
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit237
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge249:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !127 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge249
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !51 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !125 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !128, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_12
