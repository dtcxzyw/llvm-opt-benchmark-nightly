Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 433
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ad = tail call noundef float @atan2f(float noundef %i.aa, float noundef %i.ac) #19, !tbaa !7
  store float %i.ad, ptr %1, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float f0x3FC90FDB, ptr %i.ae, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ %i.r, %bb.c ]
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sink, ptr %i.af, align 4, !tbaa !11
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN22btRotationalLimitMotor14testLimitValueEf(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) initializes((48, 52)) %0, float noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !34   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !35 ; 3 uses
  %i.d = fcmp ogt float %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 4, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp olt float %1, %i.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.g, align 4, !tbaa !19
  %i.h = fsub float %1, %i.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.h, ptr %i.i, align 4, !tbaa !20
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = fcmp ogt float %1, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.k, align 4, !tbaa !19
  %i.l = fsub float %1, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.l, ptr %i.m, align 4, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 2, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %7) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4, !range !36
  %i.f = icmp ne i8 %i.e, 0
  %or.cond.not.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !38
  %i.l = fneg float %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 4, !tbaa !20
  %i.o = fmul float %i.n, %i.l
  %i.p = fdiv float %i.o, %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.040.in = phi ptr [ %i.q, %bb.c ], [ %i.i, %bb.b ]
  %.039 = phi float [ %i.p, %bb.c ], [ %i.h, %bb.b ]
  %.040 = load float, ptr %.040.in, align 4, !tbaa !11
  %i.r = fmul float %1, %.040                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 344
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load <2 x float>, ptr %i.u, align 4, !tbaa !11
  %i.x = load <2 x float>, ptr %i.v, align 8, !tbaa !11
  %i.y = fadd <2 x float> %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !11
  %i.ad = fadd float %i.aa, %i.ac
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit: ; preds = %bb.d, %bb.e
  %.sroa.083.0 = phi <2 x float> [ %i.y, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %.sroa.684.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i, %bb.e ], [ zeroinitializer, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 3 uses
  %.not.i44 = icmp eq ptr %i.af, null
  br i1 %.not.i44, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49, label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = load <2 x float>, ptr %i.ag, align 4, !tbaa !11
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !tbaa !11
  %i.ak = fadd <2 x float> %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 352
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ao = load float, ptr %i.an, align 8, !tbaa !11
  %i.ap = fadd float %i.am, %i.ao
  %.sroa.3.12.vec.insert.i.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49: ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit, %bb.f
  %.sroa.081.0 = phi <2 x float> [ %i.ak, %bb.f ], [ zeroinitializer, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit ] ; 2 uses
  %.sroa.682.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i47, %bb.f ], [ zeroinitializer, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.083.0, %.sroa.081.0
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop89 = fsub <2 x float> %.sroa.083.0, %.sroa.081.0
  %i.ar = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %foldExtExtBinop91 = fsub <2 x float> %.sroa.684.0, %.sroa.682.0
  %i.as = extractelement <2 x float> %foldExtExtBinop91, i64 0
  %i.at = load float, ptr %2, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !11
  %i.aw = fmul float %i.ar, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.at, float %i.aq, float %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.as, float %i.ax)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = load float, ptr %i.bd, align 4, !tbaa !63
  %i.bf = fneg float %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ba, float %.039)
  %i.bh = fmul float %i.bc, %i.bg                 ; 2 uses
  %i.bi = tail call float @llvm.fabs.f32(float %i.bh)
  %or.cond = fcmp olt float %i.bi, f0x34000000
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18
  %i.bl = fadd float %i.bk, 1.000000e+00
  %i.bm = fmul float %i.bh, %i.bl
  %i.bn = fmul float %3, %i.bm                    ; 5 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = fcmp ogt float %i.bn, %i.r
  %i.bq = select i1 %i.bp, float %i.r, float %i.bn
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.br = fneg float %i.r                         ; 2 uses
  %i.bs = fcmp olt float %i.bn, %i.br
  %i.bt = select i1 %i.bs, float %i.br, float %i.bn
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi float [ %i.bt, %bb.i ], [ %i.bq, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !22 ; 2 uses
  %i.bw = fadd float %storemerge, %i.bv           ; 2 uses
  %i.bx = tail call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp ogt float %i.bx, f0x5D5E0B6B
  %i.bz = select i1 %i.by, float 0.000000e+00, float %i.bw ; 2 uses
  store float %i.bz, ptr %i.bu, align 4, !tbaa !22
  %i.ca = fsub float %i.bz, %i.bv                 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 316
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = fmul float %i.ca, 0.000000e+00          ; 2 uses
  %i.co = load <2 x float>, ptr %5, align 8, !tbaa !11
  %i.cp = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fadd <2 x float> %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !11
  %i.cu = fadd float %i.cn, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !11
  %i.cy = fmul float %i.ca, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.da = load float, ptr %i.au, align 4, !tbaa !11 ; 2 uses
  %i.db = load float, ptr %2, align 4, !tbaa !11  ; 2 uses
  %i.dc = load float, ptr %i.ay, align 4, !tbaa !11 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.cb, align 4, !tbaa !11 ; 2 uses
  %8 = load <2 x float>, ptr %i.ce, align 4, !tbaa !11 ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.da, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %i.dd, <2 x float> %8, <2 x i32> <i32 1, i32 3>
  %12 = fmul <2 x float> %10, %11
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %i.df = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dg, <2 x float> %12)
  %i.di = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.cg, i64 1
  %i.dk = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dl, <2 x float> %i.dh)
  %i.dn = fmul float %i.da, %i.ck
  %i.do = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.db, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.dc, float %i.do)
  store <2 x float> %i.cr, ptr %5, align 8, !tbaa !11
  store float %i.cu, ptr %i.cs, align 8, !tbaa !11
  %i.dq = load <2 x float>, ptr %i.cv, align 8, !tbaa !11
  %i.dr = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.ds, %i.dq
  %i.du = fmul <2 x float> %i.dm, %i.dt
  %i.dv = fmul float %i.dp, %i.cy
  %i.dw = load <2 x float>, ptr %i.cz, align 8, !tbaa !11
  %i.dx = fadd <2 x float> %i.du, %i.dw
  store <2 x float> %i.dx, ptr %i.cz, align 8, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !11
  %i.ea = fadd float %i.dv, %i.dz
  store float %i.ea, ptr %i.dy, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 316
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.em = load float, ptr %i.el, align 4, !tbaa !11
  %i.en = fneg float %i.ca                        ; 2 uses
  %i.eo = fmul float %i.ca, -0.000000e+00         ; 2 uses
  %i.ep = load <2 x float>, ptr %7, align 8, !tbaa !11
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fadd <2 x float> %i.er, %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.eu = load float, ptr %i.et, align 8, !tbaa !11
  %i.ev = fadd float %i.eo, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !11
  %i.ez = fmul float %i.ey, %i.en
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fb = load <2 x float>, ptr %i.eb, align 4, !tbaa !11 ; 2 uses
  %i.fc = load float, ptr %i.au, align 4, !tbaa !11 ; 2 uses
  %i.fd = load float, ptr %2, align 4, !tbaa !11  ; 2 uses
  %i.fe = load float, ptr %i.ay, align 4, !tbaa !11 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.ee, align 4, !tbaa !11 ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.fc, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x float> %i.fb, <2 x float> %i.ff, <2 x i32> <i32 1, i32 3>
  %16 = fmul <2 x float> %14, %15
  %17 = shufflevector <2 x float> %i.fb, <2 x float> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.fg = insertelement <2 x float> poison, float %i.fd, i64 0
  %18 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %18, <2 x float> %16)
  %i.fi = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.eg, i64 1
  %i.fk = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fl, <2 x float> %i.fh)
  %i.fn = fmul float %i.fc, %i.ek
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.fd, float %i.fn)
  %i.fp = tail call noundef float @llvm.fmuladd.f32(float %i.em, float %i.fe, float %i.fo)
  store <2 x float> %i.es, ptr %7, align 8, !tbaa !11
  store float %i.ev, ptr %i.et, align 8, !tbaa !11
  %i.fq = load <2 x float>, ptr %i.ew, align 8, !tbaa !11
  %i.fr = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.fq, %i.fs
  %i.fu = fmul <2 x float> %i.fm, %i.ft
  %i.fv = fmul float %i.fp, %i.ez
  %i.fw = load <2 x float>, ptr %i.fa, align 8, !tbaa !11
  %i.fx = fadd <2 x float> %i.fu, %i.fw
  store <2 x float> %i.fx, ptr %i.fa, align 8, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !11
  %i.ga = fadd float %i.fv, %i.fz
  store float %i.ga, ptr %i.fy, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.ca, %bb.j ], [ 0.000000e+00, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49 ]
  ret float %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN25btTranslationalLimitMotor14testLimitValueEif(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(140) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 6 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  %i.c = load float, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.a
  %i.f = load float, ptr %i.e, align 4, !tbaa !11 ; 3 uses
  %i.g = fcmp ogt float %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.a
  store i32 0, ptr %i.i, align 4, !tbaa !7
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %2, %i.c
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.a
  store i32 2, ptr %i.l, align 4, !tbaa !7
  %i.m = fsub float %2, %i.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = fcmp ogt float %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.a ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.p, align 4, !tbaa !7
  %i.q = fsub float %2, %i.f
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.q, %bb.f ], [ %i.m, %bb.d ], [ 0.000000e+00, %bb.b ]
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.f ], [ 2, %bb.d ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.a
  store float %.sink, ptr %i.s, align 4, !tbaa !11
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(140) %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %11) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.c = load <3 x float>, ptr %11, align 4, !tbaa !11 ; 2 uses
  %i.d = load float, ptr %i.b, align 4, !tbaa !11
  %i.e = load <3 x float>, ptr %i.a, align 8, !tbaa !11
  %i.f = fsub <3 x float> %i.c, %i.e              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.h = load <3 x float>, ptr %i.g, align 8, !tbaa !11
  %i.i = insertelement <3 x float> %i.c, float %i.d, i64 1
  %i.j = fsub <3 x float> %i.i, %i.h              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 5 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.o = load float, ptr %i.n, align 4, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !11
  %i.r = fadd float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load float, ptr %i.s, align 4, !tbaa !11
  %i.v = load float, ptr %i.t, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 348
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.y = extractelement <3 x float> %i.f, i64 1
  %i.z = extractelement <3 x float> %i.f, i64 0
  %i.aa = fneg float %i.z
  %i.ab = load <2 x float>, ptr %i.m, align 4, !tbaa !11
  %i.ac = load <2 x float>, ptr %4, align 8, !tbaa !11
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = load <2 x float>, ptr %i.w, align 4, !tbaa !11 ; 2 uses
  %i.af = load <2 x float>, ptr %i.x, align 4, !tbaa !11 ; 2 uses
  %i.ag = fadd <2 x float> %i.ae, %i.af           ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x float> %i.ah, float %i.u, i64 1
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.v, i64 1
  %i.al = fadd <2 x float> %i.ai, %i.ak           ; 2 uses
  %i.am = fneg <3 x float> %i.f
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ao = fmul <2 x float> %i.al, %i.an
  %i.ap = shufflevector <3 x float> %i.f, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ap, <2 x float> %i.ao)
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  %i.as = fmul float %i.ar, %i.aa
  %i.at = extractelement <2 x float> %i.al, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.y, float %i.as)
  %i.av = fadd <2 x float> %i.ad, %i.aq
  %i.aw = fadd float %i.r, %i.au
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0132.0 = phi <2 x float> [ %i.av, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.6133.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 5 uses
  %.not.i60 = icmp eq ptr %i.ay, null
  br i1 %.not.i60, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit65, label %bb.c

bb.c:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 336
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !11
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !11
  %i.bi = load float, ptr %i.bg, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 348
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bl = extractelement <3 x float> %i.j, i64 1
  %i.bm = extractelement <3 x float> %i.j, i64 0
  %i.bn = fneg float %i.bm
  %i.bo = load <2 x float>, ptr %i.az, align 4, !tbaa !11
  %i.bp = load <2 x float>, ptr %7, align 8, !tbaa !11
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  %i.br = load <2 x float>, ptr %i.bj, align 4, !tbaa !11 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.bk, align 4, !tbaa !11 ; 2 uses
  %i.bt = fadd <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %i.bu, float %i.bh, i64 1
  %i.bw = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %i.bi, i64 1
  %i.by = fadd <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = fneg <3 x float> %i.j
  %i.ca = shufflevector <3 x float> %i.bz, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cb = fmul <2 x float> %i.by, %i.ca
  %i.cc = shufflevector <3 x float> %i.j, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = extractelement <2 x float> %i.bt, i64 0
  %i.cf = fmul float %i.ce, %i.bn
  %i.cg = extractelement <2 x float> %i.by, i64 1
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bl, float %i.cf)
  %i.ci = fadd <2 x float> %i.bq, %i.cd
  %i.cj = fadd float %i.be, %i.ch
  %.sroa.3.12.vec.insert.i16.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit65

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit65: ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, %bb.c
  %.sroa.0131.0 = phi <2 x float> [ %i.ci, %bb.c ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ] ; 2 uses
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i63, %bb.c ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ]
end_hunk_0
begin_hunk_1_@_ZN23btGeneric6DofConstraint19calculateLinearInfoEv:bb.a

bb.o:                                             ; preds = %bb.n
  %i.dc = fcmp ogt float %i.bs, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br i1 %i.dc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dd, align 8, !tbaa !7
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %i.dd, align 8, !tbaa !7
  %i.de = fsub float %i.bs, %i.cz
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.r:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i32 2, ptr %i.df, align 8, !tbaa !7
  %i.dg = fsub float %i.bs, %i.cx
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.s:                                             ; preds = %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i32 0, ptr %i.dh, align 8, !tbaa !7
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i.2 = phi float [ 0.000000e+00, %bb.p ], [ %i.de, %bb.q ], [ %i.dg, %bb.r ], [ 0.000000e+00, %bb.s ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 832
  store float %.sink.i.2, ptr %i.di, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(84) initializes((0, 84)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !52, !align !53 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load float, ptr %i.f, align 8, !tbaa !11, !noalias !91
  %i.j = load float, ptr %i.g, align 8, !tbaa !11, !noalias !91
  %i.k = load float, ptr %i.h, align 8, !tbaa !11, !noalias !91
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54, !nonnull !52, !align !53 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load float, ptr %i.q, align 8, !tbaa !11, !noalias !92
  %i.u = load float, ptr %i.r, align 8, !tbaa !11, !noalias !92
  %i.v = load float, ptr %i.s, align 8, !tbaa !11, !noalias !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.aa = load float, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 428
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load <2 x float>, ptr %i.c, align 8, !tbaa !11, !noalias !91
  %i.aj = load <2 x float>, ptr %i.d, align 8, !tbaa !11, !noalias !91
  %i.ak = load <2 x float>, ptr %i.e, align 8, !tbaa !11, !noalias !91
  %i.al = load <3 x float>, ptr %3, align 4, !tbaa !11
  %i.am = load <3 x float>, ptr %i.w, align 8, !tbaa !11
  %i.an = fsub <3 x float> %i.al, %i.am           ; 2 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load <2 x float>, ptr %i.n, align 8, !tbaa !11, !noalias !92
  %i.aq = load <2 x float>, ptr %i.o, align 8, !tbaa !11, !noalias !92
  %i.ar = load <2 x float>, ptr %i.p, align 8, !tbaa !11, !noalias !92
  %i.as = load <3 x float>, ptr %4, align 4, !tbaa !11
  %i.at = load <3 x float>, ptr %i.x, align 8, !tbaa !11
  %i.au = fsub <3 x float> %i.as, %i.at           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.av = load float, ptr %1, align 4, !tbaa !11
  %i.aw = load <3 x float>, ptr %1, align 4, !tbaa !11 ; 4 uses
  %i.ax = shufflevector <3 x float> %i.aw, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ay = extractelement <3 x float> %i.aw, i64 1
  %i.az = fneg <3 x float> %i.aw                  ; 2 uses
  %i.ba = fneg float %i.ay
  %i.bb = fmul <3 x float> %i.ao, %i.az
  %i.bc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.an, <3 x float> %i.ax, <3 x float> %i.bb) ; 6 uses
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = fmul <2 x float> %i.aj, %i.bd
  %i.bf = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bf, <2 x float> %i.be)
  %i.bh = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bh, <2 x float> %i.bg) ; 4 uses
  %i.bj = extractelement <3 x float> %i.bc, i64 2
  %i.bk = fmul float %i.j, %i.bj
  %i.bl = extractelement <3 x float> %i.bc, i64 1
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bl, float %i.bk)
  %i.bn = extractelement <3 x float> %i.bc, i64 0
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.bn, float %i.bm) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bi, ptr %i.ae, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !32
  %i.bp = shufflevector <3 x float> %i.aw, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.bq = insertelement <3 x float> %i.bp, float %i.av, i64 1
  %i.br = fmul <3 x float> %i.au, %i.bq
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.bt = insertelement <3 x float> poison, float %i.ba, i64 0
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> %i.az, <3 x i32> <i32 0, i32 5, i32 3>
  %i.bv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.au, <3 x float> %i.bu, <3 x float> %i.bs) ; 6 uses
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bx = fmul <2 x float> %i.aq, %i.bw
  %i.by = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.by, <2 x float> %i.bx)
  %i.ca = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ca, <2 x float> %i.bz) ; 4 uses
  %i.cc = extractelement <3 x float> %i.bv, i64 2
  %i.cd = fmul float %i.u, %i.cc
  %i.ce = extractelement <3 x float> %i.bv, i64 1
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ce, float %i.cd)
  %i.cg = extractelement <3 x float> %i.bv, i64 0
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.cg, float %i.cf) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ch, i64 0
  store <2 x float> %i.cb, ptr %i.af, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !32
  %i.ci = extractelement <2 x float> %i.bi, i64 0
  %i.cj = load <2 x float>, ptr %i.y, align 4, !tbaa !11
  %i.ck = fmul <2 x float> %i.bi, %i.cj           ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = fmul float %i.bo, %i.cm                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  store <2 x float> %i.ck, ptr %i.ag, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !32
  %i.co = extractelement <2 x float> %i.cb, i64 0
  %i.cp = load <2 x float>, ptr %i.ab, align 4, !tbaa !11
  %i.cq = fmul <2 x float> %i.cb, %i.cp           ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 436
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  %i.ct = fmul float %i.ch, %i.cs                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  store <2 x float> %i.cq, ptr %i.ah, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !32
  %foldExtExtBinop = fmul <2 x float> %i.bi, %i.ck
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ck, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ci, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.bo, float %i.cw)
  %i.cy = fadd float %i.aa, %i.cx
  %i.cz = fadd float %i.ad, %i.cy
  %foldExtExtBinop26 = fmul <2 x float> %i.cb, %i.cq
  %i.da = extractelement <2 x float> %foldExtExtBinop26, i64 1
  %i.db = extractelement <2 x float> %i.cq, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.co, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.ch, float %i.dc)
  %i.de = fadd float %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.de, ptr %i.df, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(84) initializes((0, 84)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !52, !align !53 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load float, ptr %i.f, align 8, !tbaa !11, !noalias !97
  %i.j = load float, ptr %i.g, align 8, !tbaa !11, !noalias !97
  %i.k = load float, ptr %i.h, align 8, !tbaa !11, !noalias !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54, !nonnull !52, !align !53 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load float, ptr %i.q, align 8, !tbaa !11, !noalias !98
  %i.u = load float, ptr %i.r, align 8, !tbaa !11, !noalias !98
  %i.v = load float, ptr %i.s, align 8, !tbaa !11, !noalias !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 428
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load <2 x float>, ptr %i.c, align 8, !tbaa !11, !noalias !97
  %i.ad = load <2 x float>, ptr %i.d, align 8, !tbaa !11, !noalias !97
  %i.ae = load <2 x float>, ptr %i.e, align 8, !tbaa !11, !noalias !97
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load <2 x float>, ptr %i.n, align 8, !tbaa !11, !noalias !98
  %i.ag = load <2 x float>, ptr %i.o, align 8, !tbaa !11, !noalias !98
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !11, !noalias !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, i8 0, i64 16, i1 false)
  %5 = load float, ptr %3, align 4, !tbaa !11     ; 2 uses
  %i.ai = load float, ptr %2, align 4, !tbaa !11  ; 2 uses
  %6 = load float, ptr %4, align 4, !tbaa !11     ; 2 uses
  %7 = insertelement <2 x float> poison, float %5, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ad, %8
  %9 = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ak, <2 x float> %i.aj)
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %11, <2 x float> %i.al) ; 4 uses
  %i.am = fmul float %i.j, %5
  %i.an = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ai, float %i.am)
  store <2 x float> %12, ptr %i.y, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 436
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %6, float %i.an) ; 3 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !32
  %i.ar = load <3 x float>, ptr %2, align 4, !tbaa !11
  %i.as = fneg <3 x float> %i.ar                  ; 6 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x float> %i.ag, %i.at
  %i.av = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.av, <2 x float> %i.au)
  %i.ax = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ax, <2 x float> %i.aw) ; 4 uses
  %i.az = extractelement <3 x float> %i.as, i64 1
  %i.ba = fmul float %i.u, %i.az
  %i.bb = extractelement <3 x float> %i.as, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bb, float %i.ba)
  %i.bd = extractelement <3 x float> %i.as, i64 2
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.bd, float %i.bc) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.ay, ptr %i.z, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i20.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !32
  %i.bf = load <2 x float>, ptr %i.w, align 4, !tbaa !11
  %i.bg = fmul <2 x float> %12, %i.bf             ; 3 uses
  %i.bh = load float, ptr %i.ao, align 4, !tbaa !11
  %i.bi = fmul float %i.aq, %i.bh                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  store <2 x float> %i.bg, ptr %i.aa, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i25.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !32
  %i.bj = load <2 x float>, ptr %i.x, align 4, !tbaa !11
  %i.bk = fmul <2 x float> %i.ay, %i.bj           ; 3 uses
  %i.bl = load float, ptr %i.ap, align 4, !tbaa !11
  %i.bm = fmul float %i.be, %i.bl                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  store <2 x float> %i.bk, ptr %i.ab, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i30.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !32
  %i.bn = shufflevector <2 x float> %12, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %12, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bm, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.be, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs) ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.by, ptr %i.bz, align 4, !tbaa !56
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.f = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.b ; 10 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !35
  %i.j = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.d, float noundef %i.g, float noundef %i.i) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.j, ptr %i.k, align 8, !tbaa !57
  %i.l = load float, ptr %i.f, align 4, !tbaa !34 ; 3 uses
  %i.m = load float, ptr %i.h, align 8, !tbaa !35 ; 3 uses
  %i.n = fcmp ogt float %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 0, ptr %i.o, align 4, !tbaa !19
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.c:                                             ; preds = %bb.a
  %i.p = fcmp olt float %i.j, %i.l
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 1, ptr %i.q, align 4, !tbaa !19
  %i.r = fsub float %i.j, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.r, ptr %i.s, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ogt float %i.j, %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.u, align 4, !tbaa !19
  %i.v = fsub float %i.j, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.v, ptr %i.w, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.u, align 4, !tbaa !19
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

_ZN22btRotationalLimitMotor14testLimitValueEf.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.x = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.z = load i8, ptr %i.y, align 8, !range !36
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.not.i = select i1 %i.x, i1 true, i1 %i.aa
  ret i1 %or.cond.not.i
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #19, !tbaa !7 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = fsub float %2, %0
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #19, !tbaa !7 ; 5 uses
  %i.k = fcmp olt float %i.j, f0xC0490FDB
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.l = fadd float %i.j, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fcmp ogt float %i.j, f0x40490FDB
  br i1 %i.m, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.n = fadd float %i.j, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.l, %bb.g ], [ %i.n, %bb.i ], [ %i.j, %bb.h ]
  %i.o = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.p = fcmp olt float %.0.i, %i.o
  %i.q = fadd float %0, f0x40C90FDB
  %i.r = select i1 %i.p, float %0, float %i.q
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.s = fcmp ogt float %0, %2
  br i1 %i.s, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.t = fsub float %0, %2
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #19, !tbaa !7 ; 5 uses
  %i.v = fcmp olt float %i.u, f0xC0490FDB
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = fadd float %i.u, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.x = fcmp ogt float %i.u, f0x40490FDB
  br i1 %i.x, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.y = fadd float %i.u, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.u, %bb.m ]
  %i.z = fsub float %0, %1
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #19, !tbaa !7 ; 5 uses
  %i.ab = fcmp olt float %i.aa, f0xC0490FDB
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ac = fadd float %i.aa, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ad = fcmp ogt float %i.aa, f0x40490FDB
  br i1 %i.ad, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ae = fadd float %i.aa, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ac, %bb.o ], [ %i.ae, %bb.q ], [ %i.aa, %bb.p ]
  %i.af = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ag = fcmp olt float %i.af, %.0.i30
  %i.ah = fadd float %0, f0xC0C90FDB
  %i.ai = select i1 %i.ag, float %i.ah, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.r, %_Z16btNormalizeAnglef.exit29 ], [ %i.ai, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #12 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !22
end_hunk_1
