Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe?download=true
inline.NumInlined: 3652
inline.NumDeleted: 1163
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE11process_varILb1EEEvP3var:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !354
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !61
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !53 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !55
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !53
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !347, !nonnull !58, !align !59
  store ptr null, ptr %2, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !75
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !61
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !55
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !348 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !53 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !61
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !61
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !52 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !53 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !53
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !55
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !53
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

declare noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.58, align 8          ; 9 uses
  %4 = alloca %class.obj_ref.58, align 8          ; 6 uses
  %5 = alloca %class.obj_ref.58, align 8          ; 7 uses
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 3 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = add i32 %i.h, 64
  store i32 %i.n, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245, !llvm.loop !872

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !352 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !329
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !48
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !251 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !352 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !61
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !61
  store ptr %1, ptr %3, align 8, !tbaa !329
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !329 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !330, !nonnull !58, !align !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !61
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !61
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !329
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !61
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !329
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !251
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !352
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
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !61
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !329 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !330, !nonnull !58, !align !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !61
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !61
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !329
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.aa, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.aq, %bb.an, %bb.ak, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ce

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = and i32 %i.by, 2
  %.not67 = icmp eq i32 %i.bz, 0
  br i1 %.not67, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef %i.cb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !75
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
  %i.cj = load i32, ptr %i.z, align 4, !tbaa !352 ; 3 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !52  ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit138, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128

_ZN6vectorIP4exprLb0EjE3endEv.exit.i128:          ; preds = %bb.y
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !53 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = icmp ugt i32 %i.cn, %i.cj
  br i1 %i.cq, label %.lr.ph.i.i130.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i129

.lr.ph.i.i130.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128
  %i.cr = zext i32 %i.cj to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  br label %.lr.ph.i.i130
end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.ml, label %bb.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.bz:                                            ; preds = %bb.by, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kh)
  %.pre.i.i238 = load ptr, ptr %i.kh, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.by, %bb.bz
  %i.mm = phi i32 [ %.pre2.i.i240, %bb.bz ], [ %i.mi, %bb.by ] ; 2 uses
  %i.mn = phi ptr [ %.pre.i.i238, %bb.bz ], [ %i.mf, %bb.by ] ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -4
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mp
  store ptr %i.mb, ptr %i.mq, align 8, !tbaa !55
  %i.mr = add i32 %i.mm, 1
  store i32 %i.mr, ptr %i.mo, align 4, !tbaa !53
  %i.ms = load i32, ptr %i.a, align 8
  %i.mt = trunc i32 %i.ms to i1
  br i1 %i.mt, label %bb.ca, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mu = load ptr, ptr %i.it, align 8, !tbaa !329
  %i.mv = load ptr, ptr %i.kq, align 8, !tbaa !75
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.mv, ptr noundef %i.mu)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.ca, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !348 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -4 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !53 ; 2 uses
  %i.na = add i32 %i.mz, -1                       ; 2 uses
  store i32 %i.na, ptr %i.my, align 4, !tbaa !53
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.nc = add i32 %i.mz, -2
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8
  %i.nh = or i32 %i.ng, 2
  store i32 %i.nh, ptr %i.nf, align 8
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

bb.cb:                                            ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ce

bb.cc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.32, i32 noundef 515, ptr noundef nonnull @.str.33)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

bb.cd:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.32, i32 noundef 520, ptr noundef nonnull @.str.33)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245

default.unreachable306:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.cd, %bb.cc
  ret void

bb.ce:                                            ; preds = %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ni, %bb.cb ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.170, align 8         ; 6 uses
  %8 = alloca %class.obj_ref.58, align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !302  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !363
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !363
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !53
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !55
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !53
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !359 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !359 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !53
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !53
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !53
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !873

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !310
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !311
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 3 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !310 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !302
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
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !302
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !55
  %i.bu = add i32 %i.ba, 64
  store i32 %i.bu, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !874

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !352
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !310 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !311 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !302
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !52
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !61
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !53 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !53
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !55
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !347
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !302
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit: ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !52
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !61
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !53 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !55
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !53 ; 2 uses
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
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !55 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !57, !nonnull !58, !align !59
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE:bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.su)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.dx

bb.dx:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i256
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #25
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #25
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i254, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.sz = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 5 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit267, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.tb = getelementptr inbounds i8, ptr %i.sz, i64 -4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !53 ; 2 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = shl nuw nsw i64 %i.td, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.te
  %.not.i258 = icmp eq i32 %i.tc, 0
  br i1 %.not.i258, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i266, label %.lr.ph.i.i259

.lr.ph.i.i259:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262
  %.06.i.i260 = phi ptr [ %i.tm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262 ], [ %i.sz, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257 ] ; 2 uses
  %i.tg = load ptr, ptr %.06.i.i260, align 8, !tbaa !55 ; 3 uses
  %i.th = load ptr, ptr %3, align 8, !tbaa !57, !nonnull !58, !align !59
  %.not.i.i.i.i.i261 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i.i261, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i259
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !61
  %i.tk = add i32 %i.tj, -1                       ; 2 uses
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !61
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.ea, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.th, ptr noundef nonnull %i.tg)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262 unwind label %bb.ec

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262: ; preds = %bb.ea, %bb.dz, %.lr.ph.i.i259
  %i.tm = getelementptr inbounds nuw i8, ptr %.06.i.i260, i64 8 ; 2 uses
  %i.tn = icmp ult ptr %i.tm, %i.tf
  br i1 %i.tn, label %.lr.ph.i.i259, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i263, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i263: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i262
  %.pre.i264 = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %.pre.i264, null
  br i1 %.not.i.i.i265, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit267, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i266

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i266: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i263, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257
  %i.to = phi ptr [ %.pre.i264, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i263 ], [ %i.sz, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i257 ]
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.tp)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit267 unwind label %bb.eb

bb.eb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i266
  %i.tq = landingpad { ptr, i32 }
          catch ptr null
  %i.tr = extractvalue { ptr, i32 } %i.tq, 0
  call void @__clang_call_terminate(ptr %i.tr) #25
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  call void @__clang_call_terminate(ptr %i.tt) #25
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit267: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i263, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit288

.loopexit288:                                     ; preds = %_ZNK10quantifier9get_childEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit267
  ret void

bb.ed:                                            ; preds = %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cc ]
  call void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ed ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ee, %bb.as, %bb.bb
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %.pn.pn, %bb.ee ], [ %.pn103, %bb.as ], [ %lpad.loopexit.split-lp433, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

declare void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager15mk_transitivityEP3appS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11ast_manager10is_patternEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #1

declare void @_Z12verbose_lockv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager17update_quantifierEP10quantifierjPKP4exprjS5_S3_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager13mk_bind_proofEP10quantifierP3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager14mk_quant_introEP10quantifierS1_P3app(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI10quantifier11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !531    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI10quantifier11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !877, !nonnull !58, !align !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !61
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
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable
}

declare void @_ZN13rewriter_core9end_scopeEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.58, align 8          ; 6 uses
  %4 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable250 [
    i32 0, label %bb.b
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.bc
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 3 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.q = add i32 %i.l, 64
  store i32 %i.q, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit162, !llvm.loop !878

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %.invoke, %bb.r, %bb.p, %bb.n, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bd

bb.g:                                             ; preds = %bb.f, %_ZNK9func_decl14is_associativeEv.exit.thread
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !347, !nonnull !58, !align !59 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !329
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !48
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
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !352 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !52  ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111

_ZN6vectorIP4exprLb0EjE3endEv.exit.i111:          ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !53 ; 2 uses
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
  %i.az = load ptr, ptr %.06.i.i114, align 8, !tbaa !55 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !57, !nonnull !58, !align !59
  %.not.i.i.i.i.i115 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !61
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !61
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
  %.pre.i118 = load ptr, ptr %i.x, align 8, !tbaa !52 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.bh = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %bb.i
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ null, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !61
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !53 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !53
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.n
  %.pre.i.i124 = load ptr, ptr %i.x, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i125 = getelementptr inbounds i8, ptr %.pre.i.i124, i64 -4
  %.pre2.i.i126 = load i32, ptr %.phi.trans.insert.i.i125, align 4, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %.noexc127, %bb.m
  %i.bu = phi i32 [ %.pre2.i.i126, %.noexc127 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i124, %.noexc127 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !55
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !53
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130: ; preds = %bb.o, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !348 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !53 ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !53
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 2 uses
  %.not.i131 = icmp eq ptr %1, %i.ci
  %i.cj = icmp eq i32 %i.ch, 0
  %or.cond = select i1 %.not.i131, i1 true, i1 %i.cj
  br i1 %or.cond, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130
  %i.ck = add i32 %i.cg, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !75
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130
  %i.cq = phi ptr [ %.pr, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ], [ %i.ci, %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE12cache_resultILb0EEEvP4exprS5_P3appb.exit130 ] ; 3 uses
  %.not.i4.i132 = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i132, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4exprS4_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92, !nonnull !58, !align !59
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !61
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !61
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %i.jo = zext i32 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jo
  store ptr %i.jb, ptr %i.jp, align 8, !tbaa !55
  %i.jq = add i32 %i.jl, 1
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !53
  %i.jr = load i32, ptr %i.a, align 8
  %i.js = trunc i32 %i.jr to i1
  br i1 %i.js, label %bb.ay, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.ay:                                            ; preds = %bb.ax
  %i.jt = load ptr, ptr %i.hc, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.jt)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.ay, %bb.ax
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !348 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -4 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !53 ; 2 uses
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !53
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.ka = add i32 %i.jx, -2
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = or i32 %i.ke, 2
  store i32 %i.kf, ptr %i.kd, align 8
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.kg = load ptr, ptr %4, align 8, !tbaa !75    ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit200
  %i.kh = load ptr, ptr %i.ga, align 8, !tbaa !92, !nonnull !58, !align !59
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !61
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !61
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.ba, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, ptr noundef nonnull %i.kg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit200, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit162

bb.bc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.32, i32 noundef 520, ptr noundef nonnull @.str.33)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit162

default.unreachable250:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bc, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bd:                                            ; preds = %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 10 uses
  %4 = alloca %class.ref_vector, align 8          ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !302  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !363
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !363
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !53
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !55
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !53
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !359 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !359 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !53
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !53
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !53
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !879

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !310
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !311
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 3 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !310 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !302
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
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !302
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !55
  %i.bu = add i32 %i.ba, 64
  store i32 %i.bu, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN2qe21simplify_rewriter_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !880

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !352
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !310 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !311 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !347, !nonnull !58, !align !59
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !302
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !52
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !61
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !53 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !53
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !55
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !347
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !302
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit: ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !52
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !61
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !53 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !55
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !53 ; 2 uses
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
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !55 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !57, !nonnull !58, !align !59
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_3
