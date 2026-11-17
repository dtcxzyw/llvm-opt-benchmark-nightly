Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@process:bb.a
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %spec.select = select reassoc nsz arcp contract afn i1 %i.h, float %i.i, float 1.000000e+06 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !137
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !138
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l                   ; 9 uses
  %.sroa.0136.0.vec.insert = insertelement <4 x float> poison, float %spec.select, i64 0
  %.sroa.0136.12.vec.insert = shufflevector <4 x float> %.sroa.0136.0.vec.insert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.z = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.v
  %i.aa = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.w ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ab, i64 0
  %i.ad = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.x
  %i.af = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ae, float 1.000000e+06 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.y, align 4, !tbaa !12 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ag
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.am, %i.an
  %.sroa.0126.12.vec.insert173 = shufflevector <4 x float> %i.ac, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ap = fcmp reassoc nsz arcp contract afn une <2 x float> %i.aj, zeroinitializer
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aj
  %i.ar = select <2 x i1> %i.ap, <2 x float> %i.aq, <2 x float> splat (float 1.000000e+06) ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.af, 2.200000e+00
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, splat (float 2.200000e+00)
  %i.au = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.as, i64 0
  %i.av = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0123.12.vec.insert172 = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ay = load <4 x float>, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.az = load float, ptr %i.r, align 4, !tbaa !12
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 2, i32 3, i32 7>
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 0, i32 7>
  %i.bc = fmul reassoc nsz arcp contract afn <4 x float> %i.ba, %i.bb
  %i.bd = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.bc ; 2 uses
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %i.bf = extractelement <4 x float> %i.ay, i64 0
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, -2.000000e+00 ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.az
  %i.bi = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bh, i64 0
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bm = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bm
  %.sroa.0128.12.vec.insert171 = shufflevector <4 x float> %i.bk, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bo = load <2 x float>, ptr %i.aw, align 4, !tbaa !12 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.ax, align 4, !tbaa !12
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 1.000000e+00, i64 3
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bt, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.bv = shufflevector <4 x float> %i.bs, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.br, %i.bv ; 2 uses
  %i.bx = insertelement <4 x float> %i.bw, float 1.000000e+00, i64 3 ; 2 uses
  %i.by = add nsw i64 %i.p, 3
  %i.bz = and i64 %i.by, -4                       ; 4 uses
  %.not149 = icmp eq i64 %i.p, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !139 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !140 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !141
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, f0x3C23D70A
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ce, -1.000000e+00
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ci)
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fcmp reassoc nsz arcp contract afn ogt double %i.ck, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cc, -1.000000e+00
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cm)
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  %i.cp = fcmp reassoc nsz arcp contract afn ogt double %i.co, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cq = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cq)
  %i.cs = fpext reassoc nsz arcp contract afn float %i.cr to double
  %i.ct = fcmp reassoc nsz arcp contract afn ogt double %i.cs, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cu = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  switch i32 %i.ca, label %_process_legacy.exit [
    i32 2, label %.lr.ph.split.us.preheader
    i32 0, label %.lr.ph.split.us143.preheader
    i32 1, label %.lr.ph.split.us146.preheader
  ]

.lr.ph.split.us146.preheader:                     ; preds = %.lr.ph
  %i.da = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.cz
  br label %.lr.ph.split.us146

.lr.ph.split.us143.preheader:                     ; preds = %.lr.ph
  %i.db = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.cz
  br label %.lr.ph.split.us143

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.dc = insertelement <4 x float> poison, float %i.af, i64 0
  %i.dd = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_process_legacy.exit.us
  %.0142.us = phi i64 [ %i.df, %_process_legacy.exit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.df = add i64 %.0142.us, %i.bz                ; 3 uses
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.p) ; 2 uses
  %i.dh = shl i64 %.0142.us, 2                    ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh
  %i.dk = sub i64 %i.dg, %.0142.us
  %.not.i.us = icmp eq i64 %i.dg, %.0142.us
  br i1 %.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %dt_XYZ_to_Lab.exit.i.us
  %.01725.i.us = phi i64 [ %i.pr, %dt_XYZ_to_Lab.exit.i.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.dl = shl i64 %.01725.i.us, 2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dm, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = fmul reassoc nsz arcp contract afn float %i.do, 8.620690e-03
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !12
  %i.ds = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dr, 2.000000e-03
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-03
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dq, f0x3E0D3DCB ; 5 uses
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.dv
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dv, %i.dt ; 4 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dx ; 2 uses
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dv, %i.du ; 3 uses
  %i.ea = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dv, i64 1
  %i.ec = insertelement <4 x float> %i.eb, float %i.dz, i64 3 ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ed, splat (float f0x3E53DCB1)
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dz, %i.dz
  %i.eg = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.dx, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 3
  %i.ek = insertelement <4 x float> %i.ec, float %i.dy, i64 2
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.ej, %i.ek
  %i.em = fmul reassoc nsz arcp contract afn <4 x float> %i.ed, splat (float f0x3E038026)
  %i.en = fadd reassoc nsz arcp contract afn <4 x float> %i.em, splat (float f0xBC911AA6)
  %i.eo = select <4 x i1> %i.ee, <4 x float> %i.el, <4 x float> %i.en ; 4 uses
  %i.ep = shufflevector <4 x float> <float f0x3FCEF57D, float f0x3F719831, float f0x3E6A7CB9, float poison>, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eq = fmul reassoc nsz arcp contract afn <4 x float> %i.ep, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.es = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.et = fmul reassoc nsz arcp contract afn <4 x float> %i.es, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.eu = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn <4 x float> %i.eq, %i.eu
  %i.ew = fadd reassoc nsz arcp contract afn <4 x float> %i.eq, %i.eu
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ey = fsub reassoc nsz arcp contract afn <4 x float> %i.er, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn <4 x float> %i.er, %i.ex
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fb = fadd reassoc nsz arcp contract afn <4 x float> %i.fa, %i.et ; 5 uses
  %i.fc = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, %i.et ; 2 uses
  %i.fd = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fe = bitcast <4 x float> %i.fd to <4 x i32>  ; 2 uses
  %i.ff = and <4 x i32> %i.fe, splat (i32 8388607)
  %i.fg = or disjoint <4 x i32> %i.ff, splat (i32 1065353216)
  %i.fh = bitcast <4 x i32> %i.fg to <4 x float>  ; 5 uses
  %i.fi = lshr <4 x i32> %i.fe, splat (i32 23)
  %i.fj = and <4 x i32> %i.fi, splat (i32 255)
  %i.fk = add nsw <4 x i32> %i.fj, splat (i32 -127)
  %i.fl = sitofp <4 x i32> %i.fk to <4 x float>
  %i.fm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fh, splat (float f0x3D74552F)
  %i.fn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fm, splat (float f0xBEEE7397)
  %i.fo = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fn, %i.fh
  %i.fp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fo, splat (float f0x3FBD96DD)
  %i.fq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fp, %i.fh
  %i.fr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fq, splat (float f0xC02153F6)
  %i.fs = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fr, %i.fh
  %i.ft = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fs, splat (float f0x4038D96C)
  %i.fu = fadd fast <4 x float> %i.fh, splat (float -1.000000e+00)
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fu
  %i.fw = fadd reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fl
  %i.fx = fmul reassoc nsz arcp contract afn <4 x float> %i.fw, splat (float f0x3ED55555)
  %i.fy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fx, <4 x float> splat (float 1.290000e+02))
  %i.fz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fy, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.ga = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, splat (float -5.000000e-01)
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ga)
  %i.gc = sitofp reassoc nsz arcp contract afn <4 x i32> %i.gb to <4 x float> ; 5 uses
  %i.gd = extractelement <4 x float> %i.fb, i64 0 ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ugt float %i.gd, 3.130800e-03
  br i1 %i.ge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.gd, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit.i.us

bb.d:                                             ; preds = %.lr.ph.i.us
  %.sroa.014.0.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gc, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.fz, %i.gc
  %i.gg = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, f0x3C5DBE69
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, f0x3D5509F9
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.gg
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, f0x3E773CC5
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.gg
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, f0x3F3168B3
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %i.gg
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, f0x3F800016
  %i.gp = fptosi float %.sroa.014.0.vec.extract.i.i.i.i.us to i32
  %i.gq = shl i32 %i.gp, 23
  %i.gr = add i32 %i.gq, 1065353216
  %i.gs = bitcast i32 %i.gr to float
  %i.gt = fmul reassoc nnan nsz arcp contract afn float %i.gs, 1.055000e+00
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.go
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit.i.us

dt_XYZ_to_sRGB.exit.i.us:                         ; preds = %bb.d, %bb.c
  %i.gw = phi reassoc nsz arcp contract afn float [ %i.gf, %bb.c ], [ %i.gv, %bb.d ]
  %.sroa.014.4.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gc, i64 1
  %foldExtExtBinop175 = fsub reassoc nsz arcp contract afn <4 x float> %i.fz, %i.gc
  %i.gx = extractelement <4 x float> %foldExtExtBinop175, i64 1 ; 4 uses
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, f0x3C5DBE69
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, f0x3D5509F9
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gx
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, f0x3E773CC5
  %i.hc = fmul reassoc nsz arcp contract afn float %i.hb, %i.gx
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, f0x3F3168B3
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, %i.gx
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, f0x3F800016
  %i.hg = fptosi float %.sroa.014.4.vec.extract.i.i.i.i.us to i32
  %i.hh = shl i32 %i.hg, 23
  %i.hi = add i32 %i.hh, 1065353216
  %i.hj = bitcast i32 %i.hi to float
  %i.hk = extractelement <4 x float> %i.fb, i64 1 ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, 1.292000e+01
  %i.hm = fcmp reassoc nsz arcp contract afn ugt float %i.hk, 3.130800e-03
  %i.hn = fmul reassoc nnan nsz arcp contract afn float %i.hj, 1.055000e+00
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.hf
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, -5.500000e-02
  %i.hq = select reassoc nsz arcp contract afn i1 %i.hm, float %i.hp, float %i.hl
  %i.hr = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.hs = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.hr, splat (float 3.130800e-03)
  %i.ht = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hu = shufflevector <4 x float> %i.gc, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.hv = fsub reassoc nsz arcp contract afn <2 x float> %i.ht, %i.hu ; 4 uses
  %i.hw = fmul reassoc nsz arcp contract afn <2 x float> %i.hv, splat (float f0x3C5DBE69)
  %i.hx = fadd reassoc nsz arcp contract afn <2 x float> %i.hw, splat (float f0x3D5509F9)
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.hx, %i.hv
  %i.hz = fadd reassoc nsz arcp contract afn <2 x float> %i.hy, splat (float f0x3E773CC5)
  %i.ia = fmul reassoc nsz arcp contract afn <2 x float> %i.hz, %i.hv
  %i.ib = fadd reassoc nsz arcp contract afn <2 x float> %i.ia, splat (float f0x3F3168B3)
  %i.ic = fmul reassoc nsz arcp contract afn <2 x float> %i.ib, %i.hv
  %i.id = fadd reassoc nsz arcp contract afn <2 x float> %i.ic, splat (float f0x3F800016)
  %i.ie = fptosi <2 x float> %i.hu to <2 x i32>
  %i.if = shl <2 x i32> %i.ie, splat (i32 23)
  %i.ig = add <2 x i32> %i.if, splat (i32 1065353216)
  %i.ih = bitcast <2 x i32> %i.ig to <2 x float>
  %i.ii = extractelement <4 x float> %i.fb, i64 2
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, 1.292000e+01
  %i.ik = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ih, splat (float 1.055000e+00)
  %i.il = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, %i.id
  %i.im = fadd reassoc nsz arcp contract afn <2 x float> %i.il, splat (float -5.500000e-02)
  %i.in = insertelement <2 x float> %i.hr, float %i.ij, i64 0
  %i.io = select <2 x i1> %i.hs, <2 x float> %i.im, <2 x float> %i.in
  %i.ip = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.iq = insertelement <4 x float> %i.ip, float %i.hq, i64 1
  %i.ir = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.is = shufflevector <4 x float> %i.iq, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.it = fadd reassoc nsz arcp contract afn <4 x float> %i.is, splat (float -1.000000e+00)
  %i.iu = fmul reassoc nsz arcp contract afn <4 x float> %i.it, %i.bd
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, splat (float 1.000000e+00) ; 2 uses
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, %i.bw
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.iy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ix, <4 x float> zeroinitializer)
  %bc.i.us = bitcast <4 x float> %i.iy to <4 x i32> ; 2 uses
  %i.iz = and <4 x i32> %bc.i.us, splat (i32 8388607)
  %i.ja = or disjoint <4 x i32> %i.iz, splat (i32 1065353216)
  %i.jb = bitcast <4 x i32> %i.ja to <4 x float>  ; 5 uses
  %i.jc = lshr <4 x i32> %bc.i.us, splat (i32 23)
  %i.jd = and <4 x i32> %i.jc, splat (i32 255)
  %i.je = add nsw <4 x i32> %i.jd, splat (i32 -127)
  %i.jf = sitofp <4 x i32> %i.je to <4 x float>
  %i.jg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jb, splat (float f0x3D74552F)
  %i.jh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jg, splat (float f0xBEEE7397)
  %i.ji = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jh, %i.jb
  %i.jj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ji, splat (float f0x3FBD96DD)
  %i.jk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jj, %i.jb
  %i.jl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jk, splat (float f0xC02153F6)
  %i.jm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jl, %i.jb
  %i.jn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jm, splat (float f0x4038D96C)
  %i.jo = fadd fast <4 x float> %i.jb, splat (float -1.000000e+00)
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %i.jn, %i.jo
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jf ; 2 uses
  %i.jr = fmul reassoc nsz arcp contract afn <4 x float> %i.jq, %i.de
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jt = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.js, <4 x float> splat (float 1.290000e+02))
  %i.ju = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jt, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.jv = fadd reassoc nsz arcp contract afn <4 x float> %i.ju, splat (float -5.000000e-01)
  %i.jw = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jv)
  %i.jx = sitofp reassoc nsz arcp contract afn <4 x i32> %i.jw to <4 x float> ; 3 uses
  %i.jy = insertelement <4 x float> %i.ju, float 1.000000e+00, i64 3
  %i.jz = insertelement <4 x float> %i.jx, float 0.000000e+00, i64 3
  %i.ka = fsub reassoc nsz arcp contract afn <4 x float> %i.jy, %i.jz ; 5 uses
  %i.kb = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kc = shufflevector <4 x float> %i.jx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  %i.kd = fsub reassoc nsz arcp contract afn <4 x float> %i.kb, %i.kc ; 3 uses
  %i.ke = fptosi <4 x float> %i.jx to <4 x i32>
  %i.kf = shl <4 x i32> %i.ke, splat (i32 23)
  %i.kg = add <4 x i32> %i.kf, splat (i32 1065353216)
  %i.kh = extractelement <4 x float> %i.ka, i64 2 ; 3 uses
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, f0x3C5DBE69
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, f0x3D5509F9
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %i.kh
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kk, f0x3E773CC5
  %i.km = fmul reassoc nsz arcp contract afn float %i.kl, %i.kh
  %i.kn = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.km, i64 2
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.ka, <float f0x3C5DBE69, float f0x3C5DBE69, float poison, float poison>
  %i.kp = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, <float f0x3D5509F9, float f0x3D5509F9, float poison, float poison>
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.ka
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, <float f0x3E773CC5, float f0x3E773CC5, float poison, float poison>
  %i.ks = fmul reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ka
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> %i.kn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ku = fadd reassoc arcp contract afn <4 x float> %i.kt, <float f0x3F3168B3, float f0x3F3168B3, float f0x3F3168B3, float -0.000000e+00>
  %i.kv = fmul reassoc arcp contract afn <4 x float> %i.ku, %i.ka
  %i.kw = fadd reassoc nsz arcp contract afn <4 x float> %i.kv, <float f0x3F800016, float f0x3F800016, float f0x3F800016, float f0x3F72A76F>
  %i.kx = extractelement <4 x float> %i.kd, i64 3 ; 2 uses
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, f0x3C5DBE69
  %i.kz = fadd reassoc nsz arcp contract afn float %i.ky, f0x3D5509F9
  %i.la = fmul reassoc nsz arcp contract afn float %i.kz, %i.kx
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, f0x3E773CC5
  %i.lc = insertelement <4 x float> <float f0x3F72A76F, float -0.000000e+00, float f0x3F72A76F, float poison>, float %i.lb, i64 3
  %i.ld = fmul reassoc arcp contract afn <4 x float> %i.lc, %i.kd
  %i.le = fadd reassoc arcp contract afn <4 x float> %i.ld, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float f0x3F3168B3>
  %i.lf = fmul reassoc arcp contract afn <4 x float> %i.le, %i.kd
  %i.lg = fadd reassoc nsz arcp contract afn <4 x float> %i.lf, <float -0.000000e+00, float f0x3F72A76F, float -0.000000e+00, float f0x3F800016>
  %i.lh = bitcast <4 x i32> %i.kg to <4 x float>
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.kw, %i.lh ; 3 uses
  %i.lj = extractelement <4 x float> %i.li, i64 2 ; 2 uses
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lj, f0x3D9E8391
  %i.ll = fmul reassoc nsz arcp contract afn <4 x float> %i.li, %i.lg
  %i.lm = fadd reassoc nsz arcp contract afn <4 x float> %i.ll, splat (float f0x3D55891A)
  %i.ln = bitcast <4 x float> %i.lm to <4 x i32>  ; 2 uses
  %i.lo = and <4 x i32> %i.ln, splat (i32 8388607)
  %i.lp = or disjoint <4 x i32> %i.lo, splat (i32 1065353216)
  %i.lq = bitcast <4 x i32> %i.lp to <4 x float>  ; 5 uses
  %i.lr = lshr <4 x i32> %i.ln, splat (i32 23)
  %i.ls = and <4 x i32> %i.lr, splat (i32 255)
  %i.lt = add nsw <4 x i32> %i.ls, splat (i32 -127)
  %i.lu = sitofp <4 x i32> %i.lt to <4 x float>
  %i.lv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lq, splat (float f0x3D74552F)
  %i.lw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lv, splat (float f0xBEEE7397)
  %i.lx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lw, %i.lq
  %i.ly = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lx, splat (float f0x3FBD96DD)
  %i.lz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ly, %i.lq
  %i.ma = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lz, splat (float f0xC02153F6)
  %i.mb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ma, %i.lq
  %i.mc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.mb, splat (float f0x4038D96C)
  %i.md = fadd fast <4 x float> %i.lq, splat (float -1.000000e+00)
  %i.me = fmul reassoc nsz arcp contract afn <4 x float> %i.mc, %i.md
  %i.mf = fadd reassoc nsz arcp contract afn <4 x float> %i.me, %i.lu
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, splat (float 2.400000e+00)
  %i.mh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mg, <4 x float> splat (float 1.290000e+02))
  %i.mi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mh, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.mj = fadd reassoc nsz arcp contract afn <4 x float> %i.mi, splat (float -5.000000e-01)
  %i.mk = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.mj)
  %i.ml = sitofp reassoc nsz arcp contract afn <4 x i32> %i.mk to <4 x float> ; 3 uses
  %.sroa.014.8.vec.extract.i.i.i.i.i.us = extractelement <4 x float> %i.ml, i64 2
  %foldExtExtBinop177 = fsub reassoc nsz arcp contract afn <4 x float> %i.mi, %i.ml
  %i.mm = extractelement <4 x float> %foldExtExtBinop177, i64 2 ; 4 uses
  %i.mn = fptosi float %.sroa.014.8.vec.extract.i.i.i.i.i.us to i32
  %i.mo = shl i32 %i.mn, 23
  %i.mp = add i32 %i.mo, 1065353216
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, f0x3C5DBE69
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mq, f0x3D5509F9
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.mm
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, f0x3E773CC5
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %i.mm
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, f0x3F3168B3
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mm
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, f0x3F800016
  %i.my = bitcast i32 %i.mp to float
  %i.mz = fmul reassoc nsz arcp contract afn float %i.mx, %i.my
  %i.na = fcmp reassoc nsz arcp contract afn ugt float %i.lj, 4.045000e-02
  %.sroa.speculated27.i.i.i.us = select i1 %i.na, float %i.mz, float %i.lk ; 4 uses
  %i.nb = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3E1283AB
  %i.nc = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, 6.061690e-02
  %i.nd = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3F36D410
  %i.ne = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn <2 x float> %i.ne, splat (float f0x3D9E8391)
  %i.ng = shufflevector <4 x float> %i.mi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nh = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ni = fsub reassoc nsz arcp contract afn <2 x float> %i.ng, %i.nh ; 4 uses
  %i.nj = fptosi <2 x float> %i.nh to <2 x i32>
  %i.nk = shl <2 x i32> %i.nj, splat (i32 23)
  %i.nl = add <2 x i32> %i.nk, splat (i32 1065353216)
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.ni, splat (float f0x3C5DBE69)
  %i.nn = fadd reassoc nsz arcp contract afn <2 x float> %i.nm, splat (float f0x3D5509F9)
  %i.no = fmul reassoc nsz arcp contract afn <2 x float> %i.nn, %i.ni
  %i.np = fadd reassoc nsz arcp contract afn <2 x float> %i.no, splat (float f0x3E773CC5)
  %i.nq = fmul reassoc nsz arcp contract afn <2 x float> %i.np, %i.ni
  %i.nr = fadd reassoc nsz arcp contract afn <2 x float> %i.nq, splat (float f0x3F3168B3)
  %i.ns = fmul reassoc nsz arcp contract afn <2 x float> %i.nr, %i.ni
  %i.nt = fadd reassoc nsz arcp contract afn <2 x float> %i.ns, splat (float f0x3F800016)
  %i.nu = bitcast <2 x i32> %i.nl to <2 x float>
  %i.nv = fmul reassoc nsz arcp contract afn <2 x float> %i.nt, %i.nu
  %i.nw = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.ne, splat (float 4.045000e-02)
  %i.nx = select <2 x i1> %i.nw, <2 x float> %i.nv, <2 x float> %i.nf ; 2 uses
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nz = fmul <4 x float> %i.ny, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.oa = shufflevector <2 x float> %i.nx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ob = fmul <4 x float> %i.oa, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.oc = fadd reassoc nsz arcp contract afn <4 x float> %i.ob, %i.nz ; 4 uses
  %i.od = extractelement <4 x float> %i.oc, i64 0
  %i.oe = fadd reassoc nsz arcp contract afn float %i.od, %i.nb ; 2 uses
  %i.of = extractelement <4 x float> %i.oc, i64 1
  %i.og = fadd reassoc nsz arcp contract afn float %i.of, %i.nc ; 3 uses
  %i.oh = extractelement <4 x float> %i.oc, i64 2
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, %i.nd ; 2 uses
  %i.oj = extractelement <4 x float> %i.oc, i64 3
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, %.sroa.speculated27.i.i.i.us
  %i.ol = fmul reassoc nsz arcp contract afn float %i.oe, f0x3F84C0A6 ; 2 uses
  %i.om = fcmp reassoc nsz arcp contract afn ogt float %i.ol, f0x3C111AA7
  br i1 %i.om, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.on = fmul reassoc nsz arcp contract afn float %i.oe, f0x410137F7
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.op = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ol) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.oq = phi reassoc nsz arcp contract afn float [ %i.op, %bb.f ], [ %i.oo, %bb.e ]
  %i.or = fcmp reassoc nsz arcp contract afn ogt float %i.og, f0x3C111AA7
  br i1 %i.or, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.os = fmul reassoc nsz arcp contract afn float %i.og, f0x40F92F69
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ou = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.og) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ov = phi reassoc nsz arcp contract afn float [ %i.ou, %bb.i ], [ %i.ot, %bb.h ] ; 3 uses
  %i.ow = fmul reassoc nsz arcp contract afn float %i.oi, f0x3F9B2B9B ; 2 uses
  %i.ox = fcmp reassoc nsz arcp contract afn ogt float %i.ow, f0x3C111AA7
  br i1 %i.ox, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.oy = fmul reassoc nsz arcp contract afn float %i.oi, f0x41170A26
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.pa = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ow) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.pb = phi reassoc nsz arcp contract afn float [ %i.pa, %bb.l ], [ %i.oz, %bb.k ]
  %i.pc = fmul reassoc nsz arcp contract afn float %i.ok, 0.000000e+00 ; 3 uses
  %i.pd = fcmp reassoc nsz arcp contract afn ogt float %i.pc, f0x3C111AA7
  br i1 %i.pd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.pe = fadd reassoc ninf nsz arcp contract afn float %i.pc, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.us

bb.o:                                             ; preds = %bb.m
  %i.pf = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.pc) #27
  br label %dt_XYZ_to_Lab.exit.i.us

dt_XYZ_to_Lab.exit.i.us:                          ; preds = %bb.o, %bb.n
  %i.pg = phi reassoc nsz arcp contract afn float [ %i.pf, %bb.o ], [ %i.pe, %bb.n ]
  %i.ph = fmul reassoc nsz arcp contract afn float %i.ov, 1.160000e+02
  %i.pi = fadd reassoc nsz arcp contract afn float %i.ph, -1.600000e+01
  %i.pj = fsub reassoc nsz arcp contract afn float %i.oq, %i.ov
  %i.pk = fsub reassoc nsz arcp contract afn float %i.pb, %i.ov
  %i.pl = insertelement <4 x float> poison, float %i.pj, i64 1
  %i.pm = insertelement <4 x float> %i.pl, float %i.pk, i64 2
  %i.pn = insertelement <4 x float> %i.pm, float %i.pg, i64 3
  %i.po = fmul reassoc nsz arcp contract afn <4 x float> %i.pn, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.pp = insertelement <4 x float> %i.po, float %i.pi, i64 0
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dl
  store <4 x float> %i.pp, ptr %i.pq, align 16, !tbaa !35, !alias.scope !142, !nontemporal !143
  %i.pr = add nuw i64 %.01725.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.pr, %i.dk
  br i1 %exitcond.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

_process_legacy.exit.us:                          ; preds = %dt_XYZ_to_Lab.exit.i.us, %.lr.ph.split.us
  %i.ps = icmp ult i64 %i.df, %i.p
  br i1 %i.ps, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us143:                               ; preds = %.lr.ph.split.us143.preheader, %_process_legacy.exit.us145
  %.0142.us144 = phi i64 [ %i.pt, %_process_legacy.exit.us145 ], [ 0, %.lr.ph.split.us143.preheader ] ; 4 uses
  %i.pt = add i64 %.0142.us144, %i.bz             ; 3 uses
  %i.pu = tail call i64 @llvm.umin.i64(i64 %i.pt, i64 %i.p) ; 2 uses
  %i.pv = shl i64 %.0142.us144, 2                 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pv
  %i.py = sub i64 %i.pu, %.0142.us144
  %.not.i105.us = icmp eq i64 %i.pu, %.0142.us144
  br i1 %.not.i105.us, label %_process_legacy.exit.us145, label %.lr.ph.i106.us

.lr.ph.i106.us:                                   ; preds = %.lr.ph.split.us143, %bb.s
  %.0485.i.us = phi i64 [ %i.xi, %bb.s ], [ 0, %.lr.ph.split.us143 ] ; 2 uses
  %i.pz = shl i64 %.0485.i.us, 2                  ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pz
  %i.qb = load <3 x float>, ptr %i.qa, align 16, !tbaa !35 ; 2 uses
  %i.qc = shufflevector <3 x float> %i.qb, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.qd = fmul reassoc nsz arcp contract afn <4 x float> %i.qc, <float 2.000000e-03, float 8.620690e-03, float -5.000000e-03, float 0.000000e+00>
  %i.qe = shufflevector <3 x float> %i.qb, <3 x float> poison, <4 x i32> zeroinitializer
  %i.qf = fmul reassoc nsz arcp contract afn <4 x float> %i.qe, <float 8.620690e-03, float 0.000000e+00, float 8.620690e-03, float 8.620690e-03>
  %i.qg = fadd reassoc nsz arcp contract afn <4 x float> %i.qd, splat (float f0x3E0D3DCB)
  %i.qh = fadd reassoc nsz arcp contract afn <4 x float> %i.qg, %i.qf ; 5 uses
  %i.qi = fmul reassoc nsz arcp contract afn <4 x float> %i.qh, %i.qh
  %i.qj = fmul reassoc nsz arcp contract afn <4 x float> %i.qi, %i.qh
  %i.qk = fmul reassoc nsz arcp contract afn <4 x float> %i.qh, <float f0x3E038027, float f0x3E038027, float f0x3E038027, float poison>
  %i.ql = fadd reassoc nsz arcp contract afn <4 x float> %i.qk, <float f0xBC911AA7, float f0xBC911AA7, float f0xBC911AA7, float poison>
  %i.qm = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.qh, splat (float f0x3E53DCB1)
  %.v.i.i.i.us = select <4 x i1> %i.qm, <4 x float> %i.ql, <4 x float> %i.qj
  %i.qn = fmul reassoc nsz arcp contract afn <4 x float> %.v.i.i.i.us, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float poison> ; 3 uses
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qp = fmul reassoc nsz arcp contract afn <4 x float> %i.qo, <float f0x3FAC47DF, float f0xBF0B6AD5, float 0.000000e+00, float 0.000000e+00>
  %i.qq = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.qr = fmul reassoc nsz arcp contract afn <4 x float> %i.qq, <float f0xBE82DEFC, float f0x3FC10BA0, float 0.000000e+00, float 0.000000e+00>
  %i.qs = fadd reassoc nsz arcp contract afn <4 x float> %i.qp, %i.qr
  %i.qt = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.qu = fmul reassoc nsz arcp contract afn <4 x float> %i.qt, <float -5.111180e-02, float 2.053510e-02, float f0x3F9B1CAF, float 0.000000e+00>
  %i.qv = fadd reassoc nsz arcp contract afn <4 x float> %i.qs, %i.qu ; 2 uses
  %i.qw = fsub reassoc nsz arcp contract afn <4 x float> %i.qv, %i.qq
  %i.qx = fmul reassoc nsz arcp contract afn <4 x float> %i.qw, %i.cv
  %i.qy = fadd reassoc nsz arcp contract afn <4 x float> %i.qx, %i.qq
  %.0.i.us = select nsz i1 %i.cl, <4 x float> %i.qy, <4 x float> %i.qv
  %i.qz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.0.i.us, <4 x float> zeroinitializer)
  %i.ra = bitcast <4 x float> %i.qz to <4 x i32>  ; 2 uses
  %i.rb = lshr <4 x i32> %i.ra, splat (i32 23)
  %i.rc = and <4 x i32> %i.rb, splat (i32 255)
  %i.rd = add nsw <4 x i32> %i.rc, splat (i32 -127)
  %i.re = sitofp reassoc nsz arcp contract afn <4 x i32> %i.rd to <4 x float>
  %i.rf = and <4 x i32> %i.ra, splat (i32 8388607)
  %i.rg = or disjoint <4 x i32> %i.rf, splat (i32 1065353216)
  %i.rh = bitcast <4 x i32> %i.rg to <4 x float>  ; 5 uses
  %i.ri = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rh, splat (float f0x3D74552F)
  %i.rj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ri, splat (float f0xBEEE7397)
  %i.rk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rj, %i.rh
  %i.rl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rk, splat (float f0x3FBD96DD)
  %i.rm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rl, %i.rh
  %i.rn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rm, splat (float f0xC02153F6)
  %i.ro = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rn, %i.rh
  %i.rp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ro, splat (float f0x4038D96C)
  %i.rq = fadd fast <4 x float> %i.rh, splat (float -1.000000e+00)
  %i.rr = fmul reassoc nsz arcp contract afn <4 x float> %i.rp, %i.rq
  %i.rs = fadd reassoc nsz arcp contract afn <4 x float> %i.rr, %i.re
  %i.rt = fmul reassoc nsz arcp contract afn <4 x float> %i.rs, splat (float f0x3EE8BA2E)
  %i.ru = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rt, <4 x float> splat (float 1.290000e+02))
  %i.rv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ru, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.rw = fadd reassoc nsz arcp contract afn <4 x float> %i.rv, splat (float -5.000000e-01)
  %i.rx = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.rw) ; 2 uses
  %i.ry = sitofp reassoc nsz arcp contract afn <4 x i32> %i.rx to <4 x float>
  %i.rz = fsub reassoc nsz arcp contract afn <4 x float> %i.rv, %i.ry ; 4 uses
  %i.sa = shl <4 x i32> %i.rx, splat (i32 23)
  %i.sb = add <4 x i32> %i.sa, splat (i32 1065353216)
  %i.sc = bitcast <4 x i32> %i.sb to <4 x float>
  %i.sd = fmul reassoc nsz arcp contract afn <4 x float> %i.rz, splat (float f0x3C5DBE69)
  %i.se = fadd reassoc nsz arcp contract afn <4 x float> %i.sd, splat (float f0x3D5509F9)
  %i.sf = fmul reassoc nsz arcp contract afn <4 x float> %i.se, %i.rz
  %i.sg = fadd reassoc nsz arcp contract afn <4 x float> %i.sf, splat (float f0x3E773CC5)
  %i.sh = fmul reassoc nsz arcp contract afn <4 x float> %i.sg, %i.rz
  %i.si = fadd reassoc nsz arcp contract afn <4 x float> %i.sh, splat (float f0x3F3168B3)
  %i.sj = fmul reassoc nsz arcp contract afn <4 x float> %i.si, %i.rz
  %i.sk = fadd reassoc nsz arcp contract afn <4 x float> %i.sj, splat (float f0x3F800016)
  %i.sl = fmul reassoc nsz arcp contract afn <4 x float> %i.sk, %i.sc
  %i.sm = fadd reassoc nsz arcp contract afn <4 x float> %i.sl, splat (float -1.000000e+00)
  %i.sn = fmul reassoc nsz arcp contract afn <4 x float> %i.sm, %i.be
  %i.so = fadd reassoc nsz arcp contract afn <4 x float> %i.sn, splat (float 1.000000e+00)
  %i.sp = fmul reassoc nsz arcp contract afn <4 x float> %i.so, %i.bx
  %i.sq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.sp, <4 x float> zeroinitializer)
  %i.sr = bitcast <4 x float> %i.sq to <4 x i32>  ; 2 uses
  %i.ss = lshr <4 x i32> %i.sr, splat (i32 23)
  %i.st = and <4 x i32> %i.ss, splat (i32 255)
  %i.su = add nsw <4 x i32> %i.st, splat (i32 -127)
  %i.sv = sitofp reassoc nsz arcp contract afn <4 x i32> %i.su to <4 x float>
  %i.sw = and <4 x i32> %i.sr, splat (i32 8388607)
  %i.sx = or disjoint <4 x i32> %i.sw, splat (i32 1065353216)
  %i.sy = bitcast <4 x i32> %i.sx to <4 x float>  ; 5 uses
  %i.sz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sy, splat (float f0x3D74552F)
  %i.ta = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sz, splat (float f0xBEEE7397)
  %i.tb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ta, %i.sy
  %i.tc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tb, splat (float f0x3FBD96DD)
  %i.td = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tc, %i.sy
  %i.te = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.td, splat (float f0xC02153F6)
  %i.tf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.te, %i.sy
  %i.tg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tf, splat (float f0x4038D96C)
  %i.th = fadd fast <4 x float> %i.sy, splat (float -1.000000e+00)
  %i.ti = fmul reassoc nsz arcp contract afn <4 x float> %i.tg, %i.th
  %i.tj = fadd reassoc nsz arcp contract afn <4 x float> %i.ti, %i.sv
  %i.tk = fmul reassoc nsz arcp contract afn <4 x float> %i.tj, %.sroa.0123.12.vec.insert172
  %i.tl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tk, <4 x float> splat (float 1.290000e+02))
  %i.tm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.tl, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.tn = fadd reassoc nsz arcp contract afn <4 x float> %i.tm, splat (float -5.000000e-01)
  %i.to = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.tn) ; 2 uses
  %i.tp = sitofp reassoc nsz arcp contract afn <4 x i32> %i.to to <4 x float>
  %i.tq = fsub reassoc nsz arcp contract afn <4 x float> %i.tm, %i.tp ; 4 uses
  %i.tr = shl <4 x i32> %i.to, splat (i32 23)
  %i.ts = add <4 x i32> %i.tr, splat (i32 1065353216)
  %i.tt = bitcast <4 x i32> %i.ts to <4 x float>
  %i.tu = fmul reassoc nsz arcp contract afn <4 x float> %i.tq, splat (float f0x3C5DBE69)
  %i.tv = fadd reassoc nsz arcp contract afn <4 x float> %i.tu, splat (float f0x3D5509F9)
  %i.tw = fmul reassoc nsz arcp contract afn <4 x float> %i.tv, %i.tq
  %i.tx = fadd reassoc nsz arcp contract afn <4 x float> %i.tw, splat (float f0x3E773CC5)
  %i.ty = fmul reassoc nsz arcp contract afn <4 x float> %i.tx, %i.tq
  %i.tz = fadd reassoc nsz arcp contract afn <4 x float> %i.ty, splat (float f0x3F3168B3)
  %i.ua = fmul reassoc nsz arcp contract afn <4 x float> %i.tz, %i.tq
  %i.ub = fadd reassoc nsz arcp contract afn <4 x float> %i.ua, splat (float f0x3F800016)
  %i.uc = fmul reassoc nsz arcp contract afn <4 x float> %i.ub, %i.tt ; 5 uses
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i106.us
  %i.ud = extractelement <4 x float> %i.uc, i64 0
  %i.ue = fmul reassoc nsz arcp contract afn float %i.ud, f0x3E937A01
  %i.uf = extractelement <4 x float> %i.uc, i64 1
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uf, f0x3F363D62
  %i.uh = fadd reassoc nsz arcp contract afn float %i.ue, %i.ug
  %i.ui = extractelement <4 x float> %i.uc, i64 2
  %i.uj = fmul reassoc nsz arcp contract afn float %i.ui, f0x38B3B9D6
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uh, %i.uj
  %i.ul = insertelement <4 x float> poison, float %i.uk, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.un = fsub reassoc nsz arcp contract afn <4 x float> %i.uc, %i.um
  %i.uo = fmul reassoc nsz arcp contract afn <4 x float> %i.un, %i.cx
  %i.up = fadd reassoc nsz arcp contract afn <4 x float> %i.uo, %i.um
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i106.us
  %.1.i.us = phi nsz <4 x float> [ %i.up, %bb.p ], [ %i.uc, %.lr.ph.i106.us ] ; 2 uses
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.uq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.1.i.us, <4 x float> zeroinitializer)
  %i.ur = fmul reassoc nsz arcp contract afn <4 x float> %i.uq, %i.db
  %i.us = bitcast <4 x float> %i.ur to <4 x i32>  ; 2 uses
  %i.ut = lshr <4 x i32> %i.us, splat (i32 23)
  %i.uu = and <4 x i32> %i.ut, splat (i32 255)
  %i.uv = add nsw <4 x i32> %i.uu, splat (i32 -127)
  %i.uw = sitofp reassoc nsz arcp contract afn <4 x i32> %i.uv to <4 x float>
  %i.ux = and <4 x i32> %i.us, splat (i32 8388607)
  %i.uy = or disjoint <4 x i32> %i.ux, splat (i32 1065353216)
  %i.uz = bitcast <4 x i32> %i.uy to <4 x float>  ; 5 uses
  %i.va = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.uz, splat (float f0x3D74552F)
  %i.vb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.va, splat (float f0xBEEE7397)
  %i.vc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.vb, %i.uz
  %i.vd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.vc, splat (float f0x3FBD96DD)
  %i.ve = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.vd, %i.uz
  %i.vf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ve, splat (float f0xC02153F6)
  %i.vg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.vf, %i.uz
  %i.vh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.vg, splat (float f0x4038D96C)
  %i.vi = fadd fast <4 x float> %i.uz, splat (float -1.000000e+00)
  %i.vj = fmul reassoc nsz arcp contract afn <4 x float> %i.vh, %i.vi
  %i.vk = fadd reassoc nsz arcp contract afn <4 x float> %i.vj, %i.uw
  %i.vl = fmul reassoc nsz arcp contract afn <4 x float> %i.vk, %.sroa.0136.12.vec.insert
  %i.vm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vl, <4 x float> splat (float 1.290000e+02))
  %i.vn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vm, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.vo = fadd reassoc nsz arcp contract afn <4 x float> %i.vn, splat (float -5.000000e-01)
  %i.vp = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vo) ; 2 uses
  %i.vq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.vp to <4 x float>
  %i.vr = fsub reassoc nsz arcp contract afn <4 x float> %i.vn, %i.vq ; 4 uses
  %i.vs = shl <4 x i32> %i.vp, splat (i32 23)
  %i.vt = add <4 x i32> %i.vs, splat (i32 1065353216)
  %i.vu = bitcast <4 x i32> %i.vt to <4 x float>
  %i.vv = fmul reassoc nsz arcp contract afn <4 x float> %i.vr, splat (float f0x3C5DBE69)
  %i.vw = fadd reassoc nsz arcp contract afn <4 x float> %i.vv, splat (float f0x3D5509F9)
  %i.vx = fmul reassoc nsz arcp contract afn <4 x float> %i.vw, %i.vr
  %i.vy = fadd reassoc nsz arcp contract afn <4 x float> %i.vx, splat (float f0x3E773CC5)
  %i.vz = fmul reassoc nsz arcp contract afn <4 x float> %i.vy, %i.vr
  %i.wa = fadd reassoc nsz arcp contract afn <4 x float> %i.vz, splat (float f0x3F3168B3)
  %i.wb = fmul reassoc nsz arcp contract afn <4 x float> %i.wa, %i.vr
  %i.wc = fadd reassoc nsz arcp contract afn <4 x float> %i.wb, splat (float f0x3F800016)
  %i.wd = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.vu
  %i.we = fmul reassoc nsz arcp contract afn <4 x float> %i.wd, %i.wc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i.us = phi nsz <4 x float> [ %i.we, %bb.r ], [ %.1.i.us, %bb.q ] ; 3 uses
  %i.wf = shufflevector <4 x float> %.2.i.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wg = fmul reassoc nsz arcp contract afn <4 x float> %i.wf, <float f0x3F4C346C, float f0x3E937A01, float 0.000000e+00, float 0.000000e+00>
  %i.wh = shufflevector <4 x float> %.2.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.wi = fmul reassoc nsz arcp contract afn <4 x float> %i.wh, <float f0x3E0A6FB1, float f0x3F363D62, float 0.000000e+00, float 0.000000e+00>
  %i.wj = fadd reassoc nsz arcp contract afn <4 x float> %i.wg, %i.wi
  %i.wk = shufflevector <4 x float> %.2.i.us, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.wl = fmul reassoc nsz arcp contract afn <4 x float> %i.wk, <float 3.135340e-02, float f0x38B3B9D6, float f0x3F5340F6, float 0.000000e+00>
  %i.wm = fadd reassoc nsz arcp contract afn <4 x float> %i.wj, %i.wl ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pz
  %i.wo = fmul reassoc nsz arcp contract afn <4 x float> %i.wm, <float f0x3F84C0A6, float 1.000000e+00, float f0x3F9B2B9B, float 1.000000e+00> ; 3 uses
  %i.wp = bitcast <4 x float> %i.wo to <4 x i32>
  %i.wq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.wp to <4 x float>
  %i.wr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.wq, splat (float f0x3EAAAAAB)
  %i.ws = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.wr)
  %i.wt = add <4 x i32> %i.ws, splat (i32 709921077)
  %i.wu = bitcast <4 x i32> %i.wt to <4 x float>  ; 4 uses
  %i.wv = fmul reassoc nsz arcp contract afn <4 x float> %i.wu, %i.wu
  %i.ww = fmul reassoc nsz arcp contract afn <4 x float> %i.wv, %i.wu ; 2 uses
  %factor.i.i.i.us = fmul reassoc nsz arcp contract afn <4 x float> %i.wm, <float f0x4004C0A6, float 2.000000e+00, float f0x401B2B9B, float 2.000000e+00>
  %i.wx = fadd reassoc nsz arcp contract afn <4 x float> %i.ww, %factor.i.i.i.us
  %i.wy = fmul reassoc nsz arcp contract afn <4 x float> %i.wx, %i.wu
  %factor19.i.i.i.us = fmul reassoc nsz arcp contract afn <4 x float> %i.ww, splat (float 2.000000e+00)
  %i.wz = fadd reassoc nsz arcp contract afn <4 x float> %factor19.i.i.i.us, %i.wo
  %i.xa = fdiv reassoc nsz arcp contract afn <4 x float> %i.wy, %i.wz
  %i.xb = fmul reassoc nsz arcp contract afn <4 x float> %i.wm, <float f0x410137F7, float f0x40F92F69, float f0x41170A26, float f0x40F92F69>
  %i.xc = fadd reassoc nsz arcp contract afn <4 x float> %i.xb, splat (float f0x3E0D3DCB)
  %i.xd = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.wo, splat (float f0x3C111AA7)
  %.v.i.i49.i.us = select <4 x i1> %i.xd, <4 x float> %i.xc, <4 x float> %i.xa ; 2 uses
  %i.xe = shufflevector <4 x float> %.v.i.i49.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.xf = shufflevector <4 x float> %.v.i.i49.i.us, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.xg = fsub reassoc nsz arcp contract afn <4 x float> %i.xe, %i.xf
  %i.xh = fmul reassoc nsz arcp contract afn <4 x float> %i.xg, <float 1.160000e+02, float 5.000000e+02, float 2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.xh, ptr %i.wn, align 16, !tbaa !35, !nontemporal !143
  %i.xi = add nuw i64 %.0485.i.us, 1              ; 2 uses
  %exitcond.not.i107.us = icmp eq i64 %i.xi, %i.py
  br i1 %exitcond.not.i107.us, label %_process_legacy.exit.us145, label %.lr.ph.i106.us

_process_legacy.exit.us145:                       ; preds = %bb.s, %.lr.ph.split.us143
  %i.xj = icmp ult i64 %i.pt, %i.p
  br i1 %i.xj, label %.lr.ph.split.us143, label %._crit_edge

.lr.ph.split.us146:                               ; preds = %.lr.ph.split.us146.preheader, %_process_legacy.exit.us148
  %.0142.us147 = phi i64 [ %i.xk, %_process_legacy.exit.us148 ], [ 0, %.lr.ph.split.us146.preheader ] ; 4 uses
  %i.xk = add i64 %.0142.us147, %i.bz             ; 3 uses
  %i.xl = tail call i64 @llvm.umin.i64(i64 %i.xk, i64 %i.p) ; 2 uses
  %i.xm = shl i64 %.0142.us147, 2                 ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xm
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xm
  %i.xp = sub i64 %i.xl, %.0142.us147
  %.not.i108.us = icmp eq i64 %i.xl, %.0142.us147
  br i1 %.not.i108.us, label %_process_legacy.exit.us148, label %.lr.ph.i109.us

.lr.ph.i109.us:                                   ; preds = %.lr.ph.split.us146, %bb.w
  %.0437.i.us = phi i64 [ %i.adk, %bb.w ], [ 0, %.lr.ph.split.us146 ] ; 2 uses
  %i.xq = shl i64 %.0437.i.us, 2                  ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.xq
  %i.xs = load <3 x float>, ptr %i.xr, align 16, !tbaa !35 ; 2 uses
  %i.xt = shufflevector <3 x float> %i.xs, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.xu = fmul reassoc nsz arcp contract afn <4 x float> %i.xt, <float 2.000000e-03, float 8.620690e-03, float -5.000000e-03, float 0.000000e+00>
  %i.xv = shufflevector <3 x float> %i.xs, <3 x float> poison, <4 x i32> zeroinitializer
  %i.xw = fmul reassoc nsz arcp contract afn <4 x float> %i.xv, <float 8.620690e-03, float 0.000000e+00, float 8.620690e-03, float 8.620690e-03>
  %i.xx = fadd reassoc nsz arcp contract afn <4 x float> %i.xu, splat (float f0x3E0D3DCB)
  %i.xy = fadd reassoc nsz arcp contract afn <4 x float> %i.xx, %i.xw ; 5 uses
  %i.xz = fmul reassoc nsz arcp contract afn <4 x float> %i.xy, %i.xy
  %i.ya = fmul reassoc nsz arcp contract afn <4 x float> %i.xz, %i.xy
  %i.yb = fmul reassoc nsz arcp contract afn <4 x float> %i.xy, <float f0x3E038027, float f0x3E038027, float f0x3E038027, float poison>
  %i.yc = fadd reassoc nsz arcp contract afn <4 x float> %i.yb, <float f0xBC911AA7, float f0xBC911AA7, float f0xBC911AA7, float poison>
  %i.yd = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.xy, splat (float f0x3E53DCB1)
  %.v.i.i.i110.us = select <4 x i1> %i.yd, <4 x float> %i.yc, <4 x float> %i.ya
  %i.ye = fmul reassoc nsz arcp contract afn <4 x float> %.v.i.i.i110.us, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float poison> ; 3 uses
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yg = fmul reassoc nsz arcp contract afn <4 x float> %i.yf, <float f0x3FAC47DF, float f0xBF0B6AD5, float 0.000000e+00, float 0.000000e+00>
  %i.yh = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.yi = fmul reassoc nsz arcp contract afn <4 x float> %i.yh, <float f0xBE82DEFC, float f0x3FC10BA0, float 0.000000e+00, float 0.000000e+00>
  %i.yj = fadd reassoc nsz arcp contract afn <4 x float> %i.yg, %i.yi
  %i.yk = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yl = fmul reassoc nsz arcp contract afn <4 x float> %i.yk, <float -5.111180e-02, float 2.053510e-02, float f0x3F9B1CAF, float 0.000000e+00>
  %i.ym = fadd reassoc nsz arcp contract afn <4 x float> %i.yj, %i.yl ; 2 uses
  %i.yn = fsub reassoc nsz arcp contract afn <4 x float> %i.ym, %i.yh
  %i.yo = fmul reassoc nsz arcp contract afn <4 x float> %i.yn, %i.cv
  %i.yp = fadd reassoc nsz arcp contract afn <4 x float> %i.yo, %i.yh
  %.0.i111.us = select nsz i1 %i.cl, <4 x float> %i.yp, <4 x float> %i.ym
  %i.yq = fmul reassoc nsz arcp contract afn <4 x float> %.0.i111.us, %i.bx
  %i.yr = fadd reassoc nsz arcp contract afn <4 x float> %i.yq, %.sroa.0128.12.vec.insert171
  %i.ys = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yr, <4 x float> zeroinitializer)
  %i.yt = bitcast <4 x float> %i.ys to <4 x i32>  ; 2 uses
  %i.yu = lshr <4 x i32> %i.yt, splat (i32 23)
  %i.yv = and <4 x i32> %i.yu, splat (i32 255)
  %i.yw = add nsw <4 x i32> %i.yv, splat (i32 -127)
  %i.yx = sitofp reassoc nsz arcp contract afn <4 x i32> %i.yw to <4 x float>
  %i.yy = and <4 x i32> %i.yt, splat (i32 8388607)
  %i.yz = or disjoint <4 x i32> %i.yy, splat (i32 1065353216)
  %i.za = bitcast <4 x i32> %i.yz to <4 x float>  ; 5 uses
  %i.zb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.za, splat (float f0x3D74552F)
  %i.zc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zb, splat (float f0xBEEE7397)
  %i.zd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zc, %i.za
  %i.ze = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zd, splat (float f0x3FBD96DD)
  %i.zf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ze, %i.za
  %i.zg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zf, splat (float f0xC02153F6)
  %i.zh = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zg, %i.za
  %i.zi = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zh, splat (float f0x4038D96C)
  %i.zj = fadd fast <4 x float> %i.za, splat (float -1.000000e+00)
  %i.zk = fmul reassoc nsz arcp contract afn <4 x float> %i.zi, %i.zj
  %i.zl = fadd reassoc nsz arcp contract afn <4 x float> %i.zk, %i.yx
  %i.zm = fmul reassoc nsz arcp contract afn <4 x float> %i.zl, %.sroa.0126.12.vec.insert173
  %i.zn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zm, <4 x float> splat (float 1.290000e+02))
  %i.zo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.zn, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.zp = fadd reassoc nsz arcp contract afn <4 x float> %i.zo, splat (float -5.000000e-01)
  %i.zq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.zp) ; 2 uses
  %i.zr = sitofp reassoc nsz arcp contract afn <4 x i32> %i.zq to <4 x float>
  %i.zs = fsub reassoc nsz arcp contract afn <4 x float> %i.zo, %i.zr ; 4 uses
  %i.zt = shl <4 x i32> %i.zq, splat (i32 23)
  %i.zu = add <4 x i32> %i.zt, splat (i32 1065353216)
  %i.zv = bitcast <4 x i32> %i.zu to <4 x float>
  %i.zw = fmul reassoc nsz arcp contract afn <4 x float> %i.zs, splat (float f0x3C5DBE69)
  %i.zx = fadd reassoc nsz arcp contract afn <4 x float> %i.zw, splat (float f0x3D5509F9)
  %i.zy = fmul reassoc nsz arcp contract afn <4 x float> %i.zx, %i.zs
  %i.zz = fadd reassoc nsz arcp contract afn <4 x float> %i.zy, splat (float f0x3E773CC5)
  %i.aaa = fmul reassoc nsz arcp contract afn <4 x float> %i.zz, %i.zs
  %i.aab = fadd reassoc nsz arcp contract afn <4 x float> %i.aaa, splat (float f0x3F3168B3)
  %i.aac = fmul reassoc nsz arcp contract afn <4 x float> %i.aab, %i.zs
  %i.aad = fadd reassoc nsz arcp contract afn <4 x float> %i.aac, splat (float f0x3F800016)
  %i.aae = fmul reassoc nsz arcp contract afn <4 x float> %i.aad, %i.zv ; 5 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i109.us
  %i.aaf = extractelement <4 x float> %i.aae, i64 0
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aaf, f0x3E937A01
  %i.aah = extractelement <4 x float> %i.aae, i64 1
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aah, f0x3F363D62
  %i.aaj = fadd reassoc nsz arcp contract afn float %i.aag, %i.aai
  %i.aak = extractelement <4 x float> %i.aae, i64 2
  %i.aal = fmul reassoc nsz arcp contract afn float %i.aak, f0x38B3B9D6
  %i.aam = fadd reassoc nsz arcp contract afn float %i.aaj, %i.aal
  %i.aan = insertelement <4 x float> poison, float %i.aam, i64 0
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aap = fsub reassoc nsz arcp contract afn <4 x float> %i.aae, %i.aao
  %i.aaq = fmul reassoc nsz arcp contract afn <4 x float> %i.aap, %i.cx
  %i.aar = fadd reassoc nsz arcp contract afn <4 x float> %i.aaq, %i.aao
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i109.us
  %.1.i112.us = phi nsz <4 x float> [ %i.aar, %bb.t ], [ %i.aae, %.lr.ph.i109.us ] ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aas = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.1.i112.us, <4 x float> zeroinitializer)
  %i.aat = fmul reassoc nsz arcp contract afn <4 x float> %i.aas, %i.da
  %i.aau = bitcast <4 x float> %i.aat to <4 x i32> ; 2 uses
  %i.aav = lshr <4 x i32> %i.aau, splat (i32 23)
  %i.aaw = and <4 x i32> %i.aav, splat (i32 255)
  %i.aax = add nsw <4 x i32> %i.aaw, splat (i32 -127)
  %i.aay = sitofp reassoc nsz arcp contract afn <4 x i32> %i.aax to <4 x float>
  %i.aaz = and <4 x i32> %i.aau, splat (i32 8388607)
  %i.aba = or disjoint <4 x i32> %i.aaz, splat (i32 1065353216)
  %i.abb = bitcast <4 x i32> %i.aba to <4 x float> ; 5 uses
  %i.abc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abb, splat (float f0x3D74552F)
  %i.abd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abc, splat (float f0xBEEE7397)
  %i.abe = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abd, %i.abb
  %i.abf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abe, splat (float f0x3FBD96DD)
  %i.abg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abf, %i.abb
  %i.abh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abg, splat (float f0xC02153F6)
  %i.abi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abh, %i.abb
  %i.abj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abi, splat (float f0x4038D96C)
  %i.abk = fadd fast <4 x float> %i.abb, splat (float -1.000000e+00)
  %i.abl = fmul reassoc nsz arcp contract afn <4 x float> %i.abj, %i.abk
  %i.abm = fadd reassoc nsz arcp contract afn <4 x float> %i.abl, %i.aay
  %i.abn = fmul reassoc nsz arcp contract afn <4 x float> %i.abm, %.sroa.0136.12.vec.insert
  %i.abo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abn, <4 x float> splat (float 1.290000e+02))
  %i.abp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abo, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.abq = fadd reassoc nsz arcp contract afn <4 x float> %i.abp, splat (float -5.000000e-01)
  %i.abr = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.abq) ; 2 uses
  %i.abs = sitofp reassoc nsz arcp contract afn <4 x i32> %i.abr to <4 x float>
  %i.abt = fsub reassoc nsz arcp contract afn <4 x float> %i.abp, %i.abs ; 4 uses
  %i.abu = shl <4 x i32> %i.abr, splat (i32 23)
  %i.abv = add <4 x i32> %i.abu, splat (i32 1065353216)
  %i.abw = bitcast <4 x i32> %i.abv to <4 x float>
  %i.abx = fmul reassoc nsz arcp contract afn <4 x float> %i.abt, splat (float f0x3C5DBE69)
  %i.aby = fadd reassoc nsz arcp contract afn <4 x float> %i.abx, splat (float f0x3D5509F9)
  %i.abz = fmul reassoc nsz arcp contract afn <4 x float> %i.aby, %i.abt
  %i.aca = fadd reassoc nsz arcp contract afn <4 x float> %i.abz, splat (float f0x3E773CC5)
  %i.acb = fmul reassoc nsz arcp contract afn <4 x float> %i.aca, %i.abt
  %i.acc = fadd reassoc nsz arcp contract afn <4 x float> %i.acb, splat (float f0x3F3168B3)
  %i.acd = fmul reassoc nsz arcp contract afn <4 x float> %i.acc, %i.abt
  %i.ace = fadd reassoc nsz arcp contract afn <4 x float> %i.acd, splat (float f0x3F800016)
  %i.acf = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.abw
  %i.acg = fmul reassoc nsz arcp contract afn <4 x float> %i.acf, %i.ace
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.i113.us = phi nsz <4 x float> [ %i.acg, %bb.v ], [ %.1.i112.us, %bb.u ] ; 3 uses
  %i.ach = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aci = fmul reassoc nsz arcp contract afn <4 x float> %i.ach, <float f0x3F4C346C, float f0x3E937A01, float 0.000000e+00, float 0.000000e+00>
  %i.acj = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ack = fmul reassoc nsz arcp contract afn <4 x float> %i.acj, <float f0x3E0A6FB1, float f0x3F363D62, float 0.000000e+00, float 0.000000e+00>
  %i.acl = fadd reassoc nsz arcp contract afn <4 x float> %i.aci, %i.ack
  %i.acm = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acn = fmul reassoc nsz arcp contract afn <4 x float> %i.acm, <float 3.135340e-02, float f0x38B3B9D6, float f0x3F5340F6, float 0.000000e+00>
  %i.aco = fadd reassoc nsz arcp contract afn <4 x float> %i.acl, %i.acn ; 3 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.xq
  %i.acq = fmul reassoc nsz arcp contract afn <4 x float> %i.aco, <float f0x3F84C0A6, float 1.000000e+00, float f0x3F9B2B9B, float 1.000000e+00> ; 3 uses
  %i.acr = bitcast <4 x float> %i.acq to <4 x i32>
  %i.acs = sitofp reassoc nsz arcp contract afn <4 x i32> %i.acr to <4 x float>
  %i.act = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.acs, splat (float f0x3EAAAAAB)
  %i.acu = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.act)
  %i.acv = add <4 x i32> %i.acu, splat (i32 709921077)
  %i.acw = bitcast <4 x i32> %i.acv to <4 x float> ; 4 uses
  %i.acx = fmul reassoc nsz arcp contract afn <4 x float> %i.acw, %i.acw
  %i.acy = fmul reassoc nsz arcp contract afn <4 x float> %i.acx, %i.acw ; 2 uses
  %factor.i.i.i114.us = fmul reassoc nsz arcp contract afn <4 x float> %i.aco, <float f0x4004C0A6, float 2.000000e+00, float f0x401B2B9B, float 2.000000e+00>
  %i.acz = fadd reassoc nsz arcp contract afn <4 x float> %i.acy, %factor.i.i.i114.us
  %i.ada = fmul reassoc nsz arcp contract afn <4 x float> %i.acz, %i.acw
  %factor19.i.i.i115.us = fmul reassoc nsz arcp contract afn <4 x float> %i.acy, splat (float 2.000000e+00)
  %i.adb = fadd reassoc nsz arcp contract afn <4 x float> %factor19.i.i.i115.us, %i.acq
  %i.adc = fdiv reassoc nsz arcp contract afn <4 x float> %i.ada, %i.adb
  %i.add = fmul reassoc nsz arcp contract afn <4 x float> %i.aco, <float f0x410137F7, float f0x40F92F69, float f0x41170A26, float f0x40F92F69>
  %i.ade = fadd reassoc nsz arcp contract afn <4 x float> %i.add, splat (float f0x3E0D3DCB)
  %i.adf = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.acq, splat (float f0x3C111AA7)
  %.v.i.i44.i.us = select <4 x i1> %i.adf, <4 x float> %i.ade, <4 x float> %i.adc ; 2 uses
  %i.adg = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.adh = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.adi = fsub reassoc nsz arcp contract afn <4 x float> %i.adg, %i.adh
  %i.adj = fmul reassoc nsz arcp contract afn <4 x float> %i.adi, <float 1.160000e+02, float 5.000000e+02, float 2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.adj, ptr %i.acp, align 16, !tbaa !35, !nontemporal !143
  %i.adk = add nuw i64 %.0437.i.us, 1             ; 2 uses
  %exitcond.not.i116.us = icmp eq i64 %i.adk, %i.xp
  br i1 %exitcond.not.i116.us, label %_process_legacy.exit.us148, label %.lr.ph.i109.us

_process_legacy.exit.us148:                       ; preds = %bb.w, %.lr.ph.split.us146
  %i.adl = icmp ult i64 %i.xk, %i.p
  br i1 %i.adl, label %.lr.ph.split.us146, label %._crit_edge

._crit_edge:                                      ; preds = %_process_legacy.exit.us148, %_process_legacy.exit.us145, %_process_legacy.exit.us, %_process_legacy.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.x

_process_legacy.exit:                             ; preds = %.lr.ph, %_process_legacy.exit
  %.0142 = phi i64 [ %i.adm, %_process_legacy.exit ], [ 0, %.lr.ph ]
  %i.adm = add i64 %.0142, %i.bz                  ; 2 uses
  %i.adn = icmp ult i64 %i.adm, %i.p
  br i1 %i.adn, label %_process_legacy.exit, label %._crit_edge

bb.x:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %apply_lift_neutralize.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 8 uses
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !47  ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = load float, ptr %i.l, align 16, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load float, ptr %i.p, align 8, !tbaa !12
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e-03
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, 8.620690e-03
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB ; 7 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 5.000000e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.t, %i.r ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.v
  %i.z = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, f0xBC911AA6
  %i.ab = select reassoc nsz arcp contract afn i1 %i.w, float %i.y, float %i.aa ; 3 uses
  %i.ac = fsub reassoc nsz arcp contract afn float %i.t, %i.u ; 5 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ab, 9.642000e-01
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ab, f0x3FA61CF4
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, f0x3F066D1A
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 268
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  store i32 1, ptr %i.ah, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3E53DCB1
  %i.ar = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.t
  %i.at = fmul reassoc nsz arcp contract afn float %i.t, f0x3E038026
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, f0xBC911AA6
  %i.av = select reassoc nsz arcp contract afn i1 %i.aq, float %i.as, float %i.au ; 5 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.ac, f0x3E53DCB1
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.ac
  %i.az = fmul reassoc nsz arcp contract afn float %i.ac, f0x3E038026
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, f0xBC911AA6
  %i.bb = select reassoc nsz arcp contract afn i1 %i.aw, float %i.ay, float %i.ba ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.av, f0x3E82DEFC
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ae, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn float %i.bb, f0xBD2CB230
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.av, f0x3FC10BA0
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.af
  %i.bi = fadd reassoc nsz arcp contract afn float %i.ad, %i.av
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 0.000000e+00
  %i.bk = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, <float f0x3C8AC481, float f0x3F7FE762>
  %i.bn = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bj, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bm ; 2 uses
  store float %i.bf, ptr %i.ag, align 4, !tbaa !12
  store <2 x float> %i.bp, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !12
  %i.bq = load float, ptr %i.aj, align 4, !tbaa !12
  %i.br = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.bq
  %i.bs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.br
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.bs)
  %i.bu = load float, ptr %i.ak, align 4, !tbaa !12
  %i.bv = load <2 x float>, ptr %i.al, align 4, !tbaa !12
  %i.bw = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.bv
  %i.bx = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bw
  %i.by = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = load <2 x float>, ptr %i.am, align 4, !tbaa !12
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bt, 1.000000e+00
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bu, %i.bf
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cc, %i.cd
  store float %i.ce, ptr %i.an, align 4, !tbaa !12
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.cb
  %i.cg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn <2 x float> %i.cg, %i.ca
  store <2 x float> %i.ch, ptr %i.ao, align 4, !tbaa !12
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.ck = atomicrmw add ptr %i.cj, i32 1 seq_cst, align 4 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !92
  %i.cn = load float, ptr %i.an, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cm, float noundef %i.cn) #23
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !93
  %i.cq = load float, ptr %i.ao, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cp, float noundef %i.cq) #23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !94
  %i.ct = load float, ptr %i.ap, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cs, float noundef %i.ct) #23
end_hunk_0
begin_hunk_1_@color_picker_apply:bb.a
  %i.nj = fmul reassoc nsz arcp contract afn float %i.nf, f0x3E038026
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, f0xBC911AA6
  %i.nl = select reassoc nsz arcp contract afn i1 %i.ng, float %i.ni, float %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nb, i64 316
  store float %i.nl, ptr %i.nm, align 4, !tbaa !12
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nb, i64 328
  store i32 1, ptr %i.nn, align 4, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 36
  %i.np = load float, ptr %i.no, align 4, !tbaa !12
  %i.nq = fmul reassoc nsz arcp contract afn float %i.nl, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !12
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nq
  %i.nu = fadd reassoc nsz arcp contract afn float %i.nt, -1.000000e+00 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn ogt float %i.nu, f0x358637BD
  %i.nw = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nu)
  %i.nx = fdiv reassoc nsz arcp contract afn float f0x3FD88AB6, %i.nw
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, 2.000000e+00
  %i.nz = select i1 %i.nv, float %i.ny, float f0x3FF05380
  %i.oa = getelementptr inbounds nuw i8, ptr %i.na, i64 20 ; 2 uses
  store float %i.nz, ptr %i.oa, align 4, !tbaa !12
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.od = atomicrmw add ptr %i.oc, i32 1 seq_cst, align 4 ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nb, i64 176
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !108
  %i.og = load float, ptr %i.oa, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.of, float noundef %i.og) #23
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 104
  %i.oj = atomicrmw add ptr %i.oi, i32 -1 seq_cst, align 4 ; 0 uses
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.ok, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.p:                                             ; preds = %bb.m
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !109
  %i.on = icmp eq ptr %1, %i.om
  br i1 %i.on, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 104
  %i.oq = load atomic i32, ptr %i.op seq_cst, align 4
  %.not.i37 = icmp eq i32 %i.oq, 0
  br i1 %.not.i37, label %bb.r, label %apply_lift_neutralize.exit

bb.r:                                             ; preds = %bb.q
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !91 ; 2 uses
  %i.ot = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ov = load float, ptr %i.ou, align 16, !tbaa !12
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, 8.620690e-03
  %i.ox = fadd reassoc nsz arcp contract afn float %i.ow, f0x3E0D3DCB ; 5 uses
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.ox, f0x3E53DCB1
  %i.oz = fmul reassoc nsz arcp contract afn float %i.ox, %i.ox
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %i.ox
  %i.pb = fmul reassoc nsz arcp contract afn float %i.ox, f0x3E038026
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, f0xBC911AA6
  %i.pd = select reassoc nsz arcp contract afn i1 %i.oy, float %i.pa, float %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ot, i64 320
  store float %i.pd, ptr %i.pe, align 8, !tbaa !12
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 332
  store i32 1, ptr %i.pf, align 4, !tbaa !15
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !12
  %i.pi = fdiv reassoc nsz arcp contract afn float %i.ph, %i.pd
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 36 ; 2 uses
  store float %i.pi, ptr %i.pj, align 4, !tbaa !12
  %i.pk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 104
  %i.pm = atomicrmw add ptr %i.pl, i32 1 seq_cst, align 4 ; 0 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ot, i64 208
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !109
  %i.pp = load float, ptr %i.pj, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.po, float noundef %i.pp) #23
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 104
  %i.ps = atomicrmw add ptr %i.pr, i32 -1 seq_cst, align 4 ; 0 uses
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.pt, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.s:                                             ; preds = %bb.p
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !110
  %i.pw = icmp eq ptr %1, %i.pv
  br i1 %i.pw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 104
  %i.pz = load atomic i32, ptr %i.py seq_cst, align 4
  %.not.i38 = icmp eq i32 %i.pz, 0
  br i1 %.not.i38, label %bb.u, label %apply_lift_neutralize.exit

bb.u:                                             ; preds = %bb.t
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !91 ; 7 uses
  %i.qc = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !12
  %i.qg = load float, ptr %i.qd, align 16, !tbaa !12
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !12
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qf, 2.000000e-03
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qg, 8.620690e-03
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qk, f0x3E0D3DCB ; 3 uses
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qi, 5.000000e-03
  %i.qn = fadd reassoc nsz arcp contract afn float %i.ql, %i.qj
  %i.qo = fsub reassoc nsz arcp contract afn float %i.ql, %i.qm ; 5 uses
  %i.qp = fcmp reassoc nsz arcp contract afn ogt float %i.qo, f0x3E53DCB1
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qo, %i.qo
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, %i.qo
  %i.qs = fmul reassoc nsz arcp contract afn float %i.qo, f0x3E038026
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qs, f0xBC911AA6
  %i.qu = select reassoc nsz arcp contract afn i1 %i.qp, float %i.qr, float %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 36
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qb, i64 44
  %i.rb = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.rc = insertelement <2 x float> %i.rb, float %i.qn, i64 1 ; 5 uses
  %i.rd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.rc, splat (float f0x3E53DCB1)
  %i.re = fmul reassoc nsz arcp contract afn <2 x float> %i.rc, %i.rc
  %i.rf = fmul reassoc nsz arcp contract afn <2 x float> %i.re, %i.rc
  %i.rg = fmul reassoc nsz arcp contract afn <2 x float> %i.rc, splat (float f0x3E038026)
  %i.rh = fadd reassoc nsz arcp contract afn <2 x float> %i.rg, splat (float f0xBC911AA6)
  %i.ri = select <2 x i1> %i.rd, <2 x float> %i.rf, <2 x float> %i.rh ; 4 uses
  %i.rj = extractelement <2 x float> %i.ri, i64 1
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, 9.642000e-01
  %i.rl = fmul reassoc nsz arcp contract afn <2 x float> %i.ri, <float f0x3FC10BA0, float f0x3FA61CF4>
  %i.rm = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rn = fmul reassoc nsz arcp contract afn <2 x float> %i.ri, <float f0xBE82DEFC, float f0xBF066D1A>
  %i.ro = fadd reassoc nsz arcp contract afn <2 x float> %i.rn, %i.rm
  %i.rp = extractelement <2 x float> %i.ri, i64 0
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rk, %i.rp ; 2 uses
  %i.rr = fmul reassoc nsz arcp contract afn float %i.rq, 0.000000e+00
  %i.rs = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.qu, i64 0 ; 2 uses
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ru = fmul reassoc arcp contract afn <4 x float> %i.rt, <float f0xBD2CB230, float f0x3C8AC481, float f0x3F7FE762, float -0.000000e+00>
  %i.rv = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.rr, i64 2
  %i.rw = shufflevector <2 x float> %i.ro, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> %i.rv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ry = fadd reassoc nsz arcp contract afn <4 x float> %i.rx, %i.ru
  %i.rz = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.qv, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !12 ; 2 uses
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> %i.rs, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.sb = fmul reassoc arcp contract afn <4 x float> %i.sa, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x3F532CA5>
  %i.sc = fadd reassoc nsz arcp contract afn <4 x float> %i.sb, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -0.000000e+00>
  %i.sd = load <2 x float>, ptr %i.qw, align 4, !tbaa !12
  %i.se = shufflevector <4 x float> %i.rz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.sf = insertelement <4 x float> %i.se, float %i.rq, i64 3
  %i.sg = shufflevector <2 x float> %i.sd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> %i.sf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.si = fadd reassoc nsz arcp contract afn <4 x float> %i.sh, %i.sc ; 2 uses
  %i.sj = load <2 x float>, ptr %i.qz, align 4, !tbaa !12 ; 3 uses
  %i.sk = load <2 x float>, ptr %i.ra, align 4, !tbaa !12
  %i.sl = shufflevector <2 x float> %i.sj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.sm = shufflevector <2 x float> %i.sj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.sm, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.so = shufflevector <4 x float> %i.sl, <4 x float> %i.sn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sp = fmul reassoc nsz arcp contract afn <4 x float> %i.so, %i.ry
  %i.sq = shufflevector <2 x float> %i.sj, <2 x float> %i.sk, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.sr = insertelement <4 x float> %i.sq, float 0.000000e+00, i64 3
  %i.ss = fmul reassoc nsz arcp contract afn <4 x float> %i.sr, %i.sp ; 2 uses
  %i.st = fadd reassoc nsz arcp contract afn <4 x float> %i.si, %i.ss
  %i.su = fmul reassoc nsz arcp contract afn <4 x float> %i.si, %i.ss
  %i.sv = shufflevector <4 x float> %i.st, <4 x float> %i.su, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.sw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.sv, <4 x float> zeroinitializer)
  %bc.i.i = bitcast <4 x float> %i.sw to <4 x i32> ; 2 uses
  %i.sx = load <2 x float>, ptr %i.qx, align 4, !tbaa !12 ; 3 uses
  %i.sy = load <2 x float>, ptr %i.qy, align 4, !tbaa !12
  %i.sz = shufflevector <2 x float> %i.sx, <2 x float> %i.sy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ta = insertelement <4 x float> %i.sz, float 0.000000e+00, i64 3
  %i.tb = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.tc = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.td = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.tc, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.te = shufflevector <4 x float> %i.tb, <4 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tf = fmul reassoc nsz arcp contract afn <4 x float> %i.ta, %i.te
  %i.tg = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.tf
  %i.th = and <4 x i32> %bc.i.i, splat (i32 8388607)
  %i.ti = or disjoint <4 x i32> %i.th, splat (i32 1065353216)
  %i.tj = bitcast <4 x i32> %i.ti to <4 x float>  ; 5 uses
  %i.tk = lshr <4 x i32> %bc.i.i, splat (i32 23)
  %i.tl = and <4 x i32> %i.tk, splat (i32 255)
  %i.tm = add nsw <4 x i32> %i.tl, splat (i32 -127)
  %i.tn = sitofp <4 x i32> %i.tm to <4 x float>
  %i.to = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tj, splat (float f0x3D74552F)
  %i.tp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.to, splat (float f0xBEEE7397)
  %i.tq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tp, %i.tj
  %i.tr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tq, splat (float f0x3FBD96DD)
  %i.ts = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tr, %i.tj
  %i.tt = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ts, splat (float f0xC02153F6)
  %i.tu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.tt, %i.tj
  %i.tv = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.tu, splat (float f0x4038D96C)
  %i.tw = fadd fast <4 x float> %i.tj, splat (float -1.000000e+00)
  %i.tx = fmul reassoc nsz arcp contract afn <4 x float> %i.tv, %i.tw
  %i.ty = fadd reassoc nsz arcp contract afn <4 x float> %i.tx, %i.tn
  %i.tz = fmul reassoc nsz arcp contract afn <4 x float> %i.ty, %i.tg
  %i.ua = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tz, <4 x float> splat (float 1.290000e+02))
  %i.ub = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ua, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.uc = fadd reassoc nsz arcp contract afn <4 x float> %i.ub, splat (float -5.000000e-01)
  %i.ud = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.uc)
  %i.ue = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ud to <4 x float> ; 3 uses
  %.sroa.014.8.vec.extract.i.i.i.i = extractelement <4 x float> %i.ue, i64 2
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.ub, %i.ue
  %i.uf = extractelement <4 x float> %foldExtExtBinop, i64 2 ; 4 uses
  %i.ug = fptosi float %.sroa.014.8.vec.extract.i.i.i.i to i32
  %i.uh = shl i32 %i.ug, 23
  %i.ui = add i32 %i.uh, 1065353216
  %i.uj = fmul reassoc nsz arcp contract afn float %i.uf, f0x3C5DBE69
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uj, f0x3D5509F9
  %i.ul = fmul reassoc nsz arcp contract afn float %i.uk, %i.uf
  %i.um = fadd reassoc nsz arcp contract afn float %i.ul, f0x3E773CC5
  %i.un = fmul reassoc nsz arcp contract afn float %i.um, %i.uf
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, f0x3F3168B3
  %i.up = fmul reassoc nsz arcp contract afn float %i.uo, %i.uf
  %i.uq = fadd reassoc nsz arcp contract afn float %i.up, f0x3F800016
  %i.ur = bitcast i32 %i.ui to float
  %i.us = fmul reassoc nsz arcp contract afn float %i.uq, %i.ur ; 3 uses
  %i.ut = fcmp reassoc nsz arcp contract afn ogt float %i.us, 1.000000e+00
  %i.uu = fcmp reassoc nsz arcp contract afn olt float %i.us, 0.000000e+00
  %spec.select.2.i41 = select reassoc nsz arcp contract afn i1 %i.uu, float 0.000000e+00, float %i.us
  %i.uv = shufflevector <4 x float> %i.ub, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uw = shufflevector <4 x float> %i.ue, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ux = fsub reassoc nsz arcp contract afn <2 x float> %i.uv, %i.uw ; 4 uses
  %i.uy = fptosi <2 x float> %i.uw to <2 x i32>
  %i.uz = shl <2 x i32> %i.uy, splat (i32 23)
  %i.va = add <2 x i32> %i.uz, splat (i32 1065353216)
  %i.vb = fmul reassoc nsz arcp contract afn <2 x float> %i.ux, splat (float f0x3C5DBE69)
  %i.vc = fadd reassoc nsz arcp contract afn <2 x float> %i.vb, splat (float f0x3D5509F9)
  %i.vd = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, %i.ux
  %i.ve = fadd reassoc nsz arcp contract afn <2 x float> %i.vd, splat (float f0x3E773CC5)
  %i.vf = fmul reassoc nsz arcp contract afn <2 x float> %i.ve, %i.ux
  %i.vg = fadd reassoc nsz arcp contract afn <2 x float> %i.vf, splat (float f0x3F3168B3)
  %i.vh = fmul reassoc nsz arcp contract afn <2 x float> %i.vg, %i.ux
  %i.vi = fadd reassoc nsz arcp contract afn <2 x float> %i.vh, splat (float f0x3F800016)
  %i.vj = bitcast <2 x i32> %i.va to <2 x float>
  %i.vk = fmul reassoc nsz arcp contract afn <2 x float> %i.vi, %i.vj ; 3 uses
  %i.vl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vk, splat (float 1.000000e+00)
  %i.vm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vk, zeroinitializer
  %i.vn = select <2 x i1> %i.vm, <2 x float> zeroinitializer, <2 x float> %i.vk
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vn, <float f0x3E937A01, float f0x3F363D62>
  %i.vp = select <2 x i1> %i.vl, <2 x float> <float f0x3E937A01, float f0x3F363D62>, <2 x float> %i.vo
  %i.vq = fmul reassoc nsz arcp contract afn float %spec.select.2.i41, f0x38B3B9D6
  %i.vr = select i1 %i.ut, float f0x38B3B9D6, float %i.vq
  %i.vs = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.vr, <2 x float> %i.vp)
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vs, 1.000000e+02
  %i.vu = getelementptr inbounds nuw i8, ptr %i.qb, i64 60 ; 2 uses
  store float %i.vt, ptr %i.vu, align 4, !tbaa !144
  %i.vv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 104
  %i.vx = atomicrmw add ptr %i.vw, i32 1 seq_cst, align 4 ; 0 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.qc, i64 232
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !110
  %i.wa = load float, ptr %i.vu, align 4, !tbaa !144
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.vz, float noundef %i.wa) #23
  %i.wb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 104
  %i.wd = atomicrmw add ptr %i.wc, i32 -1 seq_cst, align 4 ; 0 uses
  %i.we = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.we, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.v:                                             ; preds = %bb.s
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !112
  %i.wh = icmp eq ptr %1, %i.wg
  br i1 %i.wh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @apply_autoluma(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.x:                                             ; preds = %bb.v
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !113
  %i.wk = icmp eq ptr %1, %i.wj
  br i1 %i.wk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @apply_autocolor(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #23
  br label %apply_lift_neutralize.exit

apply_lift_neutralize.exit:                       ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.w, %bb.z, %bb.y
  %.val = load ptr, ptr %i.a, align 16, !tbaa !47 ; 8 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %i.wm = getelementptr inbounds nuw i8, ptr %.val, i64 332
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !15
  %i.wo = icmp eq i32 %i.wn, 1
  br i1 %i.wo, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %apply_lift_neutralize.exit
  %i.wp = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !15
  %i.wr = icmp eq i32 %i.wq, 1
  br i1 %i.wr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ws = load i32, ptr %i.wl, align 4, !tbaa !15
  %i.wt = icmp eq i32 %i.ws, 1
  br i1 %i.wt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %apply_lift_neutralize.exit
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.str.75.sink.i = phi ptr [ @.str.75, %bb.ac ], [ @.str.93, %bb.ab ]
  %i.wu = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !112
  %i.ww = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.wv, ptr noundef null, ptr noundef nonnull %.str.75.sink.i) #23 ; 0 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.val, i64 300
  %i.wy = getelementptr inbounds nuw i8, ptr %.val, i64 308
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !15
  %i.xa = icmp eq i32 %i.wz, 1
  br i1 %i.xa, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.xb = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !15
  %i.xd = icmp eq i32 %i.xc, 1
  br i1 %i.xd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.xe = load i32, ptr %i.wx, align 4, !tbaa !15
  %i.xf = icmp eq i32 %i.xe, 1
  br i1 %i.xf, label %_check_tuner_picker_labels.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  br label %_check_tuner_picker_labels.exit

_check_tuner_picker_labels.exit:                  ; preds = %bb.af, %bb.ag
  %.str.77.sink.i = phi ptr [ @.str.77, %bb.ag ], [ @.str.94, %bb.af ]
  %i.xg = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !113
  %i.xi = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.xh, ptr noundef null, ptr noundef nonnull %.str.77.sink.i) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autoluma(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = load float, ptr %i.h, align 16, !tbaa !12
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 8.620690e-03
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, f0x3E0D3DCB ; 5 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, f0x3E53DCB1
  %i.m = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn float %i.k, f0x3E038026
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, f0xBC911AA6
  %i.q = select reassoc nsz arcp contract afn i1 %i.l, float %i.n, float %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store float %i.q, ptr %i.r, align 8, !tbaa !12
  store i32 2, ptr %i.e, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.w = load float, ptr %i.v, align 16, !tbaa !12
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 8.620690e-03
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0x3E0D3DCB ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, f0x3E53DCB1
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.y
  %i.ac = fmul reassoc nsz arcp contract afn float %i.y, f0x3E038026
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0xBC911AA6
  %i.ae = select reassoc nsz arcp contract afn i1 %i.z, float %i.ab, float %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  store float %i.ae, ptr %i.af, align 4, !tbaa !12
  store i32 2, ptr %i.s, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 332 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
end_hunk_1
begin_hunk_2_@_configure_slider_blocks:bb.a
  %i.bf = tail call ptr @gtk_label_new(ptr noundef %i.be) #23 ; 9 uses
  %i.bg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bf, ptr noundef %i.bg) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bf, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bf, i32 noundef 1) #23
  %.sroa.speculated105 = select i1 %i.ba, ptr %i.ab, ptr %i.ae
  %i.bh = tail call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.speculated105, i32 noundef 5) #23
  %i.bi = tail call ptr @gtk_label_new(ptr noundef %i.bh) #23 ; 10 uses
  %i.bj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bi, ptr noundef %i.bj) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bi, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bi, i32 noundef 1) #23
  %.sroa.speculated = select i1 %i.ba, ptr %i.ac, ptr %i.af
  %i.bk = tail call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.speculated, i32 noundef 5) #23
  %i.bl = tail call ptr @gtk_label_new(ptr noundef %i.bk) #23 ; 8 uses
  %i.bm = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bl, ptr noundef %i.bm) #23
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.bl, i32 noundef 3) #23
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bl, i32 noundef 1) #23
  %i.bn = tail call i32 @g_strcmp0(ptr noundef %i.ah, ptr noundef nonnull @.str.107) #23
  %.not74 = icmp eq i32 %i.bn, 0
  br i1 %.not74, label %bb.g, label %.loopexit76.loopexit86

bb.g:                                             ; preds = %bb.f
  %i.bo = tail call ptr @gtk_grid_new() #23       ; 11 uses
  tail call void @gtk_grid_set_column_homogeneous(ptr noundef %i.bo, i32 noundef 1) #23
  tail call void @gtk_grid_set_column_spacing(ptr noundef %i.bo, i32 noundef 8) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bf, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bf) #23
  br i1 %.not75, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @gtk_widget_show(ptr noundef %i.bf) #23
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !124
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bf, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bi, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bi) #23
  tail call void @gtk_widget_show(ptr noundef %i.bi) #23
  br label %bb.i

.critedge:                                        ; preds = %bb.g
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !124
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bf, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bi, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bi) #23
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !124
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bs, ptr noundef %i.bi, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  tail call void @dt_gui_add_class(ptr noundef %i.bl, ptr noundef nonnull @.str.108) #23
  tail call void @gtk_container_add(ptr noundef %i.bo, ptr noundef %i.bl) #23
  br i1 %.not75, label %.loopexit76.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @gtk_widget_show(ptr noundef %i.bl) #23
  br label %.loopexit76.loopexit

.loopexit76.loopexit:                             ; preds = %bb.j, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !124
  tail call void @gtk_grid_attach_next_to(ptr noundef %i.bo, ptr noundef %i.bu, ptr noundef %i.bl, i32 noundef 3, i32 noundef 1, i32 noundef 1) #23
  br label %.loopexit

.loopexit76.loopexit86:                           ; preds = %bb.f
  %i.bv = tail call ptr @gtk_notebook_new() #23   ; 4 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.bx = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.bf) #23 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !124
  %i.ca = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.bz, ptr noundef %i.bi) #23 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !124
  %i.cd = tail call i32 @gtk_notebook_append_page(ptr noundef %i.bv, ptr noundef %i.cc, ptr noundef %i.bl) #23 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit76.loopexit, %.loopexit76.loopexit86, %.loopexit.loopexit
  %.1 = phi ptr [ %i.ak, %.loopexit.loopexit ], [ %i.bo, %.loopexit76.loopexit ], [ %i.bv, %.loopexit76.loopexit86 ] ; 2 uses
  call void @g_free(ptr noundef %i.ah) #23
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !124
  call void @g_object_unref(ptr noundef %i.ce) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124
  call void @g_object_unref(ptr noundef %i.cg) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !124
  call void @g_object_unref(ptr noundef %i.ci) #23
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !123
  call void @gtk_container_add(ptr noundef %i.cj, ptr noundef %.1) #23
  br i1 %.not75, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @gtk_widget_show(ptr noundef %.1) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_HSL_sliders(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, 5.000000e-01 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, 5.000000e-01 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, 5.000000e-01 ; 5 uses
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.c, float %i.f)
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.j, float %i.i) ; 6 uses
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.c, float %i.f)
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.l, float %i.i) ; 3 uses
  %i.n = fsub reassoc nsz arcp contract afn float %i.k, %i.m ; 5 uses
  %i.o = fcmp reassoc nsz arcp contract afn une float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %rgb2hsl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.p = fadd reassoc nsz arcp contract afn float %i.m, %i.k ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 5.000000e-01
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.t = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.u = fadd reassoc nsz arcp contract afn double %i.s, %i.t
  %i.v = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.u
  %i.w = fptrunc reassoc nsz arcp contract afn double %i.v to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.y = fdiv reassoc nsz arcp contract afn float %i.n, %i.x
  %i.z = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.c
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub reassoc nsz arcp contract afn float %i.f, %i.i
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.aa, %i.n
  br label %rgb2hsl.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.f
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = fsub reassoc nsz arcp contract afn float %i.i, %i.c
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ad, %i.n
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, 2.000000e+00
  br label %rgb2hsl.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.k, %i.i
  br i1 %i.ag, label %bb.i, label %rgb2hsl.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = fsub reassoc nsz arcp contract afn float %i.c, %i.f
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.ah, %i.n
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, 4.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.043.i = phi nsz float [ %i.ab, %bb.e ], [ %i.af, %bb.g ], [ %i.aj, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ak = fpext reassoc nsz arcp contract afn float %.043.i to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, f0x3FC5555555555555 ; 3 uses
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt double %i.al, f0xB690000000000000
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, 1.000000e+00
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.al, f0x3FF0000010000000
  %i.aq = fadd reassoc nsz arcp contract afn float %i.am, -1.000000e+00
  %spec.select.i = select nsz i1 %i.ap, float %i.aq, float %i.am
  %.1.i = select nsz i1 %i.an, float %i.ao, float %spec.select.i ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn une float %.1.i, -1.000000e+00
  br i1 %i.ar, label %rgb2hsl.exit.thread, label %bb.p

rgb2hsl.exit.thread:                              ; preds = %bb.a, %rgb2hsl.exit
  %.0.i17 = phi float [ %i.y, %rgb2hsl.exit ], [ 0.000000e+00, %bb.a ]
  %.1.i16 = phi float [ %.1.i, %rgb2hsl.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %.1.i16, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.as) #23
  %i.at = fmul reassoc nsz arcp contract afn float %.0.i17, 1.000000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef %i.at) #23
  %i.au = fmul reassoc nsz arcp contract afn float %.1.i16, 6.000000e+00 ; 8 uses
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.av, float 2.000000e+00, float -4.000000e+00
  %i.aw = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.au ; 5 uses
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %i.aw, 1.000000e+00
  br i1 %i.ax, label %hue2rgb.exit.i.i, label %bb.j

bb.j:                                             ; preds = %rgb2hsl.exit.thread
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.aw, 3.000000e+00
  br i1 %i.ay, label %hue2rgb.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.aw, 4.000000e+00
  %i.ba = fsub fast float 4.000000e+00, %i.aw
  %i.bb = select reassoc nsz arcp contract afn i1 %i.az, float %i.ba, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.k, %bb.j, %rgb2hsl.exit.thread
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.j ], [ %i.bb, %bb.k ], [ %i.aw, %rgb2hsl.exit.thread ]
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.bc, label %hue2rgb.exit36.i.i, label %bb.l

bb.l:                                             ; preds = %hue2rgb.exit.i.i
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.au, 3.000000e+00
  br i1 %i.bd, label %hue2rgb.exit36.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = fsub fast float 4.000000e+00, %i.au
  %i.bf = select reassoc nsz arcp contract afn i1 %i.av, float %i.be, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.m, %bb.l, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.l ], [ %i.bf, %bb.m ], [ %i.au, %hue2rgb.exit.i.i ]
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.au, 2.000000e+00
  %.v34.i.i = select i1 %i.bg, float -2.000000e+00, float 4.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.au ; 5 uses
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bh, 1.000000e+00
  br i1 %i.bi, label %update_saturation_slider_color.exit, label %bb.n

bb.n:                                             ; preds = %hue2rgb.exit36.i.i
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bh, 3.000000e+00
  br i1 %i.bj, label %update_saturation_slider_color.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = fcmp reassoc nsz arcp contract afn olt float %i.bh, 4.000000e+00
  %i.bl = fsub fast float 4.000000e+00, %i.bh
  %i.bm = select reassoc nsz arcp contract afn i1 %i.bk, float %i.bl, float 0.000000e+00
  br label %update_saturation_slider_color.exit

update_saturation_slider_color.exit:              ; preds = %hue2rgb.exit36.i.i, %bb.n, %bb.o
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.n ], [ %i.bm, %bb.o ], [ %i.bh, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %1, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #23
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %1, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #23
  br label %bb.q

bb.p:                                             ; preds = %rgb2hsl.exit
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef -1.000000e+00) #23
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef 0.000000e+00) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %update_saturation_slider_color.exit
  tail call void @gtk_widget_queue_draw(ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [10 x i8], align 1                ; 26 uses
  %i.e = alloca [1 x ptr], align 8                ; 2 uses
  %i.f = alloca [3 x ptr], align 16               ; 3 uses
  %i.g = alloca [1 x ptr], align 8                ; 2 uses
  %i.h = alloca [3 x ptr], align 16               ; 3 uses
  %i.i = alloca [1 x ptr], align 8                ; 2 uses
  %i.j = alloca [3 x ptr], align 16               ; 3 uses
  %i.k = alloca [4 x ptr], align 8                ; 4 uses
  %i.l = alloca [6 x ptr], align 8                ; 7 uses
  %i.m = tail call ptr @dt_alloc_aligned(i64 noundef 336) #23 ; 39 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(336) %i.m, i8 0, i64 324, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.m, ptr %i.n, align 16, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 300
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, i8 0, i64 12, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, i8 0, i64 12, i1 false), !tbaa !15
  %i.r = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !14
  %i.s = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1850, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.r, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 10 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !149
  %i.u = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.31) #23 ; 2 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !119
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.v) #23
  %i.w = call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #23 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 8 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !120
  %i.y = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.w, ptr noundef null, ptr noundef nonnull @.str.33) #23 ; 0 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.aa = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.z, ptr noundef %i.aa) #23
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.ac = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ab, ptr noundef %i.ac) #23
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.ae = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #23
  call void @dt_bauhaus_combobox_add(ptr noundef %i.ad, ptr noundef %i.ae) #23
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !120
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ah, align 8, !tbaa !14
  %i.ai = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1862, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.af, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aj, ptr noundef %i.ak) #23
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.am = call i64 @g_signal_connect_data(ptr noundef %i.al, ptr noundef nonnull @.str.35, ptr noundef nonnull @controls_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.26) #23 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !120
  %i.ap = call i32 @g_strcmp0(ptr noundef %i.an, ptr noundef nonnull @.str.27) #23
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.aq = call i32 @g_strcmp0(ptr noundef %i.an, ptr noundef nonnull @.str.28) #23
  %.not309 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not309, i32 2, i32 0
  br label %bb.d

bb.d:                                             ; preds = %_iop_gui_alloc.exit, %bb.c
  %i.as = phi i32 [ %i.ar, %bb.c ], [ 1, %_iop_gui_alloc.exit ]
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ao, i32 noundef %i.as) #23
  %i.at = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  %i.au = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.36, i64 noundef 8) #23
  %i.av = call ptr @gtk_label_new(ptr noundef %i.au) #23 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.av, i32 noundef 0) #23
  call void @gtk_label_set_xalign(ptr noundef %i.av, float noundef 5.000000e-01) #23
  call void @gtk_label_set_ellipsize(ptr noundef %i.av, i32 noundef 3) #23
  call void @dt_gui_add_class(ptr noundef %i.av, ptr noundef nonnull @.str.108) #23
  store ptr %i.av, ptr %i.c, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aw, align 8, !tbaa !14
  %i.ax = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1870, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.at, ptr noundef nonnull %i.c) #23 ; 2 uses
  store ptr %i.ax, ptr %i.t, align 8, !tbaa !149
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !121
  %i.ay = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ay, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ba, i32 noundef 4) #23
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !150
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bb, ptr noundef nonnull @.str.38) #23
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bc, ptr noundef %i.bd) #23
  %i.be = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #23 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 240 ; 4 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.be, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.bg, i32 noundef 4) #23
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bh, ptr noundef nonnull @.str.38) #23
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !151
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bi, ptr noundef %i.bj) #23
  %i.bk = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #23
  %i.bl = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.bk) #23 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 232 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bl, ptr noundef nonnull @.str.38) #23
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !110
  %i.bo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bn, ptr noundef %i.bo) #23
  %i.bp = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #23 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 224 ; 6 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.bp, float noundef 5.000000e-01, float noundef 1.500000e+00) #23
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.br, i32 noundef 4) #23
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.bs, float noundef -1.000000e+02) #23
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_offset(ptr noundef %i.bt, float noundef 1.000000e+02) #23
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !152
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.bu, ptr noundef nonnull @.str.38) #23
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !152
  %i.bw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bv, ptr noundef %i.bw) #23
  %i.bx = call ptr @gtk_label_new(ptr noundef nonnull @.str.45) #23 ; 6 uses
  call void @gtk_widget_set_halign(ptr noundef %i.bx, i32 noundef 0) #23
  call void @gtk_label_set_xalign(ptr noundef %i.bx, float noundef 5.000000e-01) #23
  call void @gtk_label_set_ellipsize(ptr noundef %i.bx, i32 noundef 3) #23
  call void @dt_gui_add_class(ptr noundef %i.bx, ptr noundef nonnull @.str.108) #23
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !125
  %i.bz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #23
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bx, ptr noundef %i.bz) #23
  %i.ca = call ptr @gtk_event_box_new() #23       ; 3 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !125
  call void @gtk_container_add(ptr noundef %i.ca, ptr noundef %i.cb) #23
  %i.cc = call i64 @g_signal_connect_data(ptr noundef %i.ca, ptr noundef nonnull @.str.47, ptr noundef nonnull @_cycle_layout_callback, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.cd = call ptr @gtk_event_box_new() #23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cf = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  store ptr inttoptr (i64 -1 to ptr), ptr %i.e, align 8, !tbaa !14
  %i.cg = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1994, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.cf, ptr noundef nonnull %i.e) #23 ; 2 uses
  store ptr %i.cg, ptr %i.t, align 8, !tbaa !149
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !124
  %i.ci = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61, i32 noundef 0) #23 ; 0 uses
  %i.cj = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #23
  %i.ck = call ptr @dt_color_picker_new(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.cj) #23 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 10 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ck, float noundef f0x3F733333, float noundef 1.050000e+00) #23
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.cm, i32 noundef 4) #23
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.cn, float noundef 1.000000e+02) #23
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_offset(ptr noundef %i.co, float noundef -1.000000e+02) #23
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.cp, ptr noundef nonnull @.str.38) #23
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.cq, i32 noundef 0) #23
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !107
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cr, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #23
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !107
end_hunk_2
begin_hunk_3_@gui_init:bb.a
  %i.na = call ptr @gtk_label_new(ptr noundef %i.mz) #23 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.na, i32 noundef 0) #23
  call void @gtk_label_set_xalign(ptr noundef %i.na, float noundef 5.000000e-01) #23
  call void @gtk_label_set_ellipsize(ptr noundef %i.na, i32 noundef 3) #23
  call void @dt_gui_add_class(ptr noundef %i.na, ptr noundef nonnull @.str.108) #23
  store ptr %i.na, ptr %i.k, align 8, !tbaa !14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.nc = load <2 x ptr>, ptr %i.mo, align 8, !tbaa !124
  store <2 x ptr> %i.nc, ptr %i.nb, align 8, !tbaa !14
  %i.nd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.nd, align 8, !tbaa !14
  %i.ne = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 2010, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.my, ptr noundef nonnull %i.k) #23
  %i.nf = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !122
  %i.ng = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #23
  store ptr %i.s, ptr %i.l, align 8, !tbaa !14
  %i.nh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ni = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.ni, ptr %i.nh, align 8, !tbaa !14
  %i.nj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ca, ptr %i.nj, align 8, !tbaa !14
  %i.nk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.nl = load ptr, ptr %i.ce, align 8, !tbaa !123
  store ptr %i.nl, ptr %i.nk, align 8, !tbaa !14
  %i.nm = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.nn = load ptr, ptr %i.nf, align 8, !tbaa !122
  store ptr %i.nn, ptr %i.nm, align 8, !tbaa !14
  %i.no = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr inttoptr (i64 -1 to ptr), ptr %i.no, align 8, !tbaa !14
  %i.np = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 2017, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ng, ptr noundef nonnull %i.l) #23
  store ptr %i.np, ptr %i.t, align 8, !tbaa !149
  %i.nq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !153
  %i.nr = and i32 %i.nq, 2
  %i.ns = icmp ne i32 %i.nr, 0
  %i.nt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3464), align 8
  %i.nu = icmp ne i32 %i.nt, 0
  %or.cond = select i1 %i.ns, i1 %i.nu, i1 false
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.nv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !154
  %i.nw = and i32 %i.nv, 1048576
  %.not310 = icmp eq i32 %i.nw, 0
  br i1 %.not310, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30, i32 noundef 2019, ptr noundef nonnull @__FUNCTION__.gui_init) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.nx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !155
  call void @dt_control_signal_connect(ptr noundef %i.nx, i32 noundef 37, ptr noundef nonnull @_configure_slider_blocks, ptr noundef nonnull %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_new(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @controls_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47
  tail call void @set_visible_widgets(ptr noundef %i.e)
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_offset(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @gtk_event_box_new() local_unnamed_addr #3

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_cycle_layout_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @dt_conf_get_string(ptr noundef nonnull @.str.104) #23 ; 3 uses
  %i.b = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.107) #23
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @g_strcmp0(ptr noundef %i.a, ptr noundef nonnull @.str.105) #23
  %.not4 = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not4, ptr @.str.107, ptr @.str.105
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @.str.109, %bb.a ]
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.104, ptr noundef nonnull %i.e) #23
  tail call void @g_free(ptr noundef %i.a) #23
  tail call void @_configure_slider_blocks(ptr poison, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_new_with_range_and_feedback(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @lift_callback(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47  ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.j) #23 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x3B360B61 ; 2 uses
  store float %i.l, ptr %i.a, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #23
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3C23D70A
  store float %i.q, ptr %i.m, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float 5.000000e-01, ptr %i.r, align 4, !tbaa !12
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.t = icmp eq ptr %0, %i.s
  br i1 %i.t, label %bb.c, label %update_saturation_slider_color.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !95   ; 3 uses
  %i.v = fcmp reassoc nsz arcp contract afn une float %i.l, -1.000000e+00
  br i1 %i.v, label %bb.d, label %update_saturation_slider_color.exit

bb.d:                                             ; preds = %bb.c
  %i.w = fmul reassoc nsz arcp contract afn float %i.k, f0x3C888889 ; 8 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.x, float 2.000000e+00, float -4.000000e+00
  %i.y = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.w ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.z, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.y, 3.000000e+00
  br i1 %i.aa, label %hue2rgb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.y, 4.000000e+00
  %i.ac = fsub fast float 4.000000e+00, %i.y
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ab, float %i.ac, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %bb.d ]
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.ae, label %hue2rgb.exit36.i.i, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit.i.i
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.af, label %hue2rgb.exit36.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fsub fast float 4.000000e+00, %i.w
  %i.ah = select reassoc nsz arcp contract afn i1 %i.x, float %i.ag, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.h, %bb.g, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ah, %bb.h ], [ %i.w, %hue2rgb.exit.i.i ]
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.w, 2.000000e+00
  %.v34.i.i = select i1 %i.ai, float -2.000000e+00, float 4.000000e+00
  %i.aj = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.w ; 5 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %hsl2rgb.exit.i, label %bb.i

bb.i:                                             ; preds = %hue2rgb.exit36.i.i
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.aj, 3.000000e+00
  br i1 %i.al, label %hsl2rgb.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.aj, 4.000000e+00
  %i.an = fsub fast float 4.000000e+00, %i.aj
  %i.ao = select reassoc nsz arcp contract afn i1 %i.am, float %i.an, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.j, %bb.i, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.i ], [ %i.ao, %bb.j ], [ %i.aj, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #23
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @gtk_widget_queue_draw(ptr noundef %i.u) #23
  br label %update_saturation_slider_color.exit

update_saturation_slider_color.exit:              ; preds = %hsl2rgb.exit.i, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call fastcc void @set_RGB_sliders(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.a, ptr noundef nonnull %i.av)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.aw, ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %update_saturation_slider_color.exit
  ret void
}

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @gamma_callback(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47  ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.j) #23 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x3B360B61 ; 2 uses
  store float %i.l, ptr %i.a, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #23
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3C23D70A
  store float %i.q, ptr %i.m, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float 5.000000e-01, ptr %i.r, align 4, !tbaa !12
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.t = icmp eq ptr %0, %i.s
  br i1 %i.t, label %bb.c, label %update_saturation_slider_color.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  %i.v = fcmp reassoc nsz arcp contract afn une float %i.l, -1.000000e+00
  br i1 %i.v, label %bb.d, label %update_saturation_slider_color.exit

bb.d:                                             ; preds = %bb.c
  %i.w = fmul reassoc nsz arcp contract afn float %i.k, f0x3C888889 ; 8 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.x, float 2.000000e+00, float -4.000000e+00
  %i.y = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.w ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.z, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.y, 3.000000e+00
  br i1 %i.aa, label %hue2rgb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.y, 4.000000e+00
  %i.ac = fsub fast float 4.000000e+00, %i.y
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ab, float %i.ac, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %bb.d ]
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.ae, label %hue2rgb.exit36.i.i, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit.i.i
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.af, label %hue2rgb.exit36.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fsub fast float 4.000000e+00, %i.w
  %i.ah = select reassoc nsz arcp contract afn i1 %i.x, float %i.ag, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.h, %bb.g, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ah, %bb.h ], [ %i.w, %hue2rgb.exit.i.i ]
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.w, 2.000000e+00
  %.v34.i.i = select i1 %i.ai, float -2.000000e+00, float 4.000000e+00
  %i.aj = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.w ; 5 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %hsl2rgb.exit.i, label %bb.i

bb.i:                                             ; preds = %hue2rgb.exit36.i.i
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.aj, 3.000000e+00
  br i1 %i.al, label %hsl2rgb.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.aj, 4.000000e+00
  %i.an = fsub fast float 4.000000e+00, %i.aj
  %i.ao = select reassoc nsz arcp contract afn i1 %i.am, float %i.an, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.j, %bb.i, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.i ], [ %i.ao, %bb.j ], [ %i.aj, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #23
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @gtk_widget_queue_draw(ptr noundef %i.u) #23
  br label %update_saturation_slider_color.exit

update_saturation_slider_color.exit:              ; preds = %hsl2rgb.exit.i, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call fastcc void @set_RGB_sliders(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.a, ptr noundef nonnull %i.av)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.aw, ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %update_saturation_slider_color.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gain_callback(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !47  ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.k = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.j) #23 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x3B360B61 ; 2 uses
  store float %i.l, ptr %i.a, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #23
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3C23D70A
  store float %i.q, ptr %i.m, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float 5.000000e-01, ptr %i.r, align 4, !tbaa !12
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.t = icmp eq ptr %0, %i.s
  br i1 %i.t, label %bb.c, label %update_saturation_slider_color.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !106  ; 3 uses
  %i.v = fcmp reassoc nsz arcp contract afn une float %i.l, -1.000000e+00
  br i1 %i.v, label %bb.d, label %update_saturation_slider_color.exit

bb.d:                                             ; preds = %bb.c
  %i.w = fmul reassoc nsz arcp contract afn float %i.k, f0x3C888889 ; 8 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.x, float 2.000000e+00, float -4.000000e+00
  %i.y = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.w ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.z, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.y, 3.000000e+00
  br i1 %i.aa, label %hue2rgb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.y, 4.000000e+00
  %i.ac = fsub fast float 4.000000e+00, %i.y
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ab, float %i.ac, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %bb.d ]
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.ae, label %hue2rgb.exit36.i.i, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit.i.i
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.af, label %hue2rgb.exit36.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fsub fast float 4.000000e+00, %i.w
  %i.ah = select reassoc nsz arcp contract afn i1 %i.x, float %i.ag, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.h, %bb.g, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ah, %bb.h ], [ %i.w, %hue2rgb.exit.i.i ]
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.w, 2.000000e+00
  %.v34.i.i = select i1 %i.ai, float -2.000000e+00, float 4.000000e+00
  %i.aj = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.w ; 5 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 1.000000e+00
  br i1 %i.ak, label %hsl2rgb.exit.i, label %bb.i

bb.i:                                             ; preds = %hue2rgb.exit36.i.i
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.aj, 3.000000e+00
  br i1 %i.al, label %hsl2rgb.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.aj, 4.000000e+00
  %i.an = fsub fast float 4.000000e+00, %i.aj
  %i.ao = select reassoc nsz arcp contract afn i1 %i.am, float %i.an, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.j, %bb.i, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.i ], [ %i.ao, %bb.j ], [ %i.aj, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #23
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.u, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #23
  tail call void @gtk_widget_queue_draw(ptr noundef %i.u) #23
  br label %update_saturation_slider_color.exit

update_saturation_slider_color.exit:              ; preds = %hsl2rgb.exit.i, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  call fastcc void @set_RGB_sliders(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.a, ptr noundef nonnull %i.av)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.aw, ptr noundef nonnull %1, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %update_saturation_slider_color.exit
  ret void
}

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !158
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !35
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !35
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !35
  store ptr @introspection_init.f11, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1040), align 16, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.31) #26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.89) #26
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.61) #26
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.90) #26
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.71) #26
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.91) #26
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.73) #26
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.37) #26
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.44) #26
  %.not31 = icmp eq i32 %i.p, 0
  br i1 %.not31, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.42) #26
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.40) #26
  %.not33 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %spec.select = select i1 %.not33, ptr %i.u, ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.t ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.31) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.89) #23
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.61) #23
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.90) #23
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.71) #23
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.91) #23
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.73) #23
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.37) #23
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #23
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.42) #23
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.40) #23
  %.not21 = icmp eq i32 %i.k, 0
  %. = select i1 %.not21, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ %., %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_exif_xmp_decode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare i32 @dt_develop_blend_version() local_unnamed_addr #3

declare i32 @dt_develop_blend_legacy_params_from_so(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_gui_presets_add_with_blendop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #22

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #22

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #22

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_grid_new() local_unnamed_addr #3

declare void @gtk_grid_set_column_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_grid_attach_next_to(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_notebook_new() local_unnamed_addr #3

declare i32 @gtk_notebook_append_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_RGB_sliders(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !12   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12 ; 7 uses
  %i.f = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00
  br i1 %i.f, label %hsl2rgb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fpext reassoc nsz arcp contract afn float %i.e to double ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn olt float %i.e, 5.000000e-01
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fpext reassoc nsz arcp contract afn float %i.c to double
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, 1.000000e+00
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = fadd reassoc nsz arcp contract afn float %i.e, %i.c
  %i.n = fmul reassoc nsz arcp contract afn float %i.c, %i.e
  %i.o = fsub reassoc nsz arcp contract afn float %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi float [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 10 uses
  %i.q = fmul reassoc nsz arcp contract afn double %i.g, 2.000000e+00
  %i.r = fpext reassoc nsz arcp contract afn float %i.p to double
  %i.s = fsub reassoc nsz arcp contract afn double %i.q, %i.r
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float ; 15 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.a, 6.000000e+00 ; 8 uses
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.v, float 2.000000e+00, float -4.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn float %.v.i, %i.u ; 5 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.t
  br label %hue2rgb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.ab, label %hue2rgb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00
  %i.ad = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ae = fsub fast float 4.000000e+00, %i.w
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.t
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ag, float %i.t
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi nsz float [ %i.aa, %bb.f ], [ %i.ah, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.u, 1.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hue2rgb.exit.i
  %i.aj = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.u
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.t
  br label %hue2rgb.exit36.i

bb.j:                                             ; preds = %hue2rgb.exit.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.u, 3.000000e+00
  br i1 %i.am, label %hue2rgb.exit36.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ao = fsub fast float 4.000000e+00, %i.u
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.t
  %i.ar = select reassoc nsz arcp contract afn i1 %i.v, float %i.aq, float %i.t
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %.0.i35.i = phi nsz float [ %i.al, %bb.i ], [ %i.ar, %bb.k ], [ %i.p, %bb.j ] ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.u, 2.000000e+00
  %.v34.i = select i1 %i.as, float -2.000000e+00, float 4.000000e+00
  %i.at = fadd reassoc nsz arcp contract afn float %.v34.i, %i.u ; 5 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, 1.000000e+00
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %hue2rgb.exit36.i
  %i.av = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.t
  br label %hsl2rgb.exit

bb.m:                                             ; preds = %hue2rgb.exit36.i
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.at, 3.000000e+00
  br i1 %i.ay, label %hsl2rgb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.at, 4.000000e+00
  %i.ba = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.bb = fsub fast float 4.000000e+00, %i.at
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ba, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.t
  %i.be = select reassoc nsz arcp contract afn i1 %i.az, float %i.bd, float %i.t
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.l, %bb.m, %bb.n, %bb.a
  %.sroa.0.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.m ], [ %.0.i.i, %bb.l ]
  %.sroa.6.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i35.i, %bb.n ], [ %.0.i35.i, %bb.m ], [ %.0.i35.i, %bb.l ]
  %.sroa.9.0 = phi nsz float [ %i.e, %bb.a ], [ %i.be, %bb.n ], [ %i.p, %bb.m ], [ %i.ax, %bb.l ]
  %i.bf = fcmp reassoc nsz arcp contract afn une float %i.a, -1.000000e+00
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %hsl2rgb.exit
  %i.bg = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.6.0, i64 1
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fmul reassoc nsz arcp contract afn float %.sroa.9.0, 2.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store float %i.bl, ptr %i.bm, align 4, !tbaa !12
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = atomicrmw add ptr %i.bo, i32 1 seq_cst, align 4 ; 0 uses
  %i.bq = load float, ptr %i.bj, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.bq) #23
  %i.br = load float, ptr %i.bk, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef %i.br) #23
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %2, float noundef %i.bs) #23
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %hsl2rgb.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"dt_iop_colorbalance_data_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!34 = !{!33, !8, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!37 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!38 = !{!"dt_pthread_mutex_t", !7, i64 0}
!39 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!40 = !{!"", !28, i64 0, !28, i64 8}
!41 = !{!"", !16, i64 0, !8, i64 8}
!42 = !{!"", !40, i64 0, !41, i64 16}
!43 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!44 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!45 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!46 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !36, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !37, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !38, i64 712, !13, i64 752, !13, i64 760, !39, i64 768, !39, i64 776, !13, i64 784, !42, i64 792, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !8, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !44, i64 912, !44, i64 920, !43, i64 928, !43, i64 936, !8, i64 944, !45, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !43, i64 1096, !13, i64 1104, !8, i64 1112}
!47 = !{!46, !13, i64 704}
!48 = !{!"dt_iop_colorbalance_gui_data_t", !43, i64 0, !43, i64 8, !43, i64 16, !7, i64 24, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !7, i64 264, !7, i64 276, !7, i64 288, !7, i64 300, !7, i64 312, !7, i64 324}
!49 = !{!48, !43, i64 72}
!50 = !{!"dt_codepath_t", !8, i64 0}
!51 = !{!"p1 _ZTS6_GList", !13, i64 0}
!52 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!53 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!54 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!55 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!56 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!57 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!58 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!59 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!60 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!61 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!62 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!63 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!64 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!65 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!66 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!67 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!68 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!69 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!70 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!71 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!72 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!73 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!74 = !{!"p1 omnipotent char", !13, i64 0}
!75 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!76 = !{!"_Bool", !7, i64 0}
!77 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!78 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!79 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!80 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!81 = !{!"", !75, i64 0, !38, i64 8, !7, i64 48, !76, i64 96, !76, i64 97, !77, i64 104, !78, i64 112, !79, i64 120, !80, i64 128, !80, i64 136, !80, i64 144}
!82 = !{!"double", !7, i64 0}
!83 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!84 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!85 = !{!"dt_sys_resources_t", !21, i64 0, !21, i64 8, !20, i64 16, !20, i64 24, !8, i64 32}
!86 = !{!"dt_backthumb_t", !82, i64 0, !82, i64 8, !8, i64 16, !8, i64 20}
!87 = !{!"dt_gimp_t", !8, i64 0, !74, i64 8, !74, i64 16, !8, i64 24, !8, i64 28}
!88 = !{!"dt_splash_t", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !8, i64 32}
!89 = !{!"darktable_t", !50, i64 0, !8, i64 4, !8, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !53, i64 56, !37, i64 64, !54, i64 72, !55, i64 80, !56, i64 88, !57, i64 96, !58, i64 104, !59, i64 112, !60, i64 120, !61, i64 128, !62, i64 136, !63, i64 144, !64, i64 152, !65, i64 160, !66, i64 168, !67, i64 176, !68, i64 184, !69, i64 192, !70, i64 200, !71, i64 208, !72, i64 216, !73, i64 224, !7, i64 232, !38, i64 2792, !38, i64 2832, !38, i64 2872, !38, i64 2912, !38, i64 2952, !38, i64 2992, !74, i64 3032, !74, i64 3040, !74, i64 3048, !74, i64 3056, !74, i64 3064, !74, i64 3072, !74, i64 3080, !74, i64 3088, !74, i64 3096, !74, i64 3104, !74, i64 3112, !74, i64 3120, !74, i64 3128, !81, i64 3136, !51, i64 3288, !82, i64 3296, !51, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !83, i64 3520, !84, i64 3528, !85, i64 3536, !86, i64 3576, !87, i64 3600, !88, i64 3632, !8, i64 3672}
!90 = !{!89, !58, i64 104}
!91 = !{!46, !13, i64 680}
!92 = !{!48, !43, i64 120}
!93 = !{!48, !43, i64 128}
!94 = !{!48, !43, i64 136}
!95 = !{!48, !43, i64 96}
!96 = !{!89, !37, i64 64}
!97 = !{!48, !43, i64 80}
!98 = !{!48, !43, i64 152}
!99 = !{!48, !43, i64 160}
!100 = !{!48, !43, i64 168}
!101 = !{!48, !43, i64 104}
!102 = !{!48, !43, i64 88}
!103 = !{!48, !43, i64 184}
!104 = !{!48, !43, i64 192}
!105 = !{!48, !43, i64 200}
!106 = !{!48, !43, i64 112}
!107 = !{!48, !43, i64 144}
end_hunk_3
