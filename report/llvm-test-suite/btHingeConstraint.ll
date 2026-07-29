inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b:.preheader.preheader
  %.sroa.777.0 = phi float [ %i.q, %bb.a ], [ %i.af, %bb.b ] ; 5 uses
  %.sroa.11.0 = phi float [ %i.r, %bb.a ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %.sink48.i = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ]
  %.sink47.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.b ]
  %.sink.i = phi float [ %i.w, %bb.a ], [ %i.aj, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %.sroa.075.0, ptr %i.b, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sink48.i, ptr %i.am, align 4, !tbaa !27
  %i.an = load float, ptr %3, align 4, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %i.ap, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %.sroa.777.0, ptr %i.aq, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sink47.i, ptr %i.ar, align 4, !tbaa !27
  %i.as = load float, ptr %i.al, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.au = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  store <2 x float> %i.au, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632
  store float %.sroa.11.0, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sink.i, ptr %i.aw, align 4, !tbaa !27
  %i.ax = load float, ptr %i.g, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.az = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.az, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load float, ptr %3, align 4, !tbaa !27  ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load <2 x float>, ptr %i.al, align 4, !tbaa !27 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bg = load <2 x float>, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.be, align 8, !tbaa !27 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bc, align 4, !tbaa !27 ; 3 uses
  %i.bn = load <2 x float>, ptr %i.bf, align 4, !tbaa !27 ; 3 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bo, %i.bp
  %i.br = load float, ptr %i.bj, align 4, !tbaa !27 ; 2 uses
  %i.bs = load float, ptr %i.bi, align 8, !tbaa !27 ; 2 uses
  %i.bt = extractelement <2 x float> %i.bd, i64 0 ; 6 uses
  %i.bu = fmul float %i.bt, %i.br
  %i.bv = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bw = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bx, <2 x float> %i.bq)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bb, float %i.bu)
  %i.ca = shufflevector <2 x float> %i.bn, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.cb = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.by) ; 6 uses
  %i.cd = extractelement <2 x float> %i.bd, i64 1 ; 7 uses
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.cd, float %i.bz) ; 6 uses
  %i.cf = extractelement <2 x float> %i.cc, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.cc
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ch = extractelement <2 x float> %i.cc, i64 1 ; 4 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ch, float %i.cg)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.ce, float %i.ci) ; 2 uses
  %i.ck = fcmp olt float %i.cj, f0xBF7FFFFE
  br i1 %i.ck, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cl = tail call noundef float @llvm.fabs.f32(float %i.cd)
  %i.cm = fcmp ogt float %i.cl, f0x3F3504F3
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cn = fmul nnan float %i.cd, %i.cd
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.cn)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cq = fneg float %i.cd
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = fmul float %i.bt, %i.cp
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.f:                                             ; preds = %bb.d
  %foldExtExtBinop81 = fmul <2 x float> %i.bd, %i.bd
  %i.ct = extractelement <2 x float> %foldExtExtBinop81, i64 0
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ct)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.cw = fneg float %i.bt
  %i.cx = fmul float %i.cv, %i.cw
  %i.cy = fmul float %i.bb, %i.cv
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.f, %bb.e
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.cx, %bb.f ]
  %.sroa.517.0.i = phi float [ %i.cr, %bb.e ], [ %i.cy, %bb.f ]
  %.sroa.8.0.i = phi float [ %i.cs, %bb.e ], [ 0.000000e+00, %bb.f ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.cz = fneg float %i.ch
  %i.da = fmul float %i.bt, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.cf, float %i.da)
  %i.dc = fadd float %i.cj, 1.000000e+00
  %i.dd = fmul float %i.dc, 2.000000e+00
  %i.de = tail call noundef float @sqrtf(float noundef %i.dd) #17, !tbaa !4 ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.de          ; 2 uses
  %i.dg = fneg float %i.ce
  %i.dh = fneg float %i.cf
  %i.di = fmul float %i.bb, %i.dg
  %i.dj = fmul float %i.cd, %i.dh
  %i.dk = insertelement <2 x float> %i.cc, float %i.ce, i64 0
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.di, i64 1
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.dk, <2 x float> %i.dm)
  %i.do = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  %i.dr = fmul float %i.db, %i.df
  %i.ds = fmul float %i.de, 5.000000e-01
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %i.ds, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dq, %bb.g ] ; 2 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %.sroa.526.12.vec.insert31.i, %bb.g ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.660.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 6 uses
  %.sroa.059.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 4 uses
  %i.du = fmul float %.sroa.11.0, %.sroa.059.4.vec.extract
  %i.dv = tail call float @llvm.fmuladd.f32(float %.sroa.660.12.vec.extract, float %.sroa.075.0, float %i.du)
  %.sroa.660.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 2 uses
  %i.dw = fneg float %.sroa.660.8.vec.extract     ; 4 uses
  %i.dx = fmul float %.sroa.075.0, %.sroa.660.8.vec.extract
  %i.dy = tail call float @llvm.fmuladd.f32(float %.sroa.660.12.vec.extract, float %.sroa.777.0, float %i.dx)
  %.sroa.059.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %i.dz = fneg float %.sroa.059.0.vec.extract     ; 4 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dz, float %.sroa.11.0, float %i.dy) ; 3 uses
  %i.eb = fmul float %.sroa.777.0, %.sroa.059.0.vec.extract
  %i.ec = tail call float @llvm.fmuladd.f32(float %.sroa.660.12.vec.extract, float %.sroa.11.0, float %i.eb)
  %i.ed = fneg float %.sroa.059.4.vec.extract     ; 3 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.075.0, float %i.ec) ; 3 uses
  %i.ef = fneg float %.sroa.777.0
  %i.eg = fmul float %.sroa.059.4.vec.extract, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dz, float %.sroa.075.0, float %i.eg)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dw, float %.sroa.11.0, float %i.eh) ; 3 uses
  %i.ej = fmul float %.sroa.660.12.vec.extract, %i.ea
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ed, float %i.ej)
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.dz, float %i.ek)
  %i.em = fmul float %.sroa.660.12.vec.extract, %i.ee
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dw, float %i.em)
  %i.eo = load float, ptr %2, align 4, !tbaa !27  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !27 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !27 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eu = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.ev = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.eu, %i.ew
  %i.ey = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.ez = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.ex)
  %i.fc = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.fd = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fb)
  %i.fg = load <2 x float>, ptr %i.et, align 8, !tbaa !27
  %i.fh = fadd <2 x float> %i.fg, %i.ff
  %i.fi = fmul float %i.br, %i.eq
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.eo, float %i.fi)
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.es, float %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !27
  %i.fn = fadd float %i.fk, %i.fm
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %i.fh, ptr %i.fo, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.ch, ptr %i.fq, align 8, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 676
  store float 0.000000e+00, ptr %i.fr, align 4, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.dw, float %.sroa.777.0, float %i.dv) ; 3 uses
  %i.fu = fmul float %.sroa.660.12.vec.extract, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dz, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.dw, float %i.fv)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ed, float %i.en)
  %5 = insertelement <2 x float> poison, float %i.ft, i64 0
  %6 = insertelement <2 x float> %.sroa.526.0.i, float %i.ce, i64 1
  %7 = insertelement <2 x float> poison, float %i.el, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %i.ee, float %.sroa.059.4.vec.extract, float %i.fw) ; 3 uses
  %9 = tail call float @llvm.fmuladd.f32(float %i.ea, float %.sroa.059.0.vec.extract, float %i.fx) ; 3 uses
  %10 = fneg float %9
  %11 = fmul float %i.ch, %10
  %i.fy = insertelement <2 x float> %5, float %8, i64 1
  %i.fz = insertelement <2 x float> %7, float %11, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %6, <2 x float> %i.fz) ; 3 uses
  %i.gb = insertelement <2 x float> %i.ga, float %8, i64 1
  %i.gc = fneg <2 x float> %i.gb
  %i.gd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ce, i64 0
  %i.gf = fmul <2 x float> %i.ge, %i.gc
  %i.gg = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gh = insertelement <2 x float> %i.gg, float %9, i64 0
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.gh, <2 x float> %i.gf) ; 2 uses
  store float %8, ptr %i.dt, align 8, !tbaa !27
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  store float %i.gj, ptr %i.fp, align 4, !tbaa !27
  store <2 x float> %i.ga, ptr %i.fs, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.cf, ptr %i.gk, align 8, !tbaa !27
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gl, align 4, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %9, ptr %i.gm, align 8, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.go = extractelement <2 x float> %i.gi, i64 1
  store float %i.go, ptr %i.gn, align 4, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.ce, ptr %i.gp, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gr, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gs, align 8, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.gt, align 2, !tbaa !29
  %i.gu = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.gu, ptr %i.gv, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !25
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.p, align 4, !tbaa !30
  %i.t = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.t, ptr %i.u, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.x = load float, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ac = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.z, align 8, !tbaa !27 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.aj = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = insertelement <2 x float> poison, float %i.v, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !27
  %i.as = fadd <2 x float> %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = fmul float %i.t, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.r, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ba = load float, ptr %i.az, align 8, !tbaa !27
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.x, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !27
  %i.be = fadd float %i.bd, %i.bb
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.as, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.bg, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.m, align 4, !tbaa !30
  %i.bh = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.bh, ptr %i.bi, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 788
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24, !range !34, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !32, !align !33 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load float, ptr %i.o, align 8, !tbaa !27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37, !nonnull !32, !align !33 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 712
  %2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = load float, ptr %2, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ag = load float, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 60 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %3 = load <2 x float>, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %4 = load <2 x float>, ptr %i.l, align 8, !tbaa !27 ; 4 uses
  %5 = load <2 x float>, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %6 = load <2 x float>, ptr %i.ad, align 8, !tbaa !27 ; 4 uses
  %7 = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %8 = shufflevector <2 x float> %6, <2 x float> %4, <2 x i32> <i32 1, i32 3>
  %9 = fmul <2 x float> %7, %8
  %10 = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %11 = shufflevector <2 x float> %6, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %11, <2 x float> %9)
  %13 = insertelement <2 x float> poison, float %i.ae, i64 0
  %14 = insertelement <2 x float> %13, float %i.n, i64 1
  %15 = insertelement <2 x float> poison, float %i.ag, i64 0 ; 2 uses
  %i.aq = insertelement <2 x float> %15, float %i.p, i64 1
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.aq, <2 x float> %12)
  %17 = insertelement <2 x float> poison, float %i.ai, i64 0
  %18 = insertelement <2 x float> %17, float %i.r, i64 1
  %19 = fadd <2 x float> %16, %18                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %21 = extractelement <2 x float> %19, i64 1     ; 2 uses
  %22 = fsub float %20, %21                       ; 3 uses
  %23 = load <2 x float>, ptr %i.s, align 8, !tbaa !27 ; 2 uses
  %24 = load <2 x float>, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %25 = load <2 x float>, ptr %i.v, align 4, !tbaa !27
  %26 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %27 = shufflevector <2 x float> %23, <2 x float> %24, <2 x i32> <i32 1, i32 3>
  %28 = fmul <2 x float> %26, %27
  %29 = shufflevector <2 x float> %23, <2 x float> %24, <2 x i32> <i32 0, i32 2>
  %30 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %30, <2 x float> %28)
  %32 = insertelement <2 x float> poison, float %i.u, i64 0
  %33 = insertelement <2 x float> %32, float %i.y, i64 1
  %34 = insertelement <2 x float> poison, float %i.p, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %35, <2 x float> %31)
  %37 = fadd <2 x float> %25, %36                 ; 3 uses
  %i.ar = load <2 x float>, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.as = load <2 x float>, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %38 = load <2 x float>, ptr %i.am, align 4, !tbaa !27
  %39 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 1, i32 3>
  %i.au = fmul <2 x float> %39, %i.at
  %i.av = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.au)
  %i.ay = insertelement <2 x float> poison, float %i.al, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ap, i64 1
  %i.ba = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ba, <2 x float> %i.ax)
  %i.bc = fadd <2 x float> %38, %i.bb             ; 2 uses
  %i.bd = fsub <2 x float> %i.bc, %37             ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = tail call float @llvm.fmuladd.f32(float %22, float %22, float %i.be)
  %i.bg = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bf) ; 2 uses
  %i.bi = fcmp ogt float %i.bh, f0x34000000
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bh)
  %i.bj = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bk = fmul float %22, %i.bj                   ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bd, %i.bm           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i.i, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bn, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.bo, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = phi float [ 1.000000e+00, %bb.e ], [ %i.bk, %bb.d ] ; 5 uses
  %i.br = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.bn, %bb.d ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = extractelement <2 x float> %i.br, i64 1 ; 6 uses
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = fcmp ogt float %i.bv, f0x3F3504F3
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = fmul nnan float %i.bu, %i.bu
  %i.by = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.cb = fneg float %i.bu
  %i.cc = fmul float %i.ca, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.by, %i.ca                 ; 2 uses
  %i.ce = fmul float %i.bz, %i.ca
  %i.cf = fneg float %i.bq
  %i.cg = fmul float %i.cd, %i.cf
  %i.ch = fmul float %i.cc, %i.bq
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ci = extractelement <2 x float> %i.br, i64 0
  %foldExtExtBinop289 = fmul <2 x float> %i.br, %i.br
  %i.cj = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.cj) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ck)
  %i.cl = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.cm = fneg float %i.ci
  %i.cn = fmul float %i.cl, %i.cm                 ; 2 uses
  %i.co = fmul float %i.bq, %i.cl                 ; 2 uses
  %i.cp = fneg float %i.bu
  %i.cq = fmul float %i.co, %i.cp
  %i.cr = fmul float %i.bu, %i.cn
  %i.cs = fmul float %i.ck, %i.cl
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink281 = phi float [ 0.000000e+00, %bb.g ], [ %i.cn, %bb.h ]
  %.sink280 = phi float [ %i.cc, %bb.g ], [ %i.co, %bb.h ]
  %.sink = phi float [ %i.cd, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.ce, %bb.g ], [ %i.cq, %bb.h ]
  %.sink47.i = phi float [ %i.cg, %bb.g ], [ %i.cr, %bb.h ]
  %.sink.i = phi float [ %i.ch, %bb.g ], [ %i.cs, %bb.h ]
  store float %.sink281, ptr %i.bs, align 16, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink280, ptr %i.ct, align 4, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.cu, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.bt, align 16, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.cw, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.cx, align 8, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.cy, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 428
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ab, i64 428
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 436
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 436
  %i.dg = extractelement <2 x float> %37, i64 0
  %i.dh = extractelement <2 x float> %37, i64 1
  %40 = shufflevector <2 x float> %19, <2 x float> %i.bc, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.di = getelementptr inbounds nuw [84 x i8], ptr %i.cz, i64 %indvars.iv ; 13 uses
  %i.dj = load float, ptr %i.m, align 8, !tbaa !27, !noalias !38
  %i.dk = load float, ptr %i.t, align 8, !tbaa !27, !noalias !38
  %i.dl = load float, ptr %2, align 8, !tbaa !27, !noalias !41
  %i.dm = load float, ptr %i.ak, align 8, !tbaa !27, !noalias !41
  %i.dn = load float, ptr %i.ao, align 8, !tbaa !27, !noalias !41
  %i.do = load float, ptr %i.q, align 8, !tbaa !27
  %i.dp = fsub float %21, %i.do                   ; 2 uses
  %i.dq = load float, ptr %i.v, align 4, !tbaa !27
  %i.dr = fsub float %i.dg, %i.dq                 ; 2 uses
  %i.ds = load float, ptr %i.z, align 8, !tbaa !27
  %i.dt = fsub float %i.dh, %i.ds                 ; 2 uses
  %i.du = load float, ptr %i.ah, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.dw = load float, ptr %i.db, align 8, !tbaa !44
  %i.dx = load float, ptr %i.dd, align 8, !tbaa !44
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.ee = load <2 x float>, ptr %i.k, align 8, !tbaa !27, !noalias !38
  %i.ef = load <2 x float>, ptr %i.s, align 8, !tbaa !27, !noalias !38
  %i.eg = load <2 x float>, ptr %i.w, align 8, !tbaa !27, !noalias !38
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.eh = load <2 x float>, ptr %i.ac, align 8, !tbaa !27, !noalias !41
  %i.ei = load <2 x float>, ptr %i.aj, align 8, !tbaa !27, !noalias !41
  %i.ej = load <2 x float>, ptr %i.an, align 8, !tbaa !27, !noalias !41
  %i.ek = load float, ptr %i.x, align 8, !tbaa !27, !noalias !38
  %i.el = load <2 x float>, ptr %i.am, align 4, !tbaa !27
  %i.em = insertelement <4 x float> %40, float %i.ek, i64 0
  %i.en = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.du, i64 1
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = fsub <4 x float> %i.em, %i.ep           ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.di, ptr noundef nonnull align 16 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !25
  %i.es = load float, ptr %i.ec, align 4, !tbaa !27 ; 3 uses
  %i.et = load <2 x float>, ptr %i.di, align 4, !tbaa !27 ; 2 uses
  %i.eu = load float, ptr %i.ed, align 4, !tbaa !27 ; 2 uses
  %i.ev = fneg float %i.eu                        ; 2 uses
  %i.ew = fmul float %i.dt, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.es, float %i.ew) ; 2 uses
  %i.ey = fneg float %i.es                        ; 2 uses
  %i.ez = fmul float %i.dp, %i.ey
  %i.fa = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.fa, float %i.ez) ; 2 uses
  %i.fc = fneg float %i.fa                        ; 2 uses
  %i.fd = fmul float %i.dr, %i.fc
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.eu, float %i.fd) ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.ef, %i.fg
  %i.fi = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fj, <2 x float> %i.fh)
  %i.fl = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.fm, <2 x float> %i.fk) ; 4 uses
  %i.fo = fmul float %i.dk, %i.fb
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ex, float %i.fo)
  %i.fq = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %41 = insertelement <4 x float> %i.fq, float %i.fp, i64 0
  %i.fr = insertelement <4 x float> %41, float %i.es, i64 1
  %i.fs = insertelement <4 x float> %i.eq, float 1.000000e+00, i64 0
  %i.ft = fmul <4 x float> %i.fr, %i.fs
  %i.fu = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.fc, i64 1
  %i.fw = insertelement <4 x float> %i.fv, float %i.ev, i64 2
  %i.fx = insertelement <4 x float> %i.fw, float %i.ey, i64 3
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.fx, <4 x float> %i.ft) ; 8 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ga = insertelement <2 x float> %i.fz, float 0.000000e+00, i64 1
  store <2 x float> %i.fn, ptr %i.dy, align 4
  store <2 x float> %i.ga, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !26
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = fmul <2 x float> %i.ei, %i.gb
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.gd, <2 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.gf, <2 x float> %i.ge) ; 4 uses
  %i.gh = extractelement <4 x float> %i.fy, i64 1
  %i.gi = fmul float %i.dm, %i.gh
  %i.gj = extractelement <4 x float> %i.fy, i64 3
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.gj, float %i.gi)
  %i.gl = extractelement <4 x float> %i.fy, i64 2
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.gl, float %i.gk) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gm, i64 0
  store <2 x float> %i.gg, ptr %i.dz, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !26
  %i.gn = extractelement <2 x float> %i.fn, i64 0
  %i.go = load <2 x float>, ptr %i.da, align 4, !tbaa !27
  %i.gp = fmul <2 x float> %i.fn, %i.go           ; 3 uses
  %i.gq = load float, ptr %i.de, align 4, !tbaa !27
  %i.gr = extractelement <4 x float> %i.fy, i64 0 ; 2 uses
  %i.gs = fmul float %i.gr, %i.gq                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <2 x float> %i.gp, ptr %i.ea, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !26
  %i.gt = extractelement <2 x float> %i.gg, i64 0
  %i.gu = load <2 x float>, ptr %i.dc, align 4, !tbaa !27
  %i.gv = fmul <2 x float> %i.gg, %i.gu           ; 3 uses
  %i.gw = load float, ptr %i.df, align 4, !tbaa !27
  %i.gx = fmul float %i.gm, %i.gw                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gx, i64 0
  store <2 x float> %i.gv, ptr %i.eb, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !26
  %foldExtExtBinop291 = fmul <2 x float> %i.fn, %i.gp
  %i.gy = extractelement <2 x float> %foldExtExtBinop291, i64 1
  %i.gz = extractelement <2 x float> %i.gp, i64 0
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gn, float %i.gy)
  %i.hb = tail call noundef float @llvm.fmuladd.f32(float %i.gs, float %i.gr, float %i.ha)
  %i.hc = fadd float %i.dw, %i.hb
  %i.hd = fadd float %i.dx, %i.hc
  %foldExtExtBinop293 = fmul <2 x float> %i.gg, %i.gv
  %i.he = extractelement <2 x float> %foldExtExtBinop293, i64 1
  %i.hf = extractelement <2 x float> %i.gv, i64 0
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.gt, float %i.he)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gm, float %i.hg)
  %i.hi = fadd float %i.hd, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  store float %i.hi, ptr %i.hj, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.hn = load float, ptr %i.hk, align 8, !tbaa !27 ; 8 uses
  %i.ho = load float, ptr %i.hl, align 8, !tbaa !27 ; 9 uses
  %i.hp = load float, ptr %i.hm, align 8, !tbaa !27 ; 9 uses
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.hp)
  %i.hr = fcmp ogt float %i.hq, f0x3F3504F3
  br i1 %i.hr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hs = fmul nnan float %i.hp, %i.hp
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.hs) ; 2 uses
  %sqrt.i30 = tail call float @llvm.sqrt.f32(float %i.ht)
  %i.hu = fdiv float 1.000000e+00, %sqrt.i30      ; 3 uses
  %i.hv = fneg float %i.hp
  %i.hw = fmul float %i.hu, %i.hv                 ; 2 uses
  %i.hx = fmul float %i.ho, %i.hu                 ; 2 uses
  %i.hy = fmul float %i.ht, %i.hu
  %i.hz = fneg float %i.hn
  %i.ia = fmul float %i.hx, %i.hz
  %i.ib = fmul float %i.hn, %i.hw
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31

bb.m:                                             ; preds = %bb.k
  %i.ic = fmul float %i.ho, %i.ho
  %i.id = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.ic) ; 2 uses
  %sqrt46.i26 = tail call float @llvm.sqrt.f32(float %i.id)
  %i.ie = fdiv float 1.000000e+00, %sqrt46.i26    ; 3 uses
  %i.if = fneg float %i.ho
  %i.ig = fmul float %i.ie, %i.if                 ; 2 uses
  %i.ih = fmul float %i.hn, %i.ie                 ; 2 uses
  %i.ii = fneg float %i.hp
  %i.ij = fmul float %i.ih, %i.ii
  %i.ik = fmul float %i.hp, %i.ig
  %i.il = fmul float %i.id, %i.ie
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31:       ; preds = %bb.l, %bb.m
  %.sroa.0220.0 = phi float [ 0.000000e+00, %bb.l ], [ %i.ig, %bb.m ] ; 3 uses
  %.sroa.5221.0 = phi float [ %i.hw, %bb.l ], [ %i.ih, %bb.m ] ; 3 uses
  %.sroa.8222.0 = phi float [ %i.hx, %bb.l ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %.sink48.i27 = phi float [ %i.hy, %bb.l ], [ %i.ij, %bb.m ] ; 3 uses
  %.sink47.i28 = phi float [ %i.ia, %bb.l ], [ %i.ik, %bb.m ] ; 3 uses
  %.sink.i29 = phi float [ %i.ib, %bb.l ], [ %i.il, %bb.m ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !31, !nonnull !32, !align !33 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 3 uses
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !27 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 32 ; 3 uses
  %i.it = load float, ptr %i.is, align 8, !tbaa !27 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 40 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 48 ; 3 uses
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !27 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !37, !nonnull !32, !align !33 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 24 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 32 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 48 ; 3 uses
  %i.jg = load float, ptr %i.jd, align 8, !tbaa !27, !noalias !56
  %i.jh = load float, ptr %i.je, align 8, !tbaa !27, !noalias !56
  %i.ji = load float, ptr %i.jf, align 8, !tbaa !27, !noalias !56
  %i.jj = getelementptr inbounds nuw i8, ptr %i.in, i64 428 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 428 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.jp = load <2 x float>, ptr %i.io, align 8, !tbaa !27 ; 3 uses
  %i.jq = extractelement <2 x float> %i.jp, i64 1 ; 3 uses
  %i.jr = fmul float %i.ho, %i.jq
  %i.js = extractelement <2 x float> %i.jp, i64 0 ; 3 uses
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.js, float %i.hn, float %i.jr)
  %i.ju = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.hp, float %i.jt) ; 3 uses
  %i.jv = load <2 x float>, ptr %i.ir, align 8, !tbaa !27 ; 3 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 1 ; 3 uses
  %i.jx = fmul float %i.ho, %i.jw
  %i.jy = extractelement <2 x float> %i.jv, i64 0 ; 3 uses
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.hn, float %i.jx)
  %i.ka = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.hp, float %i.jz) ; 3 uses
  %i.kb = load <2 x float>, ptr %i.iu, align 8, !tbaa !27 ; 3 uses
  %i.kc = extractelement <2 x float> %i.kb, i64 1 ; 3 uses
  %i.kd = fmul float %i.ho, %i.kc
  %i.ke = extractelement <2 x float> %i.kb, i64 0 ; 3 uses
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.hn, float %i.kd)
  %i.kg = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.hp, float %i.kf) ; 3 uses
  %i.kh = fmul float %.sroa.5221.0, %i.jq
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.js, float %.sroa.0220.0, float %i.kh)
  %i.kj = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %.sroa.8222.0, float %i.ki) ; 3 uses
  %i.kk = fmul float %.sroa.5221.0, %i.jw
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.jy, float %.sroa.0220.0, float %i.kk)
  %i.km = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %.sroa.8222.0, float %i.kl) ; 3 uses
  %i.kn = fmul float %.sroa.5221.0, %i.kc
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.ke, float %.sroa.0220.0, float %i.kn)
  %i.kp = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %.sroa.8222.0, float %i.ko) ; 3 uses
  %i.kq = fmul float %.sink47.i28, %i.jq
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.js, float %.sink48.i27, float %i.kq)
  %i.ks = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %.sink.i29, float %i.kr) ; 3 uses
  %i.kt = fmul float %.sink47.i28, %i.jw
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.jy, float %.sink48.i27, float %i.kt)
  %i.kv = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %.sink.i29, float %i.ku) ; 3 uses
  %i.kw = fmul float %.sink47.i28, %i.kc
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.ke, float %.sink48.i27, float %i.kw)
  %i.ky = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %.sink.i29, float %i.kx) ; 3 uses
  %i.kz = insertelement <2 x float> poison, float %i.km, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x float> %i.jv, %i.la
  %i.lc = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.ld, <2 x float> %i.lb)
  %i.lf = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.lg, <2 x float> %i.le) ; 4 uses
  %i.li = fmul float %i.it, %i.km
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.kj, float %i.li)
  %i.lk = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.kp, float %i.lj) ; 3 uses
  %.sroa.3.12.vec.insert.i.i64 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lk, i64 0
  %.sroa.46.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ll = fneg float %i.kj                        ; 2 uses
  %i.lm = fneg float %i.km                        ; 2 uses
  %i.ln = fneg float %i.kp                        ; 2 uses
  %i.lo = load <2 x float>, ptr %i.ja, align 8, !tbaa !27, !noalias !56
  %i.lp = load <2 x float>, ptr %i.jb, align 8, !tbaa !27, !noalias !56
  %i.lq = load <2 x float>, ptr %i.jc, align 8, !tbaa !27, !noalias !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ix, i8 0, i64 16, i1 false)
  store <2 x float> %i.lh, ptr %i.jl, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i64, ptr %.sroa.46.0..sroa_idx.i65, align 4, !tbaa !26
  %i.lr = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x float> %i.lp, %i.ls
end_hunk_0
begin_hunk_1_@_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_:bb.a
  %i.bw = insertelement <2 x float> %i.bv, float %i.as, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load float, ptr %i.by, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !27
  %i.cc = fmul float %i.ar, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aq, float %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.as, float %i.cd) ; 2 uses
  %i.ch = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.ci = fmul float %i.bj, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.n, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.aa, float %i.cj) ; 2 uses
  %i.cl = extractelement <2 x float> %i.bx, i64 0
  %i.cm = fmul float %i.cl, %i.ch
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aj, float %i.cm)
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.am, float %i.cn) ; 5 uses
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.ck) ; 4 uses
  %i.cq = fcmp ult float %i.co, 0.000000e+00
  br i1 %i.cq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cr = fsub float %i.co, %i.cp
  %i.cs = fadd float %i.co, %i.cp
  %i.ct = fdiv float %i.cr, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit

bb.c:                                             ; preds = %bb.a
  %i.cv = fadd float %i.co, %i.cp
  %i.cw = fsub float %i.cp, %i.co
  %i.cx = fdiv float %i.cv, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit

_Z11btAtan2Fastff.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.cu, %bb.b ], [ %i.cy, %bb.c ] ; 2 uses
  %i.cz = fcmp olt float %i.ck, 0.000000e+00
  %i.da = fneg float %.0.i
  %i.db = select i1 %i.cz, float %i.da, float %.0.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !23
  %i.de = fmul float %i.dd, %i.db
  ret float %i.de
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
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
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
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
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
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
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
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

; Function Attrs: nounwind uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.087.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %.sroa.087.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %.sroa.588.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.588.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.fca.1.gep.i17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = fneg float %.sroa.087.0.vec.extract
  %i.g = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.h = fneg <2 x float> %i.g
  %i.i = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.j = fneg <2 x float> %i.i                    ; 2 uses
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul float %i.c, %i.f
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.j
  %i.q = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.l, <2 x float> %i.p)
  %i.s = extractelement <2 x float> %i.k, i64 0
  %i.t = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.s, float %i.m)
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.k, <2 x float> %i.r)
  %i.v = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.j, i64 0
  %i.x = call float @llvm.fmuladd.f32(float %i.w, float %i.v, float %i.t)
  %i.y = shufflevector <2 x float> %i.l, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.z = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i, <2 x float> %i.y, <2 x float> %i.u) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %i.k
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %6 = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.c, float %5)
  %i.aa = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.087.4.vec.extract, float %i.aa, float %6)
  %i.ac = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.v, float %i.ab) ; 3 uses
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i15 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.load.i18 = load <2 x float>, ptr %.fca.1.gep.i17, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.085.0.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 0 ; 2 uses
  %.sroa.586.12.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 1 ; 2 uses
  %.sroa.586.8.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 0 ; 2 uses
  %.sroa.085.4.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 1 ; 2 uses
  %i.ad = extractelement <2 x float> %i.z, i64 0
  %i.ae = fmul float %i.ad, %.sroa.586.12.vec.extract
  %i.af = call float @llvm.fmuladd.f32(float %i.ac, float %.sroa.085.4.vec.extract, float %i.ae)
  %i.ag = extractelement <2 x float> %i.z, i64 1
  %7 = call float @llvm.fmuladd.f32(float %i.ag, float %.sroa.085.0.vec.extract, float %i.af)
  %8 = fneg <2 x float> %i.z                      ; 3 uses
  %i.ah = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.aa, float %i.x) ; 4 uses
  %i.ai = fneg float %i.ah
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %.sroa.586.8.vec.extract, float %7) ; 3 uses
  %i.ak = fneg float %.sroa.085.0.vec.extract
  %i.al = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ah, i64 1
  %i.an = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = fmul float %i.ah, %i.ak
  %i.aq = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> %.fca.0.load.i15, <2 x i32> <i32 0, i32 2>
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.ao)
  %i.au = call float @llvm.fmuladd.f32(float %i.ac, float %.sroa.586.12.vec.extract, float %i.ap)
  %i.av = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x float> %.fca.0.load.i15, <2 x float> %.fca.1.load.i18, <2 x i32> <i32 1, i32 2>
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.at)
  %i.az = extractelement <2 x float> %8, i64 0
  %i.ba = call float @llvm.fmuladd.f32(float %i.az, float %.sroa.085.4.vec.extract, float %i.au)
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %.fca.0.load.i15, <2 x float> %i.ay) ; 3 uses
  %i.bc = extractelement <2 x float> %8, i64 1
  %i.bd = call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.586.8.vec.extract, float %i.ba) ; 3 uses
  %i.be = fmul float %i.aj, %i.aj
  %i.bf = extractelement <2 x float> %i.bb, i64 1 ; 2 uses
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be)
  %i.bh = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bg)
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bi)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bj)
  %i.bk = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bb, %i.bm           ; 5 uses
  %i.bo = fmul float %i.bd, %i.bk                 ; 9 uses
  %i.bp = extractelement <2 x float> %i.bn, i64 0 ; 5 uses
  %i.bq = fmul float %i.bp, 0.000000e+00
  %i.br = call float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %i.bq)
  %i.bs = extractelement <2 x float> %i.bn, i64 1 ; 6 uses
  %i.bt = fsub float %i.br, %i.bs                 ; 3 uses
  %9 = fmul float %i.bs, 0.000000e+00
  %i.bu = fmul float %i.aj, %i.bk                 ; 7 uses
  %i.bv = fadd float %i.bo, %9
  %10 = call float @llvm.fmuladd.f32(float %i.bo, float 0.000000e+00, float %i.bu)
  %i.bw = fneg float %i.bp
  %i.bx = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.by = insertelement <2 x float> %i.bx, float %i.bu, i64 0
  %i.bz = fneg <2 x float> %i.by                  ; 3 uses
  %i.ca = fneg float %i.bs                        ; 3 uses
  %i.cb = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %10, i64 1
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> zeroinitializer, <2 x float> %i.cc) ; 4 uses
  %11 = fmul float %i.bu, -0.000000e+00
  %i.ce = call float @llvm.fmuladd.f32(float %i.ca, float 0.000000e+00, float %11)
  %i.cf = fsub float %i.ce, %i.bp                 ; 2 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %i.ch = fmul float %i.bo, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.cf, float %i.ca, float %i.ch)
  %i.cj = call float @llvm.fmuladd.f32(float %i.bt, float %i.bw, float %i.ci)
  %i.ck = extractelement <2 x float> %i.cd, i64 0
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %i.bu, float %i.cj) ; 3 uses
  %i.cm = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = insertelement <2 x float> %i.co, float %i.bt, i64 0
  %i.cq = fmul <2 x float> %i.cn, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.bz, <2 x float> %i.cq)
  %i.cu = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cv = insertelement <2 x float> %i.cu, float %i.ca, i64 0
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cv, <2 x float> %i.ct)
  %i.cx = insertelement <2 x float> %i.co, float %i.bt, i64 1
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.bn, <2 x float> %i.cw) ; 4 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.cy, %i.cy
  %i.cz = extractelement <2 x float> %foldExtExtBinop119, i64 0
  %i.da = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.cz)
  %i.db = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.dc = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.da)
  %sqrt.i.i29 = call noundef float @llvm.sqrt.f32(float %i.dc)
  %i.dd = fdiv float 1.000000e+00, %sqrt.i.i29    ; 2 uses
  %i.de = fmul float %i.cl, %i.dd                 ; 3 uses
  %i.df = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.cy, %i.dg           ; 4 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  %i.dj = fmul float %i.di, 0.000000e+00
  %i.dk = call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.dj)
  %i.dl = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dm = fadd float %i.dl, %i.dk                 ; 2 uses
  %i.dn = fcmp olt float %i.dm, f0xBF7FFFFE
  br i1 %i.dn, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.do = fmul float %i.de, -0.000000e+00
  %i.dp = fmul float %i.dl, -0.000000e+00
  %i.dq = fadd float %i.de, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ds = fneg <2 x float> %i.dh
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2>
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> zeroinitializer, <2 x float> %i.dt) ; 2 uses
  %i.dv = fadd float %i.dm, 1.000000e+00
  %i.dw = fmul float %i.dv, 2.000000e+00
  %i.dx = call noundef float @sqrtf(float noundef %i.dw) #17, !tbaa !4 ; 2 uses
  %i.dy = fdiv float 1.000000e+00, %i.dx          ; 3 uses
  %i.dz = extractelement <2 x float> %i.du, i64 1
  %i.ea = fmul float %i.dz, %i.dy
  %i.eb = fmul float %i.dq, %i.dy
  %i.ec = extractelement <2 x float> %i.du, i64 0
  %i.ed = fmul float %i.ec, %i.dy
  %i.ee = fmul float %i.dx, 5.000000e-01
  %.sroa.020.0.vec.insert23.i = insertelement <2 x float> poison, float %i.ea, i64 0
  %.sroa.020.4.vec.insert25.i = insertelement <2 x float> %.sroa.020.0.vec.insert23.i, float %i.eb, i64 1
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %i.ed, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %i.ee, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.a, %bb.b
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert25.i, %bb.b ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.a ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert31.i, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %i.ef = fneg float %.sroa.073.0.vec.extract     ; 2 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1
  %i.eg = fneg float %.sroa.073.4.vec.extract     ; 2 uses
  %.sroa.574.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 2 uses
  %i.eh = fneg float %.sroa.574.8.vec.extract     ; 2 uses
  %.sroa.574.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 2 uses
  %i.ei = fmul float %i.bo, %i.ef
  %i.ej = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bs, float %i.ei)
  %i.ek = call float @llvm.fmuladd.f32(float %i.eg, float %i.bp, float %i.ej)
  %i.el = call float @llvm.fmuladd.f32(float %.sroa.574.8.vec.extract, float %i.bu, float %i.ek) ; 2 uses
  %i.em = fmul float %i.bo, %i.eg
  %i.en = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bu, float %i.em)
  %i.eo = call float @llvm.fmuladd.f32(float %i.eh, float %i.bs, float %i.en)
  %i.ep = call float @llvm.fmuladd.f32(float %.sroa.073.0.vec.extract, float %i.bp, float %i.eo) ; 2 uses
  %i.eq = fmul float %i.ep, %i.ep
  %i.er = call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.eq)
  %i.es = fmul float %i.bo, %i.eh
  %i.et = fmul float %i.bs, %.sroa.073.0.vec.extract
  %i.eu = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = insertelement <2 x float> %i.bx, float %i.bo, i64 0
  %i.ew = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.es, i64 1
  %i.ey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ev, <2 x float> %i.ex)
  %i.ez = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = insertelement <2 x float> %i.ez, float %i.ef, i64 1
  %i.fb = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fc, <2 x float> %i.ey)
  %i.fe = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %.sroa.020.0.i, <2 x i32> <i32 0, i32 3>
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.bn, <2 x float> %i.fd) ; 3 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fh = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.er)
  %i.fi = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.fh)
  %sqrt.i.i47 = call noundef float @llvm.sqrt.f32(float %i.fj)
  %i.fk = fdiv float 1.000000e+00, %sqrt.i.i47
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x float> %i.ff, %i.fm           ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = extractelement <2 x float> %i.fn, i64 0
  %i.fq = call noundef float @acosf(float noundef %i.fp) #17, !tbaa !4
  %i.fr = fmul float %i.fq, 2.000000e+00          ; 2 uses
  %i.fs = fcmp ogt float %i.fr, f0x40490FDB
  br i1 %i.fs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.ft = fneg <2 x float> %i.fn                  ; 2 uses
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = extractelement <2 x float> %i.ft, i64 0
  %i.fw = call noundef float @acosf(float noundef %i.fv) #17, !tbaa !4
  %i.fx = fmul float %i.fw, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.10.0 = phi <2 x float> [ %i.fu, %bb.c ], [ %i.fo, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.0 = phi float [ %i.fx, %bb.c ], [ %i.fr, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.sroa.10.8.vec.extract65 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.fy = fcmp olt float %.sroa.10.8.vec.extract65, 0.000000e+00
  %i.fz = fneg float %.0
  %.1 = select i1 %i.fy, float %i.fz, float %.0   ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !73 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !28 ; 3 uses
  %i.ge = fcmp olt float %i.gb, %i.gd
  br i1 %i.ge, label %bb.e, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.e:                                             ; preds = %bb.d
  %i.gf = fcmp olt float %.1, %i.gb
  br i1 %i.gf, label %_ZN17btHingeConstraint14setMotorTargetEff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gg = fcmp ogt float %.1, %i.gd
  br i1 %i.gg, label %bb.g, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.g:                                             ; preds = %bb.f
  br label %_ZN17btHingeConstraint14setMotorTargetEff.exit

_ZN17btHingeConstraint14setMotorTargetEff.exit:   ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %.1, %bb.d ], [ %i.gd, %bb.g ], [ %.1, %bb.f ], [ %i.gb, %bb.e ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.gj, ptr noundef nonnull align 4 dereferenceable(64) %i.gm)
  %i.go = fsub float %.0.i, %i.gn
  %i.gp = fdiv float %i.go, %2
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.gp, ptr %i.gq, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetEff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, float noundef %1, float noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = load float, ptr %i.a, align 4, !tbaa !73 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = load float, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  %i.e = fcmp olt float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt float %1, %i.b
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp ogt float %1, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi float [ %1, %bb.a ], [ %i.d, %bb.d ], [ %1, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.m)
  %i.o = fsub float %.0, %i.n
  %i.p = fdiv float %i.o, %2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.p, ptr %i.q, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN17btHingeConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !27 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #17, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !27
  %i.t = load float, ptr %i.m, align 4, !tbaa !27
  %i.u = load float, ptr %i.j, align 4, !tbaa !27
  %i.v = load float, ptr %i.k, align 4, !tbaa !27
  %i.w = load float, ptr %i.o, align 4, !tbaa !27
  %i.x = load float, ptr %i.p, align 4, !tbaa !27
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !27
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
end_hunk_1
