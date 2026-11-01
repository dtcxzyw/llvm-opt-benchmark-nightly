Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHingeConstraint?download=true
inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b:.preheader.preheader
  store i8 %i.a, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !27 ; 6 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ogt float %i.i, f0x3F3504F3
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul nnan float %i.h, %i.h
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.m) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.p = fneg float %i.h
  %i.q = fmul float %i.o, %i.p                    ; 2 uses
  %i.r = fmul float %i.l, %i.o                    ; 2 uses
  %i.s = fmul float %i.n, %i.o
  %i.t = load float, ptr %3, align 4, !tbaa !27   ; 2 uses
  %i.u = fneg float %i.t
  %i.v = fmul float %i.r, %i.u
  %i.w = fmul float %i.t, %i.q
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.x = load float, ptr %3, align 4, !tbaa !27   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !27 ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.aa) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ac = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ad = fneg float %i.z
  %i.ae = fmul float %i.ac, %i.ad                 ; 2 uses
  %i.af = fmul float %i.x, %i.ac                  ; 2 uses
  %i.ag = fneg float %i.h
  %i.ah = fmul float %i.af, %i.ag
  %i.ai = fmul float %i.h, %i.ae
  %i.aj = fmul float %i.ab, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.11.0 = phi float [ %i.r, %bb.a ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.sroa.777.0 = phi float [ %i.q, %bb.a ], [ %i.af, %bb.b ] ; 4 uses
  %.sroa.075.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.b ] ; 3 uses
  %.sink48.i = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ]
  %.sink47.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.b ]
  %.sink.i = phi float [ %i.w, %bb.a ], [ %i.aj, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
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
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = load <2 x float>, ptr %i.al, align 4, !tbaa !27 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !27 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !27 ; 2 uses
  %i.bj = extractelement <2 x float> %i.be, i64 0 ; 7 uses
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !27 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.br = load <2 x float>, ptr %i.ba, align 8, !tbaa !27 ; 4 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bb, float %i.bk)
  %i.bt = extractelement <2 x float> %i.be, i64 1 ; 7 uses
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bt, float %i.bs) ; 6 uses
  %i.bv = load <2 x float>, ptr %i.bn, align 8, !tbaa !27 ; 3 uses
  %i.bw = load float, ptr %i.bo, align 4, !tbaa !27
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.br, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.bv, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %i.cb = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cc, <2 x float> %i.bz)
  %i.ce = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bd, i64 1
  %i.cg = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.cd) ; 5 uses
  %i.ci = fmul float %i.bj, %i.bu
  %i.cj = extractelement <2 x float> %i.ch, i64 1 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.cj, float %i.ci)
  %i.cl = extractelement <2 x float> %i.ch, i64 0 ; 3 uses
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.cl, float %i.ck) ; 2 uses
  %i.cn = fcmp olt float %i.cm, f0xBF7FFFFE
  br i1 %i.cn, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.bt)
  %i.cp = fcmp ogt float %i.co, f0x3F3504F3
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = fmul nnan float %i.bt, %i.bt
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.cq)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cr)
  %i.cs = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ct = fneg float %i.bt
  %i.cu = fmul float %i.cs, %i.ct
  %i.cv = fmul float %i.bj, %i.cs
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.f:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <2 x float> %i.be, %i.be
  %i.cw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.cw)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.cx)
  %i.cy = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.cz = fneg float %i.bj
  %i.da = fmul float %i.cy, %i.cz
  %i.db = fmul float %i.bb, %i.cy
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.f, %bb.e
  %.sroa.8.0.i = phi float [ %i.cv, %bb.e ], [ 0.000000e+00, %bb.f ]
  %.sroa.517.0.i = phi float [ %i.cu, %bb.e ], [ %i.db, %bb.f ]
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.da, %bb.f ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.dc = fneg float %i.cj
  %i.dd = fmul float %i.bj, %i.dc
  %i.de = fadd float %i.cm, 1.000000e+00
  %i.df = fmul float %i.de, 2.000000e+00
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bu, float %i.dd)
  %i.dh = tail call noundef float @sqrtf(float noundef %i.df) #17, !tbaa !7 ; 2 uses
  %i.di = fdiv float 1.000000e+00, %i.dh          ; 2 uses
  %i.dj = fneg float %i.cl
  %i.dk = fmul float %i.bb, %i.dj
  %i.dl = fneg float %i.bu
  %i.dm = fmul float %i.bt, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ch, <2 x float> %i.do)
  %i.dq = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dp, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dh, i64 1
  %i.dv = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.di, i64 0
  %i.dw = fmul <2 x float> %i.du, %i.dv
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.ds, %bb.g ] ; 2 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dw, %bb.g ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dy = fneg float %.sroa.777.0
  %i.dz = insertelement <4 x float> poison, float %.sroa.777.0, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %.sroa.11.0, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %.sroa.075.0, i64 2 ; 2 uses
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3
  %i.ed = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ef = fmul <4 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.eh = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ei = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 2 uses
  %i.ej = fneg <4 x float> %i.ei                  ; 4 uses
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.eh, <4 x float> %i.ef)
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.en = insertelement <4 x float> poison, float %.sroa.075.0, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.777.0, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %.sroa.11.0, i64 2
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.eq, <4 x float> %i.em) ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.et = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 3 uses
  %i.eu = load float, ptr %i.es, align 4, !tbaa !27 ; 2 uses
  %i.ev = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.et, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.ew = shufflevector <4 x float> %i.er, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ex = fmul <4 x float> %i.ev, %i.ew
  %i.ey = shufflevector <4 x float> %i.er, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.ez = shufflevector <4 x float> %i.ej, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.ez, <4 x float> %i.ex)
  %i.fb = shufflevector <4 x float> %i.er, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fc = shufflevector <4 x float> %i.ej, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fc, <4 x float> %i.fa)
  %i.fe = insertelement <4 x float> %i.er, float 0.000000e+00, i64 3
  %i.ff = insertelement <4 x float> %i.ei, float -0.000000e+00, i64 3
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.ff, <4 x float> %i.fd) ; 6 uses
  %i.fh = extractelement <4 x float> %i.fg, i64 2
  %i.fi = fneg float %i.fh
  %i.fj = extractelement <4 x float> %i.fg, i64 0
  %i.fk = shufflevector <2 x float> %i.ch, <2 x float> %i.br, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.fl = insertelement <4 x float> %i.fk, float %i.bu, i64 1
  %i.fm = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fn = fneg <4 x float> %i.fg
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fp = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fr = fmul <4 x float> %i.fl, %i.fq
  %i.fs = insertelement <4 x float> poison, float %i.bu, i64 2
  %i.ft = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> %i.fs, <4 x float> %i.ft, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.fv = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fg, <4 x float> %i.fr) ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !27 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gb = fmul float %i.bi, %i.eu
  %i.gc = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.gc, float %i.gb)
  %i.ge = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.bm, i64 1
  %i.gg = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.gj = insertelement <2 x float> %i.gi, float %i.gd, i64 1
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = load <2 x float>, ptr %i.ga, align 8, !tbaa !27
  %i.gm = fadd <2 x float> %i.gl, %i.gk
  %i.gn = fmul float %i.bw, %i.eu
  %i.go = extractelement <2 x float> %i.bv, i64 0
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.go, float %i.gc, float %i.gn)
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.fz, float %i.gp)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !27
  %i.gt = fadd float %i.gq, %i.gs
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gt, i64 0
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %i.gm, ptr %i.gu, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  store float %i.fj, ptr %i.dx, align 8, !tbaa !27
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.gw = shufflevector <4 x float> %i.fx, <4 x float> %i.fv, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.gx = insertelement <4 x float> %i.gw, float 0.000000e+00, i64 2
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.gy, ptr %i.gv, align 4, !tbaa !27
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ha = extractelement <4 x float> %i.fx, i64 0
  store float %i.ha, ptr %i.gz, align 4, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.bu, ptr %i.hb, align 8, !tbaa !27
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.hd = shufflevector <4 x float> %i.fg, <4 x float> %i.fx, <4 x i32> <i32 poison, i32 2, i32 5, i32 poison>
  %i.he = insertelement <4 x float> %i.hd, float 0.000000e+00, i64 0
  %i.hf = insertelement <4 x float> %i.he, float %i.cl, i64 3
  store <4 x float> %i.hf, ptr %i.hc, align 4, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.hh, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.hi, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.hj, align 2, !tbaa !29
  %i.hk = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.hk, ptr %i.hl, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !26
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = load float, ptr %i.x, align 8, !tbaa !27
  %i.z = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.ab = load float, ptr %i.r, align 4, !tbaa !27 ; 2 uses
  %i.ac = load float, ptr %i.u, align 8, !tbaa !27 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.aj = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = insertelement <2 x float> poison, float %i.t, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.y, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = load <2 x float>, ptr %i.v, align 8, !tbaa !27
  %i.as = fadd <2 x float> %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = fmul float %i.ab, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.z, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ba = load float, ptr %i.az, align 8, !tbaa !27
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ac, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !27
  %i.be = fadd float %i.bd, %i.bb
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.as, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
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
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0) unnamed_addr #2 align 2 {
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
end_hunk_0
