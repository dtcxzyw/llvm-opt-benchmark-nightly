inline.NumInlined: 753
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_S4_S4_b:.preheader.preheader
  %i.x = extractelement <2 x float> %i.s, i64 1
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.o, float %i.w) ; 2 uses
  %i.z = fcmp ult float %i.y, f0x3F7FFFFE
  br i1 %i.z, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !11
  %i.ae = load float, ptr %i.ab, align 8, !tbaa !11
  %i.af = load float, ptr %i.ac, align 8, !tbaa !11
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.ae, i64 1
  %i.ai = fneg <2 x float> %i.ah
  %i.aj = fneg float %i.af
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.an = load float, ptr %i.ak, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ao = load float, ptr %i.al, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.ao, i64 1
  %i.ap = load float, ptr %i.am, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.aq = fcmp ugt float %i.y, f0xBF7FFFFE
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load float, ptr %i.ar, align 8, !tbaa !11
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = load float, ptr %i.as, align 8, !tbaa !11
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.av, i64 1
  %i.aw = load float, ptr %i.at, align 8, !tbaa !11
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !11
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bb = load float, ptr %i.ay, align 4, !tbaa !11
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %i.bb, i64 1
  %i.bc = load float, ptr %i.az, align 4, !tbaa !11
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bd = insertelement <2 x float> poison, float %i.m, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.n, i64 1 ; 2 uses
  %i.bf = fneg <2 x float> %i.be
  %i.bg = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.m, i64 1
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fneg <2 x float> %i.s
  %i.bk = fmul <2 x float> %i.r, %i.bi
  %i.bl = fmul <2 x float> %i.s, %i.bf
  %i.bm = shufflevector <2 x float> %i.s, <2 x float> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.be, <2 x float> %i.bk) ; 4 uses
  %i.bo = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.o, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.bp, <2 x float> %i.bl) ; 3 uses
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bq, <2 x i32> <i32 3, i32 0>
  %i.bs = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bn, <2 x i32> <i32 3, i32 1>
  %i.bt = fmul <2 x float> %i.bq, %i.bj
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bm, <2 x float> %i.bt)
  %i.bv = fneg float %i.v
  %i.bw = extractelement <2 x float> %i.bn, i64 0
  %i.bx = fmul float %i.bw, %i.bv
  %i.by = extractelement <2 x float> %i.bq, i64 1
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.t, float %i.bx)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0112.0 = phi <2 x float> [ %i.br, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bs, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0119.0 = phi <2 x float> [ %i.bu, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.ai, %bb.a ] ; 3 uses
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ]
  %.sroa.0119.0.vec.extract123 = extractelement <2 x float> %.sroa.0119.0, i64 0 ; 4 uses
  store float %.sroa.0119.0.vec.extract123, ptr %i.b, align 8, !tbaa !11
  %.sroa.0112.0.vec.extract114 = extractelement <2 x float> %.sroa.0112.0, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %.sroa.0112.0.vec.extract114, ptr %i.ca, align 4, !tbaa !11
  %i.cb = load float, ptr %5, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.cd, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.sroa.0119.4.vec.extract129 = extractelement <2 x float> %.sroa.0119.0, i64 1 ; 5 uses
  store float %.sroa.0119.4.vec.extract129, ptr %i.ce, align 8, !tbaa !11
  %.sroa.0112.4.vec.extract116 = extractelement <2 x float> %.sroa.0112.0, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %.sroa.0112.4.vec.extract116, ptr %i.cf, align 4, !tbaa !11
  %i.cg = load float, ptr %i.p, align 4, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ci = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  store <2 x float> %i.ci, ptr %i.ch, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.sroa.15.8.vec.extract135 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 5 uses
  store float %.sroa.15.8.vec.extract135, ptr %i.cj, align 8, !tbaa !11
  %.sroa.10.8.vec.extract118 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %.sroa.10.8.vec.extract118, ptr %i.ck, align 4, !tbaa !11
  %i.cl = load float, ptr %i.q, align 4, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.cn, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.p, align 4, !tbaa !11 ; 7 uses
  %i.cq = load <2 x float>, ptr %i.co, align 4, !tbaa !11 ; 6 uses
  %i.cr = load float, ptr %6, align 4, !tbaa !11  ; 5 uses
  %i.cs = load float, ptr %5, align 4, !tbaa !11  ; 6 uses
  %i.ct = extractelement <2 x float> %i.cp, i64 0 ; 5 uses
  %i.cu = extractelement <2 x float> %i.cq, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cp, %i.cq
  %i.cv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cr, float %i.cv)
  %i.cx = extractelement <2 x float> %i.cp, i64 1 ; 5 uses
  %i.cy = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cy, float %i.cw) ; 2 uses
  %i.da = fcmp olt float %i.cz, f0xBF7FFFFE
  br i1 %i.da, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.dc = fcmp ogt float %i.db, f0x3F3504F3
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dd = fmul nnan float %i.cx, %i.cx
  %i.de = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.dd)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.de)
  %i.df = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dg = fneg float %i.cx
  %i.dh = fmul float %i.df, %i.dg
  %i.di = fmul float %i.ct, %i.df
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop140 = fmul <2 x float> %i.cp, %i.cp
  %i.dj = extractelement <2 x float> %foldExtExtBinop140, i64 0
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.dj)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.dk)
  %i.dl = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.dm = fneg float %i.ct
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = fmul float %i.cs, %i.dl
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.dn, %bb.h ]
  %.sroa.618.0.i = phi float [ %i.dh, %bb.g ], [ %i.do, %bb.h ]
  %.sroa.10.0.i = phi float [ %i.di, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dp = fneg float %i.cr
  %i.dq = fmul float %i.ct, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cu, float %i.dq)
  %i.ds = fneg <2 x float> %i.cq
  %i.dt = fadd float %i.cz, 1.000000e+00
  %i.du = fmul float %i.dt, 2.000000e+00
  %i.dv = tail call noundef float @sqrtf(float noundef %i.du) #20 ; 2 uses
  %i.dw = fdiv float 1.000000e+00, %i.dv          ; 2 uses
  %i.dx = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dy = insertelement <2 x float> %i.dx, float %i.cs, i64 1
  %i.dz = fmul <2 x float> %i.dy, %i.ds
  %i.ea = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.cr, i64 1
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ec, %i.ee
  %i.eg = fmul float %i.dr, %i.dw
  %i.eh = fmul float %i.dv, 5.000000e-01
  %.sroa.528.8.vec.insert31.i = insertelement <2 x float> poison, float %i.eg, i64 0
  %.sroa.528.12.vec.insert33.i = insertelement <2 x float> %.sroa.528.8.vec.insert31.i, float %i.eh, i64 1
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.i
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.ef, %bb.i ] ; 2 uses
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %.sroa.528.12.vec.insert33.i, %bb.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.6109.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 6 uses
  %.sroa.0108.4.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 1 ; 4 uses
  %i.ek = fmul float %.sroa.15.8.vec.extract135, %.sroa.0108.4.vec.extract
  %i.el = tail call float @llvm.fmuladd.f32(float %.sroa.6109.12.vec.extract, float %.sroa.0119.0.vec.extract123, float %i.ek)
  %.sroa.6109.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0
  %i.em = fneg float %.sroa.6109.8.vec.extract    ; 4 uses
  %8 = tail call float @llvm.fmuladd.f32(float %i.em, float %.sroa.0119.4.vec.extract129, float %i.el) ; 3 uses
  %foldExtExtBinop142 = fmul <2 x float> %.sroa.0119.0, %.sroa.528.0.i
  %i.en = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.eo = tail call float @llvm.fmuladd.f32(float %.sroa.6109.12.vec.extract, float %.sroa.0119.4.vec.extract129, float %i.en)
  %.sroa.0108.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 3 uses
  %i.ep = fneg float %.sroa.0108.0.vec.extract    ; 4 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %.sroa.15.8.vec.extract135, float %i.eo) ; 3 uses
  %i.er = fmul float %.sroa.0119.4.vec.extract129, %.sroa.0108.0.vec.extract
  %i.es = tail call float @llvm.fmuladd.f32(float %.sroa.6109.12.vec.extract, float %.sroa.15.8.vec.extract135, float %i.er)
  %i.et = fneg float %.sroa.0108.4.vec.extract    ; 3 uses
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %.sroa.0119.0.vec.extract123, float %i.es) ; 3 uses
  %i.ev = fneg float %.sroa.0119.4.vec.extract129
  %i.ew = fmul float %.sroa.0108.4.vec.extract, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ep, float %.sroa.0119.0.vec.extract123, float %i.ew)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.em, float %.sroa.15.8.vec.extract135, float %i.ex) ; 3 uses
  %i.ez = fmul float %.sroa.6109.12.vec.extract, %i.eu
  %9 = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.em, float %i.ez)
  %i.fa = tail call float @llvm.fmuladd.f32(float %8, float %i.et, float %9)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.eq, float %.sroa.0108.0.vec.extract, float %i.fa) ; 3 uses
  %10 = fneg float %i.fb
  %11 = fmul float %i.cr, %10
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !27
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.fg = fmul float %.sroa.6109.12.vec.extract, %8
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ep, float %i.fg)
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.em, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.eu, float %.sroa.0108.4.vec.extract, float %i.fi) ; 3 uses
  %12 = fmul float %.sroa.6109.12.vec.extract, %i.eq
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.et, float %12)
  %13 = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ep, float %i.fk)
  %i.fl = insertelement <2 x float> poison, float %8, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1
  %i.fn = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3>
  %i.fo = insertelement <2 x float> poison, float %13, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %11, i64 1
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fn, <2 x float> %i.fp) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0 ; 2 uses
  %i.fs = fneg float %i.fr
  %i.ft = fmul float %i.cy, %i.fs
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.fb, float %i.ft)
  %i.fv = fneg float %i.fj
  %i.fw = fmul float %i.cu, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.fr, float %i.fw)
  store float %i.fj, ptr %i.ej, align 8, !tbaa !11
  store float %i.fu, ptr %i.fd, align 4, !tbaa !11
  %i.fy = load float, ptr %6, align 4, !tbaa !11
  %i.fz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %i.fz, ptr %i.fe, align 8, !tbaa !11
  store <2 x float> %i.fq, ptr %i.ff, align 8, !tbaa !11
  %i.ga = load float, ptr %i.co, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.gc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ga, i64 0
  store <2 x float> %i.gc, ptr %i.gb, align 8, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.fb, ptr %i.gd, align 8, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 676
  store float %i.fx, ptr %i.ge, align 4, !tbaa !11
  %i.gf = load float, ptr %i.ei, align 4, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gf, i64 0
  store <2 x float> %i.gh, ptr %i.gg, align 8, !tbaa !11
  %i.gi = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.gi, ptr %i.gj, align 4, !tbaa !29
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3S4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, i8 0, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.a, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 6 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp ogt float %i.k, f0x3F3504F3
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !11 ; 3 uses
  %i.o = fmul nnan float %i.j, %i.j
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.o) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.r = fneg float %i.j
  %i.s = fmul float %i.q, %i.r                    ; 2 uses
  %i.t = fmul float %i.n, %i.q                    ; 2 uses
  %i.u = fmul float %i.p, %i.q
  %i.v = load float, ptr %3, align 4, !tbaa !11   ; 2 uses
  %i.w = fneg float %i.v
  %i.x = fmul float %i.t, %i.w
  %i.y = fmul float %i.v, %i.s
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.z = load float, ptr %3, align 4, !tbaa !11   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ac) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.af = fneg float %i.ab
  %i.ag = fmul float %i.ae, %i.af                 ; 2 uses
  %i.ah = fmul float %i.z, %i.ae                  ; 2 uses
  %i.ai = fneg float %i.j
  %i.aj = fmul float %i.ah, %i.ai
  %i.ak = fmul float %i.j, %i.ag
  %i.al = fmul float %i.ad, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.067.0 = phi float [ %i.u, %bb.a ], [ %i.aj, %bb.b ]
  %.sroa.668.0 = phi float [ %i.x, %bb.a ], [ %i.ak, %bb.b ]
  %.sroa.069.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ag, %bb.b ] ; 5 uses
  %.sroa.872.0 = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ] ; 5 uses
  %.sroa.13.0 = phi float [ %i.t, %bb.a ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %.sink.i = phi float [ %i.y, %bb.a ], [ %i.al, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %.sroa.069.0, ptr %i.b, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %.sroa.067.0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = load float, ptr %3, align 4, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ar = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %i.ar, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 592
  store float %.sroa.872.0, ptr %i.as, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %.sroa.668.0, ptr %i.at, align 4, !tbaa !11
  %i.au = load float, ptr %i.an, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.aw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %i.aw, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %.sroa.13.0, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %.sink.i, ptr %i.ay, align 4, !tbaa !11
  %i.az = load float, ptr %i.i, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.bb, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load float, ptr %3, align 4, !tbaa !11  ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bf = load <2 x float>, ptr %i.an, align 4, !tbaa !11 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load <2 x float>, ptr %i.bc, align 8, !tbaa !11 ; 3 uses
  %i.bj = load <2 x float>, ptr %i.bg, align 8, !tbaa !11 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = load float, ptr %i.bl, align 4, !tbaa !11 ; 2 uses
  %i.bu = load float, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bv = extractelement <2 x float> %i.bf, i64 0 ; 6 uses
  %i.bw = fmul float %i.bv, %i.bt
  %i.bx = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.by = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.bs)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bd, float %i.bw)
  %i.cc = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.cd = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.ca) ; 6 uses
  %i.cf = extractelement <2 x float> %i.bf, i64 1 ; 7 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.cf, float %i.cb) ; 6 uses
  %i.ch = extractelement <2 x float> %i.ce, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bf, %i.ce
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = extractelement <2 x float> %i.ce, i64 1 ; 4 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.cj, float %i.ci)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.ck) ; 2 uses
  %i.cm = fcmp olt float %i.cl, f0xBF7FFFFE
  br i1 %i.cm, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cf)
  %i.co = fcmp ogt float %i.cn, f0x3F3504F3
  br i1 %i.co, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cp = fmul nnan float %i.cf, %i.cf
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.cp)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cq)
  %i.cr = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cs = fneg float %i.cf
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = fmul float %i.bv, %i.cr
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.f:                                             ; preds = %bb.d
  %foldExtExtBinop78 = fmul <2 x float> %i.bf, %i.bf
  %i.cv = extractelement <2 x float> %foldExtExtBinop78, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.cv)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.cw)
  %i.cx = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.cy = fneg float %i.bv
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = fmul float %i.bd, %i.cx
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.cz, %bb.f ]
  %.sroa.618.0.i = phi float [ %i.ct, %bb.e ], [ %i.da, %bb.f ]
  %.sroa.10.0.i = phi float [ %i.cu, %bb.e ], [ 0.000000e+00, %bb.f ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.db = fneg float %i.cj
  %i.dc = fmul float %i.bv, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ch, float %i.dc)
  %i.de = fadd float %i.cl, 1.000000e+00
  %i.df = fmul float %i.de, 2.000000e+00
  %i.dg = tail call noundef float @sqrtf(float noundef %i.df) #20 ; 2 uses
  %i.dh = fdiv float 1.000000e+00, %i.dg          ; 2 uses
  %i.di = fneg float %i.cg
  %i.dj = fneg float %i.ch
  %i.dk = fmul float %i.bd, %i.di
  %i.dl = fmul float %i.cf, %i.dj
  %i.dm = insertelement <2 x float> %i.ce, float %i.cg, i64 0
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.dm, <2 x float> %i.do)
  %i.dq = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dp, %i.dr
  %i.dt = fmul float %i.dd, %i.dh
  %i.du = fmul float %i.dg, 5.000000e-01
  %.sroa.528.8.vec.insert31.i = insertelement <2 x float> poison, float %i.dt, i64 0
  %.sroa.528.12.vec.insert33.i = insertelement <2 x float> %.sroa.528.8.vec.insert31.i, float %i.du, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.ds, %bb.g ] ; 2 uses
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %.sroa.528.12.vec.insert33.i, %bb.g ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.653.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 6 uses
  %.sroa.052.4.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 1 ; 4 uses
  %i.dw = fmul float %.sroa.13.0, %.sroa.052.4.vec.extract
  %i.dx = tail call float @llvm.fmuladd.f32(float %.sroa.653.12.vec.extract, float %.sroa.069.0, float %i.dw)
  %.sroa.653.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.dy = fneg float %.sroa.653.8.vec.extract     ; 4 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.dy, float %.sroa.872.0, float %i.dx) ; 3 uses
  %i.dz = fmul float %.sroa.069.0, %.sroa.653.8.vec.extract
  %i.ea = tail call float @llvm.fmuladd.f32(float %.sroa.653.12.vec.extract, float %.sroa.872.0, float %i.dz)
  %.sroa.052.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 3 uses
  %i.eb = fneg float %.sroa.052.0.vec.extract     ; 4 uses
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %.sroa.13.0, float %i.ea) ; 3 uses
  %i.ed = fmul float %.sroa.872.0, %.sroa.052.0.vec.extract
  %i.ee = tail call float @llvm.fmuladd.f32(float %.sroa.653.12.vec.extract, float %.sroa.13.0, float %i.ed)
  %i.ef = fneg float %.sroa.052.4.vec.extract     ; 3 uses
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float %.sroa.069.0, float %i.ee) ; 3 uses
  %i.eh = fneg float %.sroa.872.0
  %i.ei = fmul float %.sroa.052.4.vec.extract, %i.eh
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eb, float %.sroa.069.0, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dy, float %.sroa.13.0, float %i.ej) ; 3 uses
  %i.el = fmul float %.sroa.653.12.vec.extract, %i.eg
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.dy, float %i.el)
  %i.en = tail call float @llvm.fmuladd.f32(float %5, float %i.ef, float %i.em)
  %i.eo = load float, ptr %2, align 4, !tbaa !11  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !11 ; 2 uses
  %i.et = fmul float %i.bt, %i.eq
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.bu, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.bn, float %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ex = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.ey = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ex, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fa)
  %i.ff = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fh, <2 x float> %i.fe)
  %i.fj = load <2 x float>, ptr %i.ew, align 8, !tbaa !11
  %i.fk = fadd <2 x float> %i.fj, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !11
  %i.fn = fadd float %i.ev, %i.fm
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <2 x float> %i.fk, ptr %i.fo, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 648
  store float %i.cj, ptr %i.fq, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 652
  store float 0.000000e+00, ptr %i.fr, align 4, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 656
  %6 = fmul float %.sroa.653.12.vec.extract, %5
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.eb, float %6)
  %7 = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dy, float %i.ft)
  %8 = fmul float %.sroa.653.12.vec.extract, %i.ec
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ef, float %8)
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eb, float %i.fu)
  %i.fw = insertelement <2 x float> poison, float %5, i64 0
  %i.fx = insertelement <2 x float> %.sroa.528.0.i, float %i.cg, i64 1
  %i.fy = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ec, float %.sroa.052.0.vec.extract, float %i.en) ; 3 uses
  %9 = fneg float %i.fz
  %10 = fmul float %i.cj, %9
  %11 = tail call float @llvm.fmuladd.f32(float %i.eg, float %.sroa.052.4.vec.extract, float %7) ; 3 uses
  %i.ga = insertelement <2 x float> %i.fw, float %11, i64 1
  %i.gb = insertelement <2 x float> %i.fy, float %10, i64 1
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.fx, <2 x float> %i.gb) ; 3 uses
  %i.gd = insertelement <2 x float> %i.gc, float %11, i64 1
  %i.ge = fneg <2 x float> %i.gd
  %i.gf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gg = insertelement <2 x float> %i.gf, float %i.cg, i64 0
  %i.gh = fmul <2 x float> %i.gg, %i.ge
  %i.gi = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x float> %i.gi, float %i.fz, i64 0
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.gj, <2 x float> %i.gh) ; 2 uses
  store float %11, ptr %i.dv, align 8, !tbaa !11
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  store float %i.gl, ptr %i.fp, align 4, !tbaa !11
  store <2 x float> %i.gc, ptr %i.fs, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 664
  store float %i.ch, ptr %i.gm, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 668
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.fz, ptr %i.go, align 8, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.gq = extractelement <2 x float> %i.gk, i64 1
  store float %i.gq, ptr %i.gp, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 680
  store float %i.cg, ptr %i.gr, align 8, !tbaa !11
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 684
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !11
  %i.gt = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.gt, ptr %i.gu, align 4, !tbaa !29
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !27
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !27
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.o, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.v = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  store float %i.v, ptr %i.w, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float f0x3F666666, float 3.000000e-01>, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.o, i8 0, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i8 %i.a, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30, !nonnull !31, !align !32 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load float, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.z = load float, ptr %i.y, align 4, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.af = load float, ptr %i.ae, align 8, !tbaa !11
  %i.ag = load float, ptr %i.w, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = fmul float %i.z, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ag, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.am = load float, ptr %i.al, align 8, !tbaa !11
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.am, float %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ap = load <2 x float>, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.z, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.au = fmul <2 x float> %i.as, %i.at
  %i.av = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ax, <2 x float> %i.au)
  %i.az = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.af, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.ay)
  %i.be = load <2 x float>, ptr %i.ao, align 8, !tbaa !11
  %i.bf = fadd <2 x float> %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !11
  %i.bi = fadd float %i.an, %i.bh
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  store <2 x float> %i.bf, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.bj = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 762
  %i.b = load i8, ptr %i.a, align 2, !tbaa !33, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.g = load i8, ptr %i.f, align 8, !tbaa !37, !range !34, !noundef !31
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30, !nonnull !31, !align !32 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load float, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38, !nonnull !31, !align !32 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
end_hunk_0
