inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_:bb.a
  %i.bd = shl nuw nsw i32 %.sroa.10.0, 2
  %i.be = add nuw nsw i32 %i.bd, 12
  %i.bf = ashr i32 %i.bc, %i.be                   ; 4 uses
  %i.bg = and i32 %i.bf, 1
  %.not33.1 = icmp eq i32 %i.bg, 0
  br i1 %.not33.1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store float %i.bi, ptr %i.bj, align 8, !tbaa !101
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bk = and i32 %i.bf, 2
  %.not34.1 = icmp eq i32 %i.bk, 0
  br i1 %.not34.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = load float, ptr %i.l, align 4, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float %i.bl, ptr %i.bm, align 4, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = and i32 %i.bf, 4
  %.not35.1 = icmp eq i32 %i.bn, 0
  br i1 %.not35.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store float %i.bp, ptr %i.bq, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = and i32 %i.bf, 8
  %.not36.1 = icmp eq i32 %i.br, 0
  br i1 %.not36.1, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = load float, ptr %i.l, align 4, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  store float %i.bs, ptr %i.bt, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bu = call noundef i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull %i.as, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.bv = add nsw i32 %i.bu, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.1.1 = phi i32 [ %i.bv, %bb.y ], [ %.1, %bb.p ] ; 3 uses
  %i.bw = zext nneg i32 %.sroa.17.0 to i64        ; 2 uses
  %i.bx = getelementptr inbounds nuw [88 x i8], ptr %i.g, i64 %i.bw ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !91
  %.not.2 = icmp eq i32 %i.bz, 0
  br i1 %.not.2, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !19, !range !97, !noundef !41
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !22, !range !97, !noundef !41
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.cg, align 4
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 4, !tbaa !12
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %i.i, align 8
  %i.ch = load i32, ptr %i.j, align 8, !tbaa !39
  %i.ci = shl nuw nsw i32 %.sroa.17.0, 2
  %i.cj = add nuw nsw i32 %i.ci, 12
  %i.ck = ashr i32 %i.ch, %i.cj                   ; 4 uses
  %i.cl = and i32 %i.ck, 1
  %.not33.2 = icmp eq i32 %i.cl, 0
  br i1 %.not33.2, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store float %i.cn, ptr %i.co, align 8, !tbaa !101
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = and i32 %i.ck, 2
  %.not34.2 = icmp eq i32 %i.cp, 0
  br i1 %.not34.2, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cq = load float, ptr %i.l, align 4, !tbaa !102
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store float %i.cq, ptr %i.cr, align 4, !tbaa !103
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cs = and i32 %i.ck, 4
  %.not35.2 = icmp eq i32 %i.cs, 0
  br i1 %.not35.2, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store float %i.cu, ptr %i.cv, align 8, !tbaa !17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cw = and i32 %i.ck, 8
  %.not36.2 = icmp eq i32 %i.cw, 0
  br i1 %.not36.2, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load float, ptr %i.l, align 4, !tbaa !102
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store float %i.cx, ptr %i.cy, align 4, !tbaa !104
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cz = call noundef i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull %i.bx, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1, i32 noundef 0)
  %i.da = add nsw i32 %i.cz, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ab
  %.1.2 = phi i32 [ %i.da, %bb.ak ], [ %.1.1, %bb.ab ]
  ret i32 %.1.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30btGeneric6DofSpring2Constraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8) local_unnamed_addr #3 align 2 {
.peel.begin:
  %9 = alloca %class.btRotationalLimitMotor2, align 4 ; 27 uses
  %10 = alloca %class.btVector3, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store <4 x float> <float 2.000000e-01, float 0.000000e+00, float f0x3F666666, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 822 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 76 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 819 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 828 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.az = load i32, ptr %i.s, align 4, !tbaa !87  ; 2 uses
  %.not.peel = icmp eq i32 %i.az, 0
  %i.ba = load i8, ptr %i.t, align 8, !tbaa !15, !range !97 ; 2 uses
  br i1 %.not.peel, label %bb.a, label %._crit_edge.peel

bb.a:                                             ; preds = %.peel.begin
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %._crit_edge.peel, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = load i8, ptr %i.u, align 2, !tbaa !15, !range !97, !noundef !41
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._crit_edge.peel, label %.peel.newph

._crit_edge.peel:                                 ; preds = %bb.b, %bb.a, %.peel.begin
  %i.be = phi i8 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.ba, %.peel.begin ]
  %i.bf = load float, ptr %i.v, align 8, !tbaa !13
  store float %i.bf, ptr %i.b, align 4, !tbaa !105
  store i32 %i.az, ptr %i.w, align 4, !tbaa !91
  %i.bg = load float, ptr %i.x, align 4, !tbaa !13
  store float %i.bg, ptr %i.y, align 4, !tbaa !90
  %i.bh = load float, ptr %i.z, align 4, !tbaa !13
  store float %i.bh, ptr %i.aa, align 4, !tbaa !92
  %i.bi = load float, ptr %i.ab, align 4, !tbaa !13
  store float %i.bi, ptr %i.ac, align 4, !tbaa !93
  store i8 %i.be, ptr %i.g, align 4, !tbaa !19
  %i.bj = load i8, ptr %i.ad, align 1, !tbaa !15, !range !97, !noundef !41
  store i8 %i.bj, ptr %i.j, align 4, !tbaa !20
  %i.bk = load float, ptr %i.ae, align 4, !tbaa !13
  store float %i.bk, ptr %i.k, align 4, !tbaa !21
  %i.bl = load i8, ptr %i.u, align 2, !tbaa !15, !range !97, !noundef !41
  store i8 %i.bl, ptr %i.l, align 4, !tbaa !22
  %i.bm = load float, ptr %i.af, align 4, !tbaa !13
  store float %i.bm, ptr %i.m, align 4, !tbaa !23
  %i.bn = load i8, ptr %i.ag, align 4, !tbaa !15, !range !97, !noundef !41
  store i8 %i.bn, ptr %i.n, align 4, !tbaa !24
  %i.bo = load float, ptr %i.ah, align 8, !tbaa !13
  store float %i.bo, ptr %i.o, align 4, !tbaa !25
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !15, !range !97, !noundef !41
  store i8 %i.bp, ptr %i.p, align 4, !tbaa !26
  %i.bq = load float, ptr %i.aj, align 4, !tbaa !13
  store float %i.bq, ptr %i.q, align 4, !tbaa !106
  %i.br = load float, ptr %i.ak, align 8, !tbaa !13
  store float %i.br, ptr %i.a, align 4, !tbaa !89
  %i.bs = load float, ptr %i.r, align 8, !tbaa !13
  store float %i.bs, ptr %9, align 4, !tbaa !88
  %i.bt = load float, ptr %i.al, align 4, !tbaa !13
  store float %i.bt, ptr %i.i, align 4, !tbaa !107
  %i.bu = load float, ptr %i.am, align 4, !tbaa !13
  store float %i.bu, ptr %i.h, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bv = load float, ptr %i.an, align 4, !tbaa !13
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = load float, ptr %i.ao, align 4, !tbaa !13
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.bw, i64 1
  %i.bx = load float, ptr %i.ap, align 4, !tbaa !13
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.aq, align 8
  %i.by = load i32, ptr %i.ar, align 8, !tbaa !39 ; 4 uses
  %i.bz = and i32 %i.by, 1
  %.not75.peel = icmp eq i32 %i.bz, 0
  br i1 %.not75.peel, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.peel
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.peel, %bb.c
  %.in.peel = phi ptr [ %i.ca, %bb.c ], [ %i.as, %._crit_edge.peel ]
  %i.cb = load float, ptr %.in.peel, align 4, !tbaa !13
  store float %i.cb, ptr %i.d, align 4, !tbaa !101
  %i.cc = and i32 %i.by, 2
  %.not76.peel = icmp eq i32 %i.cc, 0
  %.in77.peel = select i1 %.not76.peel, ptr %i.av, ptr %i.au
  %i.cd = load float, ptr %.in77.peel, align 4, !tbaa !13
  store float %i.cd, ptr %i.c, align 4, !tbaa !103
  %i.ce = and i32 %i.by, 4
  %.not78.peel = icmp eq i32 %i.ce, 0
  br i1 %.not78.peel, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.in79.peel = phi ptr [ %i.cf, %bb.e ], [ %i.aw, %bb.d ]
  %i.cg = load float, ptr %.in79.peel, align 4, !tbaa !13
  store float %i.cg, ptr %i.f, align 4, !tbaa !17
  %i.ch = and i32 %i.by, 8
  %.not80.peel = icmp eq i32 %i.ch, 0
  %.in81.peel = select i1 %.not80.peel, ptr %i.av, ptr %i.ax
  %i.ci = load float, ptr %.in81.peel, align 4, !tbaa !13
  store float %i.ci, ptr %i.e, align 4, !tbaa !104
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !91
  switch i32 %i.ck, label %.thread.fold.split.peel [
    i32 1, label %.thread.peel
    i32 2, label %.thread.peel
    i32 3, label %bb.i
    i32 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !92
  %i.cn = fpext float %i.cm to double
  %i.co = fcmp olt double %i.cn, -1.000000e-03
  br i1 %i.co, label %.thread.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !93
  %i.cr = fpext float %i.cq to double
  %i.cs = fcmp ogt double %i.cr, 1.000000e-03
  br label %.thread.peel

bb.i:                                             ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !92
  %i.cv = tail call float @llvm.fabs.f32(float %i.cu)
  %i.cw = fpext float %i.cv to double
  %or.cond82.peel = fcmp ogt double %i.cw, 1.000000e-03
  br label %.thread.peel

.thread.fold.split.peel:                          ; preds = %bb.f
  br label %.thread.peel

.thread.peel:                                     ; preds = %.thread.fold.split.peel, %bb.i, %bb.h, %bb.g, %bb.f, %bb.f
  %i.cx = phi i1 [ %i.cs, %bb.h ], [ false, %.thread.fold.split.peel ], [ true, %bb.f ], [ true, %bb.f ], [ %or.cond82.peel, %bb.i ], [ true, %bb.g ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1252
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !91
  switch i32 %i.cz, label %.split71.peel [
    i32 1, label %bb.m
    i32 2, label %bb.m
    i32 3, label %bb.l
    i32 4, label %bb.j
  ]

bb.j:                                             ; preds = %.thread.peel
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.db = load float, ptr %i.da, align 8, !tbaa !92
  %i.dc = fpext float %i.db to double
  %i.dd = fcmp olt double %i.dc, -1.000000e-03
  br i1 %i.dd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1244
  %i.df = load float, ptr %i.de, align 4, !tbaa !93
  %i.dg = fpext float %i.df to double
  %i.dh = fcmp ogt double %i.dg, 1.000000e-03
  br label %bb.m

bb.l:                                             ; preds = %.thread.peel
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.dj = load float, ptr %i.di, align 8, !tbaa !92
  %i.dk = tail call float @llvm.fabs.f32(float %i.dj)
  %i.dl = fpext float %i.dk to double
  %or.cond83.peel = fcmp ogt double %i.dl, 1.000000e-03
  br i1 %or.cond83.peel, label %bb.m, label %.split71.peel

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.thread.peel, %.thread.peel
  %i.dm = phi i1 [ %i.dh, %bb.k ], [ true, %bb.l ], [ true, %.thread.peel ], [ true, %.thread.peel ], [ true, %bb.j ]
  %or.cond.peel = select i1 %i.cx, i1 %i.dm, i1 false
  %not.or.cond.peel = xor i1 %or.cond.peel, true
  %spec.select.peel = zext i1 %not.or.cond.peel to i32
  br label %.split71.peel

.split71.peel:                                    ; preds = %bb.m, %bb.l, %.thread.peel
  %.sink.peel = phi i32 [ %spec.select.peel, %bb.m ], [ 1, %.thread.peel ], [ 1, %bb.l ]
  %i.dn = call noundef i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull %9, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.sink.peel)
  %i.do = add nsw i32 %i.dn, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.peel.newph

.peel.newph:                                      ; preds = %.split71.peel, %bb.b
  %.1.peel = phi i32 [ %i.do, %.split71.peel ], [ %2, %bb.b ]
  br label %bb.n

.loopexit:                                        ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret i32 %.1

bb.n:                                             ; preds = %.peel.newph, %bb.ad
  %indvars.iv = phi i64 [ 1, %.peel.newph ], [ %indvars.iv.next.pre-phi, %bb.ad ] ; 31 uses
  %.07090 = phi i32 [ %.1.peel, %.peel.newph ], [ %.1, %bb.ad ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87 ; 2 uses
  %.not = icmp eq i32 %i.dq, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15, !range !97 ; 2 uses
  br i1 %.not, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15, !range !97, !noundef !41
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %._crit_edge, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.p
  %.pre95 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.n, %bb.p, %bb.o
  %i.dx = phi i8 [ 1, %bb.o ], [ 0, %bb.p ], [ %i.ds, %bb.n ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !13
  store float %i.dz, ptr %i.b, align 4, !tbaa !105
  store i32 %i.dq, ptr %i.w, align 4, !tbaa !91
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !13
  store float %i.eb, ptr %i.y, align 4, !tbaa !90
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !13
  store float %i.ed, ptr %i.aa, align 4, !tbaa !92
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !13
  store float %i.ef, ptr %i.ac, align 4, !tbaa !93
  store i8 %i.dx, ptr %i.g, align 4, !tbaa !19
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15, !range !97, !noundef !41
  store i8 %i.eh, ptr %i.j, align 4, !tbaa !20
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !13
  store float %i.ej, ptr %i.k, align 4, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !15, !range !97, !noundef !41
  store i8 %i.el, ptr %i.l, align 4, !tbaa !22
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !13
  store float %i.en, ptr %i.m, align 4, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15, !range !97, !noundef !41
  store i8 %i.ep, ptr %i.n, align 4, !tbaa !24
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.er = load float, ptr %i.eq, align 4, !tbaa !13
  store float %i.er, ptr %i.o, align 4, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15, !range !97, !noundef !41
  store i8 %i.et, ptr %i.p, align 4, !tbaa !26
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !13
  store float %i.ev, ptr %i.q, align 4, !tbaa !106
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !13
  store float %i.ex, ptr %i.a, align 4, !tbaa !89
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !13
  store float %i.ez, ptr %9, align 4, !tbaa !88
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !13
  store float %i.fb, ptr %i.i, align 4, !tbaa !107
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !13
  store float %i.fd, ptr %i.h, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !13
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fi = load float, ptr %i.ff, align 4, !tbaa !13
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.fi, i64 1
  %i.fj = load float, ptr %i.fg, align 4, !tbaa !13
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fj, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.aq, align 8
  %i.fk = load i32, ptr %i.ar, align 8, !tbaa !39
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.fl = shl i32 %indvars.iv.tr, 2
  %i.fm = ashr i32 %i.fk, %i.fl                   ; 4 uses
  %i.fn = and i32 %i.fm, 1
  %.not75 = icmp eq i32 %i.fn, 0
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !98
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.in = phi ptr [ %i.fo, %bb.q ], [ %i.fp, %bb.r ]
  %i.fq = load float, ptr %.in, align 4, !tbaa !13
  store float %i.fq, ptr %i.d, align 4, !tbaa !101
  %i.fr = and i32 %i.fm, 2
  %.not76 = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %.in77 = select i1 %.not76, ptr %i.av, ptr %i.fs
  %i.ft = load float, ptr %.in77, align 4, !tbaa !13
  store float %i.ft, ptr %i.c, align 4, !tbaa !103
  %i.fu = and i32 %i.fm, 4
  %.not78 = icmp eq i32 %i.fu, 0
  br i1 %.not78, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fw = load ptr, ptr %i.at, align 8, !tbaa !98
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.in79 = phi ptr [ %i.fv, %bb.t ], [ %i.fw, %bb.u ]
  %i.fx = load float, ptr %.in79, align 4, !tbaa !13
  store float %i.fx, ptr %i.f, align 4, !tbaa !17
  %i.fy = and i32 %i.fm, 8
  %.not80 = icmp eq i32 %i.fy, 0
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %.in81 = select i1 %.not80, ptr %i.av, ptr %i.fz
  %i.ga = load float, ptr %.in81, align 4, !tbaa !13
  store float %i.ga, ptr %i.e, align 4, !tbaa !104
  %i.gb = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %11 = add i64 %indvars.iv, 4294967295
  %i.gc = select i1 %.cmp.not, i64 0, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.gc ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 84
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !91
  switch i32 %i.gf, label %.thread.fold.split [
    i32 1, label %.thread
    i32 2, label %.thread
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !92
  %i.gi = tail call float @llvm.fabs.f32(float %i.gh)
  %i.gj = fpext float %i.gi to double
  %or.cond82 = fcmp ogt double %i.gj, 1.000000e-03
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !92
  %i.gm = fpext float %i.gl to double
  %i.gn = fcmp olt double %i.gm, -1.000000e-03
  br i1 %i.gn, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 76
  %i.gp = load float, ptr %i.go, align 4, !tbaa !93
  %i.gq = fpext float %i.gp to double
  %i.gr = fcmp ogt double %i.gq, 1.000000e-03
  br label %.thread

.thread.fold.split:                               ; preds = %bb.v
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.v, %bb.v, %.thread.fold.split, %bb.y, %bb.x
  %i.gs = phi i1 [ %i.gr, %bb.y ], [ false, %.thread.fold.split ], [ true, %bb.v ], [ true, %bb.v ], [ %or.cond82, %bb.w ], [ true, %bb.x ]
  %12 = and i64 %11, 4294967295
  %13 = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %12 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.gt = load i32, ptr %14, align 4, !tbaa !91
  switch i32 %i.gt, label %.split71 [
    i32 1, label %bb.ac
    i32 2, label %bb.ac
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.z:                                             ; preds = %.thread
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.gu = load float, ptr %15, align 8, !tbaa !92
  %i.gv = tail call float @llvm.fabs.f32(float %i.gu)
  %i.gw = fpext float %i.gv to double
  %or.cond83 = fcmp ogt double %i.gw, 1.000000e-03
  br i1 %or.cond83, label %bb.ac, label %.split71

bb.aa:                                            ; preds = %.thread
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.gx = load float, ptr %16, align 8, !tbaa !92
  %i.gy = fpext float %i.gx to double
  %i.gz = fcmp olt double %i.gy, -1.000000e-03
  br i1 %i.gz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 76
  %i.ha = load float, ptr %17, align 4, !tbaa !93
  %i.hb = fpext float %i.ha to double
  %i.hc = fcmp ogt double %i.hb, 1.000000e-03
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %.thread, %bb.ab, %bb.aa, %bb.z
  %i.hd = phi i1 [ %i.hc, %bb.ab ], [ true, %bb.z ], [ true, %.thread ], [ true, %.thread ], [ true, %bb.aa ]
  %or.cond = select i1 %i.gs, i1 %i.hd, i1 false
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = zext i1 %not.or.cond to i32
  br label %.split71

.split71:                                         ; preds = %bb.ac, %bb.z, %.thread
  %.sink = phi i32 [ %spec.select, %bb.ac ], [ 1, %.thread ], [ 1, %bb.z ]
  %i.he = call noundef i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull %9, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.07090, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef 0, i32 noundef %.sink)
  %i.hf = add nsw i32 %i.he, %.07090
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge94, %.split71
  %indvars.iv.next.pre-phi = phi i64 [ %.pre95, %._crit_edge94 ], [ %i.gb, %.split71 ] ; 2 uses
  %.1 = phi i32 [ %.07090, %._crit_edge94 ], [ %i.hf, %.split71 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !109
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 6) i32 @_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112  ; 4 uses
  %i.c = mul nsw i32 %i.b, %9                     ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91
  switch i32 %i.e, label %bb.t [
    i32 4, label %bb.b
    i32 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.not378 = icmp eq i32 %11, 0                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 5 uses
  %i.g = load <2 x float>, ptr %10, align 4, !tbaa !13 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %.not378, label %.split368, label %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit

_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit: ; preds = %bb.b
  %i.k = load <4 x float>, ptr %6, align 4
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = load <2 x float>, ptr %6, align 4, !tbaa !13 ; 2 uses
  %i.p = load <2 x float>, ptr %7, align 4, !tbaa !13 ; 2 uses
  %i.q = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.s = fmul <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.u, <2 x float> %i.s)
  %i.w = insertelement <2 x float> %i.l, float %i.n, i64 1
  %i.x = insertelement <2 x float> poison, float %i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v) ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !113 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 4 uses
  %i.ae = sext i32 %i.c to i64                    ; 3 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = extractelement <2 x float> %i.g, i64 0
  store float %i.ag, ptr %i.af, align 4, !tbaa !13
  %i.ah = load float, ptr %i.f, align 4, !tbaa !13
  %i.ai = add nsw i32 %i.c, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.aj
  store float %i.ah, ptr %i.ak, align 4, !tbaa !13
  %i.al = load float, ptr %i.h, align 4, !tbaa !13
  %i.am = add nsw i32 %i.c, 2
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.an
  store float %i.al, ptr %i.ao, align 4, !tbaa !13
  %i.ap = load float, ptr %10, align 4, !tbaa !13
  %i.aq = fneg float %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  store float %i.aq, ptr %i.ar, align 4, !tbaa !13
  %i.as = load float, ptr %i.f, align 4, !tbaa !13
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aj
  store float %i.at, ptr %i.au, align 4, !tbaa !13
  %i.av = load float, ptr %i.h, align 4, !tbaa !13
  %i.aw = fneg float %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.an
  store float %i.aw, ptr %i.ax, align 4, !tbaa !13
  br label %bb.d

.split368:                                        ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113 ; 3 uses
  %i.bh = sext i32 %i.c to i64                    ; 5 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = add nsw i32 %i.c, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = add nsw i32 %i.c, 2
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bk
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ca = load <2 x float>, ptr %4, align 4, !tbaa !13
  %i.cb = load <2 x float>, ptr %5, align 4, !tbaa !13 ; 2 uses
  %i.cc = extractelement <2 x float> %i.g, i64 0
  store float %i.cc, ptr %i.bi, align 4, !tbaa !13
  %i.cd = load float, ptr %i.f, align 4, !tbaa !13
  store float %i.cd, ptr %i.bl, align 4, !tbaa !13
  %i.ce = load float, ptr %i.h, align 4, !tbaa !13
  store float %i.ce, ptr %i.bo, align 4, !tbaa !13
  %i.cf = load float, ptr %10, align 4, !tbaa !13
  %i.cg = fneg float %i.cf
  store float %i.cg, ptr %i.bp, align 4, !tbaa !13
  %i.ch = load float, ptr %i.f, align 4, !tbaa !13
  %i.ci = fneg float %i.ch
  store float %i.ci, ptr %i.bq, align 4, !tbaa !13
  %i.cj = load float, ptr %i.h, align 4, !tbaa !13
  %i.ck = fneg float %i.cj
  store float %i.ck, ptr %i.br, align 4, !tbaa !13
  %i.cl = load float, ptr %i.bs, align 4, !tbaa !13
  %i.cm = load float, ptr %i.bt, align 4, !tbaa !13
  %i.cn = load float, ptr %i.bw, align 4, !tbaa !13
  %i.co = load float, ptr %i.bx, align 4, !tbaa !13
  %i.cp = load float, ptr %10, align 4, !tbaa !13 ; 2 uses
  %i.cq = fneg float %i.cp
  %i.cr = load <2 x float>, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.bv, align 4, !tbaa !13 ; 2 uses
  %i.ct = fsub <2 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x float> %i.cu, float %i.cl, i64 1
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x float> %i.cw, float %i.cm, i64 1
  %i.cy = fsub <2 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = load <2 x float>, ptr %i.f, align 4, !tbaa !13 ; 3 uses
  %i.da = load <2 x float>, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.db = load <2 x float>, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.dc = fsub <2 x float> %i.da, %i.db           ; 2 uses
  %i.dd = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.de = insertelement <2 x float> %i.dd, float %i.cn, i64 1
  %i.df = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.co, i64 1
  %i.dh = fsub <2 x float> %i.de, %i.dg           ; 2 uses
  %i.di = shufflevector <2 x float> %i.dc, <2 x float> %i.ct, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.dj = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.dl = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dn = shufflevector <2 x float> %i.g, <2 x float> %i.cb, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.do = insertelement <4 x float> %i.dn, float %i.cq, i64 1
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dq = fmul <4 x float> %i.dm, %i.dp
  %i.dr = shufflevector <2 x float> %i.dh, <2 x float> %i.cy, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.ds = shufflevector <4 x float> %i.dj, <4 x float> %i.dr, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.dt = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dv = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = shufflevector <2 x float> %i.g, <2 x float> %i.cz, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.dw, <4 x float> %i.dq) ; 5 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.i, float %i.dy)
  %i.ea = extractelement <4 x float> %i.dx, i64 2
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.i, float %i.ea)
  %i.ec = fsub float %i.dz, %i.eb
  %i.ed = fneg <2 x float> %i.cz                  ; 2 uses
  %i.ee = fmul <2 x float> %i.dh, %i.ed
  %i.ef = insertelement <2 x float> %i.dv, float %i.cp, i64 1 ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.ef, <2 x float> %i.ee) ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ei = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dx, <2 x i32> <i32 5, i32 1> ; 2 uses
  %i.ej = fmul <2 x float> %i.cy, %i.ed
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ef, <2 x float> %i.ej) ; 2 uses
  %i.el = insertelement <2 x float> %i.eh, float 0.000000e+00, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.en = load i8, ptr %i.em, align 4, !tbaa !81, !range !97, !noundef !41
  %i.eo = trunc nuw i8 %i.en to i1
end_hunk_0
