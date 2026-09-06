Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lp_core_solver_base?download=true
inline.NumInlined: 1350
inline.NumDeleted: 661
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2lp19lp_core_solver_baseI8rationalS1_E18column_is_feasibleEj:bb.a

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.dl = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  br label %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit12

_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit12: ; preds = %bb.q, %bb.r, %bb.s
  %.0.i.i.i11 = phi i1 [ %i.dl, %bb.s ], [ %i.di, %bb.q ], [ %i.dk, %bb.r ]
  %i.dm = xor i1 %.0.i.i.i11, true
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !85, !nonnull !43, !align !44
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !78
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.d ; 6 uses
  %i.dr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.du = load i8, ptr %i.dt, align 4
  %i.dv = and i8 %i.du, 1
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = load i32, ptr %i.ds, align 8
  %i.dy = icmp eq i32 %i.dx, 1
  %i.dz = select i1 %i.dw, i1 %i.dy, i1 false
  br i1 %i.dz, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, 1
  %i.ee = icmp eq i8 %i.ed, 0
  %i.ef = load i32, ptr %i.ea, align 8
  %i.eg = icmp eq i32 %i.ef, 1
  %i.eh = select i1 %i.ee, i1 %i.eg, i1 false
  br i1 %i.eh, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = and i8 %i.ej, 1
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.en = load i8, ptr %i.em, align 4
  %i.eo = and i8 %i.en, 1
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = load i32, ptr %i.dq, align 8, !tbaa !84
  %i.er = load i32, ptr %i.e, align 8, !tbaa !84
  %i.es = icmp slt i32 %i.eq, %i.er
  br label %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.et = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.eu = icmp slt i32 %i.et, 0
  br label %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14

bb.z:                                             ; preds = %bb.u, %bb.t
  %i.ev = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14

_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14: ; preds = %bb.x, %bb.y, %bb.z
  %.0.i.i.i.i13 = phi i1 [ %i.ev, %bb.z ], [ %i.es, %bb.x ], [ %i.eu, %bb.y ]
  %i.ew = xor i1 %.0.i.i.i.i13, true
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.ab

bb.ab:                                            ; preds = %.split15, %.split, %bb.a, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit, %bb.aa, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit12
  %.0 = phi i1 [ false, %bb.aa ], [ %i.cc, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit ], [ %i.dm, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11below_boundERKS1_S4_.exit12 ], [ %i.ew, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit14 ], [ false, %_ZNK2lp19lp_core_solver_baseI8rationalS1_E11above_boundERKS1_S4_.exit ], [ true, %bb.a ], [ false, %.split ], [ false, %.split15 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE44calc_current_x_is_feasible_include_non_basisEv(ptr noundef nonnull align 8 dereferenceable(217) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !43, !align !44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !194

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ %i.l, %bb.b ], [ %i.k, %bb.a ]
  %i.l = add i32 %.05, -1                         ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZNK2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE18column_is_feasibleEj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %i.l)
  br i1 %i.m, label %bb.b, label %._crit_edge7, !llvm.loop !194

._crit_edge7:                                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.b, %._crit_edge7, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %._crit_edge7 ], [ true, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE18column_is_feasibleEj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122, !nonnull !43, !align !44
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = zext i32 %1 to i64                       ; 6 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195, !nonnull !43, !align !44
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  switch i32 %i.j, label %bb.f [
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.d
  %i.o = tail call noundef zeroext i1 @_ZNK2lp12numeric_pairI8rationalEgtERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !197, !nonnull !43, !align !44
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.d
  %i.t = tail call noundef zeroext i1 @_ZNK2lp12numeric_pairI8rationalEltERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
  %i.u = xor i1 %i.t, true
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !197, !nonnull !43, !align !44
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.d
  %i.z = tail call noundef zeroext i1 @_ZNK2lp12numeric_pairI8rationalEltERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.y)
  %i.aa = xor i1 %i.z, true
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196, !nonnull !43, !align !44
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.d
  %i.af = tail call noundef zeroext i1 @_ZNK2lp12numeric_pairI8rationalEgtERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
  %i.ag = xor i1 %i.af, true
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.f ], [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ag, %bb.e ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE20pivot_column_tableauEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE19divide_row_by_pivotEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %2, i32 noundef %1)
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !43, !align !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = zext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !137  ; 8 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 12
  %.not46 = icmp eq ptr %i.i, %i.j
  br i1 %.not46, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %.044 = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]   ; 5 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add i32 %.044, 1                         ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %.thread, !llvm.loop !198

bb.d:                                             ; preds = %.lr.ph
  %i.v = icmp sgt i32 %.044, -1
  br i1 %i.v, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %.044, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 4, !tbaa !59 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !59 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.w = zext nneg i32 %.044 to i64               ; 2 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, ptr noundef nonnull align 4 dereferenceable(9) %i.x, i64 9, i1 false), !tbaa.struct !138
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w ; 3 uses
  store i32 %.sroa.0.0.copyload, ptr %i.z, align 4, !tbaa !59
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 4, !tbaa !59
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.copyload to i8
  store i8 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx38, align 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !43, !align !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = zext i32 %2 to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !137 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !59
  %i.am = zext i32 %.sroa.0.0.copyload to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.am
  %i.ao = zext i32 %.sroa.5.0.copyload to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.044, ptr %i.ar, align 4, !tbaa !59
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %.pre48 = ptrtoint ptr %.pre to i64
  %.pre49 = ptrtoint ptr %i.af to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi54 = phi i64 [ %.pre51, %bb.f ], [ %i.m, %bb.e ]
  %i.as = phi ptr [ %.pre, %bb.f ], [ %i.i, %bb.e ]
  %i.at = icmp ugt i64 %.pre-phi54, 12
  br i1 %i.at, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph45, %_ZN16indexed_uint_set6insertEj.exit
  %i.av = phi ptr [ %i.as, %.lr.ph45 ], [ %i.br, %_ZN16indexed_uint_set6insertEj.exit ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12 ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !118 ; 5 uses
  %.not34 = icmp eq ptr %i.ax, null
  br i1 %.not34, label %_ZN16indexed_uint_set6insertEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !59 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.i
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %i.be = icmp ult i32 %i.ay, %i.bd
  br i1 %i.be, label %bb.j, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

bb.j:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.bf = zext i32 %i.ay to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59 ; 2 uses
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !143
  %i.bj = icmp ult i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK16indexed_uint_set8containsEj.exit.i, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

_ZNK16indexed_uint_set8containsEj.exit.i:         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !140
  %i.bm = zext i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59
  %i.bp = icmp eq i32 %i.bo, %i.ay
  br i1 %i.bp, label %_ZN16indexed_uint_set6insertEj.exit, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

_ZNK16indexed_uint_set8containsEj.exit.thread.i:  ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i, %bb.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.i
  tail call void @_ZN16indexed_uint_set12insert_freshEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i32 noundef %i.ay)
  br label %_ZN16indexed_uint_set6insertEj.exit

_ZN16indexed_uint_set6insertEj.exit:              ; preds = %_ZNK16indexed_uint_set8containsEj.exit.thread.i, %_ZNK16indexed_uint_set8containsEj.exit.i, %bb.h
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !43, !align !44
  tail call void @_ZN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEE27pivot_row_to_row_given_cellEjRNS_8row_cellINS_12empty_structEEEj(ptr noundef nonnull align 8 dereferenceable(184) %i.bq, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %i.aw, i32 noundef %1)
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ugt i64 %i.bv, 12
  br i1 %i.bw, label %bb.h, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %_ZN16indexed_uint_set6insertEj.exit, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !200, !nonnull !43, !align !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 284
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !145
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %.thread

bb.k:                                             ; preds = %._crit_edge
  tail call void @_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE30pivot_to_reduced_costs_tableauEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %2, i32 noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.k, %._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %bb.k ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE19divide_row_by_pivotEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !43, !align !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = zext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40                  ; 3 uses
  %i.n = and i64 %i.m, 4294967295
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.m, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %.not = icmp eq i32 %i.p, %2
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %indvars.iv, 4294967295
  br i1 %i.q, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %sext = shl i64 %indvars.iv, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.r ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  %.not40 = icmp eq i32 %i.u, 0
  br i1 %.not40, label %._crit_edge.thread, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %bb.c
  %wide.trip.count46 = and i64 %i.m, 4294967295
  br label %.lr.ph37

._crit_edge38:                                    ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  store i32 0, ptr %3, align 8, !tbaa !84, !alias.scope !205
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !205
  %i.x = and i8 %i.w, -4                          ; 2 uses
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !205
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !95, !alias.scope !205
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 1, ptr %i.z, align 8, !tbaa !84, !alias.scope !205
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 4, !alias.scope !205
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4, !alias.scope !205
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !95, !alias.scope !205
  %i.ae = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81, !noalias !205 ; 2 uses
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4, !noalias !205
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge38
  %i.ai = load i32, ptr @_ZN8rational5m_oneE, align 8, !tbaa !84, !noalias !205
  store i32 %i.ai, ptr %3, align 8, !tbaa !84, !alias.scope !205
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !205
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge38
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4, !noalias !205
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16), align 8, !tbaa !84, !noalias !205
  %i.an = load i8, ptr %i.aa, align 4, !alias.scope !205
  %i.ao = and i8 %i.an, -2
  br label %_ZN2lp11one_of_typeI8rationalEET_v.exit

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16))
  %.pre = load i32, ptr %i.z, align 8, !tbaa !59
  %.pre48 = load i8, ptr %i.aa, align 4
  br label %_ZN2lp11one_of_typeI8rationalEET_v.exit

_ZN2lp11one_of_typeI8rationalEET_v.exit:          ; preds = %bb.f, %bb.g
  %i.ap = phi i8 [ %i.ao, %bb.f ], [ %.pre48, %bb.g ] ; 2 uses
  %i.aq = phi i32 [ %i.am, %bb.f ], [ %.pre, %bb.g ]
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !59
  %i.as = load i32, ptr %3, align 8, !tbaa !59
  store i32 %i.as, ptr %i.t, align 8, !tbaa !59
  store i32 %i.ar, ptr %3, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !147
  store ptr %i.av, ptr %i.at, align 8, !tbaa !147
  store ptr %i.au, ptr %i.y, align 8, !tbaa !147
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.ay = load i8, ptr %i.v, align 4              ; 2 uses
  %i.az = and i8 %i.ax, -4
  %i.ba = and i8 %i.ay, -4
  %i.bb = and i8 %i.ay, 3
  %i.bc = or disjoint i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.aw, align 4
  %i.bd = and i8 %i.ax, 3
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.v, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.aq, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !147
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !147
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !147
  store ptr %i.bi, ptr %i.ad, align 8, !tbaa !147
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4             ; 2 uses
  %i.bm = and i8 %i.bl, -4
  %i.bn = and i8 %i.ap, -4
  %i.bo = and i8 %i.ap, 3
  %i.bp = or disjoint i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %i.bk, align 4
  %i.bq = and i8 %i.bl, 3
  %i.br = or disjoint i8 %i.bn, %i.bq
  store i8 %i.br, ptr %i.aa, align 4
  %i.bs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %_ZN2lp11one_of_typeI8rationalEET_v.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i, %_ZN2lp11one_of_typeI8rationalEET_v.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %._crit_edge.thread

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %bb.j
  %indvars.iv43 = phi i64 [ 0, %.lr.ph37.preheader ], [ %indvars.iv.next44, %bb.j ] ; 2 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %indvars.iv43 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %.not32 = icmp eq i32 %i.bx, %2
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81
  tail call void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE30pivot_to_reduced_costs_tableauEjj:bb.a
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ai = load i32, ptr @_ZN8rational6m_zeroE, align 8, !tbaa !84, !noalias !208
  store i32 %i.ai, ptr %4, align 8, !tbaa !84, !alias.scope !208
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !208
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 20), align 4, !noalias !208
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16), align 8, !tbaa !84, !noalias !208
  %i.an = load i8, ptr %i.aa, align 4, !alias.scope !208
  %i.ao = and i8 %i.an, -2
  br label %_ZN2lp12zero_of_typeI8rationalEET_v.exit

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16))
  %.pre = load i32, ptr %i.z, align 8, !tbaa !59
  %.pre25 = load i8, ptr %i.aa, align 4
  br label %_ZN2lp12zero_of_typeI8rationalEET_v.exit

_ZN2lp12zero_of_typeI8rationalEET_v.exit:         ; preds = %bb.f, %bb.g
  %i.ap = phi i8 [ %i.ao, %bb.f ], [ %.pre25, %bb.g ] ; 2 uses
  %i.aq = phi i32 [ %i.am, %bb.f ], [ %.pre, %bb.g ]
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !59
  %i.as = load i32, ptr %4, align 8, !tbaa !59
  store i32 %i.as, ptr %i.g, align 8, !tbaa !59
  store i32 %i.ar, ptr %4, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !147
  store ptr %i.av, ptr %i.at, align 8, !tbaa !147
  store ptr %i.au, ptr %i.y, align 8, !tbaa !147
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.ay = load i8, ptr %i.v, align 4              ; 2 uses
  %i.az = and i8 %i.ax, -4
  %i.ba = and i8 %i.ay, -4
  %i.bb = and i8 %i.ay, 3
  %i.bc = or disjoint i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.aw, align 4
  %i.bd = and i8 %i.ax, 3
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.v, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.aq, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !147
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !147
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !147
  store ptr %i.bi, ptr %i.ad, align 8, !tbaa !147
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4             ; 2 uses
  %i.bm = and i8 %i.bl, -4
  %i.bn = and i8 %i.ap, -4
  %i.bo = and i8 %i.ap, 3
  %i.bp = or disjoint i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %i.bk, align 4
  %i.bq = and i8 %i.bl, 3
  %i.br = or disjoint i8 %i.bn, %i.bq
  store i8 %i.br, ptr %i.aa, align 4
  %i.bs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %_ZN2lp12zero_of_typeI8rationalEET_v.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i, %_ZN2lp12zero_of_typeI8rationalEET_v.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.019.024 = phi ptr [ %i.p, %.lr.ph ], [ %i.cw, %bb.p ] ; 4 uses
  %i.bv = load i32, ptr %.sroa.019.024, align 8, !tbaa !152
  %.not14 = icmp eq i32 %i.bv, %2
  br i1 %.not14, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8
  call void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
  %i.bx = load i32, ptr %.sroa.019.024, align 8, !tbaa !152
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bz ; 6 uses
  %i.cb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = load i32, ptr %i.cc, align 8
  %i.ci = icmp eq i32 %i.ch, 1
  %i.cj = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ck = load i8, ptr %i.u, align 4
  %i.cl = and i8 %i.ck, 1
  %i.cm = icmp eq i8 %i.cl, 0
  %i.cn = load i32, ptr %i.t, align 8
  %i.co = icmp eq i32 %i.cn, 1
  %i.cp = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11mpz_managerILb1EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %.noexc15 unwind label %bb.o

.noexc15:                                         ; preds = %.noexc
  store i32 1, ptr %i.cc, align 8, !tbaa !84
  %i.cq = load i8, ptr %i.cd, align 4
  %i.cr = and i8 %i.cq, -2
  store i8 %i.cr, ptr %i.cd, align 4
  br label %_ZN8rationalmIERKS_.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN11mpq_managerILb1EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZN8rationalmIERKS_.exit unwind label %bb.o

_ZN8rationalmIERKS_.exit:                         ; preds = %.noexc15, %bb.m
  %i.cs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i17 unwind label %bb.n

.noexc.i17:                                       ; preds = %_ZN8rationalmIERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN8rationalD2Ev.exit18 unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i17, %_ZN8rationalmIERKS_.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #22
  unreachable

_ZN8rationalD2Ev.exit18:                          ; preds = %.noexc.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %.noexc, %bb.l
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.cv

bb.p:                                             ; preds = %_ZN8rationalD2Ev.exit18, %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 40 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.r
  br i1 %i.cx, label %._crit_edge, label %bb.i

_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.thread:   ; preds = %bb.a, %_ZN8rationalD2Ev.exit, %bb.b, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalS1_E20pivot_column_tableauEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalS1_E19divide_row_by_pivotEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %2, i32 noundef %1)
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = zext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !137  ; 8 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 12
  %.not46 = icmp eq ptr %i.i, %i.j
  br i1 %.not46, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %.044 = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]   ; 5 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add i32 %.044, 1                         ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %.thread, !llvm.loop !209

bb.d:                                             ; preds = %.lr.ph
  %i.v = icmp sgt i32 %.044, -1
  br i1 %i.v, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %.044, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 4, !tbaa !59 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !59 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.w = zext nneg i32 %.044 to i64               ; 2 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, ptr noundef nonnull align 4 dereferenceable(9) %i.x, i64 9, i1 false), !tbaa.struct !138
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w ; 3 uses
  store i32 %.sroa.0.0.copyload, ptr %i.z, align 4, !tbaa !59
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 4, !tbaa !59
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.copyload to i8
  store i8 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx38, align 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = zext i32 %2 to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !137 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !59
  %i.am = zext i32 %.sroa.0.0.copyload to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.am
  %i.ao = zext i32 %.sroa.5.0.copyload to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.044, ptr %i.ar, align 4, !tbaa !59
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %.pre48 = ptrtoint ptr %.pre to i64
  %.pre49 = ptrtoint ptr %i.af to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi54 = phi i64 [ %.pre51, %bb.f ], [ %i.m, %bb.e ]
  %i.as = phi ptr [ %.pre, %bb.f ], [ %i.i, %bb.e ]
  %i.at = icmp ugt i64 %.pre-phi54, 12
  br i1 %i.at, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph45, %_ZN16indexed_uint_set6insertEj.exit
  %i.av = phi ptr [ %i.as, %.lr.ph45 ], [ %i.br, %_ZN16indexed_uint_set6insertEj.exit ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12 ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !126 ; 5 uses
  %.not34 = icmp eq ptr %i.ax, null
  br i1 %.not34, label %_ZN16indexed_uint_set6insertEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !59 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.i
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %i.be = icmp ult i32 %i.ay, %i.bd
  br i1 %i.be, label %bb.j, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

bb.j:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.bf = zext i32 %i.ay to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59 ; 2 uses
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !143
  %i.bj = icmp ult i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK16indexed_uint_set8containsEj.exit.i, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

_ZNK16indexed_uint_set8containsEj.exit.i:         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !140
  %i.bm = zext i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !59
  %i.bp = icmp eq i32 %i.bo, %i.ay
  br i1 %i.bp, label %_ZN16indexed_uint_set6insertEj.exit, label %_ZNK16indexed_uint_set8containsEj.exit.thread.i

_ZNK16indexed_uint_set8containsEj.exit.thread.i:  ; preds = %_ZNK16indexed_uint_set8containsEj.exit.i, %bb.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.i
  tail call void @_ZN16indexed_uint_set12insert_freshEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i32 noundef %i.ay)
  br label %_ZN16indexed_uint_set6insertEj.exit

_ZN16indexed_uint_set6insertEj.exit:              ; preds = %_ZNK16indexed_uint_set8containsEj.exit.thread.i, %_ZNK16indexed_uint_set8containsEj.exit.i, %bb.h
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !42, !nonnull !43, !align !44
  tail call void @_ZN2lp13static_matrixI8rationalS1_E27pivot_row_to_row_given_cellEjRNS_8row_cellINS_12empty_structEEEj(ptr noundef nonnull align 8 dereferenceable(184) %i.bq, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %i.aw, i32 noundef %1)
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ugt i64 %i.bv, 12
  br i1 %i.bw, label %bb.h, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %_ZN16indexed_uint_set6insertEj.exit, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !211, !nonnull !43, !align !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 284
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !145
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %.thread

bb.k:                                             ; preds = %._crit_edge
  tail call void @_ZN2lp19lp_core_solver_baseI8rationalS1_E30pivot_to_reduced_costs_tableauEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %2, i32 noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.k, %._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %bb.k ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2lp19lp_core_solver_baseI8rationalS1_E19divide_row_by_pivotEjj(ptr noundef nonnull align 8 dereferenceable(217) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !43, !align !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = zext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40                  ; 3 uses
  %i.n = and i64 %i.m, 4294967295
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.m, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %.not = icmp eq i32 %i.p, %2
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = icmp eq i64 %indvars.iv, 4294967295
  br i1 %i.q, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %sext = shl i64 %indvars.iv, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.r ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  %.not40 = icmp eq i32 %i.u, 0
  br i1 %.not40, label %._crit_edge.thread, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %bb.c
  %wide.trip.count46 = and i64 %i.m, 4294967295
  br label %.lr.ph37

._crit_edge38:                                    ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  store i32 0, ptr %3, align 8, !tbaa !84, !alias.scope !216
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !216
  %i.x = and i8 %i.w, -4                          ; 2 uses
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !216
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !95, !alias.scope !216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 1, ptr %i.z, align 8, !tbaa !84, !alias.scope !216
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 4, !alias.scope !216
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4, !alias.scope !216
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !95, !alias.scope !216
  %i.ae = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81, !noalias !216 ; 2 uses
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4, !noalias !216
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge38
  %i.ai = load i32, ptr @_ZN8rational5m_oneE, align 8, !tbaa !84, !noalias !216
  store i32 %i.ai, ptr %3, align 8, !tbaa !84, !alias.scope !216
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !216
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge38
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4, !noalias !216
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16), align 8, !tbaa !84, !noalias !216
  %i.an = load i8, ptr %i.aa, align 4, !alias.scope !216
  %i.ao = and i8 %i.an, -2
  br label %_ZN2lp11one_of_typeI8rationalEET_v.exit

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16))
  %.pre = load i32, ptr %i.z, align 8, !tbaa !59
  %.pre48 = load i8, ptr %i.aa, align 4
  br label %_ZN2lp11one_of_typeI8rationalEET_v.exit

_ZN2lp11one_of_typeI8rationalEET_v.exit:          ; preds = %bb.f, %bb.g
  %i.ap = phi i8 [ %i.ao, %bb.f ], [ %.pre48, %bb.g ] ; 2 uses
  %i.aq = phi i32 [ %i.am, %bb.f ], [ %.pre, %bb.g ]
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !59
  %i.as = load i32, ptr %3, align 8, !tbaa !59
  store i32 %i.as, ptr %i.t, align 8, !tbaa !59
  store i32 %i.ar, ptr %3, align 8, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !147
  store ptr %i.av, ptr %i.at, align 8, !tbaa !147
  store ptr %i.au, ptr %i.y, align 8, !tbaa !147
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.ay = load i8, ptr %i.v, align 4              ; 2 uses
  %i.az = and i8 %i.ax, -4
  %i.ba = and i8 %i.ay, -4
  %i.bb = and i8 %i.ay, 3
  %i.bc = or disjoint i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.aw, align 4
  %i.bd = and i8 %i.ax, 3
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.v, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.aq, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !147
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !147
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !147
  store ptr %i.bi, ptr %i.ad, align 8, !tbaa !147
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4             ; 2 uses
  %i.bm = and i8 %i.bl, -4
  %i.bn = and i8 %i.ap, -4
  %i.bo = and i8 %i.ap, 3
  %i.bp = or disjoint i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %i.bk, align 4
  %i.bq = and i8 %i.bl, 3
  %i.br = or disjoint i8 %i.bn, %i.bq
  store i8 %i.br, ptr %i.aa, align 4
  %i.bs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %_ZN2lp11one_of_typeI8rationalEET_v.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i, %_ZN2lp11one_of_typeI8rationalEET_v.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %._crit_edge.thread

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %bb.j
  %indvars.iv43 = phi i64 [ 0, %.lr.ph37.preheader ], [ %indvars.iv.next44, %bb.j ] ; 2 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %indvars.iv43 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %.not32 = icmp eq i32 %i.bx, %2
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81
  tail call void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %bb.j

end_hunk_1
