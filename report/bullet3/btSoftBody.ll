Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody17getRigidTransformEv:bb.a
  %i.dl = fmul <4 x float> %i.dj, %i.dk
  %i.dm = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dn = insertelement <4 x float> %i.dm, float 0.000000e+00, i64 3
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.dp = shufflevector <2 x float> %i.cs, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dp, <4 x float> %i.dl)
  %i.dr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bs, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ds, <4 x float> %i.dq)
  store <4 x float> %i.dg, ptr %0, align 4
  store <4 x float> %i.dt, ptr %i.cr, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load <2 x float>, ptr %i.bt, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dx = shufflevector <2 x float> %i.ct, <2 x float> %i.cv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dy = insertelement <4 x float> %i.dx, float 1.000000e+00, i64 3
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ea = fmul <4 x float> %i.dw, %i.dz
  %i.eb = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cu, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.cw, i64 1
  %i.ef = insertelement <4 x float> %i.ee, float %i.cz, i64 2
  %i.eg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bv, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.eh, <4 x float> %i.ec)
  store <4 x float> %i.ei, ptr %i.du, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ej = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gf, %bb.c ]
  %i.ek = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gd, %bb.c ]
  %i.el = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gb, %bb.c ]
  %i.em = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ga, %bb.c ]
  %i.en = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.gc, %bb.c ]
  %i.eo = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ge, %bb.c ]
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.eq = getelementptr inbounds nuw [256 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.et = load float, ptr %i.es, align 4, !tbaa !253
  %i.eu = load float, ptr %i.ep, align 4, !tbaa !253, !noalias !797
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !253, !noalias !797
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !253, !noalias !797
  %i.ez = load <2 x float>, ptr %i.er, align 4, !tbaa !253
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.et, i64 2
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fd = fsub <4 x float> %i.be, %i.fc           ; 2 uses
  %i.fe = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eu, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.el, i64 2
  %i.fi = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = fsub <4 x float> %i.fj, %i.fg           ; 3 uses
  store <4 x float> %i.fk, ptr %2, align 16, !tbaa !253
  %i.fl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ew, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fn = insertelement <4 x float> %i.fd, float 1.000000e+00, i64 3 ; 2 uses
  %i.fo = fmul <4 x float> %i.fm, %i.fn
  %i.fp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ek, i64 2
  %i.fq = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fs = fsub <4 x float> %i.fr, %i.fo           ; 3 uses
  store <4 x float> %i.fs, ptr %i.ba, align 16, !tbaa !253
  %i.ft = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ey, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fv = fmul <4 x float> %i.fu, %i.fn
  %i.fw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ej, i64 2
  %i.fx = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fz = fsub <4 x float> %i.fy, %i.fv           ; 3 uses
  store <4 x float> %i.fz, ptr %i.bb, align 16, !tbaa !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.ga = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gb = extractelement <4 x float> %i.fk, i64 2
  %i.gc = shufflevector <4 x float> %i.fs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gd = extractelement <4 x float> %i.fs, i64 2
  %i.ge = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = extractelement <4 x float> %i.fz, i64 2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !794
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z26singularValueDecompositionRK11btMatrix3x3RS_R9btVector3S2_f(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(48) %3, float noundef %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.GivensRotation, align 4      ; 8 uses
  %6 = alloca %class.GivensRotation, align 4      ; 8 uses
  %7 = alloca %class.btMatrix2x2, align 8         ; 8 uses
  %8 = alloca %class.btMatrix2x2, align 16        ; 7 uses
  %9 = alloca %class.GivensRotation, align 4      ; 8 uses
  %10 = alloca %class.GivensRotation, align 4     ; 7 uses
  %11 = alloca %class.btMatrix2x2, align 8        ; 7 uses
  %12 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %13 = alloca %class.GivensRotation, align 4     ; 8 uses
  %14 = alloca %class.GivensRotation, align 4     ; 8 uses
  %15 = alloca %class.btMatrix2x2, align 8        ; 8 uses
  %16 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %17 = alloca %class.btMatrix3x3, align 8        ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !260
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !260
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !260
  store float 1.000000e+00, ptr %1, align 4, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4, !tbaa !253
  store float 1.000000e+00, ptr %3, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !253
  call void @_Z15makeUpperBidiagR11btMatrix3x3S0_S0_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.n = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 6 uses
  %i.p = extractelement <2 x float> %i.n, i64 0   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 5 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !253 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.u = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 4 uses
  %i.v = load float, ptr %i.t, align 8, !tbaa !253 ; 6 uses
  %i.w = fmul float %i.p, %i.o
  %i.x = extractelement <2 x float> %i.u, i64 0   ; 4 uses
  %i.y = fmul float %i.x, %i.v
  %foldExtExtBinop = fmul <2 x float> %i.u, %i.u
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.aa)
  %i.ac = call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.ab)
  %i.ad = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, f0x34000000
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = call nnan float @llvm.sqrt.f32(float %i.ad)
  %i.af = fmul nnan float %sqrt, 5.000000e-01     ; 2 uses
  %i.ag = fcmp ogt float %i.af, 1.000000e+00
  %.sroa.speculated = select i1 %i.ag, float %i.af, float 1.000000e+00
  %i.ah = fmul float %4, %.sroa.speculated
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0113 = phi float [ %i.ah, %bb.b ], [ %4, %bb.a ] ; 8 uses
  %i.ai = shufflevector <2 x float> %i.n, <2 x float> %i.u, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.aj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ai) ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %.0113, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fcmp ogt <4 x float> %i.aj, %i.al
  %i.an = freeze <4 x i1> %i.am
  %i.ao = bitcast <4 x i1> %i.an to i4
  %i.ap = icmp eq i4 %i.ao, -1
  %i.aq = extractelement <4 x float> %i.aj, i64 0 ; 2 uses
  br i1 %i.ap, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.av = call noundef float @llvm.fabs.f32(float %i.s)
  %i.aw = fcmp ogt float %i.av, %.0113
  br i1 %i.aw, label %.lr.ph347, label %.critedge

bb.d:                                             ; preds = %bb.g
  %i.ax = fmul float %i.ek, %i.ej
  %i.ay = extractelement <2 x float> %i.en, i64 0 ; 3 uses
  %i.az = fmul float %i.ay, %i.eo
  %i.ba = call noundef float @llvm.fabs.f32(float %i.el)
  %i.bb = fcmp ogt float %i.ba, %.0113
  %i.bc = icmp samesign ult i32 %.0112305346, 99
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond, label %.lr.ph347, label %.critedge.loopexit, !llvm.loop !798

.lr.ph347:                                        ; preds = %.lr.ph, %bb.d
  %.0112305346 = phi i32 [ %i.em, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.bd = phi float [ %i.ek, %bb.d ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.be = phi float [ %i.ej, %bb.d ], [ %i.o, %.lr.ph ] ; 3 uses
  %i.bf = phi float [ %i.ay, %bb.d ], [ %i.x, %.lr.ph ] ; 3 uses
  %.0104309345 = phi float [ %i.el, %bb.d ], [ %i.s, %.lr.ph ]
  %.0103310344 = phi float [ %i.eo, %bb.d ], [ %i.v, %.lr.ph ]
  %.0102311343 = phi float [ %i.ax, %bb.d ], [ %i.w, %.lr.ph ] ; 3 uses
  %.0312342 = phi float [ %i.az, %bb.d ], [ %i.y, %.lr.ph ] ; 2 uses
  %18 = insertelement <2 x float> poison, float %.0103310344, i64 0
  %19 = insertelement <2 x float> %18, float %i.be, i64 1 ; 2 uses
  %20 = fmul <2 x float> %19, %19
  %21 = insertelement <2 x float> poison, float %.0104309345, i64 0
  %22 = insertelement <2 x float> %21, float %i.bf, i64 1 ; 2 uses
  %23 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %22, <2 x float> %20) ; 3 uses
  %24 = extractelement <2 x float> %23, i64 0     ; 2 uses
  %shift = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop363 = fsub <2 x float> %shift, %23
  %25 = extractelement <2 x float> %foldExtExtBinop363, i64 0
  %i.bg = fmul float %25, 5.000000e-01            ; 4 uses
  %i.bh = fmul float %.0312342, %.0312342         ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bh) ; 2 uses
  %i.bj = fcmp ogt float %i.bi, f0x34000000
  br i1 %i.bj, label %_ZL8copySignff.exit.i, label %_Z14wilkinsonShiftfff.exit

_ZL8copySignff.exit.i:                            ; preds = %.lr.ph347
  %i.bk = call noundef float @llvm.fabs.f32(float %i.bg)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bi)
  %i.bl = fadd float %i.bk, %sqrt.i
  %i.bm = fdiv float %i.bh, %i.bl                 ; 3 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  %i.bo = fcmp olt float %i.bg, 0.000000e+00
  %or.cond3.i.i = and i1 %i.bo, %i.bn
  %i.bp = fneg float %i.bm
  %.0.i.i = select i1 %or.cond3.i.i, float %i.bp, float %i.bm
  %i.bq = fsub float %24, %.0.i.i
  br label %_Z14wilkinsonShiftfff.exit

_Z14wilkinsonShiftfff.exit:                       ; preds = %_ZL8copySignff.exit.i, %.lr.ph347
  %.0.i = phi float [ %i.bq, %_ZL8copySignff.exit.i ], [ %24, %.lr.ph347 ]
  %i.br = fneg float %.0.i
  %i.bs = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.br) ; 3 uses
  %i.bt = fmul float %.0102311343, %.0102311343
  %i.bu = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bt) ; 2 uses
  %i.bv = fcmp ogt float %i.bu, f0x34000000
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_Z14wilkinsonShiftfff.exit
  %sqrt.i120 = call float @llvm.sqrt.f32(float %i.bu) ; 2 uses
  %i.bw = fcmp ogt float %sqrt.i120, f0x34000000
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = fdiv nnan float 1.000000e+00, %sqrt.i120
  %i.by = fneg float %.0102311343
  %i.bz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.by, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.ca, %i.cc
  br label %bb.g

bb.g:                                             ; preds = %_Z14wilkinsonShiftfff.exit, %bb.e, %bb.f
  %i.ce = phi <2 x float> [ %i.cd, %bb.f ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00>, %_Z14wilkinsonShiftfff.exit ] ; 12 uses
  %i.cf = fneg float %i.be
  %i.cg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.cf, i64 1
  %i.ci = fmul <2 x float> %i.ce, %i.ch
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cl, <2 x float> %i.cj)
  store <2 x float> %i.cm, ptr %17, align 8, !tbaa !253
  %i.cn = load <4 x float>, ptr %i.b, align 8
  %i.co = fneg float %i.bf
  %i.cp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.co, i64 1
  %i.cr = fmul <2 x float> %i.ce, %i.cq
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ct, <2 x float> %i.cs)
  store <2 x float> %i.cu, ptr %i.b, align 8, !tbaa !253
  %i.cv = load <4 x float>, ptr %i.d, align 8
  %i.cw = load float, ptr %i.ar, align 4, !tbaa !253 ; 2 uses
  %i.cx = fneg float %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cx, i64 1
  %i.da = fmul <2 x float> %i.ce, %i.cz
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dc, <2 x float> %i.db)
  store <2 x float> %i.dd, ptr %i.d, align 8, !tbaa !253
  %i.de = load float, ptr %3, align 4, !tbaa !253
  %i.df = load float, ptr %i.i, align 4, !tbaa !253 ; 2 uses
  %i.dg = fneg float %i.df
  %i.dh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.dg, i64 1
  %i.dj = fmul <2 x float> %i.ce, %i.di
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dm, <2 x float> %i.dk)
  store <2 x float> %i.dn, ptr %3, align 4, !tbaa !253
  %i.do = load float, ptr %i.as, align 4, !tbaa !253
  %i.dp = load float, ptr %i.j, align 4, !tbaa !253 ; 2 uses
  %i.dq = fneg float %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dq, i64 1
  %i.dt = fmul <2 x float> %i.ce, %i.ds
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dw, <2 x float> %i.du)
  store <2 x float> %i.dx, ptr %i.as, align 4, !tbaa !253
  %i.dy = load float, ptr %i.at, align 4, !tbaa !253
  %i.dz = load float, ptr %i.au, align 4, !tbaa !253 ; 2 uses
  %i.ea = fneg float %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  %i.ed = fmul <2 x float> %i.ce, %i.ec
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.eg, <2 x float> %i.ee)
  store <2 x float> %i.eh, ptr %i.at, align 4, !tbaa !253
  call void @_Z9zeroChaseR11btMatrix3x3S0_S0_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.ei = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1 ; 4 uses
  %i.ek = extractelement <2 x float> %i.ei, i64 0 ; 4 uses
  %i.el = load float, ptr %i.r, align 8, !tbaa !253 ; 4 uses
  %i.em = add nuw nsw i32 %.0112305346, 1         ; 3 uses
  %i.en = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 3 uses
  %i.eo = load float, ptr %i.t, align 8, !tbaa !253 ; 4 uses
  %i.ep = shufflevector <2 x float> %i.ei, <2 x float> %i.en, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.eq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ep) ; 3 uses
  %i.er = fcmp ogt <4 x float> %i.eq, %i.al
  %i.es = freeze <4 x i1> %i.er
  %i.et = bitcast <4 x i1> %i.es to i4
  %i.eu = icmp eq i4 %i.et, -1
  br i1 %i.eu, label %bb.d, label %..critedge.loopexit_crit_edge354, !llvm.loop !798

..critedge.loopexit_crit_edge354:                 ; preds = %bb.g
  %i.ev = extractelement <4 x float> %i.eq, i64 0
  %i.ew = extractelement <2 x float> %i.en, i64 0
  br label %.critedge, !llvm.loop !798

.critedge.loopexit:                               ; preds = %bb.d
  %i.ex = extractelement <4 x float> %i.eq, i64 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %..critedge.loopexit_crit_edge354, %bb.c
  %i.ey = phi float [ %i.v, %bb.c ], [ %i.eo, %..critedge.loopexit_crit_edge354 ], [ %i.v, %.lr.ph ], [ %i.eo, %.critedge.loopexit ] ; 12 uses
  %.0112.lcssa = phi i32 [ 0, %bb.c ], [ %i.em, %..critedge.loopexit_crit_edge354 ], [ 0, %.lr.ph ], [ %i.em, %.critedge.loopexit ]
  %i.ez = phi float [ %i.p, %bb.c ], [ %i.ek, %..critedge.loopexit_crit_edge354 ], [ %i.p, %.lr.ph ], [ %i.ek, %.critedge.loopexit ] ; 7 uses
  %i.fa = phi float [ %i.o, %bb.c ], [ %i.ej, %..critedge.loopexit_crit_edge354 ], [ %i.o, %.lr.ph ], [ %i.ej, %.critedge.loopexit ] ; 8 uses
  %i.fb = phi float [ %i.x, %bb.c ], [ %i.ew, %..critedge.loopexit_crit_edge354 ], [ %i.x, %.lr.ph ], [ %i.ay, %.critedge.loopexit ] ; 12 uses
  %i.fc = phi float [ %i.s, %bb.c ], [ %i.el, %..critedge.loopexit_crit_edge354 ], [ %i.s, %.lr.ph ], [ %i.el, %.critedge.loopexit ] ; 14 uses
  %.lcssa = phi float [ %i.aq, %bb.c ], [ %i.ev, %..critedge.loopexit_crit_edge354 ], [ %i.aq, %.lr.ph ], [ %i.ex, %.critedge.loopexit ]
  %i.fd = phi <2 x float> [ %i.n, %bb.c ], [ %i.ei, %..critedge.loopexit_crit_edge354 ], [ %i.n, %.lr.ph ], [ %i.ei, %.critedge.loopexit ] ; 2 uses
  %i.fe = fcmp ugt float %.lcssa, %.0113
  br i1 %i.fe, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store i32 0, ptr %13, align 4, !tbaa !397
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 1, ptr %i.ff, align 4, !tbaa !398
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fg, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  store i32 0, ptr %14, align 4, !tbaa !397
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 1, ptr %i.fi, align 4, !tbaa !398
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fj, align 4, !tbaa !253
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.fc, ptr %i.fl, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i64 0, ptr %i.fm, align 4
  store float %i.ez, ptr %15, align 8, !tbaa !400
  %i.fn = load float, ptr %i.b, align 8, !tbaa !253
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store float %i.fn, ptr %i.fo, align 8, !tbaa !799
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.fa, ptr %i.fp, align 4, !tbaa !800
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 12
  store float %i.fb, ptr %i.fq, align 4, !tbaa !401
  %i.fr = load float, ptr %2, align 4, !tbaa !253
  store float %i.fr, ptr %16, align 16, !tbaa !400
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !253
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float %i.ft, ptr %i.fu, align 4, !tbaa !401
  call void @_Z26singularValueDecompositionRK11btMatrix2x2R14GivensRotationS1_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef f0x37000000)
  %i.fv = load <2 x float>, ptr %15, align 8, !tbaa !253
  store <2 x float> %i.fv, ptr %17, align 8, !tbaa !253
  %i.fw = load <2 x float>, ptr %i.fo, align 8, !tbaa !253
  store <2 x float> %i.fw, ptr %i.b, align 8, !tbaa !253
  %i.fx = load <4 x float>, ptr %16, align 16, !tbaa !253
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fy, ptr %2, align 4, !tbaa !253
  %i.fz = load i32, ptr %13, align 4, !tbaa !397
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = load i32, ptr %i.ff, align 4, !tbaa !398
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ga ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !253 ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gc ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !253 ; 2 uses
  %i.gh = load float, ptr %i.fg, align 4, !tbaa !402 ; 6 uses
  %i.gi = load float, ptr %i.fh, align 4, !tbaa !403 ; 6 uses
  %i.gj = fneg float %i.gg
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = call float @llvm.fmuladd.f32(float %i.gh, float %i.ge, float %i.gk)
  store float %i.gl, ptr %i.gd, align 4, !tbaa !253
  %i.gm = fmul float %i.gg, %i.gh
  %i.gn = call float @llvm.fmuladd.f32(float %i.gi, float %i.ge, float %i.gm)
  store float %i.gn, ptr %i.gf, align 4, !tbaa !253
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.ga ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !253 ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gc ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !253 ; 2 uses
  %i.gt = fneg float %i.gs
  %i.gu = fmul float %i.gi, %i.gt
  %i.gv = call float @llvm.fmuladd.f32(float %i.gh, float %i.gq, float %i.gu)
  store float %i.gv, ptr %i.gp, align 4, !tbaa !253
  %i.gw = fmul float %i.gh, %i.gs
  %i.gx = call float @llvm.fmuladd.f32(float %i.gi, float %i.gq, float %i.gw)
  store float %i.gx, ptr %i.gr, align 4, !tbaa !253
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ga ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !253 ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gc ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !253 ; 2 uses
  %i.hd = fneg float %i.hc
end_hunk_0
begin_hunk_1_@_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE:bb.a
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %i.be = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !259
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.bf = load float, ptr %.sroa.0.0.copyload, align 4, !tbaa !253
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !253
  %i.bi = fcmp ugt float %i.bf, %i.bh
  br i1 %i.bi, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !253
  %i.bl = load float, ptr %.sroa.23.0.copyload, align 4, !tbaa !253
  %i.bm = fcmp ult float %i.bk, %i.bl
  br i1 %i.bm, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !253
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !253
  %i.br = fcmp ugt float %i.bo, %i.bq
  br i1 %i.br, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !253
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !253
  %i.bw = fcmp ult float %i.bt, %i.bv
  br i1 %i.bw, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !253
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 24
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !253
  %i.cb = fcmp ugt float %i.by, %i.ca
  br i1 %i.cb, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit

_Z9IntersectRK12btDbvtAabbMmS1_.exit:             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !253
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !253
  %i.cg = fcmp ult float %i.cd, %i.cf
  br i1 %i.cg, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !259
  %.not107 = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 48 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !259
  %.not108 = icmp eq ptr %i.ck, null              ; 2 uses
  br i1 %.not107, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !259 ; 2 uses
  br i1 %.not108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !259
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.o ; 2 uses
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !443
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !443
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !259
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !259
  %i.cs = sext i32 %.056 to i64
  %i.ct = getelementptr [16 x i8], ptr %i.ap, i64 %i.cs ; 6 uses
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !443
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cr, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !443
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !259
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.cw = getelementptr i8, ptr %i.ct, i64 16
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !443
  %.sroa.490.0..sroa_idx = getelementptr i8, ptr %i.ct, i64 24
  store ptr %i.cv, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !443
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !259
  %i.cy = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.cz = add nsw i32 %.056, 3
  %i.da = getelementptr i8, ptr %i.ct, i64 32
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !443
  %.sroa.488.0..sroa_idx = getelementptr i8, ptr %i.ct, i64 40
  store ptr %i.cy, ptr %.sroa.488.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.o ; 2 uses
  store ptr %i.cm, ptr %i.db, align 8, !tbaa !443
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !443
  %i.dc = load ptr, ptr %i.ch, align 8, !tbaa !259
  %i.dd = add nsw i32 %.056, 1
  %i.de = sext i32 %.056 to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.de ; 2 uses
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !443
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.v:                                             ; preds = %bb.r
  br i1 %.not108, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !259
  %i.di = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.o ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.di, align 8, !tbaa !443
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dh, ptr %.sroa.482.0..sroa_idx, align 8, !tbaa !443
  %i.dj = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.dk = add nsw i32 %.056, 1
  %i.dl = sext i32 %.056 to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.dl ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.dm, align 8, !tbaa !443
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %3, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.23.0.copyload)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.h

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %_Z9IntersectRK12btDbvtAabbMmS1_.exit, %bb.w, %bb.x, %bb.t, %bb.u, %bb.k, %bb.l
  %i.dq = phi ptr [ %i.am, %bb.l ], [ %i.an, %bb.k ], [ %i.an, %bb.t ], [ %i.an, %bb.u ], [ %i.an, %bb.w ], [ %i.an, %bb.x ], [ %i.an, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.an, %bb.q ], [ %i.an, %bb.p ], [ %i.an, %bb.o ], [ %i.an, %bb.n ], [ %i.an, %bb.m ]
  %i.dr = phi ptr [ %i.am, %bb.l ], [ %i.ao, %bb.k ], [ %i.ao, %bb.t ], [ %i.ao, %bb.u ], [ %i.an, %bb.w ], [ %i.ao, %bb.x ], [ %i.ao, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.ao, %bb.q ], [ %i.ao, %bb.p ], [ %i.ao, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ]
  %i.ds = phi ptr [ %i.am, %bb.l ], [ %i.ap, %bb.k ], [ %i.ap, %bb.t ], [ %i.ao, %bb.u ], [ %i.an, %bb.w ], [ %i.ap, %bb.x ], [ %i.ap, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.ap, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ]
  %i.dt = phi ptr [ %i.am, %bb.l ], [ %i.as, %bb.k ], [ %i.ap, %bb.t ], [ %i.ao, %bb.u ], [ %i.an, %bb.w ], [ %i.as, %bb.x ], [ %i.as, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.as, %bb.q ], [ %i.as, %bb.p ], [ %i.as, %bb.o ], [ %i.as, %bb.n ], [ %i.as, %bb.m ]
  %.157 = phi i32 [ %i.bc, %bb.l ], [ %i.n, %bb.k ], [ %i.cz, %bb.t ], [ %i.dd, %bb.u ], [ %i.dk, %bb.w ], [ %i.n, %bb.x ], [ %i.n, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.n, %bb.q ], [ %i.n, %bb.p ], [ %i.n, %bb.o ], [ %i.n, %bb.n ], [ %i.n, %bb.m ] ; 2 uses
  %.not = icmp eq i32 %.157, 0
  br i1 %.not, label %bb.y, label %bb.c, !llvm.loop !1296

bb.y:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  %.not.i.i.i79.not = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i79.not, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.am)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #40
  unreachable

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.ac

bb.ab:                                            ; preds = %bb.h, %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ]
  call void @_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %.pn.pn

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #32 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !260
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !315  ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr noundef nonnull %i.i)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !315  ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.635.0.copyload = load float, ptr %i.k, align 4 ; 3 uses
  %i.l = load <2 x float>, ptr %1, align 8        ; 2 uses
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.937.0.copyload = load float, ptr %.sroa.937.0..sroa_idx, align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load float, ptr %i.m, align 8, !tbaa !533 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !315 ; 2 uses
  %.not19 = icmp eq ptr %.pre, null
  %i.o = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.635.0.copyload, i64 0
  br i1 %.not19, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.04057 = phi float [ %i.n, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.937.055 = phi float [ %.sroa.937.0.copyload, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.635.053 = phi float [ %.sroa.635.0.copyload, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %.pre, %bb.e ], [ %i.b, %bb.d ]
  %i.q = phi <2 x float> [ %i.l, %bb.e ], [ zeroinitializer, %bb.d ]
  tail call fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr noundef nonnull %i.p)
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load float, ptr %i.u, align 8, !tbaa !533
  %i.w = insertelement <2 x float> %i.t, float %.sroa.635.053, i64 0
  %2 = extractelement <2 x float> %i.t, i64 0
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.04058 = phi float [ %i.n, %bb.e ], [ %.04057, %.thread ] ; 2 uses
  %.sroa.937.056 = phi float [ %.sroa.937.0.copyload, %bb.e ], [ %.sroa.937.055, %.thread ] ; 3 uses
  %.sroa.635.054 = phi float [ %.sroa.635.0.copyload, %bb.e ], [ %.sroa.635.053, %.thread ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.9.0.copyload, %.thread ] ; 3 uses
  %.sroa.026.0 = phi float [ 0.000000e+00, %bb.e ], [ %2, %.thread ] ; 3 uses
  %.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.v, %.thread ] ; 2 uses
  %i.x = phi <2 x float> [ %i.o, %bb.e ], [ %i.w, %.thread ] ; 4 uses
  %i.y = phi <2 x float> [ %i.l, %bb.e ], [ %i.q, %.thread ] ; 3 uses
  %3 = insertelement <2 x float> %i.x, float %.sroa.026.0, i64 0
  %i.z = fadd <2 x float> %i.y, %3                ; 4 uses
  %i.aa = fadd float %.sroa.937.056, %.sroa.9.0   ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.z, %i.z
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ab)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ad) ; 2 uses
  %i.af = fcmp ult float %i.ae, f0x28800000
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ae)
  %i.ag = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.z, %i.ai
  %i.ak = fmul float %i.aa, %i.ag
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.8.12.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float 0.000000e+00, i64 1
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.g, %bb.h
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.12.vec.insert, %bb.h ], [ %.sroa.3.12.vec.insert.i, %bb.g ]
  %.sink.i = phi float [ 0.000000e+00, %bb.h ], [ %i.ak, %bb.g ]
  %i.al = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.h ], [ %i.aj, %bb.g ]
  %.sroa.8.8.vec.insert = insertelement <2 x float> %.sroa.8.0, float %.sink.i, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.al, ptr %i.am, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !259
  %i.an = fcmp ogt float %.04058, %.0
  %.sroa.speculated = select i1 %i.an, float %.04058, float %.0
  %i.ao = fpext float %.sroa.speculated to double
  %4 = fmul <2 x float> %i.x, %i.x
  %5 = insertelement <2 x float> %i.y, float %.sroa.026.0, i64 1 ; 2 uses
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %5, <2 x float> %4)
  %7 = insertelement <2 x float> poison, float %.sroa.937.056, i64 0
  %8 = insertelement <2 x float> %7, float %.sroa.9.0, i64 1 ; 2 uses
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %8, <2 x float> %6) ; 2 uses
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fmul <2 x float> %i.ap, %shift
  %i.aq = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.ar = tail call noundef float @sqrtf(float noundef %i.aq) #39
  %9 = extractelement <2 x float> %i.x, i64 1
  %10 = fmul float %.sroa.635.054, %9
  %i.as = extractelement <2 x float> %i.y, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %.sroa.026.0, float %10)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %.sroa.937.056, float %.sroa.9.0, float %i.at)
  %i.av = fdiv float %i.au, %i.ar                 ; 2 uses
  %i.aw = fcmp olt float %i.av, -1.000000e+00
  %spec.store.select.i.i.i = select i1 %i.aw, float -1.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp ogt float %spec.store.select.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i = select i1 %i.ax, float 1.000000e+00, float %spec.store.select.i.i.i
  %i.ay = tail call noundef float @acosf(float noundef %spec.store.select1.i.i.i) #39
  %i.az = fpext float %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double 5.000000e-01, double %i.ao)
  %i.bb = fptrunc double %i.ba to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %_ZN9btVector313safeNormalizeEv.exit
  %.sink = phi float [ %i.bb, %_ZN9btVector313safeNormalizeEv.exit ], [ 0.000000e+00, %bb.c ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sink, ptr %i.bc, align 8, !tbaa !533
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt12selfCollideTEPK11btDbvntNodeRNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.112, align 8 ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !1303
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !537
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !1304
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !1305
  %i.e = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2048, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.g   ; 8 uses

.lr.ph.i:                                         ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1303
  store ptr %i.e, ptr %i.b, align 8, !tbaa !537
  store i32 128, ptr %i.d, align 8, !tbaa !1305
  store i32 128, ptr %i.c, align 4, !tbaa !1304
  store ptr %1, ptr %i.e, align 8, !tbaa !315
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.4101.0..sroa_idx, align 8, !tbaa !315
  br label %bb.c

bb.c:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %.lr.ph.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ak, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.g = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dr, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ds, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dt, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.j = phi i32 [ 128, %.lr.ph.i ], [ %i.ao, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 3 uses
  %.pre.i66 = phi i32 [ 128, %.lr.ph.i ], [ %i.ap, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 5 uses
  %i.k = phi ptr [ %i.e, %.lr.ph.i ], [ %i.du, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 6 uses
  %.055 = phi i32 [ 1, %.lr.ph.i ], [ %.156, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 9 uses
  %.053 = phi i32 [ 124, %.lr.ph.i ], [ %.154, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.l = add nsw i32 %.055, -1                    ; 11 uses
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !315 ; 15 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !315 ; 13 uses
  %i.o = icmp sgt i32 %i.l, %.053
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.p = shl nsw i32 %.pre.i66, 1                 ; 8 uses
  %i.q = icmp sgt i32 %i.p, %.pre.i66
  %i.r = icmp slt i32 %i.j, %i.p
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.t, i32 noundef 16)
          to label %.noexc75 unwind label %bb.i   ; 8 uses

.noexc75:                                         ; preds = %bb.e
  %i.v = icmp sgt i32 %.pre.i66, 0
  br i1 %i.v, label %.lr.ph.i.i.i70.new, label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67

.lr.ph.i.i.i70.new:                               ; preds = %.noexc75
  %wide.trip.count.i.i.i71 = zext nneg i32 %.pre.i66 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i70.new
  %indvars.iv.i.i.i72 = phi i64 [ 0, %.lr.ph.i.i.i70.new ], [ %indvars.iv.next.i.i.i73.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i70.new ], [ %niter.next.1, %bb.f ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i.i.i72
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !1306
  %indvars.iv.next.i.i.i73 = or disjoint i64 %indvars.iv.i.i.i72, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i73
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !1306
  %indvars.iv.next.i.i.i73.1 = add nuw nsw i64 %indvars.iv.i.i.i72, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count.i.i.i71
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67, label %bb.f, !llvm.loop !1301

_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67: ; preds = %bb.f, %.noexc75
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 unwind label %bb.i

_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69: ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67
  store i8 1, ptr %i.a, align 8, !tbaa !1303
  store ptr %i.u, ptr %i.b, align 8, !tbaa !537
  store i32 %i.p, ptr %i.d, align 8, !tbaa !1305
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69, %bb.d
  %i.aa = phi ptr [ %i.f, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ab = phi ptr [ %i.g, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ac = phi ptr [ %i.h, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ad = phi ptr [ %i.i, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ae = phi i32 [ %i.j, %bb.d ], [ %i.p, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.af = phi ptr [ %i.k, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  store i32 %i.p, ptr %i.c, align 4, !tbaa !1304
  %i.ag = add nsw i32 %i.p, -4
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.h:                                             ; preds = %bb.y
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %.loopexit, %bb.c
  %i.ak = phi ptr [ %i.aa, %.loopexit ], [ %i.f, %bb.c ] ; 9 uses
  %i.al = phi ptr [ %i.ab, %.loopexit ], [ %i.g, %bb.c ] ; 17 uses
  %i.am = phi ptr [ %i.ac, %.loopexit ], [ %i.h, %bb.c ] ; 15 uses
  %i.an = phi ptr [ %i.ad, %.loopexit ], [ %i.i, %bb.c ] ; 13 uses
  %i.ao = phi i32 [ %i.ae, %.loopexit ], [ %i.j, %bb.c ]
  %i.ap = phi i32 [ %i.p, %.loopexit ], [ %.pre.i66, %bb.c ]
  %i.aq = phi ptr [ %i.af, %.loopexit ], [ %i.k, %bb.c ] ; 9 uses
  %.154 = phi i32 [ %i.ag, %.loopexit ], [ %.053, %bb.c ]
  %i.ar = icmp eq ptr %.sroa.0.0.copyload, %.sroa.24.0.copyload
  br i1 %i.ar, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !315
  %.not108 = icmp eq ptr %i.at, null
  br i1 %.not108, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.av = load float, ptr %i.au, align 8, !tbaa !533
  %i.aw = fcmp ogt float %i.av, f0x40490FDB
  br i1 %i.aw, label %bb.m, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !315 ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.m ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !315
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !315
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !315 ; 2 uses
  %i.bb = sext i32 %.055 to i64
  %i.bc = getelementptr [16 x i8], ptr %i.ak, i64 %i.bb ; 3 uses
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !315
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %.sroa.497.0..sroa_idx, align 8, !tbaa !315
  %i.bd = add nsw i32 %.055, 2
  %i.be = getelementptr i8, ptr %i.bc, i64 16
  %i.bf = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !315
  store <2 x ptr> %i.bf, ptr %i.be, align 8, !tbaa !315
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.n:                                             ; preds = %bb.j
  %i.bg = load float, ptr %.sroa.0.0.copyload, align 4, !tbaa !253
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 16
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !253
  %i.bj = fcmp ugt float %i.bg, %i.bi
  br i1 %i.bj, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !253
  %i.bm = load float, ptr %.sroa.24.0.copyload, align 4, !tbaa !253
  %i.bn = fcmp ult float %i.bl, %i.bm
  br i1 %i.bn, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.p

end_hunk_1
