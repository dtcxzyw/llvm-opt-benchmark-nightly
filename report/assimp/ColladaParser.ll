Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaParser?download=true
inline.NumInlined: 6573
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not158 = icmp eq ptr %i.g, %i.i
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load <4 x float>, ptr %0, align 4
  %i.n = load <4 x float>, ptr %i.j, align 4
  %i.o = load <4 x float>, ptr %i.k, align 4
  %i.p = load <4 x float>, ptr %i.l, align 4
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  store <4 x float> %i.rk, ptr %0, align 4
  store <4 x float> %i.rl, ptr %i.j, align 4
  store <4 x float> %i.rm, ptr %i.k, align 4
  store <4 x float> %i.rn, ptr %i.l, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.rt, %bb.h ] ; 22 uses
  %i.q = phi <4 x float> [ %i.m, %.lr.ph ], [ %i.rk, %bb.h ]
  %i.r = phi <4 x float> [ %i.n, %.lr.ph ], [ %i.rl, %bb.h ]
  %i.s = phi <4 x float> [ %i.o, %.lr.ph ], [ %i.rm, %bb.h ]
  %i.t = phi <4 x float> [ %i.p, %.lr.ph ], [ %i.rn, %bb.h ]
  %i.u = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.ro, %bb.h ] ; 18 uses
  %i.v = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.rp, %bb.h ] ; 19 uses
  %i.w = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.rq, %bb.h ] ; 10 uses
  %i.x = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.rr, %bb.h ] ; 9 uses
  %i.y = phi <8 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.rs, %bb.h ] ; 49 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 8 uses
  %i.aa = extractelement <2 x float> %i.x, i64 0  ; 6 uses
  %i.ab = extractelement <2 x float> %i.w, i64 1  ; 8 uses
  %i.ac = extractelement <2 x float> %i.w, i64 0  ; 5 uses
  %i.ad = extractelement <2 x float> %i.v, i64 1  ; 4 uses
  %i.ae = extractelement <2 x float> %i.u, i64 1  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  switch i32 %i.ag, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.aj = load float, ptr %i.ai, align 4          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.al = load <2 x float>, ptr %i.ah, align 4    ; 3 uses
  %i.am = load <2 x float>, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ao = load float, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.aq = load float, ptr %i.ap, align 4          ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.as = load float, ptr %i.ar, align 8          ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %i.au = load float, ptr %i.at, align 4          ; 4 uses
  %i.av = fmul float %i.as, %i.as
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.aw) ; 2 uses
  %i.ay = fcmp oeq float %i.ax, 0.000000e+00
  br i1 %i.ay, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.az = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ba = fmul float %i.aq, %i.az
  %i.bb = fmul float %i.as, %i.az
  %i.bc = fmul float %i.au, %i.az
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0130.0 = phi float [ %i.aq, %bb.c ], [ %i.ba, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.6131.0 = phi float [ %i.as, %bb.c ], [ %i.bb, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 6 uses
  %.sroa.9132.0 = phi float [ %i.au, %bb.c ], [ %i.bc, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.bd = fsub <2 x float> %i.am, %i.al           ; 5 uses
  %i.be = fsub float %i.ao, %i.aj                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bg = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bf)
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bh) ; 2 uses
  %i.bj = fcmp oeq float %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN10aiVector3tIfE9NormalizeEv.exit46, label %_ZN10aiVector3tIfEdVEf.exit.i44

_ZN10aiVector3tIfEdVEf.exit.i44:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i45 = tail call noundef float @llvm.sqrt.f32(float %i.bi)
  %i.bk = fdiv float 1.000000e+00, %sqrt.i.i45    ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bd, %i.bm
  %i.bo = fmul float %i.be, %i.bk
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.bd, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bn, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 2 uses
  %.sroa.8123.0 = phi float [ %i.be, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bo, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1 ; 3 uses
  %i.bp = fneg float %.sroa.6131.0
  %i.bq = fmul float %.sroa.8123.0, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %.sroa.0124.4.vec.extract128, float %.sroa.9132.0, float %i.bq) ; 4 uses
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0 ; 3 uses
  %i.bs = fneg float %.sroa.9132.0
  %i.bt = fmul float %.sroa.0124.0.vec.extract126, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %.sroa.8123.0, float %.sroa.0130.0, float %i.bt) ; 4 uses
  %i.bv = fneg float %.sroa.0130.0
  %i.bw = fmul float %.sroa.0124.4.vec.extract128, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %.sroa.6131.0, float %i.bw) ; 4 uses
  %.sroa.0.0.vec.insert.i47 = insertelement <2 x float> poison, float %i.br, i64 0
  %.sroa.0.4.vec.insert.i48 = insertelement <2 x float> %.sroa.0.0.vec.insert.i47, float %i.bu, i64 1
  %i.by = fmul float %i.bu, %i.bu
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bz) ; 2 uses
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  br i1 %i.cb, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cc = fdiv float 1.000000e+00, %sqrt.i.i52    ; 3 uses
  %i.cd = fmul float %i.br, %i.cc
  %.sroa.0112.0.vec.insert = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ce = fmul float %i.bu, %i.cc
  %.sroa.0112.4.vec.insert = insertelement <2 x float> %.sroa.0112.0.vec.insert, float %i.ce, i64 1
  %i.cf = fmul float %i.bx, %i.cc
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i48, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %.sroa.0112.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bx, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.cf, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %.sroa.0112.4.vec.extract118 = extractelement <2 x float> %.sroa.0112.0, i64 1 ; 4 uses
  %i.cg = fneg float %.sroa.0124.0.vec.extract126
  %i.ch = fneg float %.sroa.0124.4.vec.extract128
  %i.ci = fneg float %.sroa.8123.0
  %i.cj = fmul float %.sroa.0112.4.vec.extract118, %i.ae
  %i.ck = fmul float %.sroa.6131.0, %i.ae
  %i.cl = insertelement <2 x float> %.sroa.0112.0, float %.sroa.0130.0, i64 1 ; 4 uses
  %i.cm = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ck, i64 1
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.co)
  %i.cq = insertelement <2 x float> poison, float %.sroa.9119.0, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %.sroa.9132.0, i64 1 ; 4 uses
  %i.cs = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> zeroinitializer, <2 x float> %i.ct) ; 2 uses
  %i.cw = fmul float %.sroa.0112.4.vec.extract118, %i.ad
  %i.cx = fmul float %.sroa.6131.0, %i.ad
  %i.cy = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cx, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cy, <2 x float> %i.da)
  %i.dc = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.dc, <2 x float> %i.db)
  %i.de = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> zeroinitializer, <2 x float> %i.dd) ; 2 uses
  %i.dg = fmul float %.sroa.0112.4.vec.extract118, %i.ab
  %i.dh = fmul float %.sroa.6131.0, %i.ab
  %i.di = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.dh, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> zeroinitializer, <2 x float> %i.dn) ; 2 uses
  %i.dq = fmul float %.sroa.0112.4.vec.extract118, %i.z
  %i.dr = fmul float %.sroa.6131.0, %i.z
  %i.ds = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dr, i64 1
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.ds, <2 x float> %i.du)
  %i.dw = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer, <2 x float> %i.dx) ; 2 uses
  %i.ea = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float %i.ab, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.z, i64 3 ; 2 uses
  %i.ed = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fmul <4 x float> %i.ec, %i.ee
  %i.eg = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %i.ac, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.aa, i64 3 ; 2 uses
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ek, <4 x float> %i.ef)
  %i.em = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %3 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.eo, <4 x float> %i.el)
  %4 = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> zeroinitializer, <4 x float> %3) ; 5 uses
  %i.eq = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.er = fmul <4 x float> %i.eq, %i.ec
  %i.es = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> zeroinitializer
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.ek, <4 x float> %i.er)
  %i.eu = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.eo, <4 x float> %i.et)
  %i.ex = fadd <4 x float> %4, %i.ew              ; 5 uses
  %i.ey = shufflevector <4 x float> %i.ep, <4 x float> %i.ex, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ez = shufflevector <4 x float> %i.ep, <4 x float> %i.ex, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.fa = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fc = shufflevector <4 x float> %i.ep, <4 x float> %i.ex, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.fd = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ff = shufflevector <4 x float> %i.ep, <4 x float> %i.ex, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.fg = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = shufflevector <4 x float> %i.ep, <4 x float> %i.ex, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.fj = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.fn = load float, ptr %i.fm, align 8
  %i.fo = fmul float %i.fn, f0x40490FDB
  %i.fp = fdiv float %i.fo, 1.800000e+02          ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.fr = load float, ptr %i.fq, align 4          ; 4 uses
  %i.fs = fmul float %i.ae, 0.000000e+00
  %i.ft = load <2 x float>, ptr %i.fl, align 4    ; 5 uses
  %i.fu = tail call noundef float @cosf(float noundef %i.fp) #28 ; 4 uses
  %i.fv = tail call noundef float @sinf(float noundef %i.fp) #28 ; 3 uses
  %i.fw = fsub float 1.000000e+00, %i.fu          ; 2 uses
  %i.fx = fmul float %i.fr, %i.fv                 ; 2 uses
  %i.fy = fneg float %i.fx
  %i.fz = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x float> %i.ft, %i.ga           ; 4 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fy, i64 1
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ft, <2 x float> %i.ge) ; 4 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 1
  %i.gh = fmul float %i.gg, %i.fv                 ; 2 uses
  %i.gi = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.fu, i64 1
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gi, <2 x float> %i.gk) ; 4 uses
  %i.gm = extractelement <2 x float> %i.ft, i64 0
  %i.gn = fmul float %i.gm, %i.fv                 ; 2 uses
  %i.go = fneg float %i.gn
  %i.gp = fneg float %i.gh
  %i.gq = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gn, i64 1
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gr, <2 x float> %i.gt) ; 4 uses
  %i.gv = fmul float %i.fr, %i.fw
  %i.gw = shufflevector <2 x float> %i.u, <2 x float> %i.gb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gx = insertelement <4 x float> %i.gw, float %i.gv, i64 3
  %i.gy = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.fr, i64 1
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ha = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gh, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.go, i64 2
  %i.hd = insertelement <4 x float> %i.hc, float %i.fu, i64 3
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.gz, <4 x float> %i.hd) ; 4 uses
  %i.hf = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hg = fmul <2 x float> %i.gl, %i.hf
  %i.hh = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.hh, <2 x float> %i.hg)
  %i.hj = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.hj, <2 x float> %i.hi)
  %i.hl = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> zeroinitializer, <2 x float> %i.hk) ; 2 uses
  %i.hn = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.gl, %i.hn
  %i.hp = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.hp, <2 x float> %i.ho)
  %i.hr = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.hr, <2 x float> %i.hq)
  %i.ht = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> zeroinitializer, <2 x float> %i.hs) ; 2 uses
  %i.hv = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = fmul <2 x float> %i.gl, %i.hv
  %i.hx = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.hx, <2 x float> %i.hw)
  %i.hz = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.hz, <2 x float> %i.hy)
  %i.ib = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> zeroinitializer, <2 x float> %i.ia) ; 2 uses
  %i.id = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = fmul <2 x float> %i.gl, %i.id
  %i.if = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.if, <2 x float> %i.ie)
  %i.ih = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.ih, <2 x float> %i.ig)
  %i.ij = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> zeroinitializer, <2 x float> %i.ii) ; 2 uses
  %i.il = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.im = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.in = insertelement <4 x float> %i.im, float %i.ab, i64 2
  %i.io = insertelement <4 x float> %i.in, float %i.z, i64 3 ; 2 uses
  %i.ip = fmul <4 x float> %i.il, %i.io
  %i.iq = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ir = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.is = insertelement <4 x float> %i.ir, float %i.ac, i64 2
  %i.it = insertelement <4 x float> %i.is, float %i.aa, i64 3
  %i.iu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> %i.it, <4 x float> %i.ip)
  %i.iv = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.iw = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> %i.iw, <4 x float> %i.iu)
  %i.iy = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.iz = shufflevector <4 x float> %i.he, <4 x float> %i.iy, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> %i.io, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jb = fmul <4 x float> %i.ja, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.jc = shufflevector <2 x float> %i.v, <2 x float> %i.w, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.jd = insertelement <4 x float> %i.jc, float -0.000000e+00, i64 0
  %i.je = insertelement <4 x float> %i.jd, float %i.aa, i64 3
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> zeroinitializer, <4 x float> %i.jb)
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iw, <4 x float> zeroinitializer, <4 x float> %i.jf)
  %i.jh = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ji = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> zeroinitializer, <4 x float> %i.ix) ; 5 uses
  %i.jj = fadd <4 x float> %i.jh, %i.jg           ; 5 uses
  %i.jk = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jl = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.jm = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> %i.jl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jo = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.jp = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jr = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.js = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ju = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.jv = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.jx = extractelement <2 x float> %i.v, i64 0
  %i.jy = extractelement <2 x float> %i.u, i64 0
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.ka = load float, ptr %i.jz, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.kc = load float, ptr %i.kb, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ke = load float, ptr %i.kd, align 4
  %i.kf = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.kg = insertelement <4 x float> %i.kf, float %i.ab, i64 2
  %i.kh = insertelement <4 x float> %i.kg, float %i.z, i64 3 ; 2 uses
  %i.ki = fmul <4 x float> %i.kh, zeroinitializer ; 2 uses
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.jy, float 0.000000e+00, float %i.ae)
  %i.kk = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> zeroinitializer
  %i.kl = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.km = tail call float @llvm.fmuladd.f32(float %i.jx, float 0.000000e+00, float %i.ad)
  %i.kn = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ko = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.ab)
  %i.kq = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kr = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.ks = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kt = insertelement <4 x float> %i.ks, float %i.ac, i64 2
  %i.ku = insertelement <4 x float> %i.kt, float %i.aa, i64 3 ; 3 uses
  %i.kv = fadd <4 x float> %i.ku, %i.ki           ; 4 uses
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.kx = insertelement <2 x float> %i.kw, float %i.kj, i64 1
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> zeroinitializer, <2 x float> %i.kx)
  %i.kz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> zeroinitializer, <2 x float> %i.ky) ; 2 uses
  %i.la = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lb = insertelement <2 x float> %i.la, float %i.km, i64 1
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> zeroinitializer, <2 x float> %i.lb)
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> zeroinitializer, <2 x float> %i.lc) ; 2 uses
  %i.le = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.lf = insertelement <2 x float> %i.le, float %i.kp, i64 1
  %i.lg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> zeroinitializer, <2 x float> %i.lf)
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> zeroinitializer, <2 x float> %i.lg) ; 2 uses
  %i.li = tail call float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.z)
  %i.lj = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.lk = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ll = insertelement <2 x float> %i.lk, float %i.li, i64 1
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> zeroinitializer, <2 x float> %i.ll)
  %i.ln = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> zeroinitializer, <2 x float> %i.lm) ; 2 uses
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> zeroinitializer, <4 x float> %i.ki)
  %i.lq = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.lr = fadd <4 x float> %i.lq, %i.lp
  %5 = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %6 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> zeroinitializer, <4 x float> %i.lr) ; 5 uses
  %i.ls = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = fmul <4 x float> %i.lt, %i.kh
  %i.lv = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.ku, <4 x float> %i.lu)
  %i.ly = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lz, <4 x float> %i.lq, <4 x float> %i.lx)
  %i.mb = fadd <4 x float> %5, %i.ma              ; 5 uses
  %i.mc = shufflevector <4 x float> %6, <4 x float> %i.mb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.md = shufflevector <4 x float> %6, <4 x float> %i.mb, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.me = shufflevector <2 x float> %i.kz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mg = shufflevector <4 x float> %6, <4 x float> %i.mb, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.mh = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mj = shufflevector <4 x float> %6, <4 x float> %i.mb, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.mk = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mm = shufflevector <4 x float> %6, <4 x float> %i.mb, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.mn = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.mm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ms = load float, ptr %i.mr, align 4
  %i.mt = load <2 x float>, ptr %i.mp, align 4
  %i.mu = load float, ptr %i.mq, align 8          ; 4 uses
  %i.mv = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.mw = insertelement <4 x float> %i.mv, float %i.ab, i64 2
  %i.mx = insertelement <4 x float> %i.mw, float %i.z, i64 3
  %i.my = fmul <4 x float> %i.mx, zeroinitializer ; 5 uses
  %i.mz = fmul float %i.mu, %i.ae
  %i.na = insertelement <2 x float> %i.mt, float 0.000000e+00, i64 1 ; 4 uses
  %i.nb = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.nd = insertelement <2 x float> %i.nc, float %i.mz, i64 1
  %i.ne = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nb, <2 x float> %i.nd)
  %i.nf = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> zeroinitializer
  %i.ng = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> zeroinitializer, <2 x float> %i.ne)
  %i.nh = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.ni = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nh, <2 x float> zeroinitializer, <2 x float> %i.ng) ; 2 uses
  %i.nj = fmul float %i.mu, %i.ad
  %i.nk = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nm = insertelement <2 x float> %i.nl, float %i.nj, i64 1
  %i.nn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nk, <2 x float> %i.nm)
  %i.no = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.np = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> zeroinitializer, <2 x float> %i.nn)
  %i.nq = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.nr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> zeroinitializer, <2 x float> %i.np) ; 2 uses
  %i.ns = fmul float %i.mu, %i.ab
  %i.nt = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.nv = insertelement <2 x float> %i.nu, float %i.ns, i64 1
  %i.nw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nt, <2 x float> %i.nv)
  %i.nx = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ny = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> zeroinitializer, <2 x float> %i.nw)
  %i.nz = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.oa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> zeroinitializer, <2 x float> %i.ny) ; 2 uses
  %i.ob = fmul float %i.mu, %i.z
  %i.oc = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.oe = insertelement <2 x float> %i.od, float %i.ob, i64 1
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.oc, <2 x float> %i.oe)
  %i.og = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.oh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> zeroinitializer, <2 x float> %i.of)
  %i.oi = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.oj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oi, <2 x float> zeroinitializer, <2 x float> %i.oh) ; 2 uses
  %i.ok = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ol = insertelement <4 x float> %i.ok, float %i.ac, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.aa, i64 3
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> zeroinitializer, <4 x float> %i.my) ; 2 uses
  %i.oo = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.or = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.op, <4 x float> %i.oq, <4 x float> %i.on)
  %i.os = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> zeroinitializer, <4 x float> %i.or) ; 5 uses
  %i.ou = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> zeroinitializer, <4 x float> %i.on)
  %i.ov = fadd <4 x float> %i.os, %i.ou           ; 5 uses
  %i.ow = shufflevector <4 x float> %i.ot, <4 x float> %i.ov, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ox = shufflevector <4 x float> %i.ot, <4 x float> %i.ov, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.oy = shufflevector <2 x float> %i.ni, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pa = shufflevector <4 x float> %i.ot, <4 x float> %i.ov, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.pb = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> %i.pa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pd = shufflevector <4 x float> %i.ot, <4 x float> %i.ov, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.pe = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> %i.pd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pg = shufflevector <4 x float> %i.ot, <4 x float> %i.ov, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.ph = shufflevector <2 x float> %i.oj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> %i.pg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 52
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 84
  %i.pn = load <4 x float>, ptr %i.pj, align 4    ; 4 uses
  %i.po = load <4 x float>, ptr %i.pk, align 4    ; 4 uses
  %i.pp = load <4 x float>, ptr %i.pl, align 4    ; 4 uses
  %i.pq = load <4 x float>, ptr %i.pm, align 4    ; 4 uses
  %i.pr = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ps = fmul <4 x float> %i.po, %i.pr
  %i.pt = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> zeroinitializer
  %i.pu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.pt, <4 x float> %i.ps)
  %i.pv = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> zeroinitializer
  %i.pw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.pv, <4 x float> %i.pu)
  %i.px = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.py = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.px, <4 x float> %i.pw) ; 3 uses
  %i.pz = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qa = fmul <4 x float> %i.po, %i.pz
  %i.qb = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> zeroinitializer
  %i.qc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.qb, <4 x float> %i.qa)
  %i.qd = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.qd, <4 x float> %i.qc)
  %i.qf = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.qg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.qf, <4 x float> %i.qe) ; 3 uses
  %i.qh = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qi = fmul <4 x float> %i.po, %i.qh
  %i.qj = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> zeroinitializer
  %i.qk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.qj, <4 x float> %i.qi)
  %i.ql = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.qm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.ql, <4 x float> %i.qk)
  %i.qn = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.qo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.qn, <4 x float> %i.qm) ; 4 uses
  %i.qp = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qq = fmul <4 x float> %i.po, %i.qp
  %i.qr = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> zeroinitializer
  %i.qs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.qr, <4 x float> %i.qq)
  %i.qt = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.qu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.qt, <4 x float> %i.qs)
  %i.qv = shufflevector <8 x float> %i.y, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.qw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.qv, <4 x float> %i.qu) ; 4 uses
  %i.qx = shufflevector <4 x float> %i.py, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.qy = shufflevector <4 x float> %i.qg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.qz = shufflevector <4 x float> %i.qo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ra = shufflevector <4 x float> %i.qw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rb = shufflevector <4 x float> %i.py, <4 x float> %i.qg, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 3, i32 7, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.qo, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rd = shufflevector <8 x float> %i.rb, <8 x float> %i.rc, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.re = shufflevector <4 x float> %i.qw, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rf = shufflevector <8 x float> %i.rd, <8 x float> %i.re, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 4, i32 5, i32 poison, i32 poison>
  %i.rg = shufflevector <4 x float> %i.qo, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rh = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.ri = shufflevector <4 x float> %i.qw, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rj = shufflevector <8 x float> %i.rh, <8 x float> %i.ri, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN10aiVector3tIfE9NormalizeEv.exit53
  %i.rk = phi <4 x float> [ %i.q, %bb.b ], [ %i.py, %bb.g ], [ %i.oz, %bb.f ], [ %i.mf, %bb.e ], [ %i.jn, %bb.d ], [ %i.fb, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 2 uses
  %i.rl = phi <4 x float> [ %i.r, %bb.b ], [ %i.qg, %bb.g ], [ %i.pc, %bb.f ], [ %i.mi, %bb.e ], [ %i.jq, %bb.d ], [ %i.fe, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 2 uses
  %i.rm = phi <4 x float> [ %i.s, %bb.b ], [ %i.qo, %bb.g ], [ %i.pf, %bb.f ], [ %i.ml, %bb.e ], [ %i.jt, %bb.d ], [ %i.fh, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 2 uses
  %i.rn = phi <4 x float> [ %i.t, %bb.b ], [ %i.qw, %bb.g ], [ %i.pi, %bb.f ], [ %i.mo, %bb.e ], [ %i.jw, %bb.d ], [ %i.fk, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ] ; 2 uses
  %i.ro = phi <2 x float> [ %i.u, %bb.b ], [ %i.qx, %bb.g ], [ %i.ni, %bb.f ], [ %i.kz, %bb.e ], [ %i.hm, %bb.d ], [ %i.cv, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ]
  %i.rp = phi <2 x float> [ %i.v, %bb.b ], [ %i.qy, %bb.g ], [ %i.nr, %bb.f ], [ %i.ld, %bb.e ], [ %i.hu, %bb.d ], [ %i.df, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ]
  %i.rq = phi <2 x float> [ %i.w, %bb.b ], [ %i.qz, %bb.g ], [ %i.oa, %bb.f ], [ %i.lh, %bb.e ], [ %i.ic, %bb.d ], [ %i.dp, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ]
  %i.rr = phi <2 x float> [ %i.x, %bb.b ], [ %i.ra, %bb.g ], [ %i.oj, %bb.f ], [ %i.lo, %bb.e ], [ %i.ik, %bb.d ], [ %i.dz, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ]
  %i.rs = phi <8 x float> [ %i.y, %bb.b ], [ %i.rj, %bb.g ], [ %i.ow, %bb.f ], [ %i.mc, %bb.e ], [ %i.jk, %bb.d ], [ %i.ey, %_ZN10aiVector3tIfE9NormalizeEv.exit53 ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.rt, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA28_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA13_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
end_hunk_0
