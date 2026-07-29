inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_Z10ImportNodeP7aiSceneRN4glTF5AssetERSt6vectorIjSaIjEERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit229, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1144) #29
  resume { ptr, i32 } %i.y

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = tail call noundef ptr @_Z10ImportNodeP7aiSceneRN4glTF5AssetERSt6vectorIjSaIjEERN10glTFCommon3RefINS1_4NodeEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(2032) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1096
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ae, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.t, align 8
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.loopexit229, !llvm.loop !79

.loopexit229:                                     ; preds = %.lr.ph, %bb.c, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1028 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !noundef !18
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.an = load float, ptr %i.am, align 8
  store float %i.an, ptr %i.ai, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 1044
  store float %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.as = load float, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 1060
  store float %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 1076
  store float %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ay = load float, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store float %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 1048
  store float %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.be = load float, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 1064
  store float %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 1080
  store float %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bk = load float, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 1036
  store float %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 1052
  store float %i.bn, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bq = load float, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 1068
  store float %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 1084
  store float %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bw = load float, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store float %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 1056
  store float %i.bz, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.cc = load float, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 1072
  store float %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 1088
  store float %i.cf, ptr %i.cg, align 4
  br label %bb.l

bb.f:                                             ; preds = %.loopexit229
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.ci = load i8, ptr %i.ch, align 8, !range !17, !noundef !18
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.cn = load float, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 1044 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 1060 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 1076 ; 2 uses
  %i.ct = load <4 x float>, ptr %i.ai, align 4    ; 3 uses
  %i.cu = load <4 x float>, ptr %i.cq, align 4    ; 2 uses
  %i.cv = fmul <4 x float> %i.cu, zeroinitializer ; 2 uses
  %i.cw = fadd <4 x float> %i.ct, %i.cv
  %i.cx = load <4 x float>, ptr %i.cr, align 4    ; 4 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer, <4 x float> %i.cw)
  %i.cz = load <4 x float>, ptr %i.cs, align 4    ; 4 uses
  %i.da = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.db, <4 x float> %i.cy)
  store <4 x float> %i.dc, ptr %i.ai, align 4
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> zeroinitializer, <4 x float> %i.cu)
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer, <4 x float> %i.dd)
  %i.df = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.dg, <4 x float> %i.de)
  store <4 x float> %i.dh, ptr %i.cq, align 4
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> zeroinitializer, <4 x float> %i.cv) ; 2 uses
  %i.dj = fadd <4 x float> %i.cx, %i.di
  %i.dk = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.dl, <4 x float> %i.dj)
  store <4 x float> %i.dm, ptr %i.cr, align 4
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer, <4 x float> %i.di)
  %i.do = fadd <4 x float> %i.cz, %i.dn
  store <4 x float> %i.do, ptr %i.cs, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  %i.dq = load i8, ptr %i.dp, align 4, !range !17, !noundef !18
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.dt = load float, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.dx = load float, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 1044 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 1060 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 1076 ; 2 uses
  %i.eb = load <4 x float>, ptr %i.ai, align 4    ; 3 uses
  %i.ec = load <4 x float>, ptr %i.dy, align 4    ; 2 uses
  %i.ed = fmul <4 x float> %i.ec, zeroinitializer ; 2 uses
  %i.ee = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = load <4 x float>, ptr %i.dz, align 4    ; 4 uses
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> zeroinitializer, <4 x float> %i.eg)
  %i.ej = load <4 x float>, ptr %i.ea, align 4    ; 4 uses
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.ei)
  store <4 x float> %i.ek, ptr %i.ai, align 4
  %i.el = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul <4 x float> %i.em, %i.ec
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> zeroinitializer, <4 x float> %i.en)
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> zeroinitializer, <4 x float> %i.eo)
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.ep)
  store <4 x float> %i.eq, ptr %i.dy, align 4
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> zeroinitializer, <4 x float> %i.ed) ; 2 uses
  %i.es = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.et, <4 x float> %i.er)
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.eu)
  store <4 x float> %i.ev, ptr %i.dz, align 4
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> zeroinitializer, <4 x float> %i.er)
  %i.ex = fadd <4 x float> %i.ej, %i.ew
  store <4 x float> %i.ex, ptr %i.ea, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 220
  %i.ez = load i8, ptr %i.ey, align 4, !range !17, !noundef !18
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.ff = load <4 x float>, ptr %i.fb, align 4    ; 7 uses
  %i.fg = load float, ptr %i.fe, align 8          ; 2 uses
  %4 = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %5 = insertelement <2 x float> %4, float 0.000000e+00, i64 1
  %6 = insertelement <2 x float> %4, float -0.000000e+00, i64 1
  %i.fh = fneg float %i.fg                        ; 2 uses
  %i.fi = shufflevector <4 x float> %i.ff, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 2, i32 1, i32 2>
  %i.fj = shufflevector <4 x float> %i.ff, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 3, i32 3>
  %i.fk = insertelement <4 x float> %i.fj, float %i.fh, i64 1
  %i.fl = fmul <4 x float> %i.fi, %i.fk
  %i.fm = shufflevector <4 x float> %i.ff, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 2, i32 1>
  %i.fn = extractelement <4 x float> %i.ff, i64 0 ; 4 uses
  %i.fo = load <2 x float>, ptr %i.fc, align 8    ; 4 uses
  %i.fp = load float, ptr %i.fd, align 4          ; 2 uses
  %i.fq = fmul float %i.fp, %i.fp                 ; 2 uses
  %7 = insertelement <2 x float> %4, float %i.fq, i64 0
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %6, <2 x float> %7)
  %i.fr = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fm, <4 x float> %i.fl) ; 4 uses
  %i.ft = extractelement <4 x float> %i.fs, i64 1
  %i.fu = fmul float %i.ft, 2.000000e+00
  %i.fv = extractelement <4 x float> %i.fs, i64 2
  %i.fw = fmul float %i.fv, 2.000000e+00
  %i.fx = extractelement <4 x float> %i.fs, i64 3
  %i.fy = fmul float %i.fx, 2.000000e+00
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fq)
  %i.ga = shufflevector <4 x float> %i.ff, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 poison, i32 0>
  %i.gb = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gd = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.fh, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.fg, i64 3
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.gg = fmul <4 x float> %i.gc, %i.gf
  %i.gh = shufflevector <4 x float> %i.gb, <4 x float> %i.ff, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.gi = insertelement <4 x float> %i.gh, float %i.fz, i64 0
  %i.gj = shufflevector <2 x float> %i.fo, <2 x float> <float -2.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.gj, <4 x float> %i.gg) ; 4 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 1
  %i.gm = fmul float %i.gl, 2.000000e+00
  %i.gn = extractelement <4 x float> %i.gk, i64 2
  %i.go = fmul float %i.gn, 2.000000e+00
  %i.gp = extractelement <4 x float> %i.gk, i64 3
  %i.gq = fmul float %i.gp, 2.000000e+00
  %foldExtExtBinop = fmul <2 x float> %i.fo, %i.fo
  %i.gr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.gr)
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gs, float -2.000000e+00, float 1.000000e+00)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 1044 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 1060 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 1076 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.ai, align 4    ; 4 uses
  %i.gy = load <4 x float>, ptr %i.gu, align 4    ; 4 uses
  %i.gz = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = fmul <4 x float> %i.gy, %i.ha
  %i.hc = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.hc, <4 x float> %i.hb)
  %i.he = load <4 x float>, ptr %i.gv, align 4    ; 4 uses
  %i.hf = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hg, <4 x float> %i.hd)
  %i.hi = load <4 x float>, ptr %i.gw, align 4    ; 4 uses
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> zeroinitializer, <4 x float> %i.hh)
  store <4 x float> %i.hj, ptr %i.ai, align 4
  %i.hk = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = fmul <4 x float> %i.gy, %i.hk
  %i.hm = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.hn, <4 x float> %i.hl)
  %i.hp = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hq, <4 x float> %i.ho)
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> zeroinitializer, <4 x float> %i.hr)
  store <4 x float> %i.hs, ptr %i.gu, align 4
  %i.ht = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = fmul <4 x float> %i.gy, %i.hu
  %i.hw = insertelement <4 x float> poison, float %i.go, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.hx, <4 x float> %i.hv)
  %i.hz = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.ia, <4 x float> %i.hy)
  %i.ic = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> zeroinitializer, <4 x float> %i.ib)
  store <4 x float> %i.ic, ptr %i.gv, align 4
  %i.id = fmul <4 x float> %i.gy, zeroinitializer
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> zeroinitializer, <4 x float> %i.id)
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> zeroinitializer, <4 x float> %i.ie)
  %i.ig = fadd <4 x float> %i.hi, %i.if
  store <4 x float> %i.ig, ptr %i.gw, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8            ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.il = icmp eq ptr %i.ii, %i.ik
  br i1 %i.il, label %.loopexit, label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.l
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.ii to i64
  %i.io = sub i64 %i.im, %i.in                    ; 3 uses
  %i.ip = ashr exact i64 %i.io, 4                 ; 2 uses
  %i.iq = load ptr, ptr %2, align 8               ; 3 uses
  %i.ir = icmp eq i64 %i.io, 16
  br i1 %i.ir, label %.epil.preheader, label %.lr.ph233.new

.lr.ph233.new:                                    ; preds = %.lr.ph233
  %unroll_iter = and i64 %i.ip, -2
  br label %bb.m

._crit_edge.unr-lcssa:                            ; preds = %bb.m
  %i.is = and i64 %i.io, 16
  %lcmp.mod.not = icmp eq i64 %i.is, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph233
  %.079232.epil.init = phi i32 [ 0, %.lr.ph233 ], [ %i.kf, %._crit_edge.unr-lcssa ]
  %.080231.epil.init = phi i64 [ 0, %.lr.ph233 ], [ %i.kg, %._crit_edge.unr-lcssa ]
  %lcmp.mod271 = trunc i64 %i.ip to i1
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %.080231.epil.init
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.iq, i64 %i.iw ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = load i32, ptr %i.ix, align 4
  %i.jb = add i32 %i.iz, %.079232.epil.init
  %i.jc = sub i32 %i.jb, %i.ja
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa269 = phi i32 [ %i.kf, %._crit_edge.unr-lcssa ], [ %i.jc, %.epil.preheader ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 1120
  store i32 %.lcssa269, ptr %i.jd, align 8
  %i.je = sext i32 %.lcssa269 to i64
  %i.jf = icmp slt i32 %.lcssa269, 0
  %i.jg = shl nsw i64 %i.je, 2
  %i.jh = select i1 %i.jf, i64 -1, i64 %i.jg
  %i.ji = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jh) #32
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 1128 ; 2 uses
  store ptr %i.ji, ptr %i.jj, align 8
  %i.jk = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.jl = load ptr, ptr %i.ih, align 8            ; 2 uses
  %.not244 = icmp eq ptr %i.jk, %i.jl
  br i1 %.not244, label %.loopexit, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8
  br label %.lr.ph243

bb.m:                                             ; preds = %bb.m, %.lr.ph233.new
  %.079232 = phi i32 [ 0, %.lr.ph233.new ], [ %i.kf, %bb.m ]
  %.080231 = phi i64 [ 0, %.lr.ph233.new ], [ %i.kg, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph233.new ], [ %niter.next.1, %bb.m ]
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %.080231
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 8
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr [4 x i8], ptr %i.iq, i64 %i.jp ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = load i32, ptr %i.jq, align 4
  %i.ju = add i32 %i.js, %.079232
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %.080231
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load i32, ptr %i.jw, align 8
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr [4 x i8], ptr %i.iq, i64 %i.jy ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = load i32, ptr %i.jz, align 4
  %i.kd = add i32 %i.ju, %i.kb
  %i.ke = add i32 %i.jt, %i.kc
  %i.kf = sub i32 %i.kd, %i.ke                    ; 3 uses
  %i.kg = add nuw i64 %.080231, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !80

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %._crit_edge238
  %i.kh = phi ptr [ %i.kv, %._crit_edge238 ], [ %i.jl, %.lr.ph243.preheader ] ; 2 uses
  %i.ki = phi ptr [ %i.kw, %._crit_edge238 ], [ %i.jk, %.lr.ph243.preheader ]
  %i.kj = phi ptr [ %i.kx, %._crit_edge238 ], [ %.pre, %.lr.ph243.preheader ] ; 2 uses
  %.077241 = phi i64 [ %i.ky, %._crit_edge238 ], [ 0, %.lr.ph243.preheader ] ; 2 uses
  %.078240 = phi i32 [ %.1.lcssa, %._crit_edge238 ], [ 0, %.lr.ph243.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %.077241
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 8
  %i.kn = sext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %i.kj, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4            ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ko, i64 4
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = icmp ult i32 %i.kp, %i.kr
  br i1 %i.ks, label %.lr.ph237.preheader, label %._crit_edge238

.lr.ph237.preheader:                              ; preds = %.lr.ph243
  %i.kt = sext i32 %.078240 to i64
  br label %.lr.ph237

._crit_edge238.loopexit:                          ; preds = %.lr.ph237
  %i.ku = trunc nsw i64 %indvars.iv.next248 to i32
  %.pre250 = load ptr, ptr %i.ij, align 8
  %.pre251 = load ptr, ptr %i.ih, align 8
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %._crit_edge238.loopexit, %.lr.ph243
  %i.kv = phi ptr [ %i.kh, %.lr.ph243 ], [ %.pre251, %._crit_edge238.loopexit ] ; 2 uses
  %i.kw = phi ptr [ %i.ki, %.lr.ph243 ], [ %.pre250, %._crit_edge238.loopexit ] ; 2 uses
  %i.kx = phi ptr [ %i.kj, %.lr.ph243 ], [ %i.lh, %._crit_edge238.loopexit ]
  %.1.lcssa = phi i32 [ %.078240, %.lr.ph243 ], [ %i.ku, %._crit_edge238.loopexit ]
  %i.ky = add nuw i64 %.077241, 1                 ; 2 uses
  %i.kz = ptrtoint ptr %i.kw to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !869

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !870

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #31
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec143, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.co, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !871

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !872

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !609

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !609

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{null, null, null}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{ptr @_ZN4glTF6ObjectD2Ev}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!10 = distinct !{!10, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!13 = distinct !{!13, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!14 = !{!12, !9}
!15 = distinct !{null}
!16 = distinct !{null, null, null, null}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = distinct !{null}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4glTF8Accessor10GetIndexerEv: argument 0"}
!32 = distinct !{!32, !"_ZN4glTF8Accessor10GetIndexerEv"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !34}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !34}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !34}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !34}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !34}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !4, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !4, !67}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!74, !71}
!77 = distinct !{!77, !4}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !4}
!80 = distinct !{!80, !4}
!81 = distinct !{!81, !4}
!82 = distinct !{!82, !4}
!83 = distinct !{!83, !4}
!84 = distinct !{!84, !4}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !4}
!87 = distinct !{!87, !4}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !4}
!90 = !{ptr @_ZN6Assimp12glTFImporterD2Ev}
!91 = distinct !{null}
!92 = distinct !{!92, !4}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4}
!96 = distinct !{!96, !4}
!97 = distinct !{!97, !4}
!98 = distinct !{!98, !4}
!99 = distinct !{!99, !4}
!100 = distinct !{!100, !4}
!101 = distinct !{!101, !4}
!102 = distinct !{!102, !4}
!103 = distinct !{!103, !4}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !4}
!106 = distinct !{!106, !4}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!109 = distinct !{!109, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!112 = distinct !{!112, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!115 = distinct !{!115, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!118 = distinct !{!118, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!121 = distinct !{!121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!124 = distinct !{!124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!125 = !{!123, !120, !117}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!128 = distinct !{!128, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!131 = distinct !{!131, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!134 = distinct !{!134, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = distinct !{!137, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!138 = !{!136, !133, !130, !127}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!141 = distinct !{!141, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!144 = distinct !{!144, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!147 = distinct !{!147, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!150 = distinct !{!150, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!153 = distinct !{!153, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!154 = !{i64 8}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE: argument 0"}
!157 = distinct !{!157, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE"}
!158 = distinct !{!158, !4}
!159 = !{!160}
end_hunk_1
