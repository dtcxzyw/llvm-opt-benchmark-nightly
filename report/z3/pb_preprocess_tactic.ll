inline.NumInlined: 1178
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN20pb_preprocess_tactic5to_geEP4exprR10ref_vectorIS0_11ast_managerER6vectorI8rationalLb1EjERS7_:bb.a
bb.aw:                                            ; preds = %.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit92
  %.046107 = phi ptr [ %i.id, %.lr.ph ], [ %i.lg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit92 ] ; 2 uses
  %i.ko = load ptr, ptr %.046107, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i87, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i88, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !58
  %i.kr = add i32 %i.kq, 1
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !58
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i88

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i88: ; preds = %bb.ax, %bb.aw
  %i.ks = load ptr, ptr %i.jx, align 8, !tbaa !19 ; 4 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i88
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !47 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ks, i64 -8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !47
  %i.ky = icmp eq i32 %i.kv, %i.kx
  br i1 %i.ky, label %bb.az, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit92

bb.az:                                            ; preds = %bb.ay, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i88
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
  %.pre.i.i89 = load ptr, ptr %i.jx, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i.i90 = getelementptr inbounds i8, ptr %.pre.i.i89, i64 -4
  %.pre2.i.i91 = load i32, ptr %.phi.trans.insert.i.i90, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit92

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit92: ; preds = %bb.ay, %bb.az
  %i.kz = phi i32 [ %.pre2.i.i91, %bb.az ], [ %i.kv, %bb.ay ] ; 2 uses
  %i.la = phi ptr [ %.pre.i.i89, %bb.az ], [ %i.ks, %bb.ay ] ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -4
  %i.lc = zext i32 %i.kz to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lc
  store ptr %i.ko, ptr %i.ld, align 8, !tbaa !52
  %i.le = add i32 %i.kz, 1
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !47
  %i.lf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE) ; 0 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.046107, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.lg, %i.ih
  br i1 %.not, label %._crit_edge, label %bb.aw

.critedge:                                        ; preds = %bb.ar, %bb.z, %bb.aj, %bb.ai, %bb.h, %bb.i, %bb.q, %bb.r, %_ZN8rationalD2Ev.exit, %bb.au, %bb.av, %_ZNK11ast_manager5is_orEPK4expr.exit
  %.2 = phi i1 [ false, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ false, %bb.aj ], [ false, %bb.z ], [ true, %bb.h ], [ true, %bb.av ], [ true, %bb.au ], [ true, %_ZN8rationalD2Ev.exit ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.i ], [ false, %bb.ai ], [ false, %bb.ar ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_mapI3appN20pb_preprocess_tactic3recEE4findEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !210  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = add i32 %i.d, -1
  %i.f = and i32 %i.e, %i.b                       ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h
  %.not34.i.i = icmp eq i32 %i.f, %i.d
  br i1 %.not34.i.i, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.j = zext i32 %i.f to i64
  %.idx.i.i = mul nuw nsw i64 %i.j, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.035.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.l = load ptr, ptr %.035.i.i, align 8, !tbaa !130 ; 4 uses
  %i.m = icmp ult ptr %i.l, inttoptr (i64 2 to ptr)
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !210
  %i.p = icmp eq i32 %i.o, %i.b
  %i.q = icmp eq ptr %i.l, %1
  %or.cond.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i, label %_ZNK7obj_mapI3appN20pb_preprocess_tactic3recEE9find_coreEPS0_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.i
  br i1 %.not.i.i, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !211

.lr.ph38.i.i.preheader:                           ; preds = %bb.d, %bb.a
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader, %.lr.ph38.backedge.i.i
  %.137.i.i = phi ptr [ %.pn, %.lr.ph38.backedge.i.i ], [ %i.g, %.lr.ph38.i.i.preheader ] ; 3 uses
  %i.s = load ptr, ptr %.137.i.i, align 8, !tbaa !130 ; 4 uses
  %i.t = icmp ult ptr %i.s, inttoptr (i64 2 to ptr)
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !210
  %i.w = icmp eq i32 %i.v, %i.b
  %i.x = icmp eq ptr %i.s, %1
  %or.cond31.i.i = and i1 %i.x, %i.w
  br i1 %or.cond31.i.i, label %_ZNK7obj_mapI3appN20pb_preprocess_tactic3recEE9find_coreEPS0_.exit, label %.lr.ph38.backedge.i.i

bb.f:                                             ; preds = %.lr.ph38.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %.lr.ph38.backedge.i.i

.lr.ph38.backedge.i.i:                            ; preds = %bb.e, %bb.f
  %.pn = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 24
  br label %.lr.ph38.i.i, !llvm.loop !212

_ZNK7obj_mapI3appN20pb_preprocess_tactic3recEE9find_coreEPS0_.exit: ; preds = %bb.b, %bb.e
  %.026.i.i = phi ptr [ %.137.i.i, %bb.e ], [ %.035.i.i, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN20pb_preprocess_tactic8subsumesERK10ref_vectorI4expr11ast_managerERK6vectorI8rationalLb1EjERKS7_S5_SA_SC_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !44 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %i.b, align 8
  %i.h = icmp eq i32 %i.g, 1
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  %i.o = load i32, ptr %i.j, align 8
  %i.p = icmp eq i32 %i.o, 1
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %.split33

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZgtRK8rationalS1_.exit, label %.split33

.split33:                                         ; preds = %bb.d, %bb.c
  %i.z = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %.preheader42

.split:                                           ; preds = %bb.b, %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br i1 %i.ab, label %.thread, label %.preheader42

_ZgtRK8rationalS1_.exit:                          ; preds = %bb.d
  %i.ac = load i32, ptr %3, align 8, !tbaa !34
  %i.ad = load i32, ptr %6, align 8, !tbaa !34
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.thread, label %.preheader42

.preheader42:                                     ; preds = %_ZgtRK8rationalS1_.exit, %.split, %.split33
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.preheader42, %bb.k
  %i.aj = phi ptr [ %i.cf, %bb.k ], [ %i.ah, %.preheader42 ]
  %.02562 = phi i32 [ %i.ce, %bb.k ], [ 0, %.preheader42 ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.am = icmp ult i32 %.02562, %i.al
  br i1 %i.am, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.an = zext i32 %.02562 to i64                 ; 2 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  %7 = getelementptr inbounds i8, ptr %i.ao, i64 -4
  br i1 %i.ap, label %.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.preheader: ; preds = %.preheader
  %i.aq = load i32, ptr %7, align 4, !tbaa !47
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.preheader, %bb.j
  %indvars.iv61 = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.preheader ] ; 4 uses
  %8 = icmp samesign ult i64 %indvars.iv61, %i.ar
  br i1 %8, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a
  %9 = load ptr, ptr %i.af, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.an
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv61
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.au = icmp eq ptr %11, %i.at
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %2, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.an ; 6 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv61 ; 6 uses
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !44 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = load i32, ptr %i.ba, align 8
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.g, label %.split34

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = and i8 %i.bk, 1
  %i.bm = icmp eq i8 %i.bl, 0
  %i.bn = load i32, ptr %i.bi, align 8
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.h, label %.split34

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = and i8 %i.br, 1
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %.split35

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZgtRK8rationalS1_.exit32, label %.split35

.split35:                                         ; preds = %bb.i, %bb.h
  %i.by = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.thread, label %bb.k

.split34:                                         ; preds = %bb.g, %bb.f
  %i.ca = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  br i1 %i.ca, label %.thread, label %bb.k

_ZgtRK8rationalS1_.exit32:                        ; preds = %bb.i
  %i.cb = load i32, ptr %i.ay, align 8, !tbaa !34
  %i.cc = load i32, ptr %i.aw, align 8, !tbaa !34
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.thread, label %bb.k

bb.j:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv61, 1
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a

bb.k:                                             ; preds = %.split35, %.split34, %_ZgtRK8rationalS1_.exit32
  %i.ce = add i32 %.02562, 1
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !257

.thread:                                          ; preds = %.preheader, %bb.k, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %.split35, %.split34, %_ZgtRK8rationalS1_.exit32, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a, %.preheader42, %.split33, %.split, %_ZgtRK8rationalS1_.exit
  %.4 = phi i1 [ false, %.split33 ], [ false, %_ZgtRK8rationalS1_.exit ], [ false, %.split ], [ true, %.preheader42 ], [ false, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30.a ], [ false, %.split35 ], [ true, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ false, %.split34 ], [ false, %_ZgtRK8rationalS1_.exit32 ], [ true, %bb.k ], [ false, %.preheader ]
  ret i1 %.4
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #1

declare void @_Z12verbose_lockv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #1

declare void @_ZN4goal6updateEjP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4goal9elim_trueEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10bit_vectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorI8rationalLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j ; 7 uses
  store i32 0, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 6 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !33
  %i.p = load i32, ptr %1, align 8, !tbaa !47
  store i32 %i.p, ptr %i.k, align 8, !tbaa !47
  store i32 0, ptr %1, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !235
  store ptr %i.r, ptr %i.o, align 8, !tbaa !235
  store ptr null, ptr %i.q, align 8, !tbaa !235
  %i.s = load i8, ptr %i.l, align 4               ; 2 uses
  %i.t = and i8 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 2
  %i.x = and i8 %i.s, -3
  %i.y = or disjoint i8 %i.w, %i.x
  store i8 %i.y, ptr %i.l, align 4
  %i.z = load i8, ptr %i.u, align 4               ; 2 uses
  %i.aa = and i8 %i.z, -3
  %i.ab = or disjoint i8 %i.aa, %i.t
  store i8 %i.ab, ptr %i.u, align 4
  %i.ac = load i8, ptr %i.l, align 4              ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = and i8 %i.z, 1
  %i.af = and i8 %i.ac, -2
  %i.ag = or disjoint i8 %i.af, %i.ae
  store i8 %i.ag, ptr %i.l, align 4
  %i.ah = load i8, ptr %i.u, align 4
  %i.ai = and i8 %i.ah, -2
  %i.aj = or disjoint i8 %i.ai, %i.ad
  store i8 %i.aj, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 6 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = and i8 %i.an, -4
  store i8 %i.ao, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !47
  store i32 %i.aq, ptr %i.ak, align 8, !tbaa !47
  store i32 0, ptr %i.al, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !235
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !235
  store ptr null, ptr %i.ar, align 8, !tbaa !235
  %i.at = load i8, ptr %i.am, align 4             ; 2 uses
  %i.au = and i8 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 2
  %i.ay = and i8 %i.at, -3
  %i.az = or disjoint i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.am, align 4
  %i.ba = load i8, ptr %i.av, align 4             ; 2 uses
  %i.bb = and i8 %i.ba, -3
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.am, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.am, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  %i.bl = load ptr, ptr %0, align 8, !tbaa !50
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !47
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !47
  ret ptr %0
}

declare noundef ptr @_ZN7pb_util5mk_geEjPK8rationalPKP4exprRS1_(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !33
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !44 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !34
  store i32 %i.o, ptr %3, align 8, !tbaa !34
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !34
end_hunk_0
