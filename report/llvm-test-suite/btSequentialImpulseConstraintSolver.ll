inline.NumInlined: 720
inline.NumDeleted: 168
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject:bb.a
  store i8 1, ptr %i.al, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.ag, align 8, !tbaa !16
  store i32 %i.o, ptr %i.k, align 8, !tbaa !18
  %.pre4.i = load i32, ptr %i.i, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit: ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i
  %i.am = phi i32 [ %.pre4.i, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = sext i32 %i.j to i64                    ; 2 uses
  %i.ar = getelementptr inbounds [112 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ar, i8 0, i64 112, i1 false)
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.at = getelementptr inbounds [112 x i8], ptr %i.as, i64 %i.aq ; 9 uses
  %i.au = load i32, ptr %i.d, align 8, !tbaa !60
  %.not16 = icmp eq i32 %i.au, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  br i1 %.not16, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit
  %i.aw = load float, ptr %i.f, align 8, !tbaa !66 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !51
  %i.az = fmul float %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !51
  %i.bc = fmul float %i.aw, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.be = load float, ptr %i.bd, align 4, !tbaa !51
  %i.bf = fmul float %i.aw, %i.be
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.az, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bc, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr %1, ptr %i.bh, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr null, ptr %i.bl, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bm, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit: ; preds = %bb.k, %bb.l
  store i32 %i.j, ptr %i.a, align 8, !tbaa !81
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit
  %.1 = phi i32 [ %i.j, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.1
}

; Function Attrs: uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(68) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 10 uses
  %4 = alloca %class.btVector3, align 8           ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 42 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 42 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.b)
  %i.h = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0277 = phi i32 [ %i.h, %bb.b ], [ -1, %bb.a ] ; 8 uses
  %.0 = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]    ; 9 uses
  %i.i = or i32 %.0, %.0277
  %or.cond.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.not, label %bb.bz, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.j = load i32, ptr %i.e, align 8, !tbaa !88
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.not293626 = icmp eq ptr %i.b, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %.not294627 = icmp eq ptr %i.d, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 364
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 372
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 348 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 348 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 332
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bk = sext i32 %.0 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 380 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 388 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 380 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 388 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 172 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.e

._crit_edge:                                      ; preds = %bb.by, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bz

bb.e:                                             ; preds = %.lr.ph, %bb.by
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.by ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [176 x i8], ptr %i.l, i64 %indvars.iv ; 35 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 80 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !89
  %i.cw = load float, ptr %i.m, align 8, !tbaa !90
  %i.cx = fcmp ugt float %i.cv, %i.cw
  br i1 %i.cx, label %bb.by, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.da = load float, ptr %i.cy, align 8, !tbaa !51
  %i.db = load float, ptr %i.o, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !51 ; 2 uses
  %i.de = load <2 x float>, ptr %i.p, align 4, !tbaa !51 ; 2 uses
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.da, i64 1
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x float> %i.dh, float %i.db, i64 1
  %i.dj = fsub <2 x float> %i.dg, %i.di           ; 10 uses
  %i.dk = fsub <2 x float> %i.dd, %i.de           ; 6 uses
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.dm = insertelement <2 x float> %i.dj, float 0.000000e+00, i64 1
  store <2 x float> %i.dl, ptr %3, align 8
  store <2 x float> %i.dm, ptr %.sroa.4142.0..sroa_idx, align 8, !tbaa !73
  %i.dn = load float, ptr %i.cz, align 8, !tbaa !51
  %i.do = load float, ptr %i.r, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !51 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.s, align 4, !tbaa !51 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %i.dn, i64 1
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.do, i64 1
  %i.dw = fsub <2 x float> %i.dt, %i.dv           ; 11 uses
  %i.dx = fsub <2 x float> %i.dq, %i.dr           ; 7 uses
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 1, i32 2>
  %i.dz = insertelement <2 x float> %i.dw, float 0.000000e+00, i64 1
  store <2 x float> %i.dy, ptr %4, align 8
  store <2 x float> %i.dz, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !73
  %i.ea = load i32, ptr %i.t, align 4, !tbaa !24  ; 14 uses
  %i.eb = load i32, ptr %i.u, align 8, !tbaa !25
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.g, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.ea, 0
  %i.ed = shl nsw i32 %i.ea, 1
  %i.ee = select i1 %.not.i.i, i32 1, i32 %i.ed   ; 4 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.h, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = sext i32 %i.ee to i64
  %i.eh = mul nsw i64 %i.eg, 144
  %i.ei = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eh, i32 noundef 16)
  %.pre.i = load i32, ptr %i.t, align 4, !tbaa !24
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ej = phi i32 [ %.pre.i, %bb.i ], [ %i.ea, %bb.h ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ei, %bb.i ], [ null, %bb.h ] ; 4 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ej to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.el = icmp eq i32 %i.ej, 1
  br i1 %i.el, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.j ]
  %i.em = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.en = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw [144 x i8], ptr %i.en, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.em, ptr noundef nonnull align 8 dereferenceable(144) %i.eo, i64 144, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.eq = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.er = getelementptr inbounds nuw [144 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ep, ptr noundef nonnull align 8 dereferenceable(144) %i.er, i64 144, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.j

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod664 = trunc i32 %i.ej to i1
  tail call void @llvm.assume(i1 %lcmp.mod664)
  %i.es = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.eu = getelementptr inbounds nuw [144 x i8], ptr %i.et, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.es, ptr noundef nonnull align 8 dereferenceable(144) %i.eu, i64 144, i1 false), !tbaa.struct !77
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.ev = load ptr, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ew = load i8, ptr %i.w, align 8, !tbaa !19, !range !44, !noundef !76
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.l, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ev)
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.w, align 8, !tbaa !19
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !23
  store i32 %i.ee, ptr %i.u, align 8, !tbaa !25
  %.pre4.i = load i32, ptr %i.t, align 4, !tbaa !24
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit

_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit: ; preds = %bb.f, %bb.g, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
  %i.ey = phi i32 [ %.pre4.i, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i ], [ %i.ea, %bb.g ], [ %i.ea, %bb.f ]
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.t, align 4, !tbaa !24
  %i.fa = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.fb = sext i32 %i.ea to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [144 x i8], ptr %i.fa, i64 %i.fb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.fc, i8 0, i64 144, i1 false)
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.fe = getelementptr inbounds [144 x i8], ptr %i.fd, i64 %i.fb ; 29 uses
  %i.ff = load i32, ptr %i.x, align 8, !tbaa !60
  %i.fg = icmp ne i32 %i.ff, 2
  %i.fh = load i32, ptr %i.y, align 8, !tbaa !60
  %i.fi = icmp ne i32 %i.fh, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 104 ; 3 uses
  store i32 %.0, ptr %i.fj, align 8, !tbaa !73
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 108 ; 4 uses
  store i32 %.0277, ptr %i.fk, align 4, !tbaa !73
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store ptr %i.ct, ptr %i.fl, align 8, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ct, i64 64 ; 9 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ct, i64 72 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ct, i64 68 ; 8 uses
  %.not293 = select i1 %i.fg, i1 true, i1 %.not293626 ; 8 uses
  br i1 %.not293, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !51 ; 2 uses
  %i.fq = load float, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.fr = fneg float %i.fq
  %i.fs = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %i.ft = fmul float %i.fs, %i.fr
  %i.fu = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fp, float %i.ft) ; 2 uses
  %i.fw = load float, ptr %i.fn, align 8, !tbaa !51 ; 2 uses
  %i.fx = fneg float %i.fw
  %i.fy = fmul float %i.fu, %i.fx
  %i.fz = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fq, float %i.fy) ; 2 uses
  %i.gb = fneg float %i.fp
  %i.gc = fmul float %i.fz, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fw, float %i.gc) ; 2 uses
  %i.ge = load float, ptr %i.aa, align 8, !tbaa !51
  %i.gf = load float, ptr %i.ac, align 8, !tbaa !51
  %i.gg = load float, ptr %i.ad, align 8, !tbaa !51
  %i.gh = load float, ptr %i.ae, align 4, !tbaa !51
  %i.gi = fmul float %i.ga, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gd, float %i.gi)
  %i.gk = load float, ptr %i.af, align 8, !tbaa !51
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.fv, float %i.gj)
  %i.gm = load <2 x float>, ptr %i.z, align 8, !tbaa !51 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.ab, align 8, !tbaa !51 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3>
  %i.gp = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.go, %i.gq
  %i.gs = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gt = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gu, <2 x float> %i.gr)
  %i.gw = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.gf, i64 1
  %i.gy = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gz, <2 x float> %i.gv)
  %i.hb = load <2 x float>, ptr %i.ag, align 4, !tbaa !51
  %i.hc = fmul <2 x float> %i.ha, %i.hb
  %i.hd = load float, ptr %i.ah, align 4, !tbaa !51
  %i.he = fmul float %i.gl, %i.hd
  %.sroa.3.12.vec.insert.i324 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  br label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit, %bb.m
  %.sroa.0602.1 = phi <2 x float> [ %i.hc, %bb.m ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit ] ; 3 uses
  %.sroa.6603.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i324, %bb.m ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fe, i64 48 ; 2 uses
  store <2 x float> %.sroa.0602.1, ptr %i.hf, align 8
  %.sroa.6603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 56 ; 2 uses
  store <2 x float> %.sroa.6603.1, ptr %.sroa.6603.0..sroa_idx, align 8, !tbaa !73
  %.not294 = select i1 %i.fi, i1 true, i1 %.not294627 ; 7 uses
  %i.hg = extractelement <2 x float> %.sroa.0602.1, i64 1 ; 2 uses
  %i.hh = extractelement <2 x float> %.sroa.6603.1, i64 0 ; 2 uses
  %i.hi = extractelement <2 x float> %.sroa.0602.1, i64 0 ; 2 uses
  br i1 %.not294, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hj = load float, ptr %i.fo, align 4, !tbaa !51 ; 2 uses
  %i.hk = load float, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.hl = fneg float %i.hk
  %i.hm = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.hn = fmul float %i.hm, %i.hl
  %i.ho = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.hj, float %i.hn)
  %i.hq = load float, ptr %i.fn, align 8, !tbaa !51 ; 2 uses
  %i.hr = fneg float %i.hq
  %i.hs = fmul float %i.ho, %i.hr
  %i.ht = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hk, float %i.hs)
  %i.hv = fneg float %i.hj
  %i.hw = fmul float %i.ht, %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hq, float %i.hw)
  %i.hy = fneg float %i.hx                        ; 2 uses
  %i.hz = fneg float %i.hu                        ; 2 uses
  %i.ia = fneg float %i.hp                        ; 2 uses
  %i.ib = load float, ptr %i.aj, align 8, !tbaa !51
  %i.ic = load float, ptr %i.al, align 8, !tbaa !51
  %i.id = load float, ptr %i.am, align 8, !tbaa !51
  %i.ie = load float, ptr %i.an, align 4, !tbaa !51
  %i.if = fmul float %i.ie, %i.hz
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.id, float %i.hy, float %i.if)
  %i.ih = load float, ptr %i.ao, align 8, !tbaa !51
  %i.ii = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.ia, float %i.ig)
  %i.ij = load <2 x float>, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.il = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.im = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %i.il, %i.in
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ic, i64 1
  %i.iv = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.is)
  %i.iy = load <2 x float>, ptr %i.ap, align 4, !tbaa !51
  %i.iz = fmul <2 x float> %i.ix, %i.iy
  %i.ja = load float, ptr %i.aq, align 4, !tbaa !51
  %i.jb = fmul float %i.ii, %i.ja
  %.sroa.3.12.vec.insert.i344 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jb, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.0594.1 = phi <2 x float> [ %i.iz, %bb.o ], [ zeroinitializer, %bb.n ] ; 4 uses
  %.sroa.6.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i344, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  store <2 x float> %.sroa.0594.1, ptr %i.jc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  store <2 x float> %.sroa.6.1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  %i.jd = extractelement <2 x float> %.sroa.0594.1, i64 0
  %i.je = extractelement <2 x float> %.sroa.0594.1, i64 1 ; 2 uses
  %i.jf = extractelement <2 x float> %.sroa.6.1, i64 0
  br i1 %.not293, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jg = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %i.jh = fneg float %i.jg
  %i.ji = fmul float %i.hh, %i.jh
  %i.jj = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.jj, float %i.ji)
  %i.jl = fneg float %i.jj
  %i.jm = fmul float %i.hi, %i.jl
  %i.jn = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.jn, float %i.jm)
  %i.jp = fneg float %i.jn
  %i.jq = fmul float %i.hg, %i.jp
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.jg, float %i.jq)
  %i.js = load float, ptr %i.ar, align 8, !tbaa !66
  %i.jt = load float, ptr %i.fm, align 8, !tbaa !51
  %i.ju = load float, ptr %i.fo, align 4, !tbaa !51
  %i.jv = fmul float %i.jo, %i.ju
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jk, float %i.jv)
  %i.jx = load float, ptr %i.fn, align 8, !tbaa !51
  %i.jy = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jr, float %i.jw)
  %i.jz = fadd float %i.js, %i.jy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0279 = phi float [ %i.jz, %bb.q ], [ 0.000000e+00, %bb.p ]
  br i1 %.not294, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ka = fneg float %i.jd
  %i.kb = fneg float %i.je
  %i.kc = fneg float %i.jf
  %i.kd = extractelement <2 x float> %i.dx, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.dx, %.sroa.6.1
  %i.ke = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.kf = extractelement <2 x float> %i.dw, i64 0
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.kf, float %i.ke)
  %foldExtExtBinop654 = fmul <2 x float> %i.dw, %.sroa.0594.1
  %i.kh = extractelement <2 x float> %foldExtExtBinop654, i64 0
  %i.ki = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.ki, float %i.kh)
  %i.kk = fmul float %i.ki, %i.je
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.kd, float %i.kk)
  %i.km = load float, ptr %i.as, align 8, !tbaa !66
  %i.kn = load float, ptr %i.fm, align 8, !tbaa !51
  %i.ko = load float, ptr %i.fo, align 4, !tbaa !51
  %i.kp = fmul float %i.kj, %i.ko
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.kg, float %i.kp)
  %i.kr = load float, ptr %i.fn, align 8, !tbaa !51
  %i.ks = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.kl, float %i.kq)
  %i.kt = fadd float %i.km, %i.ks
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0280 = phi float [ %i.kt, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.ku = fadd float %.0279, %.0280
  %i.kv = fdiv float 1.000000e+00, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fe, i64 92 ; 2 uses
  store float %i.kv, ptr %i.kw, align 4, !tbaa !52
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !74
  %i.ky = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %i.kz = load float, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.la = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.lb = load <2 x float>, ptr %i.fo, align 4, !tbaa !51 ; 3 uses
  %i.lc = fneg <2 x float> %i.lb
  %i.ld = fmul <2 x float> %i.dj, %i.lc
  %i.le = shufflevector <2 x float> %i.dk, <2 x float> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.lf = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lg = insertelement <2 x float> %i.lf, float %i.kz, i64 1
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.lg, <2 x float> %i.ld)
  %i.li = fneg float %i.kz
  %i.lj = fmul float %i.ky, %i.li
  %i.lk = extractelement <2 x float> %i.lb, i64 0
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.la, float %i.lk, float %i.lj)
  %.sroa.3.12.vec.insert.i364 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ll, i64 0
  store <2 x float> %i.lh, ptr %i.fe, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i364, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !73
  %i.lm = load float, ptr %i.fm, align 8, !tbaa !51 ; 2 uses
  %i.ln = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.lo = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.lp = load <2 x float>, ptr %i.fo, align 4, !tbaa !51 ; 3 uses
  %i.lq = extractelement <2 x float> %i.lp, i64 0
  %i.lr = fneg float %i.lq
  %i.ls = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lt = insertelement <2 x float> %i.ls, float %i.lm, i64 1
  %i.lu = fneg <2 x float> %i.lt
  %i.lv = fmul <2 x float> %i.dw, %i.lp
  %i.lw = shufflevector <2 x float> %i.dx, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.lu, <2 x float> %i.lv)
  %i.ly = fmul float %i.ln, %i.lm
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.lr, float %i.ly)
  %.sroa.3.12.vec.insert.i374 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lz, i64 0
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  store <2 x float> %i.lx, ptr %i.ma, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i374, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !73
  br i1 %.not293, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mb = fneg <2 x float> %i.dk
  %i.mc = load float, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %i.md = fneg float %i.la
  %i.me = load <2 x float>, ptr %i.av, align 4, !tbaa !51 ; 3 uses
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mg = insertelement <2 x float> %i.mf, float %i.mc, i64 1
  %i.mh = fmul <2 x float> %i.mg, %i.mb
  %i.mi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.dj, <2 x float> %i.mh)
  %i.mj = extractelement <2 x float> %i.me, i64 0
  %i.mk = fmul float %i.mj, %i.md
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.ky, float %i.mk)
  %i.mm = load <2 x float>, ptr %i.at, align 8, !tbaa !51
  %i.mn = fadd <2 x float> %i.mi, %i.mm
  %i.mo = load float, ptr %i.ay, align 8, !tbaa !51
  %i.mp = fadd float %i.ml, %i.mo
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mp, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.0571.1 = phi <2 x float> [ %i.mn, %bb.u ], [ zeroinitializer, %bb.t ] ; 2 uses
  %.sroa.7574.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not294, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mq = fneg <2 x float> %i.dx
  %i.mr = load float, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.ms = fneg float %i.lo
  %i.mt = load <2 x float>, ptr %i.bb, align 4, !tbaa !51 ; 3 uses
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mv = insertelement <2 x float> %i.mu, float %i.mr, i64 1
  %i.mw = fmul <2 x float> %i.mv, %i.mq
  %i.mx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.dw, <2 x float> %i.mw)
  %i.my = extractelement <2 x float> %i.mt, i64 0
  %i.mz = fmul float %i.my, %i.ms
  %i.na = tail call float @llvm.fmuladd.f32(float %i.mr, float %i.ln, float %i.mz)
  %i.nb = load <2 x float>, ptr %i.az, align 8, !tbaa !51
  %i.nc = fadd <2 x float> %i.mx, %i.nb
  %i.nd = load float, ptr %i.be, align 8, !tbaa !51
  %i.ne = fadd float %i.na, %i.nd
  %.sroa.3.12.vec.insert.i4.i379 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ne, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0563.1 = phi <2 x float> [ %i.nc, %bb.w ], [ zeroinitializer, %bb.v ] ; 2 uses
  %.sroa.7566.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i379, %bb.w ], [ zeroinitializer, %bb.v ]
  %5 = shufflevector <2 x float> %.sroa.0571.1, <2 x float> %.sroa.7574.1, <2 x i32> <i32 1, i32 2>
  %6 = shufflevector <2 x float> %.sroa.0563.1, <2 x float> %.sroa.7566.1, <2 x i32> <i32 1, i32 2>
  %i.nf = fsub <2 x float> %5, %6                 ; 3 uses
  %foldExtExtBinop656 = fsub <2 x float> %.sroa.0571.1, %.sroa.0563.1
  %i.ng = extractelement <2 x float> %foldExtExtBinop656, i64 0 ; 2 uses
  %i.nh = load float, ptr %i.fm, align 8, !tbaa !51
  %i.ni = load float, ptr %i.fo, align 4, !tbaa !51
  %i.nj = extractelement <2 x float> %i.nf, i64 0
  %i.nk = fmul float %i.nj, %i.ni
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.ng, float %i.nk)
  %i.nm = load float, ptr %i.fn, align 8, !tbaa !51
  %7 = extractelement <2 x float> %i.nf, i64 1
  %i.nn = tail call noundef float @llvm.fmuladd.f32(float %i.nm, float %7, float %i.nl) ; 3 uses
  %i.no = load float, ptr %i.cu, align 8, !tbaa !89
  %i.np = load float, ptr %i.bf, align 4, !tbaa !91
  %i.nq = fadd float %i.no, %i.np                 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ct, i64 84
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !78
  %i.nt = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  store float %i.ns, ptr %i.nt, align 8, !tbaa !80
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !93
  %i.nw = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.nx = icmp sgt i32 %i.nv, %i.nw
  br i1 %i.nx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.nz = load float, ptr %i.ny, align 8, !tbaa !95
  %i.oa = fneg float %i.nn
  %i.ob = fmul float %i.nz, %i.oa                 ; 2 uses
  %i.oc = fcmp ugt float %i.ob, 0.000000e+00
  br i1 %i.oc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %.0281 = phi float [ %i.ob, %bb.y ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.x ]
  %i.od = load i32, ptr %i.bh, align 4, !tbaa !96
  %i.oe = and i32 %i.od, 4
  %.not295 = icmp eq i32 %i.oe, 0
  br i1 %.not295, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.of = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.og = load float, ptr %i.of, align 8, !tbaa !97
  %i.oh = load float, ptr %i.bi, align 4, !tbaa !98
  %i.oi = fmul float %i.og, %i.oh                 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fe, i64 84 ; 2 uses
  store float %i.oi, ptr %i.oj, align 4, !tbaa !49
  br i1 %.not293, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ok = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.ol = getelementptr inbounds [112 x i8], ptr %i.ok, i64 %i.bk ; 7 uses
  %i.om = load float, ptr %i.ar, align 8, !tbaa !66 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.oo = load float, ptr %i.on, align 8, !tbaa !51
  %i.op = fmul float %i.om, %i.oo
  %i.oq = load float, ptr %i.bm, align 4, !tbaa !51
  %i.or = fmul float %i.op, %i.oq
  %i.os = fmul float %i.oi, %i.or
  %i.ot = load <2 x float>, ptr %i.kx, align 8, !tbaa !51
  %i.ou = insertelement <2 x float> poison, float %i.om, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = fmul <2 x float> %i.ov, %i.ot
  %i.ox = load <2 x float>, ptr %i.bl, align 4, !tbaa !51
  %i.oy = fmul <2 x float> %i.ow, %i.ox
  %i.oz = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pb = fmul <2 x float> %i.pa, %i.oy
  %i.pc = load <2 x float>, ptr %i.ol, align 4, !tbaa !51
  %i.pd = fadd <2 x float> %i.pb, %i.pc
  store <2 x float> %i.pd, ptr %i.ol, align 4, !tbaa !51
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !51
  %i.pg = fadd float %i.os, %i.pf
  store float %i.pg, ptr %i.pe, align 4, !tbaa !51
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !51
  %i.pk = fmul float %i.oi, %i.pj
  %i.pl = load float, ptr %.sroa.6603.0..sroa_idx, align 8, !tbaa !51
  %i.pm = fmul float %i.pk, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 2 uses
  %i.po = load <2 x float>, ptr %i.ph, align 4, !tbaa !51
  %i.pp = fmul <2 x float> %i.pa, %i.po
  %i.pq = load <2 x float>, ptr %i.hf, align 8, !tbaa !51
  %i.pr = fmul <2 x float> %i.pp, %i.pq
  %i.ps = load <2 x float>, ptr %i.pn, align 4, !tbaa !51
  %i.pt = fadd <2 x float> %i.pr, %i.ps
  store <2 x float> %i.pt, ptr %i.pn, align 4, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ol, i64 24 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !51
  %i.pw = fadd float %i.pm, %i.pv
  store float %i.pw, ptr %i.pu, align 4, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not294, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.px = load i32, ptr %i.fk, align 4, !tbaa !73
  %i.py = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.pz = sext i32 %i.px to i64
  %i.qa = getelementptr inbounds [112 x i8], ptr %i.py, i64 %i.pz ; 7 uses
  %i.qb = load float, ptr %i.as, align 8, !tbaa !66 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.qd = load float, ptr %i.qc, align 8, !tbaa !51
  %i.qe = fmul float %i.qb, %i.qd
  %i.qf = load float, ptr %i.bo, align 4, !tbaa !51
  %i.qg = fmul float %i.qe, %i.qf
  %i.qh = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !51
  %i.qi = load float, ptr %i.oj, align 4, !tbaa !49 ; 3 uses
  %i.qj = fneg float %i.qi                        ; 2 uses
  %i.qk = load <2 x float>, ptr %i.kx, align 8, !tbaa !51
  %i.ql = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x float> %i.qm, %i.qk
  %i.qo = load <2 x float>, ptr %i.bn, align 4, !tbaa !51
  %i.qp = fmul <2 x float> %i.qn, %i.qo
  %i.qq = load <2 x float>, ptr %i.qa, align 4, !tbaa !51
  %i.qr = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qt = fmul <2 x float> %i.qp, %i.qs
  %i.qu = fsub <2 x float> %i.qq, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !51
  %i.qx = fmul float %i.qg, %i.qi
  %i.qy = fsub float %i.qw, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !51
  %i.rc = fmul float %i.rb, %i.qj
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.re = load <2 x float>, ptr %i.jc, align 8, !tbaa !51
  store <2 x float> %i.qu, ptr %i.qa, align 4, !tbaa !51
  store float %i.qy, ptr %i.qv, align 4, !tbaa !51
  %i.rf = load <2 x float>, ptr %i.qz, align 4, !tbaa !51
  %i.rg = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = fmul <2 x float> %i.rf, %i.rh
  %i.rj = load <2 x float>, ptr %i.rd, align 4, !tbaa !51
  %i.rk = fmul <2 x float> %i.re, %i.ri
  %i.rl = fsub <2 x float> %i.rj, %i.rk
  store <2 x float> %i.rl, ptr %i.rd, align 4, !tbaa !51
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qa, i64 24 ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !51
  %i.ro = fmul float %i.qh, %i.rc
  %i.rp = fsub float %i.rn, %i.ro
  store float %i.rp, ptr %i.rm, align 4, !tbaa !51
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.rq = getelementptr inbounds nuw i8, ptr %i.fe, i64 84
  store float 0.000000e+00, ptr %i.rq, align 4, !tbaa !49
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %i.rr = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  store float 0.000000e+00, ptr %i.rr, align 8, !tbaa !56
  br i1 %.not293, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0544.0.copyload = load float, ptr %i.at, align 8
  %.sroa.5545.0.copyload = load float, ptr %i.ax, align 4
  %.sroa.7546.0.copyload = load float, ptr %i.ay, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.0544.0 = phi float [ %.sroa.0544.0.copyload, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %.sroa.5545.0 = phi float [ %.sroa.5545.0.copyload, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %.sroa.7546.0 = phi float [ %.sroa.7546.0.copyload, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.rs = load float, ptr %i.kx, align 8, !tbaa !51 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !51 ; 3 uses
  %i.rv = fmul float %.sroa.5545.0, %i.ru
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.rs, float %.sroa.0544.0, float %i.rv)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.ry = load float, ptr %i.rx, align 8, !tbaa !51 ; 3 uses
  %i.rz = tail call noundef float @llvm.fmuladd.f32(float %i.ry, float %.sroa.7546.0, float %i.rw)
  br i1 %.not293, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0537.0.copyload = load float, ptr %i.au, align 8
  %.sroa.5538.0.copyload = load float, ptr %i.av, align 4
  %.sroa.7539.0.copyload = load float, ptr %i.aw, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.0537.0 = phi float [ %.sroa.0537.0.copyload, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %.sroa.5538.0 = phi float [ %.sroa.5538.0.copyload, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %.sroa.7539.0 = phi float [ %.sroa.7539.0.copyload, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %i.sa = load float, ptr %i.fe, align 8, !tbaa !51
  %i.sb = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !51
  %i.sd = fmul float %.sroa.5538.0, %i.sc
  %i.se = tail call float @llvm.fmuladd.f32(float %i.sa, float %.sroa.0537.0, float %i.sd)
  %i.sf = load float, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !51
  %i.sg = tail call noundef float @llvm.fmuladd.f32(float %i.sf, float %.sroa.7539.0, float %i.se)
  %i.sh = fadd float %i.rz, %i.sg
  br i1 %.not294, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0530.0.copyload = load float, ptr %i.az, align 8
  %.sroa.5531.0.copyload = load float, ptr %i.bd, align 4
  %.sroa.7532.0.copyload = load float, ptr %i.be, align 8
  %i.si = fmul float %i.ru, %.sroa.5531.0.copyload
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.rs, float %.sroa.0530.0.copyload, float %i.si)
  %i.sk = tail call noundef float @llvm.fmuladd.f32(float %i.ry, float %.sroa.7532.0.copyload, float %i.sj)
  %.sroa.0525.0.copyload = load float, ptr %i.ba, align 8
  %.sroa.5526.0.copyload = load float, ptr %i.bb, align 4
  %.sroa.7.0.copyload = load float, ptr %i.bc, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.sl = fmul float %i.ru, 0.000000e+00
  %i.sm = tail call float @llvm.fmuladd.f32(float %i.rs, float 0.000000e+00, float %i.sl)
  %i.sn = tail call noundef float @llvm.fmuladd.f32(float %i.ry, float 0.000000e+00, float %i.sm)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.so = phi float [ %i.sn, %bb.am ], [ %i.sk, %bb.al ]
  %.sroa.0525.0 = phi float [ 0.000000e+00, %bb.am ], [ %.sroa.0525.0.copyload, %bb.al ]
  %.sroa.5526.0 = phi float [ 0.000000e+00, %bb.am ], [ %.sroa.5526.0.copyload, %bb.al ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %bb.am ], [ %.sroa.7.0.copyload, %bb.al ]
  %i.sp = load float, ptr %i.ma, align 8, !tbaa !51
  %i.sq = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !51
  %i.ss = fmul float %.sroa.5526.0, %i.sr
  %i.st = tail call float @llvm.fmuladd.f32(float %i.sp, float %.sroa.0525.0, float %i.ss)
  %i.su = load float, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !51
  %i.sv = tail call noundef float @llvm.fmuladd.f32(float %i.su, float %.sroa.7.0, float %i.st)
  %i.sw = fsub float %i.sv, %i.so
  %i.sx = fadd float %i.sh, %i.sw
  %i.sy = fneg float %i.nq
  %i.sz = load float, ptr %i.bp, align 4, !tbaa !99
  %i.ta = fmul float %i.sz, %i.sy
  %i.tb = load float, ptr %i.bq, align 4, !tbaa !100
  %i.tc = fdiv float %i.ta, %i.tb
  %i.td = fsub float %.0281, %i.sx
  %i.te = load float, ptr %i.kw, align 4, !tbaa !52 ; 2 uses
  %i.tf = fmul float %i.tc, %i.te                 ; 2 uses
  %i.tg = fmul float %i.te, %i.td                 ; 2 uses
  %i.th = load i32, ptr %i.br, align 4, !tbaa !101
  %.not296 = icmp eq i32 %i.th, 0
  br i1 %.not296, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ti = load float, ptr %i.bs, align 4, !tbaa !102
  %i.tj = fcmp ogt float %i.nq, %i.ti
  br i1 %i.tj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.tk = fadd float %i.tf, %i.tg
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.sink651 = phi float [ %i.tk, %bb.ap ], [ %i.tg, %bb.ao ]
  %.sink649 = phi float [ 0.000000e+00, %bb.ap ], [ %i.tf, %bb.ao ]
  %i.tl = getelementptr inbounds nuw i8, ptr %i.fe, i64 120
  store float %.sink651, ptr %i.tl, align 8, !tbaa !45
  %i.tm = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  store float %.sink649, ptr %i.tm, align 8, !tbaa !55
  %i.tn = getelementptr inbounds nuw i8, ptr %i.fe, i64 124
  store <2 x float> zeroinitializer, ptr %i.tn, align 4, !tbaa !51
  %i.to = getelementptr inbounds nuw i8, ptr %i.fe, i64 132
  store float 1.000000e+10, ptr %i.to, align 4, !tbaa !54
  %i.tp = load i32, ptr %i.bt, align 4, !tbaa !24
  %i.tq = getelementptr inbounds nuw i8, ptr %i.fe, i64 100 ; 5 uses
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !73
  %i.tr = load i32, ptr %i.bh, align 4, !tbaa !96
  %i.ts = and i32 %i.tr, 32
  %.not297 = icmp eq i32 %i.ts, 0
  br i1 %.not297, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ct, i64 124
  %i.tu = load i8, ptr %i.tt, align 4, !tbaa !103, !range !44, !noundef !76
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.tw = load float, ptr %i.fm, align 8, !tbaa !51 ; 8 uses
  %i.tx = load <2 x float>, ptr %i.fo, align 4, !tbaa !51 ; 10 uses
  %i.ty = insertelement <2 x float> poison, float %i.nn, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = fmul <2 x float> %i.tz, %i.tx
  %8 = fmul float %i.nn, %i.tw
  %i.ub = fsub <2 x float> %i.nf, %i.ua           ; 6 uses
  %i.uc = fsub float %i.ng, %8                    ; 4 uses
  %.sroa.0.0.vec.insert.i417 = insertelement <2 x float> poison, float %i.uc, i64 0
  %9 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i417, <2 x float> %i.ub, <2 x i32> <i32 0, i32 2>
  %10 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ub, <2 x i32> <i32 3, i32 1>
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ct, i64 140 ; 13 uses
  store <2 x float> %9, ptr %i.ud, align 4
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 148 ; 10 uses
  store <2 x float> %10, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 6 uses
  %foldExtExtBinop658 = fmul <2 x float> %i.ub, %i.ub
  %i.uf = extractelement <2 x float> %foldExtExtBinop658, i64 0
  %11 = tail call float @llvm.fmuladd.f32(float %i.uc, float %i.uc, float %i.uf)
  %12 = extractelement <2 x float> %i.ub, i64 1   ; 2 uses
  %i.ug = tail call noundef float @llvm.fmuladd.f32(float %12, float %12, float %11) ; 2 uses
  %i.uh = load i32, ptr %i.bh, align 4, !tbaa !96 ; 3 uses
  %i.ui = and i32 %i.uh, 64
  %i.uj = icmp eq i32 %i.ui, 0
  %i.uk = fcmp ogt float %i.ug, f0x34000000
  %or.cond3 = and i1 %i.uj, %i.uk
  br i1 %or.cond3, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ug)
  %i.ul = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %13 = fmul float %i.uc, %i.ul                   ; 3 uses
  store float %13, ptr %i.ud, align 4, !tbaa !51
  %14 = insertelement <2 x float> poison, float %i.ul, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x float> %i.ub, %15               ; 4 uses
  store <2 x float> %16, ptr %i.ue, align 8, !tbaa !51
  %i.um = and i32 %i.uh, 16
  %.not299 = icmp eq i32 %i.um, 0
  br i1 %.not299, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %17 = fneg <2 x float> %i.tx
  %i.un = fneg float %i.tw
  %18 = extractelement <2 x float> %16, i64 0
  %i.uo = fmul float %18, %i.un
  %i.up = extractelement <2 x float> %i.tx, i64 0
  %i.uq = tail call float @llvm.fmuladd.f32(float %13, float %i.up, float %i.uo) ; 4 uses
  %.sroa.3.12.vec.insert.i424 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.uq, i64 0
  %19 = getelementptr inbounds nuw i8, ptr %i.ct, i64 156 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 164 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i424, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  %20 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %21 = insertelement <2 x float> %20, float %13, i64 1
  %22 = fmul <2 x float> %21, %17
  %23 = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ur = insertelement <2 x float> %23, float %i.tw, i64 1
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.ur, <2 x float> %22) ; 4 uses
  %foldExtExtBinop660 = fmul <2 x float> %24, %24
  %25 = extractelement <2 x float> %foldExtExtBinop660, i64 1
  %26 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %i.us = tail call float @llvm.fmuladd.f32(float %26, float %26, float %25)
  %i.ut = tail call noundef float @llvm.fmuladd.f32(float %i.uq, float %i.uq, float %i.us)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ut)
  %i.uu = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %27 = insertelement <2 x float> poison, float %i.uu, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %24, %28                 ; 4 uses
  store <2 x float> %29, ptr %19, align 4, !tbaa !51
  %i.uv = fmul float %i.uq, %i.uu                 ; 5 uses
  store float %i.uv, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !51
  %i.uw = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.av, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit

bb.av:                                            ; preds = %bb.au
  %i.uy = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.uz = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.va = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.vb = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %30 = extractelement <2 x float> %29, i64 1     ; 3 uses
  %i.vc = fmul float %30, %i.vb
  %31 = extractelement <2 x float> %29, i64 0     ; 3 uses
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.va, float %31, float %i.vc)
  %i.ve = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.vf = tail call noundef float @llvm.fmuladd.f32(float %i.ve, float %i.uv, float %i.vd)
  %i.vg = load float, ptr %i.cd, align 8, !tbaa !51
  %i.vh = load float, ptr %i.ce, align 4, !tbaa !51
  %i.vi = load float, ptr %i.cf, align 8, !tbaa !51
  %i.vj = fmul float %i.vf, %i.vi                 ; 2 uses
  %i.vk = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.vl = load float, ptr %i.by, align 4, !tbaa !51
  %i.vm = extractelement <2 x float> %i.vk, i64 0
  %i.vn = fmul float %30, %i.vm
  %i.vo = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.vp = load float, ptr %i.bx, align 4, !tbaa !51
  %i.vq = extractelement <2 x float> %i.vo, i64 0
  %i.vr = tail call float @llvm.fmuladd.f32(float %i.vq, float %31, float %i.vn)
  %i.vs = tail call noundef float @llvm.fmuladd.f32(float %i.uy, float %i.uv, float %i.vr)
  %i.vt = fmul float %30, %i.vl
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.vp, float %31, float %i.vt)
  %i.vv = tail call noundef float @llvm.fmuladd.f32(float %i.uz, float %i.uv, float %i.vu)
  %i.vw = fmul float %i.vs, %i.vg                 ; 2 uses
  %i.vx = fmul float %i.vv, %i.vh                 ; 2 uses
  %i.vy = shufflevector <2 x float> %i.vo, <2 x float> %i.vk, <2 x i32> <i32 1, i32 3>
  %i.vz = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wa = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wb = fmul <2 x float> %i.vy, %i.wa
  %i.wc = shufflevector <2 x float> %i.vo, <2 x float> %i.vk, <2 x i32> <i32 0, i32 2>
  %i.wd = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> %i.we, <2 x float> %i.wb)
  %i.wg = insertelement <2 x float> poison, float %i.va, i64 0
  %i.wh = insertelement <2 x float> %i.wg, float %i.vb, i64 1
  %i.wi = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wh, <2 x float> %i.wj, <2 x float> %i.wf) ; 2 uses
  %i.wl = fmul float %i.uz, %i.vx
  %i.wm = tail call float @llvm.fmuladd.f32(float %i.uy, float %i.vw, float %i.wl)
  %i.wn = tail call noundef float @llvm.fmuladd.f32(float %i.ve, float %i.vj, float %i.wm) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wn, i64 0
  store <2 x float> %i.wk, ptr %19, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit: ; preds = %bb.av, %bb.au
  %i.wo = phi float [ %i.wn, %bb.av ], [ %i.uv, %bb.au ] ; 3 uses
  %32 = phi <2 x float> [ %i.wk, %bb.av ], [ %29, %bb.au ] ; 2 uses
  %i.wp = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.wq = trunc nuw i8 %i.wp to i1
  br i1 %i.wq, label %bb.aw, label %.thread619

bb.aw:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.wr = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.ws = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.wt = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.wu = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %33 = extractelement <2 x float> %32, i64 1     ; 3 uses
  %i.wv = fmul float %33, %i.wu
  %34 = extractelement <2 x float> %32, i64 0     ; 3 uses
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.wt, float %34, float %i.wv)
  %i.wx = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.wy = tail call noundef float @llvm.fmuladd.f32(float %i.wx, float %i.wo, float %i.ww)
  %i.wz = load float, ptr %i.cp, align 8, !tbaa !51
  %i.xa = load float, ptr %i.cq, align 4, !tbaa !51
  %i.xb = load float, ptr %i.cr, align 8, !tbaa !51
  %i.xc = fmul float %i.wy, %i.xb                 ; 2 uses
  %i.xd = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.xe = load float, ptr %i.ck, align 4, !tbaa !51
  %i.xf = extractelement <2 x float> %i.xd, i64 0
  %i.xg = fmul float %i.xf, %33
  %i.xh = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.xi = load float, ptr %i.cj, align 4, !tbaa !51
  %i.xj = extractelement <2 x float> %i.xh, i64 0
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.xj, float %34, float %i.xg)
  %i.xl = tail call noundef float @llvm.fmuladd.f32(float %i.wr, float %i.wo, float %i.xk)
  %i.xm = fmul float %33, %i.xe
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.xi, float %34, float %i.xm)
  %i.xo = tail call noundef float @llvm.fmuladd.f32(float %i.ws, float %i.wo, float %i.xn)
  %i.xp = fmul float %i.xl, %i.wz                 ; 2 uses
  %i.xq = fmul float %i.xo, %i.xa                 ; 2 uses
  %i.xr = shufflevector <2 x float> %i.xh, <2 x float> %i.xd, <2 x i32> <i32 1, i32 3>
  %i.xs = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xu = fmul <2 x float> %i.xr, %i.xt
  %i.xv = shufflevector <2 x float> %i.xh, <2 x float> %i.xd, <2 x i32> <i32 0, i32 2>
  %i.xw = insertelement <2 x float> poison, float %i.xp, i64 0
  %i.xx = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %i.xx, <2 x float> %i.xu)
  %i.xz = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.ya = insertelement <2 x float> %i.xz, float %i.wu, i64 1
  %i.yb = insertelement <2 x float> poison, float %i.xc, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ya, <2 x float> %i.yc, <2 x float> %i.xy)
  %i.ye = fmul float %i.ws, %i.xq
  %i.yf = tail call float @llvm.fmuladd.f32(float %i.wr, float %i.xp, float %i.ye)
  %i.yg = tail call noundef float @llvm.fmuladd.f32(float %i.wx, float %i.xc, float %i.yf)
  %.sroa.3.12.vec.insert.i10.i430 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yg, i64 0
  store <2 x float> %i.yd, ptr %19, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i430, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %.thread619

.thread619:                                       ; preds = %bb.aw, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.yh = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %19, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %.thread619
  %i.yi = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %bb.ay, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436

bb.ay:                                            ; preds = %bb.ax
  %i.yk = load float, ptr %i.ud, align 4, !tbaa !51 ; 3 uses
  %i.yl = load float, ptr %i.ue, align 8, !tbaa !51 ; 3 uses
  %i.ym = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.yn = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.yo = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.yp = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.yq = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.yr = fmul float %i.yl, %i.yq
  %i.ys = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yk, float %i.yr)
  %i.yt = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.yu = tail call noundef float @llvm.fmuladd.f32(float %i.yt, float %i.yn, float %i.ys)
  %i.yv = load float, ptr %i.cd, align 8, !tbaa !51
  %i.yw = load float, ptr %i.ce, align 4, !tbaa !51
  %i.yx = load float, ptr %i.cf, align 8, !tbaa !51
  %i.yy = fmul float %i.yu, %i.yx                 ; 2 uses
  %i.yz = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.za = load float, ptr %i.by, align 4, !tbaa !51
  %i.zb = extractelement <2 x float> %i.yz, i64 0
  %i.zc = fmul float %i.zb, %i.yl
  %i.zd = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.ze = load float, ptr %i.bx, align 4, !tbaa !51
  %i.zf = extractelement <2 x float> %i.zd, i64 0
  %i.zg = tail call float @llvm.fmuladd.f32(float %i.zf, float %i.yk, float %i.zc)
  %i.zh = tail call noundef float @llvm.fmuladd.f32(float %i.ym, float %i.yn, float %i.zg)
  %i.zi = fmul float %i.yl, %i.za
  %i.zj = tail call float @llvm.fmuladd.f32(float %i.ze, float %i.yk, float %i.zi)
  %i.zk = tail call noundef float @llvm.fmuladd.f32(float %i.yo, float %i.yn, float %i.zj)
  %i.zl = fmul float %i.zh, %i.yv                 ; 2 uses
  %i.zm = fmul float %i.zk, %i.yw                 ; 2 uses
  %i.zn = shufflevector <2 x float> %i.zd, <2 x float> %i.yz, <2 x i32> <i32 1, i32 3>
  %i.zo = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zq = fmul <2 x float> %i.zn, %i.zp
  %i.zr = shufflevector <2 x float> %i.zd, <2 x float> %i.yz, <2 x i32> <i32 0, i32 2>
  %i.zs = insertelement <2 x float> poison, float %i.zl, i64 0
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zr, <2 x float> %i.zt, <2 x float> %i.zq)
  %i.zv = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.yq, i64 1
  %i.zx = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zw, <2 x float> %i.zy, <2 x float> %i.zu)
  %i.aaa = fmul float %i.yo, %i.zm
  %i.aab = tail call float @llvm.fmuladd.f32(float %i.ym, float %i.zl, float %i.aaa)
  %i.aac = tail call noundef float @llvm.fmuladd.f32(float %i.yt, float %i.yy, float %i.aab)
  %.sroa.3.12.vec.insert.i10.i435 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aac, i64 0
  store <2 x float> %i.zz, ptr %i.ud, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i435, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436: ; preds = %bb.ay, %bb.ax
  %i.aad = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %bb.az, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441

bb.az:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436
  %i.aaf = load float, ptr %i.ud, align 4, !tbaa !51 ; 3 uses
  %i.aag = load float, ptr %i.ue, align 8, !tbaa !51 ; 3 uses
  %i.aah = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.aai = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.aaj = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.aak = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.aal = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.aam = fmul float %i.aag, %i.aal
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aak, float %i.aaf, float %i.aam)
  %i.aao = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.aap = tail call noundef float @llvm.fmuladd.f32(float %i.aao, float %i.aai, float %i.aan)
  %i.aaq = load float, ptr %i.cp, align 8, !tbaa !51
  %i.aar = load float, ptr %i.cq, align 4, !tbaa !51
  %i.aas = load float, ptr %i.cr, align 8, !tbaa !51
  %i.aat = fmul float %i.aap, %i.aas              ; 2 uses
  %i.aau = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.aav = load float, ptr %i.ck, align 4, !tbaa !51
  %i.aaw = extractelement <2 x float> %i.aau, i64 0
  %i.aax = fmul float %i.aaw, %i.aag
  %i.aay = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.aaz = load float, ptr %i.cj, align 4, !tbaa !51
  %i.aba = extractelement <2 x float> %i.aay, i64 0
  %i.abb = tail call float @llvm.fmuladd.f32(float %i.aba, float %i.aaf, float %i.aax)
  %i.abc = tail call noundef float @llvm.fmuladd.f32(float %i.aah, float %i.aai, float %i.abb)
  %i.abd = fmul float %i.aag, %i.aav
  %i.abe = tail call float @llvm.fmuladd.f32(float %i.aaz, float %i.aaf, float %i.abd)
  %i.abf = tail call noundef float @llvm.fmuladd.f32(float %i.aaj, float %i.aai, float %i.abe)
  %i.abg = fmul float %i.abc, %i.aaq              ; 2 uses
  %i.abh = fmul float %i.abf, %i.aar              ; 2 uses
  %i.abi = shufflevector <2 x float> %i.aay, <2 x float> %i.aau, <2 x i32> <i32 1, i32 3>
  %i.abj = insertelement <2 x float> poison, float %i.abh, i64 0
  %i.abk = shufflevector <2 x float> %i.abj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abl = fmul <2 x float> %i.abi, %i.abk
  %i.abm = shufflevector <2 x float> %i.aay, <2 x float> %i.aau, <2 x i32> <i32 0, i32 2>
  %i.abn = insertelement <2 x float> poison, float %i.abg, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abm, <2 x float> %i.abo, <2 x float> %i.abl)
  %i.abq = insertelement <2 x float> poison, float %i.aak, i64 0
  %i.abr = insertelement <2 x float> %i.abq, float %i.aal, i64 1
  %i.abs = insertelement <2 x float> poison, float %i.aat, i64 0
  %i.abt = shufflevector <2 x float> %i.abs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abr, <2 x float> %i.abt, <2 x float> %i.abp)
  %i.abv = fmul float %i.aaj, %i.abh
  %i.abw = tail call float @llvm.fmuladd.f32(float %i.aah, float %i.abg, float %i.abv)
  %i.abx = tail call noundef float @llvm.fmuladd.f32(float %i.aao, float %i.aat, float %i.abw)
  %.sroa.3.12.vec.insert.i10.i440 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.abx, i64 0
  store <2 x float> %i.abu, ptr %i.ud, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i440, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441: ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit436, %bb.az
  %i.aby = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ud, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ct, i64 124
  store i8 1, ptr %i.abz, align 4, !tbaa !103
  br label %bb.bl

bb.ba:                                            ; preds = %bb.as
  %i.aca = getelementptr inbounds nuw i8, ptr %i.ct, i64 156 ; 4 uses
  %35 = extractelement <2 x float> %i.tx, i64 1   ; 5 uses
  %i.acb = tail call noundef float @llvm.fabs.f32(float %35)
  %i.acc = fcmp ogt float %i.acb, f0x3F3504F3
  br i1 %i.acc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.acd = fmul nnan float %35, %35
  %i.ace = extractelement <2 x float> %i.tx, i64 0 ; 3 uses
  %i.acf = fneg float %35
  %i.acg = fneg float %i.tw
  %i.ach = tail call float @llvm.fmuladd.f32(float %i.ace, float %i.ace, float %i.acd) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ach)
  %i.aci = fdiv float 1.000000e+00, %sqrt.i       ; 3 uses
  %i.acj = fmul float %i.aci, %i.acf              ; 2 uses
  %i.ack = fmul float %i.ace, %i.aci              ; 2 uses
  %36 = insertelement <2 x float> poison, float %i.aci, i64 0
  %37 = insertelement <2 x float> %36, float %i.ack, i64 1
  %38 = insertelement <2 x float> poison, float %i.ach, i64 0
  %39 = insertelement <2 x float> %38, float %i.acg, i64 1
  %40 = fmul <2 x float> %37, %39
  %i.acl = fmul float %i.tw, %i.acj
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.acm = extractelement <2 x float> %i.tx, i64 0
  %foldExtExtBinop662 = fmul <2 x float> %i.tx, %i.tx
  %i.acn = extractelement <2 x float> %foldExtExtBinop662, i64 0
  %i.aco = tail call float @llvm.fmuladd.f32(float %i.tw, float %i.tw, float %i.acn) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.aco)
  %i.acp = fdiv float 1.000000e+00, %sqrt46.i     ; 3 uses
  %i.acq = fneg float %i.acm
  %i.acr = fmul float %i.tw, %i.acp               ; 2 uses
  %i.acs = fmul float %i.acp, %i.acq              ; 2 uses
  %i.act = fneg float %35
  %41 = insertelement <2 x float> %i.tx, float %i.act, i64 0
  %42 = insertelement <2 x float> poison, float %i.acr, i64 0
  %43 = insertelement <2 x float> %42, float %i.acs, i64 1
  %44 = fmul <2 x float> %41, %43
  %i.acu = fmul float %i.aco, %i.acp
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.bb, %bb.bc
  %.sink631 = phi float [ 0.000000e+00, %bb.bb ], [ %i.acs, %bb.bc ]
  %.sink630 = phi float [ %i.acj, %bb.bb ], [ %i.acr, %bb.bc ]
  %.sink = phi float [ %i.ack, %bb.bb ], [ 0.000000e+00, %bb.bc ]
  %.sink.i.a = phi float [ %i.acl, %bb.bb ], [ %i.acu, %bb.bc ] ; 5 uses
  %45 = phi <2 x float> [ %40, %bb.bb ], [ %44, %bb.bc ] ; 4 uses
  store float %.sink631, ptr %i.ud, align 4, !tbaa !51
  store float %.sink630, ptr %i.ue, align 8, !tbaa !51
  store float %.sink, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  store float 0.000000e+00, ptr %i.acv, align 8, !tbaa !51
  store <2 x float> %45, ptr %i.aca, align 4, !tbaa !51
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ct, i64 164 ; 3 uses
  store float %.sink.i.a, ptr %i.acw, align 4, !tbaa !51
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ct, i64 168
  store float 0.000000e+00, ptr %i.acx, align 8, !tbaa !51
  %i.acy = and i32 %i.uh, 16
  %.not298 = icmp eq i32 %i.acy, 0
  br i1 %.not298, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.acz = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.ada = trunc nuw i8 %i.acz to i1
  br i1 %i.ada, label %bb.be, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446

bb.be:                                            ; preds = %bb.bd
  %i.adb = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.adc = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.add = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.ade = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %46 = extractelement <2 x float> %45, i64 1     ; 3 uses
  %i.adf = fmul float %46, %i.ade
  %47 = extractelement <2 x float> %45, i64 0     ; 3 uses
  %i.adg = tail call float @llvm.fmuladd.f32(float %i.add, float %47, float %i.adf)
  %i.adh = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.adi = tail call noundef float @llvm.fmuladd.f32(float %i.adh, float %.sink.i.a, float %i.adg)
  %i.adj = load float, ptr %i.cd, align 8, !tbaa !51
  %i.adk = load float, ptr %i.ce, align 4, !tbaa !51
  %i.adl = load float, ptr %i.cf, align 8, !tbaa !51
  %i.adm = fmul float %i.adi, %i.adl              ; 2 uses
  %i.adn = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.ado = load float, ptr %i.by, align 4, !tbaa !51
  %i.adp = extractelement <2 x float> %i.adn, i64 0
  %i.adq = fmul float %46, %i.adp
  %i.adr = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.ads = load float, ptr %i.bx, align 4, !tbaa !51
  %i.adt = extractelement <2 x float> %i.adr, i64 0
  %i.adu = tail call float @llvm.fmuladd.f32(float %i.adt, float %47, float %i.adq)
  %i.adv = tail call noundef float @llvm.fmuladd.f32(float %i.adb, float %.sink.i.a, float %i.adu)
  %i.adw = fmul float %46, %i.ado
  %i.adx = tail call float @llvm.fmuladd.f32(float %i.ads, float %47, float %i.adw)
  %i.ady = tail call noundef float @llvm.fmuladd.f32(float %i.adc, float %.sink.i.a, float %i.adx)
  %i.adz = fmul float %i.adv, %i.adj              ; 2 uses
  %i.aea = fmul float %i.ady, %i.adk              ; 2 uses
  %i.aeb = shufflevector <2 x float> %i.adr, <2 x float> %i.adn, <2 x i32> <i32 1, i32 3>
  %i.aec = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aed = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aee = fmul <2 x float> %i.aeb, %i.aed
  %i.aef = shufflevector <2 x float> %i.adr, <2 x float> %i.adn, <2 x i32> <i32 0, i32 2>
  %i.aeg = insertelement <2 x float> poison, float %i.adz, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aeh, <2 x float> %i.aee)
  %i.aej = insertelement <2 x float> poison, float %i.add, i64 0
  %i.aek = insertelement <2 x float> %i.aej, float %i.ade, i64 1
  %i.ael = insertelement <2 x float> poison, float %i.adm, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aek, <2 x float> %i.aem, <2 x float> %i.aei) ; 2 uses
  %i.aeo = fmul float %i.adc, %i.aea
  %i.aep = tail call float @llvm.fmuladd.f32(float %i.adb, float %i.adz, float %i.aeo)
  %i.aeq = tail call noundef float @llvm.fmuladd.f32(float %i.adh, float %i.adm, float %i.aep) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i445 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aeq, i64 0
  store <2 x float> %i.aen, ptr %i.aca, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i445, ptr %i.acw, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446: ; preds = %bb.be, %bb.bd
  %i.aer = phi float [ %i.aeq, %bb.be ], [ %.sink.i.a, %bb.bd ] ; 3 uses
  %i.aes = phi <2 x float> [ %i.aen, %bb.be ], [ %45, %bb.bd ] ; 2 uses
  %i.aet = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.aeu = trunc nuw i8 %i.aet to i1
  br i1 %i.aeu, label %bb.bf, label %.thread621

bb.bf:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446
  %i.aev = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.aew = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.aex = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.aey = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.aez = extractelement <2 x float> %i.aes, i64 1 ; 3 uses
  %i.afa = fmul float %i.aez, %i.aey
  %i.afb = extractelement <2 x float> %i.aes, i64 0 ; 3 uses
  %i.afc = tail call float @llvm.fmuladd.f32(float %i.aex, float %i.afb, float %i.afa)
  %i.afd = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.afe = tail call noundef float @llvm.fmuladd.f32(float %i.afd, float %i.aer, float %i.afc)
  %i.aff = load float, ptr %i.cp, align 8, !tbaa !51
  %i.afg = load float, ptr %i.cq, align 4, !tbaa !51
  %i.afh = load float, ptr %i.cr, align 8, !tbaa !51
  %i.afi = fmul float %i.afe, %i.afh              ; 2 uses
  %i.afj = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.afk = load float, ptr %i.ck, align 4, !tbaa !51
  %i.afl = extractelement <2 x float> %i.afj, i64 0
  %i.afm = fmul float %i.afl, %i.aez
  %i.afn = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.afo = load float, ptr %i.cj, align 4, !tbaa !51
  %i.afp = extractelement <2 x float> %i.afn, i64 0
  %i.afq = tail call float @llvm.fmuladd.f32(float %i.afp, float %i.afb, float %i.afm)
  %i.afr = tail call noundef float @llvm.fmuladd.f32(float %i.aev, float %i.aer, float %i.afq)
  %i.afs = fmul float %i.aez, %i.afk
  %i.aft = tail call float @llvm.fmuladd.f32(float %i.afo, float %i.afb, float %i.afs)
  %i.afu = tail call noundef float @llvm.fmuladd.f32(float %i.aew, float %i.aer, float %i.aft)
  %i.afv = fmul float %i.afr, %i.aff              ; 2 uses
  %i.afw = fmul float %i.afu, %i.afg              ; 2 uses
  %i.afx = shufflevector <2 x float> %i.afn, <2 x float> %i.afj, <2 x i32> <i32 1, i32 3>
  %i.afy = insertelement <2 x float> poison, float %i.afw, i64 0
  %i.afz = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aga = fmul <2 x float> %i.afx, %i.afz
  %i.agb = shufflevector <2 x float> %i.afn, <2 x float> %i.afj, <2 x i32> <i32 0, i32 2>
  %i.agc = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agb, <2 x float> %i.agd, <2 x float> %i.aga)
  %i.agf = insertelement <2 x float> poison, float %i.aex, i64 0
  %i.agg = insertelement <2 x float> %i.agf, float %i.aey, i64 1
  %i.agh = insertelement <2 x float> poison, float %i.afi, i64 0
  %i.agi = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agg, <2 x float> %i.agi, <2 x float> %i.age)
  %i.agk = fmul float %i.aew, %i.afw
  %i.agl = tail call float @llvm.fmuladd.f32(float %i.aev, float %i.afv, float %i.agk)
  %i.agm = tail call noundef float @llvm.fmuladd.f32(float %i.afd, float %i.afi, float %i.agl)
  %.sroa.3.12.vec.insert.i10.i450 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agm, i64 0
  store <2 x float> %i.agj, ptr %i.aca, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i450, ptr %i.acw, align 4, !tbaa !73
  br label %.thread621

.thread621:                                       ; preds = %bb.bf, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit446
  %i.agn = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.aca, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %.thread621
  %i.ago = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.agp = trunc nuw i8 %i.ago to i1
  br i1 %i.agp, label %bb.bh, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456

bb.bh:                                            ; preds = %bb.bg
  %i.agq = load float, ptr %i.ud, align 4, !tbaa !51 ; 3 uses
  %i.agr = load float, ptr %i.ue, align 8, !tbaa !51 ; 3 uses
  %i.ags = load float, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.agt = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.agu = load float, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.agv = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.agw = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.agx = fmul float %i.agr, %i.agw
  %i.agy = tail call float @llvm.fmuladd.f32(float %i.agv, float %i.agq, float %i.agx)
  %i.agz = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.aha = tail call noundef float @llvm.fmuladd.f32(float %i.agz, float %i.agt, float %i.agy)
  %i.ahb = load float, ptr %i.cd, align 8, !tbaa !51
  %i.ahc = load float, ptr %i.ce, align 4, !tbaa !51
  %i.ahd = load float, ptr %i.cf, align 8, !tbaa !51
  %i.ahe = fmul float %i.aha, %i.ahd              ; 2 uses
  %i.ahf = load <2 x float>, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.ahg = load float, ptr %i.by, align 4, !tbaa !51
  %i.ahh = extractelement <2 x float> %i.ahf, i64 0
  %i.ahi = fmul float %i.ahh, %i.agr
  %i.ahj = load <2 x float>, ptr %i.n, align 8, !tbaa !51 ; 3 uses
  %i.ahk = load float, ptr %i.bx, align 4, !tbaa !51
  %i.ahl = extractelement <2 x float> %i.ahj, i64 0
  %i.ahm = tail call float @llvm.fmuladd.f32(float %i.ahl, float %i.agq, float %i.ahi)
  %i.ahn = tail call noundef float @llvm.fmuladd.f32(float %i.ags, float %i.agt, float %i.ahm)
  %i.aho = fmul float %i.agr, %i.ahg
  %i.ahp = tail call float @llvm.fmuladd.f32(float %i.ahk, float %i.agq, float %i.aho)
  %i.ahq = tail call noundef float @llvm.fmuladd.f32(float %i.agu, float %i.agt, float %i.ahp)
  %i.ahr = fmul float %i.ahn, %i.ahb              ; 2 uses
  %i.ahs = fmul float %i.ahq, %i.ahc              ; 2 uses
  %i.aht = shufflevector <2 x float> %i.ahj, <2 x float> %i.ahf, <2 x i32> <i32 1, i32 3>
  %i.ahu = insertelement <2 x float> poison, float %i.ahs, i64 0
  %i.ahv = shufflevector <2 x float> %i.ahu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahw = fmul <2 x float> %i.aht, %i.ahv
  %i.ahx = shufflevector <2 x float> %i.ahj, <2 x float> %i.ahf, <2 x i32> <i32 0, i32 2>
  %i.ahy = insertelement <2 x float> poison, float %i.ahr, i64 0
  %i.ahz = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahx, <2 x float> %i.ahz, <2 x float> %i.ahw)
  %i.aib = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.aic = insertelement <2 x float> %i.aib, float %i.agw, i64 1
  %i.aid = insertelement <2 x float> poison, float %i.ahe, i64 0
  %i.aie = shufflevector <2 x float> %i.aid, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aif = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aic, <2 x float> %i.aie, <2 x float> %i.aia)
  %i.aig = fmul float %i.agu, %i.ahs
  %i.aih = tail call float @llvm.fmuladd.f32(float %i.ags, float %i.ahr, float %i.aig)
  %i.aii = tail call noundef float @llvm.fmuladd.f32(float %i.agz, float %i.ahe, float %i.aih)
  %.sroa.3.12.vec.insert.i10.i455 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aii, i64 0
  store <2 x float> %i.aif, ptr %i.ud, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i455, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456: ; preds = %bb.bh, %bb.bg
  %i.aij = load i8, ptr %i.cg, align 8, !tbaa !75, !range !44, !noundef !76
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.bi, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit461

bb.bi:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456
  %i.ail = load float, ptr %i.ud, align 4, !tbaa !51 ; 3 uses
  %i.aim = load float, ptr %i.ue, align 8, !tbaa !51 ; 3 uses
  %i.ain = load float, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.aio = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51 ; 3 uses
  %i.aip = load float, ptr %i.cl, align 4, !tbaa !51 ; 2 uses
  %i.aiq = load float, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.air = load float, ptr %i.cn, align 8, !tbaa !51 ; 2 uses
  %i.ais = fmul float %i.aim, %i.air
  %i.ait = tail call float @llvm.fmuladd.f32(float %i.aiq, float %i.ail, float %i.ais)
  %i.aiu = load float, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.aiv = tail call noundef float @llvm.fmuladd.f32(float %i.aiu, float %i.aio, float %i.ait)
  %i.aiw = load float, ptr %i.cp, align 8, !tbaa !51
  %i.aix = load float, ptr %i.cq, align 4, !tbaa !51
  %i.aiy = load float, ptr %i.cr, align 8, !tbaa !51
  %i.aiz = fmul float %i.aiv, %i.aiy              ; 2 uses
  %i.aja = load <2 x float>, ptr %i.ch, align 8, !tbaa !51 ; 3 uses
  %i.ajb = load float, ptr %i.ck, align 4, !tbaa !51
  %i.ajc = extractelement <2 x float> %i.aja, i64 0
  %i.ajd = fmul float %i.ajc, %i.aim
  %i.aje = load <2 x float>, ptr %i.q, align 8, !tbaa !51 ; 3 uses
  %i.ajf = load float, ptr %i.cj, align 4, !tbaa !51
  %i.ajg = extractelement <2 x float> %i.aje, i64 0
  %i.ajh = tail call float @llvm.fmuladd.f32(float %i.ajg, float %i.ail, float %i.ajd)
  %i.aji = tail call noundef float @llvm.fmuladd.f32(float %i.ain, float %i.aio, float %i.ajh)
  %i.ajj = fmul float %i.aim, %i.ajb
  %i.ajk = tail call float @llvm.fmuladd.f32(float %i.ajf, float %i.ail, float %i.ajj)
  %i.ajl = tail call noundef float @llvm.fmuladd.f32(float %i.aip, float %i.aio, float %i.ajk)
  %i.ajm = fmul float %i.aji, %i.aiw              ; 2 uses
  %i.ajn = fmul float %i.ajl, %i.aix              ; 2 uses
  %i.ajo = shufflevector <2 x float> %i.aje, <2 x float> %i.aja, <2 x i32> <i32 1, i32 3>
  %i.ajp = insertelement <2 x float> poison, float %i.ajn, i64 0
  %i.ajq = shufflevector <2 x float> %i.ajp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajr = fmul <2 x float> %i.ajo, %i.ajq
  %i.ajs = shufflevector <2 x float> %i.aje, <2 x float> %i.aja, <2 x i32> <i32 0, i32 2>
  %i.ajt = insertelement <2 x float> poison, float %i.ajm, i64 0
  %i.aju = shufflevector <2 x float> %i.ajt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajs, <2 x float> %i.aju, <2 x float> %i.ajr)
  %i.ajw = insertelement <2 x float> poison, float %i.aiq, i64 0
  %i.ajx = insertelement <2 x float> %i.ajw, float %i.air, i64 1
  %i.ajy = insertelement <2 x float> poison, float %i.aiz, i64 0
  %i.ajz = shufflevector <2 x float> %i.ajy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajx, <2 x float> %i.ajz, <2 x float> %i.ajv)
  %i.akb = fmul float %i.aip, %i.ajn
  %i.akc = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.ajm, float %i.akb)
  %i.akd = tail call noundef float @llvm.fmuladd.f32(float %i.aiu, float %i.aiz, float %i.akc)
  %.sroa.3.12.vec.insert.i10.i460 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akd, i64 0
  store <2 x float> %i.aka, ptr %i.ud, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i460, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit461

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit461: ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit456, %bb.bi
  %i.ake = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ud, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ct, i64 124
  store i8 1, ptr %i.akf, align 4, !tbaa !103
  br label %bb.bl

bb.bj:                                            ; preds = %bb.ar
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ct, i64 140
  %i.akh = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.akg, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  %i.aki = load i32, ptr %i.bh, align 4, !tbaa !96
  %i.akj = and i32 %i.aki, 16
  %.not300 = icmp eq i32 %i.akj, 0
  br i1 %.not300, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ct, i64 156
  %i.akl = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.akk, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(172) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit441, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit461, %bb.bj, %bb.bk
  %i.akm = load i32, ptr %i.bh, align 4, !tbaa !96 ; 5 uses
  %i.akn = and i32 %i.akm, 8
  %.not301 = icmp eq i32 %i.akn, 0
  %i.ako = load i32, ptr %i.tq, align 4, !tbaa !73
  %i.akp = load ptr, ptr %i.cs, align 8, !tbaa !23 ; 4 uses
  %i.akq = sext i32 %i.ako to i64
  %i.akr = getelementptr inbounds [144 x i8], ptr %i.akp, i64 %i.akq ; 11 uses
  br i1 %.not301, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher:bb.a
.prol.loopexit155:                                ; preds = %.prol.preheader154, %.lr.ph.i64
  %indvars.iv.i65.unr = phi i64 [ %i.iq, %.lr.ph.i64 ], [ %indvars.iv.next.i66.prol, %.prol.preheader154 ]
  %i.iu = icmp ugt i32 %i.ie, -4
  br i1 %i.iu, label %.loopexit93, label %.lr.ph.i64.new

.lr.ph.i64.new:                                   ; preds = %.prol.loopexit155, %.lr.ph.i64.new
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66.3, %.lr.ph.i64.new ], [ %indvars.iv.i65.unr, %.prol.loopexit155 ] ; 5 uses
  %i.iv = load ptr, ptr %i.ip, align 8, !tbaa !23
  %i.iw = getelementptr inbounds [144 x i8], ptr %i.iv, i64 %indvars.iv.i65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.iw, i8 0, i64 144, i1 false)
  %i.ix = load ptr, ptr %i.ip, align 8, !tbaa !23
  %i.iy = getelementptr [144 x i8], ptr %i.ix, i64 %indvars.iv.i65
  %i.iz = getelementptr i8, ptr %i.iy, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.iz, i8 0, i64 144, i1 false)
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !23
  %i.jb = getelementptr [144 x i8], ptr %i.ja, i64 %indvars.iv.i65
  %i.jc = getelementptr i8, ptr %i.jb, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.jc, i8 0, i64 144, i1 false)
  %i.jd = load ptr, ptr %i.ip, align 8, !tbaa !23
  %i.je = getelementptr [144 x i8], ptr %i.jd, i64 %indvars.iv.i65
  %i.jf = getelementptr i8, ptr %i.je, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.jf, i8 0, i64 144, i1 false)
  %indvars.iv.next.i66.3 = add nsw i64 %indvars.iv.i65, 4 ; 2 uses
  %exitcond.not.i67.3 = icmp eq i64 %indvars.iv.next.i66.3, 0
  br i1 %exitcond.not.i67.3, label %.loopexit93, label %.lr.ph.i64.new

.loopexit93:                                      ; preds = %.prol.loopexit155, %.lr.ph.i64.new, %.loopexit94
  store i32 0, ptr %i.id, align 4, !tbaa !24
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !24 ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.loopexit93
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !25
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i82, label %.lr.ph.i78

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i82: ; preds = %bb.t
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !23 ; 2 uses
  %.not.i5.i.i83 = icmp eq ptr %i.jn, null
  br i1 %.not.i5.i.i83, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i84, label %bb.u

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i82
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !19, !range !44, !noundef !76
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.v, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i84

bb.v:                                             ; preds = %bb.u
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jn)
          to label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i84 unwind label %bb.z

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i84: ; preds = %bb.v, %bb.u, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i82
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.jr, align 8, !tbaa !19
  store ptr null, ptr %i.jm, align 8, !tbaa !23
  store i32 0, ptr %i.jj, align 8, !tbaa !25
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i84, %bb.t
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.jt = sext i32 %i.jh to i64                   ; 3 uses
  %i.ju = sub nsw i64 0, %i.jt
  %xtraiter161 = and i64 %i.ju, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.preheader159

.prol.preheader159:                               ; preds = %.lr.ph.i78, %.prol.preheader159
  %indvars.iv.i79.prol = phi i64 [ %indvars.iv.next.i80.prol, %.prol.preheader159 ], [ %i.jt, %.lr.ph.i78 ] ; 2 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %.prol.preheader159 ], [ 0, %.lr.ph.i78 ]
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !23
  %i.jw = getelementptr inbounds [144 x i8], ptr %i.jv, i64 %indvars.iv.i79.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.jw, i8 0, i64 144, i1 false)
  %indvars.iv.next.i80.prol = add nsw i64 %indvars.iv.i79.prol, 1 ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %.prol.loopexit160, label %.prol.preheader159, !llvm.loop !157

.prol.loopexit160:                                ; preds = %.prol.preheader159, %.lr.ph.i78
  %indvars.iv.i79.unr = phi i64 [ %i.jt, %.lr.ph.i78 ], [ %indvars.iv.next.i80.prol, %.prol.preheader159 ]
  %i.jx = icmp ugt i32 %i.jh, -4
  br i1 %i.jx, label %.loopexit, label %.lr.ph.i78.new

.lr.ph.i78.new:                                   ; preds = %.prol.loopexit160, %.lr.ph.i78.new
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80.3, %.lr.ph.i78.new ], [ %indvars.iv.i79.unr, %.prol.loopexit160 ] ; 5 uses
  %i.jy = load ptr, ptr %i.js, align 8, !tbaa !23
  %i.jz = getelementptr inbounds [144 x i8], ptr %i.jy, i64 %indvars.iv.i79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.jz, i8 0, i64 144, i1 false)
  %i.ka = load ptr, ptr %i.js, align 8, !tbaa !23
  %i.kb = getelementptr [144 x i8], ptr %i.ka, i64 %indvars.iv.i79
  %i.kc = getelementptr i8, ptr %i.kb, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.kc, i8 0, i64 144, i1 false)
  %i.kd = load ptr, ptr %i.js, align 8, !tbaa !23
  %i.ke = getelementptr [144 x i8], ptr %i.kd, i64 %indvars.iv.i79
  %i.kf = getelementptr i8, ptr %i.ke, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.kf, i8 0, i64 144, i1 false)
  %i.kg = load ptr, ptr %i.js, align 8, !tbaa !23
  %i.kh = getelementptr [144 x i8], ptr %i.kg, i64 %indvars.iv.i79
  %i.ki = getelementptr i8, ptr %i.kh, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ki, i8 0, i64 144, i1 false)
  %indvars.iv.next.i80.3 = add nsw i64 %indvars.iv.i79, 4 ; 2 uses
  %exitcond.not.i81.3 = icmp eq i64 %indvars.iv.next.i80.3, 0
  br i1 %exitcond.not.i81.3, label %.loopexit, label %.lr.ph.i78.new

.loopexit:                                        ; preds = %.prol.loopexit160, %.lr.ph.i78.new, %.loopexit93
  store i32 0, ptr %i.jg, align 4, !tbaa !24
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret float 0.000000e+00

bb.w:                                             ; preds = %bb.m
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.p
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.s
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.h, %bb.w, %bb.x, %bb.y, %bb.z, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.e ], [ %i.ev, %bb.h ], [ %i.km, %bb.z ], [ %i.kl, %bb.y ], [ %i.kk, %bb.x ], [ %i.kj, %bb.w ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.ab

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.aa
  resume { ptr, i32 } %.pn.pn

bb.ab:                                            ; preds = %bb.aa
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((232, 240)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.a, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18btConstraintSolver12prepareSolveEii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(68) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZN15CProfileManager12Stop_ProfileEv() local_unnamed_addr #16

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !51
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !51
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !51
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !51
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %2, align 4, !tbaa !51   ; 3 uses
  %6 = load <2 x float>, ptr %i.o, align 4, !tbaa !51 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %6, %6
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %7)
  %9 = extractelement <2 x float> %6, i64 1       ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %9, float %9, float %8)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.q) ; 2 uses
  %i.r = fmul float %3, %sqrt.i
  %i.s = fcmp ogt float %i.r, f0x3F490FDB
  %i.t = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.s, float %i.t, float %sqrt.i ; 6 uses
  %i.u = fcmp olt float %.0, 1.000000e-03
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = fmul float %3, %3
  %i.w = fmul float %3, %i.v
  %i.x = fmul float %i.w, f0x3CAAAAAB
  %i.y = fmul float %i.x, %.0
  %i.z = fneg float %.0
  %i.aa = fmul float %i.y, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.aa)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = fmul float %.0, 5.000000e-01
  %i.ad = fmul float %3, %i.ac
  %i.ae = tail call noundef float @sinf(float noundef %i.ad) #18, !tbaa !4
  %i.af = fdiv float %i.ae, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.af, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ag = fmul float %i.p, %.sink69               ; 4 uses
  %10 = insertelement <2 x float> poison, float %.sink69, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %6, %11                  ; 5 uses
  %i.ah = fmul float %3, %.0
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @cosf(float noundef %i.ai) #18, !tbaa !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 5 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 2 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.051.4.vec.extract.a = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %i.ak = extractelement <2 x float> %12, i64 0
  %i.al = fmul float %i.ak, %.sroa.5.12.vec.extract
  %i.am = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.051.4.vec.extract.a, float %i.al)
  %i.an = extractelement <2 x float> %12, i64 1
  %i.ao = call float @llvm.fmuladd.f32(float %i.an, float %.sroa.051.0.vec.extract, float %i.am)
  %13 = fneg float %i.ag
  %14 = call float @llvm.fmuladd.f32(float %13, float %.sroa.5.8.vec.extract, float %i.ao) ; 3 uses
  %i.ap = fneg float %.sroa.051.0.vec.extract
  %15 = fmul float %i.ag, %i.ap
  %i.aq = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.5.12.vec.extract, float %15)
  %i.ar = fmul float %14, %14
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %18, align 4, !tbaa !51
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %21 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %22 = insertelement <2 x float> %21, float %i.ag, i64 1
  %23 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = insertelement <2 x float> poison, float %i.aj, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %27, <2 x float> %24)
  %29 = insertelement <2 x float> poison, float %i.ag, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %31 = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %28)
  %33 = fneg <2 x float> %12                      ; 3 uses
  %34 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %.fca.0.load.i, <2 x float> %32) ; 3 uses
  %35 = extractelement <2 x float> %33, i64 0
  %i.as = call float @llvm.fmuladd.f32(float %35, float %.sroa.051.4.vec.extract.a, float %i.aq)
  %36 = extractelement <2 x float> %33, i64 1
  %i.at = call float @llvm.fmuladd.f32(float %36, float %.sroa.5.8.vec.extract, float %i.as) ; 3 uses
  %37 = extractelement <2 x float> %34, i64 1     ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %37, float %37, float %i.ar)
  %38 = extractelement <2 x float> %34, i64 0     ; 2 uses
  %i.av = call float @llvm.fmuladd.f32(float %38, float %38, float %i.au)
  %i.aw = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ay = fmul float %14, %i.ax                   ; 5 uses
  %39 = insertelement <2 x float> poison, float %i.ax, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x float> %34, %40                 ; 4 uses
  %i.az = fmul float %i.at, %i.ax                 ; 5 uses
  %i.ba = fmul float %i.ay, %i.ay
  %42 = extractelement <2 x float> %41, i64 1     ; 4 uses
  %i.bb = call float @llvm.fmuladd.f32(float %42, float %42, float %i.ba)
  %43 = extractelement <2 x float> %41, i64 0     ; 3 uses
  %i.bc = call float @llvm.fmuladd.f32(float %43, float %43, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bc)
  %i.be = fdiv float 2.000000e+00, %i.bd          ; 3 uses
  %i.bf = fmul float %i.ay, %i.be                 ; 3 uses
  %i.bg = fmul float %43, %i.be                   ; 4 uses
  %i.bh = fmul float %i.az, %i.bf                 ; 2 uses
  %i.bi = fmul float %i.az, %i.bg                 ; 2 uses
  %44 = insertelement <2 x float> poison, float %i.bg, i64 0
  %45 = insertelement <2 x float> %44, float %i.be, i64 1
  %46 = fmul <2 x float> %41, %45                 ; 4 uses
  %foldExtExtBinop71 = fmul <2 x float> %41, %46
  %47 = extractelement <2 x float> %foldExtExtBinop71, i64 1 ; 2 uses
  %i.bj = fmul float %42, %i.bf                   ; 2 uses
  %i.bk = fmul float %42, %i.bg                   ; 2 uses
  %i.bl = fmul float %i.ay, %i.bf                 ; 2 uses
  %i.bm = fmul float %i.ay, %i.bg                 ; 2 uses
  %48 = extractelement <2 x float> %46, i64 0
  %49 = fadd float %i.bl, %48
  %i.bn = fsub float 1.000000e+00, %49
  %50 = fsub float %i.bj, %i.bi
  %i.bo = fadd float %i.bk, %i.bh
  %i.bp = fadd float %i.bj, %i.bi
  %51 = insertelement <2 x float> poison, float %47, i64 0
  %52 = insertelement <2 x float> %51, float %i.az, i64 1 ; 2 uses
  %53 = fadd <2 x float> %52, %46
  %54 = fmul <2 x float> %52, %46                 ; 2 uses
  %55 = shufflevector <2 x float> %53, <2 x float> %54, <2 x i32> <i32 0, i32 3>
  %56 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bm, i64 1
  %57 = fsub <2 x float> %56, %55
  %58 = fsub float %i.bk, %i.bh
  %59 = extractelement <2 x float> %54, i64 1
  %60 = fadd float %i.bm, %59
  %61 = fadd float %47, %i.bl
  %62 = fsub float 1.000000e+00, %61
  store float %i.bn, ptr %4, align 4, !tbaa !51
  store float %50, ptr %16, align 4, !tbaa !51
  store float %i.bo, ptr %17, align 4, !tbaa !51
  store float %i.bp, ptr %19, align 4, !tbaa !51
  store <2 x float> %57, ptr %20, align 4, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %58, ptr %i.br, align 4, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %60, ptr %i.bs, align 4, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %62, ptr %i.bt, align 4, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !51 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !51 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #18, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !51
  %i.t = load float, ptr %i.m, align 4, !tbaa !51
  %i.u = load float, ptr %i.j, align 4, !tbaa !51
  %i.v = load float, ptr %i.k, align 4, !tbaa !51
  %i.w = load float, ptr %i.o, align 4, !tbaa !51
  %i.x = load float, ptr %i.p, align 4, !tbaa !51
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !51
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !51
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !51
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #18, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !51
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !51
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !51
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !51
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !51
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !51
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #16

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !15, i64 24}
!11 = !{!"_ZTS20btAlignedObjectArrayI12btSolverBodyE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !15, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorI12btSolverBodyLj16EE"}
!13 = !{!"p1 _ZTS12btSolverBody", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!11, !13, i64 16}
!17 = !{!11, !5, i64 4}
!18 = !{!11, !5, i64 8}
!19 = !{!20, !15, i64 24}
!20 = !{!"_ZTS20btAlignedObjectArrayI18btSolverConstraintE", !21, i64 0, !5, i64 4, !5, i64 8, !22, i64 16, !15, i64 24}
!21 = !{!"_ZTS18btAlignedAllocatorI18btSolverConstraintLj16EE"}
!22 = !{!"p1 _ZTS18btSolverConstraint", !14, i64 0}
!23 = !{!20, !22, i64 16}
!24 = !{!20, !5, i64 4}
!25 = !{!20, !5, i64 8}
!26 = !{!27, !15, i64 24}
!27 = !{!"_ZTS20btAlignedObjectArrayIiE", !28, i64 0, !5, i64 4, !5, i64 8, !29, i64 16, !15, i64 24}
!28 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!29 = !{!"p1 int", !14, i64 0}
!30 = !{!27, !29, i64 16}
!31 = !{!27, !5, i64 4}
!32 = !{!27, !5, i64 8}
!33 = !{!34, !15, i64 24}
!34 = !{!"_ZTS20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE", !35, i64 0, !5, i64 4, !5, i64 8, !36, i64 16, !15, i64 24}
!35 = !{!"_ZTS18btAlignedAllocatorIN17btTypedConstraint17btConstraintInfo1ELj16EE"}
!36 = !{!"p1 _ZTSN17btTypedConstraint17btConstraintInfo1E", !14, i64 0}
!37 = !{!34, !36, i64 16}
!38 = !{!34, !5, i64 4}
!39 = !{!34, !5, i64 8}
end_hunk_1
