Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSequentialImpulseConstraintSolver?download=true
inline.NumInlined: 912
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo:bb.a
  %i.da = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw [160 x i8], ptr %i.da, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cz, ptr noundef nonnull align 8 dereferenceable(160) %i.db, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw [160 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dc, ptr noundef nonnull align 8 dereferenceable(160) %i.de, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i32 %i.cw to i1
  tail call void @llvm.assume(i1 %lcmp.mod330)
  %i.df = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.dh = getelementptr inbounds nuw [160 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.df, ptr noundef nonnull align 8 dereferenceable(160) %i.dh, i64 160, i1 false), !tbaa.struct !98
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.di = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  %i.dj = load i8, ptr %i.as, align 8, !tbaa !40, !range !72, !noundef !100
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.k, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.di)
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.as, align 8, !tbaa !40
  store ptr %.0.i.i.i, ptr %i.ar, align 8, !tbaa !41
  store i32 %i.cr, ptr %i.aq, align 8, !tbaa !43
  %.pre2.i = load i32, ptr %i.ap, align 4, !tbaa !42
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.e, %bb.f, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
  %i.dl = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i ], [ %i.cn, %bb.f ], [ %i.cn, %bb.e ]
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.ap, align 4, !tbaa !42
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.do = sext i32 %i.cn to i64
  %i.dp = getelementptr inbounds [160 x i8], ptr %i.dn, i64 %i.do ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 %i.h, ptr %i.dq, align 8, !tbaa !90
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 156
  store i32 %i.j, ptr %i.dr, align 4, !tbaa !91
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  store ptr %i.ci, ptr %i.ds, align 8, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dv = load float, ptr %i.dt, align 8, !tbaa !60
  %i.dw = load float, ptr %i.au, align 4, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 52
  %i.dy = load <2 x float>, ptr %i.dx, align 4, !tbaa !60 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.av, align 4, !tbaa !60 ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.dv, i64 1
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ed = insertelement <2 x float> %i.ec, float %i.dw, i64 1
  %i.ee = fsub <2 x float> %i.eb, %i.ed           ; 4 uses
  %i.ef = fsub <2 x float> %i.dy, %i.dz           ; 3 uses
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 1, i32 2>
  %i.eh = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1
  store <2 x float> %i.eg, ptr %3, align 8
  store <2 x float> %i.eh, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !81
  %i.ei = load float, ptr %i.du, align 8, !tbaa !60
  %i.ej = load float, ptr %i.ax, align 4, !tbaa !60
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.el = load <2 x float>, ptr %i.ek, align 4, !tbaa !60 ; 2 uses
  %i.em = load <2 x float>, ptr %i.ay, align 4, !tbaa !60 ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eo = insertelement <2 x float> %i.en, float %i.ei, i64 1
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = insertelement <2 x float> %i.ep, float %i.ej, i64 1
  %i.er = fsub <2 x float> %i.eo, %i.eq           ; 4 uses
  %i.es = fsub <2 x float> %i.el, %i.em           ; 3 uses
  %i.et = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 1, i32 2>
  %i.eu = insertelement <2 x float> %i.er, float 0.000000e+00, i64 1
  store <2 x float> %i.et, ptr %4, align 8
  store <2 x float> %i.eu, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !81
  %i.ev = load ptr, ptr %i.az, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.ev, null
  br i1 %.not.i, label %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit
  %i.ew = load float, ptr %i.bc, align 8, !tbaa !60
  %i.ex = load float, ptr %i.bd, align 8, !tbaa !60
  %i.ey = fadd float %i.ew, %i.ex
  %i.ez = load float, ptr %i.be, align 8, !tbaa !60
  %i.fa = load float, ptr %i.bf, align 8, !tbaa !60
  %i.fb = fneg <2 x float> %i.ef
  %i.fc = extractelement <2 x float> %i.ee, i64 1
  %i.fd = fneg float %i.fc
  %i.fe = load <2 x float>, ptr %i.ba, align 8, !tbaa !60
  %i.ff = load <2 x float>, ptr %i.bb, align 8, !tbaa !60
  %i.fg = fadd <2 x float> %i.fe, %i.ff
  %i.fh = load <2 x float>, ptr %i.bg, align 4, !tbaa !60 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.bh, align 4, !tbaa !60 ; 2 uses
  %i.fj = fadd <2 x float> %i.fh, %i.fi           ; 2 uses
  %i.fk = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fl = insertelement <2 x float> %i.fk, float %i.ez, i64 1
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.fa, i64 1
  %i.fo = fadd <2 x float> %i.fl, %i.fn           ; 2 uses
  %i.fp = fmul <2 x float> %i.fo, %i.fb
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.ee, <2 x float> %i.fp)
  %i.fr = extractelement <2 x float> %i.fj, i64 0
  %i.fs = fmul float %i.fr, %i.fd
  %i.ft = extractelement <2 x float> %i.fo, i64 1
  %i.fu = extractelement <2 x float> %i.ef, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fu, float %i.fs)
  %i.fw = fadd <2 x float> %i.fg, %i.fq
  %i.fx = fadd float %i.ey, %i.fv
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fx, i64 0
  br label %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit

_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit: ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit, %bb.l
  %.sroa.0298.0 = phi <2 x float> [ %i.fw, %bb.l ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit ]
  %.sroa.6299.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.l ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit ]
  %i.fy = load ptr, ptr %i.bi, align 8, !tbaa !68
  %.not.i185 = icmp eq ptr %i.fy, null
  br i1 %.not.i185, label %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit190, label %bb.m

bb.m:                                             ; preds = %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit
  %i.fz = load float, ptr %i.bl, align 8, !tbaa !60
  %i.ga = load float, ptr %i.bm, align 8, !tbaa !60
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = load float, ptr %i.bn, align 8, !tbaa !60
  %i.gd = load float, ptr %i.bo, align 8, !tbaa !60
  %i.ge = fneg <2 x float> %i.es
  %i.gf = extractelement <2 x float> %i.er, i64 1
  %i.gg = fneg float %i.gf
  %i.gh = load <2 x float>, ptr %i.bj, align 8, !tbaa !60
  %i.gi = load <2 x float>, ptr %i.bk, align 8, !tbaa !60
  %i.gj = fadd <2 x float> %i.gh, %i.gi
  %i.gk = load <2 x float>, ptr %i.bp, align 4, !tbaa !60 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.bq, align 4, !tbaa !60 ; 2 uses
  %i.gm = fadd <2 x float> %i.gk, %i.gl           ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.go = insertelement <2 x float> %i.gn, float %i.gc, i64 1
  %i.gp = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gq = insertelement <2 x float> %i.gp, float %i.gd, i64 1
  %i.gr = fadd <2 x float> %i.go, %i.gq           ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.ge
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.er, <2 x float> %i.gs)
  %i.gu = extractelement <2 x float> %i.gm, i64 0
  %i.gv = fmul float %i.gu, %i.gg
  %i.gw = extractelement <2 x float> %i.gr, i64 1
  %i.gx = extractelement <2 x float> %i.es, i64 0
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gx, float %i.gv)
  %i.gz = fadd <2 x float> %i.gj, %i.gt
  %i.ha = fadd float %i.gb, %i.gy
  %.sroa.3.12.vec.insert.i16.i188 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  br label %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit190

_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit190: ; preds = %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit, %bb.m
  %.sroa.0297.0 = phi <2 x float> [ %i.gz, %bb.m ], [ zeroinitializer, %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit ]
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i188, %bb.m ], [ zeroinitializer, %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit ]
  %i.hb = fsub <2 x float> %.sroa.0298.0, %.sroa.0297.0 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.6299.0, %.sroa.6.0
  %i.hc = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 6 uses
  %i.he = load float, ptr %i.hd, align 8, !tbaa !60
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ci, i64 68 ; 3 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !60
  %i.hh = extractelement <2 x float> %i.hb, i64 1
  %i.hi = fmul float %i.hh, %i.hg
  %i.hj = extractelement <2 x float> %i.hb, i64 0
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hj, float %i.hi)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 3 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !60
  %i.hn = tail call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.hc, float %i.hk) ; 2 uses
  call void @_ZN35btSequentialImpulseConstraintSolver22setupContactConstraintER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfoRfRK9btVector3SA_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.dp, i32 noundef %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(204) %i.ci, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.ho = load i32, ptr %i.br, align 4, !tbaa !42
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dp, i64 148 ; 2 uses
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !101
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ci, i64 88 ; 3 uses
  %i.hr = load float, ptr %i.hq, align 8, !tbaa !152
  %i.hs = fcmp ogt float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.n, label %bb.z

bb.n:                                             ; preds = %_ZNK12btSolverBody30getVelocityInLocalPointNoDeltaERK9btVector3RS0_.exit190
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ci, i64 92
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !153
  %i.hv = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver30addTorsionalFrictionConstraintERK9btVector3iiiR15btManifoldPointfS2_S2_P17btCollisionObjectS6_fff(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.hd, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.cn, ptr nonnull align 8 poison, float noundef %i.hu, ptr nonnull align 4 poison, ptr nonnull align 4 poison, ptr nonnull poison, ptr nonnull poison, float poison, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.hw = load float, ptr %i.hl, align 8, !tbaa !60 ; 5 uses
  %i.hx = tail call noundef float @llvm.fabs.f32(float %i.hw)
  %i.hy = fcmp ogt float %i.hx, f0x3F3504F3
  br i1 %i.hy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hz = fmul nnan float %i.hw, %i.hw
  %i.ia = fneg float %i.hw
  %i.ib = load <2 x float>, ptr %i.hd, align 8, !tbaa !60 ; 3 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 1 ; 2 uses
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.hz) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.id)
  %i.ie = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.if = fmul float %i.ie, %i.ia                 ; 2 uses
  %i.ig = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %i.ie, i64 1
  %i.ii = fmul <2 x float> %i.ib, %i.ih           ; 2 uses
  %i.ij = insertelement <2 x float> %i.ii, float %i.ie, i64 0
  %i.ik = insertelement <2 x float> poison, float %i.id, i64 0
  %i.il = fneg <2 x float> %i.ib
  %i.im = shufflevector <2 x float> %i.ik, <2 x float> %i.il, <2 x i32> <i32 0, i32 2>
  %i.in = fmul <2 x float> %i.ij, %i.im
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.io = load float, ptr %i.hd, align 8, !tbaa !60 ; 3 uses
  %7 = load <2 x float>, ptr %i.hf, align 4, !tbaa !60 ; 3 uses
  %foldExtExtBinop322 = fmul <2 x float> %7, %7
  %8 = extractelement <2 x float> %foldExtExtBinop322, i64 0
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.io, float %i.io, float %8) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.ip)
  %i.iq = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %9 = fneg <2 x float> %7                        ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  %i.ir = fmul float %i.iq, %10                   ; 2 uses
  %11 = fmul float %i.io, %i.iq                   ; 2 uses
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.is = insertelement <2 x float> %12, float %i.hw, i64 1
  %i.it = insertelement <2 x float> poison, float %11, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ir, i64 1
  %i.iv = fmul <2 x float> %i.is, %i.iu
  %i.iw = fmul float %i.ip, %i.iq
  %i.ix = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iw, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.iy = phi float [ %i.if, %bb.o ], [ %11, %bb.p ] ; 2 uses
  %i.iz = phi float [ 0.000000e+00, %bb.o ], [ %i.ir, %bb.p ] ; 2 uses
  %i.ja = phi <2 x float> [ %i.in, %bb.o ], [ %i.iv, %bb.p ] ; 3 uses
  %i.jb = phi <2 x float> [ %i.ii, %bb.o ], [ %i.ix, %bb.p ] ; 3 uses
  %i.jc = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.iy, i64 1
  %i.je = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jf = insertelement <2 x float> %i.je, float %i.iy, i64 1 ; 2 uses
  %i.jg = fmul <2 x float> %i.jf, %i.jf
  %i.jh = insertelement <2 x float> %i.ja, float %i.iz, i64 1 ; 2 uses
  %i.ji = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jh, <2 x float> %i.jg)
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.jb, <2 x float> %i.ji)
  %i.jk = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.jj)
  %i.jl = fdiv <2 x float> splat (float 1.000000e+00), %i.jk ; 3 uses
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jn = fmul <2 x float> %i.jd, %i.jm           ; 4 uses
  store <2 x float> %i.jn, ptr %5, align 8, !tbaa !60
  %i.jo = fmul <2 x float> %i.jb, %i.jl           ; 4 uses
  %i.jp = extractelement <2 x float> %i.jo, i64 1 ; 2 uses
  store float %i.jp, ptr %i.bs, align 8, !tbaa !60
  %i.jq = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x float> %i.ja, %i.jq           ; 4 uses
  store <2 x float> %i.jr, ptr %6, align 8, !tbaa !60
  %i.js = extractelement <2 x float> %i.jo, i64 0 ; 2 uses
  store float %i.js, ptr %i.bt, align 8, !tbaa !60
  %i.jt = load i32, ptr %i.bu, align 8, !tbaa !89
  %i.ju = and i32 %i.jt, 2
  %.not22.i = icmp eq i32 %i.ju, 0                ; 2 uses
  br i1 %.not22.i, label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jv = load <3 x float>, ptr %i.at, align 8, !tbaa !60 ; 4 uses
  %i.jw = load <3 x float>, ptr %i.bv, align 8, !tbaa !60 ; 4 uses
  %i.jx = shufflevector <2 x float> %i.jn, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.jy = fmul <3 x float> %i.jx, %i.jw
  %i.jz = shufflevector <2 x float> %i.jn, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ka = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jv, <3 x float> %i.jz, <3 x float> %i.jy)
  %i.kb = load float, ptr %i.by, align 4, !tbaa !60
  %i.kc = load <3 x float>, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  %i.kd = shufflevector <2 x float> %i.jo, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ke = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kc, <3 x float> %i.kd, <3 x float> %i.ka)
  %i.kf = load <3 x float>, ptr %i.bz, align 8, !tbaa !60
  %i.kg = fmul <3 x float> %i.ke, %i.kf           ; 6 uses
  %i.kh = shufflevector <3 x float> %i.jv, <3 x float> %i.jw, <2 x i32> <i32 1, i32 4>
  %i.ki = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kj = fmul <2 x float> %i.kh, %i.ki
  %i.kk = shufflevector <3 x float> %i.jv, <3 x float> %i.jw, <2 x i32> <i32 0, i32 3>
  %i.kl = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kl, <2 x float> %i.kj)
  %i.kn = shufflevector <3 x float> %i.jv, <3 x float> %i.jw, <2 x i32> <i32 2, i32 5>
  %i.ko = shufflevector <3 x float> %i.kg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.ko, <2 x float> %i.km) ; 2 uses
  %i.kq = extractelement <3 x float> %i.kg, i64 1
  %i.kr = fmul float %i.kb, %i.kq
  %i.ks = extractelement <3 x float> %i.kg, i64 0
  %i.kt = extractelement <3 x float> %i.kc, i64 0
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.ks, float %i.kr)
  %i.kv = extractelement <3 x float> %i.kg, i64 2
  %i.kw = extractelement <3 x float> %i.kc, i64 2
  %i.kx = tail call noundef float @llvm.fmuladd.f32(float %i.kw, float %i.kv, float %i.ku) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kx, i64 0
  store <2 x float> %i.kp, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.bs, align 8, !tbaa !81
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit: ; preds = %bb.r, %bb.q
  %i.ky = phi float [ %i.kx, %bb.r ], [ %i.jp, %bb.q ] ; 2 uses
  %i.kz = phi <2 x float> [ %i.kp, %bb.r ], [ %i.jn, %bb.q ] ; 3 uses
  %i.la = load i32, ptr %i.ca, align 8, !tbaa !89
  %i.lb = and i32 %i.la, 2
  %.not22.i199 = icmp eq i32 %i.lb, 0             ; 2 uses
  br i1 %.not22.i199, label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203, label %bb.s

bb.s:                                             ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit
  %i.lc = load <3 x float>, ptr %i.aw, align 8, !tbaa !60 ; 4 uses
  %i.ld = load <3 x float>, ptr %i.cb, align 8, !tbaa !60 ; 4 uses
  %i.le = shufflevector <2 x float> %i.kz, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.lf = fmul <3 x float> %i.ld, %i.le
  %i.lg = shufflevector <2 x float> %i.kz, <2 x float> poison, <3 x i32> zeroinitializer
  %i.lh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lc, <3 x float> %i.lg, <3 x float> %i.lf)
  %i.li = load float, ptr %i.cd, align 4, !tbaa !60
  %i.lj = load <3 x float>, ptr %i.cc, align 8, !tbaa !60 ; 3 uses
  %i.lk = insertelement <3 x float> poison, float %i.ky, i64 0
  %i.ll = shufflevector <3 x float> %i.lk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.lm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lj, <3 x float> %i.ll, <3 x float> %i.lh)
  %i.ln = load <3 x float>, ptr %i.ce, align 8, !tbaa !60
  %i.lo = fmul <3 x float> %i.lm, %i.ln           ; 6 uses
  %i.lp = shufflevector <3 x float> %i.lc, <3 x float> %i.ld, <2 x i32> <i32 1, i32 4>
  %i.lq = shufflevector <3 x float> %i.lo, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lr = fmul <2 x float> %i.lp, %i.lq
  %i.ls = shufflevector <3 x float> %i.lc, <3 x float> %i.ld, <2 x i32> <i32 0, i32 3>
  %i.lt = shufflevector <3 x float> %i.lo, <3 x float> poison, <2 x i32> zeroinitializer
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.lt, <2 x float> %i.lr)
  %i.lv = shufflevector <3 x float> %i.lc, <3 x float> %i.ld, <2 x i32> <i32 2, i32 5>
  %i.lw = shufflevector <3 x float> %i.lo, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lw, <2 x float> %i.lu) ; 2 uses
  %i.ly = extractelement <3 x float> %i.lo, i64 1
  %i.lz = fmul float %i.li, %i.ly
  %i.ma = extractelement <3 x float> %i.lo, i64 0
  %i.mb = extractelement <3 x float> %i.lj, i64 0
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.ma, float %i.lz)
  %i.md = extractelement <3 x float> %i.lo, i64 2
  %i.me = extractelement <3 x float> %i.lj, i64 2
  %i.mf = tail call noundef float @llvm.fmuladd.f32(float %i.me, float %i.md, float %i.mc) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i202 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mf, i64 0
  store <2 x float> %i.lx, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i202, ptr %i.bs, align 8, !tbaa !81
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203: ; preds = %bb.s, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit
  %i.mg = phi float [ %i.mf, %bb.s ], [ %i.ky, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit ] ; 2 uses
  %i.mh = phi <2 x float> [ %i.lx, %bb.s ], [ %i.kz, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit ] ; 3 uses
  br i1 %.not22.i, label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209, label %bb.t

bb.t:                                             ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203
  %i.mi = load <3 x float>, ptr %i.at, align 8, !tbaa !60 ; 4 uses
  %i.mj = load <3 x float>, ptr %i.bv, align 8, !tbaa !60 ; 4 uses
  %i.mk = shufflevector <2 x float> %i.jr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ml = fmul <3 x float> %i.mk, %i.mj
  %i.mm = shufflevector <2 x float> %i.jr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mi, <3 x float> %i.mm, <3 x float> %i.ml)
  %i.mo = load float, ptr %i.by, align 4, !tbaa !60
  %i.mp = load <3 x float>, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  %i.mq = shufflevector <2 x float> %i.jo, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mp, <3 x float> %i.mq, <3 x float> %i.mn)
  %i.ms = load <3 x float>, ptr %i.bz, align 8, !tbaa !60
  %i.mt = fmul <3 x float> %i.mr, %i.ms           ; 6 uses
  %i.mu = shufflevector <3 x float> %i.mi, <3 x float> %i.mj, <2 x i32> <i32 1, i32 4>
  %i.mv = shufflevector <3 x float> %i.mt, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mw = fmul <2 x float> %i.mu, %i.mv
  %i.mx = shufflevector <3 x float> %i.mi, <3 x float> %i.mj, <2 x i32> <i32 0, i32 3>
  %i.my = shufflevector <3 x float> %i.mt, <3 x float> poison, <2 x i32> zeroinitializer
  %i.mz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mx, <2 x float> %i.my, <2 x float> %i.mw)
  %i.na = shufflevector <3 x float> %i.mi, <3 x float> %i.mj, <2 x i32> <i32 2, i32 5>
  %i.nb = shufflevector <3 x float> %i.mt, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.nc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nb, <2 x float> %i.mz) ; 2 uses
  %i.nd = extractelement <3 x float> %i.mt, i64 1
  %i.ne = fmul float %i.mo, %i.nd
  %i.nf = extractelement <3 x float> %i.mt, i64 0
  %i.ng = extractelement <3 x float> %i.mp, i64 0
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.nf, float %i.ne)
  %i.ni = extractelement <3 x float> %i.mt, i64 2
  %i.nj = extractelement <3 x float> %i.mp, i64 2
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.nj, float %i.ni, float %i.nh) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i208 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nk, i64 0
  store <2 x float> %i.nc, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i208, ptr %i.bt, align 8, !tbaa !81
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209: ; preds = %bb.t, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203
  %i.nl = phi float [ %i.nk, %bb.t ], [ %i.js, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203 ] ; 2 uses
  %i.nm = phi <2 x float> [ %i.nc, %bb.t ], [ %i.jr, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit203 ] ; 3 uses
  br i1 %.not22.i199, label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit215, label %bb.u

bb.u:                                             ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209
  %i.nn = load <3 x float>, ptr %i.aw, align 8, !tbaa !60 ; 4 uses
  %i.no = load <3 x float>, ptr %i.cb, align 8, !tbaa !60 ; 4 uses
  %i.np = shufflevector <2 x float> %i.nm, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.nq = fmul <3 x float> %i.no, %i.np
  %i.nr = shufflevector <2 x float> %i.nm, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ns = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nn, <3 x float> %i.nr, <3 x float> %i.nq)
  %i.nt = load float, ptr %i.cd, align 4, !tbaa !60
  %i.nu = load <3 x float>, ptr %i.cc, align 8, !tbaa !60 ; 3 uses
  %i.nv = insertelement <3 x float> poison, float %i.nl, i64 0
  %i.nw = shufflevector <3 x float> %i.nv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nu, <3 x float> %i.nw, <3 x float> %i.ns)
  %i.ny = load <3 x float>, ptr %i.ce, align 8, !tbaa !60
  %i.nz = fmul <3 x float> %i.nx, %i.ny           ; 6 uses
  %i.oa = shufflevector <3 x float> %i.nn, <3 x float> %i.no, <2 x i32> <i32 1, i32 4>
  %i.ob = shufflevector <3 x float> %i.nz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = fmul <2 x float> %i.oa, %i.ob
  %i.od = shufflevector <3 x float> %i.nn, <3 x float> %i.no, <2 x i32> <i32 0, i32 3>
  %i.oe = shufflevector <3 x float> %i.nz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.oe, <2 x float> %i.oc)
  %i.og = shufflevector <3 x float> %i.nn, <3 x float> %i.no, <2 x i32> <i32 2, i32 5>
  %i.oh = shufflevector <3 x float> %i.nz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.oi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> %i.oh, <2 x float> %i.of) ; 2 uses
  %i.oj = extractelement <3 x float> %i.nz, i64 1
  %i.ok = fmul float %i.nt, %i.oj
  %i.ol = extractelement <3 x float> %i.nz, i64 0
  %i.om = extractelement <3 x float> %i.nu, i64 0
  %i.on = tail call float @llvm.fmuladd.f32(float %i.om, float %i.ol, float %i.ok)
  %i.oo = extractelement <3 x float> %i.nz, i64 2
  %i.op = extractelement <3 x float> %i.nu, i64 2
  %i.oq = tail call noundef float @llvm.fmuladd.f32(float %i.op, float %i.oo, float %i.on) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i214 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oq, i64 0
  store <2 x float> %i.oi, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i214, ptr %i.bt, align 8, !tbaa !81
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit215

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit215: ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209, %bb.u
  %i.or = phi float [ %i.nl, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209 ], [ %i.oq, %bb.u ] ; 2 uses
  %i.os = phi <2 x float> [ %i.nm, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit209 ], [ %i.oi, %bb.u ] ; 3 uses
  %foldExtExtBinop322.a = fmul <2 x float> %i.mh, %i.mh
  %i.ot = extractelement <2 x float> %foldExtExtBinop322.a, i64 1
  %i.ou = extractelement <2 x float> %i.mh, i64 0 ; 2 uses
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.ou, float %i.ou, float %i.ot)
  %i.ow = tail call noundef float @llvm.fmuladd.f32(float %i.mg, float %i.mg, float %i.ov)
  %sqrt.i216 = tail call noundef float @llvm.sqrt.f32(float %i.ow)
  %i.ox = fpext float %sqrt.i216 to double
  %i.oy = fcmp ogt double %i.ox, 1.000000e-03
  br i1 %i.oy, label %bb.v, label %bb.w
end_hunk_0
