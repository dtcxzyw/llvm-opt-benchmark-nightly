Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86_avx?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0153 = phi nsz <8 x float> [ %i.p, %bb.d ], [ %i.n, %bb.c ] ; 6 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader1029, label %bb.aa

.preheader1029:                                   ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 15
  br i1 %i.r, label %.lr.ph1060, label %.preheader1028

.preheader1028.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %i.s = and i32 %i.a, 2147483632
  br label %.preheader1028

.preheader1028:                                   ; preds = %.preheader1028.loopexit, %.preheader1029
  %.0149.lcssa = phi i32 [ 0, %.preheader1029 ], [ %i.s, %.preheader1028.loopexit ] ; 3 uses
  %.0137.lcssa = phi ptr [ %1, %.preheader1029 ], [ %i.mz, %.preheader1028.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader1029 ], [ %i.my, %.preheader1028.loopexit ] ; 2 uses
  %i.t = or disjoint i32 %.0149.lcssa, 7
  %i.u = icmp slt i32 %i.t, %i.a
  br i1 %i.u, label %.lr.ph1067.preheader, label %.preheader1027

.lr.ph1067.preheader:                             ; preds = %.preheader1028
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load ptr, ptr %3, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load ptr, ptr %3, align 8
  br label %.lr.ph1067

.lr.ph1060:                                       ; preds = %.preheader1029, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %.01059 = phi ptr [ %i.my, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %0, %.preheader1029 ] ; 3 uses
  %.01371058 = phi ptr [ %i.mz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %1, %.preheader1029 ] ; 2 uses
  %.01491057 = phi i32 [ %i.na, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ 0, %.preheader1029 ]
  %i.aa = load <8 x i32>, ptr %.01059, align 1, !tbaa !50
  %i.ab = sitofp fast <8 x i32> %i.aa to <8 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %.01059, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !50
  %i.ae = sitofp fast <8 x i32> %i.ad to <8 x float>
  %i.af = fmul fast <8 x float> %.0958, %i.ab     ; 10 uses
  %i.ag = fmul fast <8 x float> %.0958, %i.ae     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread: ; preds = %.lr.ph1060
  %i.ah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> zeroinitializer)
  %i.ai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966: ; preds = %.lr.ph1060
  %i.aj = load ptr, ptr %3, align 8, !tbaa !18
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !48
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.af)
  %i.am = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.af)
  %i.an = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, %i.al
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ag)
  %i.as = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ag)
  %i.at = fmul fast <8 x float> %i.ao, %i.as
  %i.au = fadd fast <8 x float> %i.at, %i.ar
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969: ; preds = %.lr.ph1060
  %i.av = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !48
  %i.ax = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !48
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ay)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bc)
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ay)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bc)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972: ; preds = %.lr.ph1060
  %i.bh = fneg fast <8 x float> %i.af
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> splat (float f0x42B0C0A5))
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bk = fmul fast <8 x float> %i.bj, splat (float f0x3FB8AA3B)
  %i.bl = fadd fast <8 x float> %i.bk, splat (float 5.000000e-01) ; 2 uses
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 2 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bm, %i.bl
  %i.bo = select <8 x i1> %i.bn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bp = fsub fast <8 x float> %i.bm, %i.bo      ; 2 uses
  %i.bq = fmul fast <8 x float> %i.bp, splat (float f0x3F317218)
  %i.br = fsub fast <8 x float> %i.bj, %i.bq      ; 8 uses
  %i.bs = fmul fast <8 x float> %i.br, %i.br
  %i.bt = fmul fast <8 x float> %i.br, splat (float f0x39506967)
  %i.bu = fadd fast <8 x float> %i.bt, splat (float f0x3AB743CE)
  %i.bv = fmul fast <8 x float> %i.bu, %i.br
  %i.bw = fadd fast <8 x float> %i.bv, splat (float f0x3C088908)
  %i.bx = fmul fast <8 x float> %i.bw, %i.br
  %i.by = fadd fast <8 x float> %i.bx, splat (float f0x3D2AA9C1)
  %i.bz = fmul fast <8 x float> %i.by, %i.br
  %i.ca = fadd fast <8 x float> %i.bz, splat (float f0x3E2AAAAA)
  %i.cb = fmul fast <8 x float> %i.ca, %i.br
  %i.cc = fadd fast <8 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul fast <8 x float> %i.bs, %i.cc
  %i.ce = fadd fast <8 x float> %i.br, %i.cd
  %i.cf = fadd fast <8 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.ch = shl <8 x i32> %i.cg, splat (i32 23)
  %i.ci = add <8 x i32> %i.ch, splat (i32 1065353216)
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = fmul fast <8 x float> %i.cf, %i.cj
  %i.cl = fadd fast <8 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = fdiv fast <8 x float> splat (float 1.000000e+00), %i.cl
  %i.cn = fneg fast <8 x float> %i.ag
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x42B0C0A5))
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cq = fmul fast <8 x float> %i.cp, splat (float f0x3FB8AA3B)
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 5.000000e-01) ; 2 uses
  %i.cs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cr, i32 1) ; 2 uses
  %i.ct = fcmp fast ogt <8 x float> %i.cs, %i.cr
  %i.cu = select <8 x i1> %i.ct, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cv = fsub fast <8 x float> %i.cs, %i.cu      ; 2 uses
  %i.cw = fmul fast <8 x float> %i.cv, splat (float f0x3F317218)
  %i.cx = fsub fast <8 x float> %i.cp, %i.cw      ; 8 uses
  %i.cy = fmul fast <8 x float> %i.cx, %i.cx
  %i.cz = fmul fast <8 x float> %i.cx, splat (float f0x39506967)
  %i.da = fadd fast <8 x float> %i.cz, splat (float f0x3AB743CE)
  %i.db = fmul fast <8 x float> %i.da, %i.cx
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0x3C088908)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cx
  %i.de = fadd fast <8 x float> %i.dd, splat (float f0x3D2AA9C1)
  %i.df = fmul fast <8 x float> %i.de, %i.cx
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0x3E2AAAAA)
  %i.dh = fmul fast <8 x float> %i.dg, %i.cx
  %i.di = fadd fast <8 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = fmul fast <8 x float> %i.cy, %i.di
  %i.dk = fadd fast <8 x float> %i.cx, %i.dj
  %i.dl = fadd fast <8 x float> %i.dk, splat (float 1.000000e+00)
  %i.dm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cv)
  %i.dn = shl <8 x i32> %i.dm, splat (i32 23)
  %i.do = add <8 x i32> %i.dn, splat (i32 1065353216)
  %i.dp = bitcast <8 x i32> %i.do to <8 x float>
  %i.dq = fmul fast <8 x float> %i.dl, %i.dp
  %i.dr = fadd fast <8 x float> %i.dq, splat (float 1.000000e+00)
  %i.ds = fdiv fast <8 x float> splat (float 1.000000e+00), %i.dr
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975: ; preds = %.lr.ph1060
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0x42B0C0A5))
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dv = fmul fast <8 x float> %i.du, splat (float f0x3FB8AA3B)
  %i.dw = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01) ; 2 uses
  %i.dx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dw, i32 1) ; 2 uses
  %i.dy = fcmp fast ogt <8 x float> %i.dx, %i.dw
  %i.dz = select <8 x i1> %i.dy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ea = fsub fast <8 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fmul fast <8 x float> %i.ea, splat (float f0x3F317218)
  %i.ec = fsub fast <8 x float> %i.du, %i.eb      ; 8 uses
  %i.ed = fmul fast <8 x float> %i.ec, %i.ec
  %i.ee = fmul fast <8 x float> %i.ec, splat (float f0x39506967)
  %i.ef = fadd fast <8 x float> %i.ee, splat (float f0x3AB743CE)
  %i.eg = fmul fast <8 x float> %i.ef, %i.ec
  %i.eh = fadd fast <8 x float> %i.eg, splat (float f0x3C088908)
  %i.ei = fmul fast <8 x float> %i.eh, %i.ec
  %i.ej = fadd fast <8 x float> %i.ei, splat (float f0x3D2AA9C1)
  %i.ek = fmul fast <8 x float> %i.ej, %i.ec
  %i.el = fadd fast <8 x float> %i.ek, splat (float f0x3E2AAAAA)
  %i.em = fmul fast <8 x float> %i.el, %i.ec
  %i.en = fadd fast <8 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <8 x float> %i.ed, %i.en
  %i.ep = fadd fast <8 x float> %i.ec, %i.eo
  %i.eq = fadd fast <8 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea)
  %i.es = shl <8 x i32> %i.er, splat (i32 23)
  %i.et = add <8 x i32> %i.es, splat (i32 1065353216)
  %i.eu = bitcast <8 x i32> %i.et to <8 x float>
  %i.ev = fmul fast <8 x float> %i.eq, %i.eu
  %i.ew = fadd fast <8 x float> %i.ev, splat (float 1.000000e+00) ; 2 uses
  %i.ex = fcmp fast ole <8 x float> %i.ew, zeroinitializer
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ez = bitcast <8 x float> %i.ey to <8 x i32>
  %i.fa = bitcast <8 x float> %i.ey to <8 x i32>
  %i.fb = and <8 x i32> %i.fa, splat (i32 -2139095041)
  %i.fc = or disjoint <8 x i32> %i.fb, splat (i32 1056964608)
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>  ; 3 uses
  %i.fe = lshr <8 x i32> %i.ez, splat (i32 23)
  %i.ff = add nsw <8 x i32> %i.fe, splat (i32 -127)
  %i.fg = sitofp fast <8 x i32> %i.ff to <8 x float> ; 2 uses
  %i.fh = fadd fast <8 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fcmp fast olt <8 x float> %i.fd, splat (float f0x3F3504F3) ; 2 uses
  %i.fj = select <8 x i1> %i.fi, <8 x float> %i.fd, <8 x float> zeroinitializer
  %i.fk = fadd fast <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.fl = select fast <8 x i1> %i.fi, <8 x float> %i.fg, <8 x float> %i.fh
  %i.fm = fadd fast <8 x float> %i.fk, %i.fj      ; 12 uses
  %i.fn = fmul fast <8 x float> %i.fm, %i.fm      ; 2 uses
  %i.fo = fmul fast <8 x float> %i.fm, splat (float f0x3D9021BB)
  %i.fp = fadd fast <8 x float> %i.fo, splat (float f0xBDEBD1B8)
  %i.fq = fmul fast <8 x float> %i.fp, %i.fm
  %i.fr = fadd fast <8 x float> %i.fq, splat (float f0x3DEF251A)
  %i.fs = fmul fast <8 x float> %i.fr, %i.fm
  %i.ft = fadd fast <8 x float> %i.fs, splat (float f0xBDFE5D4F)
  %i.fu = fmul fast <8 x float> %i.ft, %i.fm
  %i.fv = fadd fast <8 x float> %i.fu, splat (float f0x3E11E9BF)
  %i.fw = fmul fast <8 x float> %i.fv, %i.fm
  %i.fx = fadd fast <8 x float> %i.fw, splat (float f0xBE2AAE50)
  %i.fy = fmul fast <8 x float> %i.fx, %i.fm
  %i.fz = fadd fast <8 x float> %i.fy, splat (float f0x3E4CCEAC)
  %i.ga = fmul fast <8 x float> %i.fz, %i.fm
  %i.gb = fadd fast <8 x float> %i.ga, splat (float f0xBE7FFFFC)
  %i.gc = fmul fast <8 x float> %i.gb, %i.fm
  %i.gd = fadd fast <8 x float> %i.gc, splat (float f0x3EAAAAAA)
  %i.ge = fmul fast <8 x float> %i.fn, %i.fm
  %i.gf = fmul fast <8 x float> %i.ge, %i.gd
  %.neg1022 = fmul fast <8 x float> %i.fn, splat (float -5.000000e-01)
  %reass.mul1023.a = fmul fast <8 x float> %i.fl, splat (float f0x3F317218)
  %6 = fadd fast <8 x float> %i.fm, %.neg1022
  %i.gg = fadd fast <8 x float> %i.gf, %6
  %i.gh = fadd fast <8 x float> %i.gg, %reass.mul1023.a
  %.neg1008 = fmul fast <8 x float> %i.gh, splat (float -2.000000e+00)
  %i.gi = select fast <8 x i1> %i.ex, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1008
  %i.gj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> splat (float f0x42B0C0A5))
  %i.gk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gl = fmul fast <8 x float> %i.gk, splat (float f0x3FB8AA3B)
  %i.gm = fadd fast <8 x float> %i.gl, splat (float 5.000000e-01) ; 2 uses
  %i.gn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gm, i32 1) ; 2 uses
  %i.go = fcmp fast ogt <8 x float> %i.gn, %i.gm
  %i.gp = select <8 x i1> %i.go, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gq = fsub fast <8 x float> %i.gn, %i.gp      ; 2 uses
  %i.gr = fmul fast <8 x float> %i.gq, splat (float f0x3F317218)
  %i.gs = fsub fast <8 x float> %i.gk, %i.gr      ; 8 uses
  %i.gt = fmul fast <8 x float> %i.gs, %i.gs
  %i.gu = fmul fast <8 x float> %i.gs, splat (float f0x39506967)
  %i.gv = fadd fast <8 x float> %i.gu, splat (float f0x3AB743CE)
  %i.gw = fmul fast <8 x float> %i.gv, %i.gs
  %i.gx = fadd fast <8 x float> %i.gw, splat (float f0x3C088908)
  %i.gy = fmul fast <8 x float> %i.gx, %i.gs
  %i.gz = fadd fast <8 x float> %i.gy, splat (float f0x3D2AA9C1)
  %i.ha = fmul fast <8 x float> %i.gz, %i.gs
  %i.hb = fadd fast <8 x float> %i.ha, splat (float f0x3E2AAAAA)
  %i.hc = fmul fast <8 x float> %i.hb, %i.gs
  %i.hd = fadd fast <8 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = fmul fast <8 x float> %i.gt, %i.hd
  %i.hf = fadd fast <8 x float> %i.gs, %i.he
  %i.hg = fadd fast <8 x float> %i.hf, splat (float 1.000000e+00)
  %i.hh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <8 x i32> %i.hh, splat (i32 23)
  %i.hj = add <8 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = fmul fast <8 x float> %i.hg, %i.hk
  %i.hm = fadd fast <8 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = fdiv fast <8 x float> splat (float 2.000000e+00), %i.hm
  %i.ho = fadd fast <8 x float> %i.hn, splat (float -1.000000e+00)
  %i.hp = fmul fast <8 x float> %i.ho, %i.af
  %i.hq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x42B0C0A5))
  %i.hr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hs = fmul fast <8 x float> %i.hr, splat (float f0x3FB8AA3B)
  %i.ht = fadd fast <8 x float> %i.hs, splat (float 5.000000e-01) ; 2 uses
  %i.hu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ht, i32 1) ; 2 uses
  %i.hv = fcmp fast ogt <8 x float> %i.hu, %i.ht
  %i.hw = select <8 x i1> %i.hv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hx = fsub fast <8 x float> %i.hu, %i.hw      ; 2 uses
  %i.hy = fmul fast <8 x float> %i.hx, splat (float f0x3F317218)
  %i.hz = fsub fast <8 x float> %i.hr, %i.hy      ; 8 uses
  %i.ia = fmul fast <8 x float> %i.hz, %i.hz
  %i.ib = fmul fast <8 x float> %i.hz, splat (float f0x39506967)
  %i.ic = fadd fast <8 x float> %i.ib, splat (float f0x3AB743CE)
  %i.id = fmul fast <8 x float> %i.ic, %i.hz
  %i.ie = fadd fast <8 x float> %i.id, splat (float f0x3C088908)
  %i.if = fmul fast <8 x float> %i.ie, %i.hz
  %i.ig = fadd fast <8 x float> %i.if, splat (float f0x3D2AA9C1)
  %i.ih = fmul fast <8 x float> %i.ig, %i.hz
  %i.ii = fadd fast <8 x float> %i.ih, splat (float f0x3E2AAAAA)
  %i.ij = fmul fast <8 x float> %i.ii, %i.hz
  %i.ik = fadd fast <8 x float> %i.ij, splat (float 5.000000e-01)
  %i.il = fmul fast <8 x float> %i.ia, %i.ik
  %i.im = fadd fast <8 x float> %i.hz, %i.il
  %i.in = fadd fast <8 x float> %i.im, splat (float 1.000000e+00)
  %i.io = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hx)
  %i.ip = shl <8 x i32> %i.io, splat (i32 23)
  %i.iq = add <8 x i32> %i.ip, splat (i32 1065353216)
  %i.ir = bitcast <8 x i32> %i.iq to <8 x float>
  %i.is = fmul fast <8 x float> %i.in, %i.ir
  %i.it = fadd fast <8 x float> %i.is, splat (float 1.000000e+00) ; 2 uses
  %i.iu = fcmp fast ole <8 x float> %i.it, zeroinitializer
  %i.iv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.it, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iw = bitcast <8 x float> %i.iv to <8 x i32>
  %i.ix = bitcast <8 x float> %i.iv to <8 x i32>
  %i.iy = and <8 x i32> %i.ix, splat (i32 -2139095041)
  %i.iz = or disjoint <8 x i32> %i.iy, splat (i32 1056964608)
  %i.ja = bitcast <8 x i32> %i.iz to <8 x float>  ; 3 uses
  %i.jb = lshr <8 x i32> %i.iw, splat (i32 23)
  %i.jc = add nsw <8 x i32> %i.jb, splat (i32 -127)
  %i.jd = sitofp fast <8 x i32> %i.jc to <8 x float> ; 2 uses
  %i.je = fadd fast <8 x float> %i.jd, splat (float 1.000000e+00)
  %i.jf = fcmp fast olt <8 x float> %i.ja, splat (float f0x3F3504F3) ; 2 uses
  %i.jg = select <8 x i1> %i.jf, <8 x float> %i.ja, <8 x float> zeroinitializer
  %i.jh = fadd fast <8 x float> %i.ja, splat (float -1.000000e+00)
  %i.ji = select fast <8 x i1> %i.jf, <8 x float> %i.jd, <8 x float> %i.je
  %i.jj = fadd fast <8 x float> %i.jh, %i.jg      ; 12 uses
  %i.jk = fmul fast <8 x float> %i.jj, %i.jj      ; 2 uses
  %i.jl = fmul fast <8 x float> %i.jj, splat (float f0x3D9021BB)
  %i.jm = fadd fast <8 x float> %i.jl, splat (float f0xBDEBD1B8)
  %i.jn = fmul fast <8 x float> %i.jm, %i.jj
  %i.jo = fadd fast <8 x float> %i.jn, splat (float f0x3DEF251A)
  %i.jp = fmul fast <8 x float> %i.jo, %i.jj
  %i.jq = fadd fast <8 x float> %i.jp, splat (float f0xBDFE5D4F)
  %i.jr = fmul fast <8 x float> %i.jq, %i.jj
  %i.js = fadd fast <8 x float> %i.jr, splat (float f0x3E11E9BF)
  %i.jt = fmul fast <8 x float> %i.js, %i.jj
  %i.ju = fadd fast <8 x float> %i.jt, splat (float f0xBE2AAE50)
  %i.jv = fmul fast <8 x float> %i.ju, %i.jj
  %i.jw = fadd fast <8 x float> %i.jv, splat (float f0x3E4CCEAC)
  %i.jx = fmul fast <8 x float> %i.jw, %i.jj
  %i.jy = fadd fast <8 x float> %i.jx, splat (float f0xBE7FFFFC)
  %i.jz = fmul fast <8 x float> %i.jy, %i.jj
  %i.ka = fadd fast <8 x float> %i.jz, splat (float f0x3EAAAAAA)
  %i.kb = fmul fast <8 x float> %i.jk, %i.jj
  %i.kc = fmul fast <8 x float> %i.kb, %i.ka
  %.neg1024 = fmul fast <8 x float> %i.jk, splat (float -5.000000e-01)
  %reass.mul1026 = fmul fast <8 x float> %i.ji, splat (float f0x3F317218)
  %7 = fadd fast <8 x float> %i.jj, %.neg1024
  %i.kd = fadd fast <8 x float> %i.kc, %7
  %i.ke = fadd fast <8 x float> %i.kd, %reass.mul1026
  %.neg1009 = fmul fast <8 x float> %i.ke, splat (float -2.000000e+00)
  %i.kf = select fast <8 x i1> %i.iu, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1009
  %i.kg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kf, <8 x float> splat (float f0x42B0C0A5))
  %i.kh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ki = fmul fast <8 x float> %i.kh, splat (float f0x3FB8AA3B)
  %i.kj = fadd fast <8 x float> %i.ki, splat (float 5.000000e-01) ; 2 uses
  %i.kk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kj, i32 1) ; 2 uses
  %i.kl = fcmp fast ogt <8 x float> %i.kk, %i.kj
  %i.km = select <8 x i1> %i.kl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kn = fsub fast <8 x float> %i.kk, %i.km      ; 2 uses
  %i.ko = fmul fast <8 x float> %i.kn, splat (float f0x3F317218)
  %i.kp = fsub fast <8 x float> %i.kh, %i.ko      ; 8 uses
  %i.kq = fmul fast <8 x float> %i.kp, %i.kp
  %i.kr = fmul fast <8 x float> %i.kp, splat (float f0x39506967)
  %i.ks = fadd fast <8 x float> %i.kr, splat (float f0x3AB743CE)
  %i.kt = fmul fast <8 x float> %i.ks, %i.kp
  %i.ku = fadd fast <8 x float> %i.kt, splat (float f0x3C088908)
  %i.kv = fmul fast <8 x float> %i.ku, %i.kp
  %i.kw = fadd fast <8 x float> %i.kv, splat (float f0x3D2AA9C1)
  %i.kx = fmul fast <8 x float> %i.kw, %i.kp
  %i.ky = fadd fast <8 x float> %i.kx, splat (float f0x3E2AAAAA)
  %i.kz = fmul fast <8 x float> %i.ky, %i.kp
  %i.la = fadd fast <8 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = fmul fast <8 x float> %i.kq, %i.la
  %i.lc = fadd fast <8 x float> %i.kp, %i.lb
  %i.ld = fadd fast <8 x float> %i.lc, splat (float 1.000000e+00)
  %i.le = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kn)
  %i.lf = shl <8 x i32> %i.le, splat (i32 23)
  %i.lg = add <8 x i32> %i.lf, splat (i32 1065353216)
  %i.lh = bitcast <8 x i32> %i.lg to <8 x float>
  %i.li = fmul fast <8 x float> %i.ld, %i.lh
  %i.lj = fadd fast <8 x float> %i.li, splat (float 1.000000e+00)
  %i.lk = fdiv fast <8 x float> splat (float 2.000000e+00), %i.lj
  %i.ll = fadd fast <8 x float> %i.lk, splat (float -1.000000e+00)
  %i.lm = fmul fast <8 x float> %i.ll, %i.ag
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978: ; preds = %.lr.ph1060
  %i.ln = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !48
  %i.lp = insertelement <8 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <8 x float> %i.lp, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !48
  %i.lt = insertelement <8 x float> poison, float %i.ls, i64 0
  %i.lu = shufflevector <8 x float> %i.lt, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lv = fmul fast <8 x float> %i.lq, %i.af
  %i.lw = fadd fast <8 x float> %i.lv, %i.lu
  %i.lx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lw, <8 x float> zeroinitializer)
  %i.ly = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lx, <8 x float> splat (float 1.000000e+00))
  %i.lz = fmul fast <8 x float> %i.ly, %i.af
  %i.ma = fmul fast <8 x float> %i.lq, %i.ag
  %i.mb = fadd fast <8 x float> %i.ma, %i.lu
  %i.mc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mb, <8 x float> zeroinitializer)
  %i.md = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mc, <8 x float> splat (float 1.000000e+00))
  %i.me = fmul fast <8 x float> %i.md, %i.ag
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162:   ; preds = %.lr.ph1060, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  %.0.i163965 = phi <8 x float> [ %i.lz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ah, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.aq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.be, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.cm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.hp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.af, %.lr.ph1060 ]
  %.0.i161 = phi nsz <8 x float> [ %i.me, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ai, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.au, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.bg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.ds, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.lm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.ag, %.lr.ph1060 ]
  %i.mf = fmul fast <8 x float> %.0.i163965, %.0153 ; 2 uses
  %i.mg = fmul fast <8 x float> %.0.i161, %.0153  ; 2 uses
  %i.mh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mf)
  %i.mi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mg)
  %i.mj = fadd fast <8 x float> %i.mh, %i.mf
  %i.mk = fadd fast <8 x float> %i.mi, %i.mg
  %i.ml = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mj) ; 2 uses
  %i.mm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mk) ; 2 uses
  %i.mn = shufflevector <8 x i32> %i.ml, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mo = shufflevector <8 x i32> %i.ml, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mp = shufflevector <8 x i32> %i.mm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mq = shufflevector <8 x i32> %i.mm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mn, <4 x i32> %i.mo)
  %i.ms = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mp, <4 x i32> %i.mq)
  %i.mt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mr, <8 x i16> splat (i16 -127))
  %i.mu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mt, <8 x i16> splat (i16 127))
  %i.mv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ms, <8 x i16> splat (i16 -127))
  %i.mw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mv, <8 x i16> splat (i16 127))
  %i.mx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mu, <8 x i16> %i.mw)
  store <16 x i8> %i.mx, ptr %.01371058, align 1, !tbaa !50
  %i.my = getelementptr inbounds nuw i8, ptr %.01059, i64 64 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.01371058, i64 16 ; 2 uses
  %i.na = add nuw nsw i32 %.01491057, 16          ; 2 uses
  %i.nb = or disjoint i32 %i.na, 15
  %i.nc = icmp slt i32 %i.nb, %i.a
  br i1 %i.nc, label %.lr.ph1060, label %.preheader1028.loopexit, !llvm.loop !51

.preheader1027:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160, %.preheader1028
  %.1150.lcssa = phi i32 [ %.0149.lcssa, %.preheader1028 ], [ %i.ua, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 3 uses
  %.1138.lcssa = phi ptr [ %.0137.lcssa, %.preheader1028 ], [ %i.tz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader1028 ], [ %i.ty, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %i.nd = or disjoint i32 %.1150.lcssa, 3
  %i.ne = icmp slt i32 %i.nd, %i.a
  br i1 %i.ne, label %.lr.ph1074, label %.preheader

.lr.ph1067:                                       ; preds = %.lr.ph1067.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160
  %.11066 = phi ptr [ %i.ty, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0.lcssa, %.lr.ph1067.preheader ] ; 2 uses
  %.11381065 = phi ptr [ %i.tz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0137.lcssa, %.lr.ph1067.preheader ] ; 2 uses
  %.11501064 = phi i32 [ %i.ua, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0149.lcssa, %.lr.ph1067.preheader ]
  %i.nf = load <8 x i32>, ptr %.11066, align 1, !tbaa !50
  %i.ng = sitofp fast <8 x i32> %i.nf to <8 x float>
  %i.nh = fmul fast <8 x float> %.0958, %i.ng     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph1067
  %i.ni = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nh, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.g:                                             ; preds = %.lr.ph1067
  %i.nj = load float, ptr %i.z, align 4, !tbaa !48
  %i.nk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nh)
  %i.nl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nh)
  %i.nm = insertelement <8 x float> poison, float %i.nj, i64 0
  %i.nn = shufflevector <8 x float> %i.nm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.no = fmul fast <8 x float> %i.nn, %i.nl
  %i.np = fadd fast <8 x float> %i.no, %i.nk
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.h:                                             ; preds = %.lr.ph1067
  %i.nq = load float, ptr %i.x, align 4, !tbaa !48
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nt = load float, ptr %i.y, align 4, !tbaa !48
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nh, <8 x float> nofpclass(nan inf) %i.ns)
  %i.nx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nw, <8 x float> nofpclass(nan inf) %i.nv)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.i:                                             ; preds = %.lr.ph1067
  %i.ny = fneg fast <8 x float> %i.nh
  %i.nz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ny, <8 x float> splat (float f0x42B0C0A5))
  %i.oa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ob = fmul fast <8 x float> %i.oa, splat (float f0x3FB8AA3B)
  %i.oc = fadd fast <8 x float> %i.ob, splat (float 5.000000e-01) ; 2 uses
  %i.od = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oc, i32 1) ; 2 uses
  %i.oe = fcmp fast ogt <8 x float> %i.od, %i.oc
  %i.of = select <8 x i1> %i.oe, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.og = fsub fast <8 x float> %i.od, %i.of      ; 2 uses
  %i.oh = fmul fast <8 x float> %i.og, splat (float f0x3F317218)
  %i.oi = fsub fast <8 x float> %i.oa, %i.oh      ; 8 uses
  %i.oj = fmul fast <8 x float> %i.oi, %i.oi
  %i.ok = fmul fast <8 x float> %i.oi, splat (float f0x39506967)
  %i.ol = fadd fast <8 x float> %i.ok, splat (float f0x3AB743CE)
  %i.om = fmul fast <8 x float> %i.ol, %i.oi
  %i.on = fadd fast <8 x float> %i.om, splat (float f0x3C088908)
  %i.oo = fmul fast <8 x float> %i.on, %i.oi
  %i.op = fadd fast <8 x float> %i.oo, splat (float f0x3D2AA9C1)
  %i.oq = fmul fast <8 x float> %i.op, %i.oi
  %i.or = fadd fast <8 x float> %i.oq, splat (float f0x3E2AAAAA)
  %i.os = fmul fast <8 x float> %i.or, %i.oi
  %i.ot = fadd fast <8 x float> %i.os, splat (float 5.000000e-01)
  %i.ou = fmul fast <8 x float> %i.oj, %i.ot
  %i.ov = fadd fast <8 x float> %i.oi, %i.ou
  %i.ow = fadd fast <8 x float> %i.ov, splat (float 1.000000e+00)
  %i.ox = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.og)
  %i.oy = shl <8 x i32> %i.ox, splat (i32 23)
  %i.oz = add <8 x i32> %i.oy, splat (i32 1065353216)
  %i.pa = bitcast <8 x i32> %i.oz to <8 x float>
  %i.pb = fmul fast <8 x float> %i.ow, %i.pa
  %i.pc = fadd fast <8 x float> %i.pb, splat (float 1.000000e+00)
  %i.pd = fdiv fast <8 x float> splat (float 1.000000e+00), %i.pc
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.j:                                             ; preds = %.lr.ph1067
  %i.pe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nh, <8 x float> splat (float f0x42B0C0A5))
  %i.pf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pe, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pg = fmul fast <8 x float> %i.pf, splat (float f0x3FB8AA3B)
  %i.ph = fadd fast <8 x float> %i.pg, splat (float 5.000000e-01) ; 2 uses
  %i.pi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ph, i32 1) ; 2 uses
  %i.pj = fcmp fast ogt <8 x float> %i.pi, %i.ph
  %i.pk = select <8 x i1> %i.pj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.pl = fsub fast <8 x float> %i.pi, %i.pk      ; 2 uses
  %i.pm = fmul fast <8 x float> %i.pl, splat (float f0x3F317218)
  %i.pn = fsub fast <8 x float> %i.pf, %i.pm      ; 8 uses
  %i.po = fmul fast <8 x float> %i.pn, %i.pn
  %i.pp = fmul fast <8 x float> %i.pn, splat (float f0x39506967)
  %i.pq = fadd fast <8 x float> %i.pp, splat (float f0x3AB743CE)
  %i.pr = fmul fast <8 x float> %i.pq, %i.pn
  %i.ps = fadd fast <8 x float> %i.pr, splat (float f0x3C088908)
  %i.pt = fmul fast <8 x float> %i.ps, %i.pn
  %i.pu = fadd fast <8 x float> %i.pt, splat (float f0x3D2AA9C1)
  %i.pv = fmul fast <8 x float> %i.pu, %i.pn
  %i.pw = fadd fast <8 x float> %i.pv, splat (float f0x3E2AAAAA)
  %i.px = fmul fast <8 x float> %i.pw, %i.pn
  %i.py = fadd fast <8 x float> %i.px, splat (float 5.000000e-01)
  %i.pz = fmul fast <8 x float> %i.po, %i.py
  %i.qa = fadd fast <8 x float> %i.pn, %i.pz
  %i.qb = fadd fast <8 x float> %i.qa, splat (float 1.000000e+00)
  %i.qc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pl)
  %i.qd = shl <8 x i32> %i.qc, splat (i32 23)
  %i.qe = add <8 x i32> %i.qd, splat (i32 1065353216)
  %i.qf = bitcast <8 x i32> %i.qe to <8 x float>
  %i.qg = fmul fast <8 x float> %i.qb, %i.qf
  %i.qh = fadd fast <8 x float> %i.qg, splat (float 1.000000e+00) ; 2 uses
  %i.qi = fcmp fast ole <8 x float> %i.qh, zeroinitializer
  %i.qj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qh, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.qk = bitcast <8 x float> %i.qj to <8 x i32>
  %i.ql = bitcast <8 x float> %i.qj to <8 x i32>
  %i.qm = and <8 x i32> %i.ql, splat (i32 -2139095041)
  %i.qn = or disjoint <8 x i32> %i.qm, splat (i32 1056964608)
  %i.qo = bitcast <8 x i32> %i.qn to <8 x float>  ; 3 uses
  %i.qp = lshr <8 x i32> %i.qk, splat (i32 23)
  %i.qq = add nsw <8 x i32> %i.qp, splat (i32 -127)
  %i.qr = sitofp fast <8 x i32> %i.qq to <8 x float> ; 2 uses
  %i.qs = fadd fast <8 x float> %i.qr, splat (float 1.000000e+00)
  %i.qt = fcmp fast olt <8 x float> %i.qo, splat (float f0x3F3504F3) ; 2 uses
  %i.qu = select <8 x i1> %i.qt, <8 x float> %i.qo, <8 x float> zeroinitializer
  %i.qv = fadd fast <8 x float> %i.qo, splat (float -1.000000e+00)
  %i.qw = select fast <8 x i1> %i.qt, <8 x float> %i.qr, <8 x float> %i.qs
  %i.qx = fadd fast <8 x float> %i.qv, %i.qu      ; 12 uses
  %i.qy = fmul fast <8 x float> %i.qx, %i.qx      ; 2 uses
  %i.qz = fmul fast <8 x float> %i.qx, splat (float f0x3D9021BB)
  %i.ra = fadd fast <8 x float> %i.qz, splat (float f0xBDEBD1B8)
  %i.rb = fmul fast <8 x float> %i.ra, %i.qx
  %i.rc = fadd fast <8 x float> %i.rb, splat (float f0x3DEF251A)
  %i.rd = fmul fast <8 x float> %i.rc, %i.qx
  %i.re = fadd fast <8 x float> %i.rd, splat (float f0xBDFE5D4F)
  %i.rf = fmul fast <8 x float> %i.re, %i.qx
  %i.rg = fadd fast <8 x float> %i.rf, splat (float f0x3E11E9BF)
  %i.rh = fmul fast <8 x float> %i.rg, %i.qx
  %i.ri = fadd fast <8 x float> %i.rh, splat (float f0xBE2AAE50)
  %i.rj = fmul fast <8 x float> %i.ri, %i.qx
  %i.rk = fadd fast <8 x float> %i.rj, splat (float f0x3E4CCEAC)
  %i.rl = fmul fast <8 x float> %i.rk, %i.qx
  %i.rm = fadd fast <8 x float> %i.rl, splat (float f0xBE7FFFFC)
  %i.rn = fmul fast <8 x float> %i.rm, %i.qx
  %i.ro = fadd fast <8 x float> %i.rn, splat (float f0x3EAAAAAA)
  %i.rp = fmul fast <8 x float> %i.qy, %i.qx
  %i.rq = fmul fast <8 x float> %i.rp, %i.ro
  %.neg1020 = fmul fast <8 x float> %i.qy, splat (float -5.000000e-01)
  %reass.mul1021.a = fmul fast <8 x float> %i.qw, splat (float f0x3F317218)
  %8 = fadd fast <8 x float> %i.qx, %.neg1020
  %i.rr = fadd fast <8 x float> %i.rq, %8
  %i.rs = fadd fast <8 x float> %i.rr, %reass.mul1021.a
  %.neg1007 = fmul fast <8 x float> %i.rs, splat (float -2.000000e+00)
  %i.rt = select fast <8 x i1> %i.qi, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1007
  %i.ru = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rt, <8 x float> splat (float f0x42B0C0A5))
  %i.rv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ru, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rw = fmul fast <8 x float> %i.rv, splat (float f0x3FB8AA3B)
  %i.rx = fadd fast <8 x float> %i.rw, splat (float 5.000000e-01) ; 2 uses
  %i.ry = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.rx, i32 1) ; 2 uses
  %i.rz = fcmp fast ogt <8 x float> %i.ry, %i.rx
  %i.sa = select <8 x i1> %i.rz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.sb = fsub fast <8 x float> %i.ry, %i.sa      ; 2 uses
  %i.sc = fmul fast <8 x float> %i.sb, splat (float f0x3F317218)
  %i.sd = fsub fast <8 x float> %i.rv, %i.sc      ; 8 uses
  %i.se = fmul fast <8 x float> %i.sd, %i.sd
  %i.sf = fmul fast <8 x float> %i.sd, splat (float f0x39506967)
  %i.sg = fadd fast <8 x float> %i.sf, splat (float f0x3AB743CE)
  %i.sh = fmul fast <8 x float> %i.sg, %i.sd
  %i.si = fadd fast <8 x float> %i.sh, splat (float f0x3C088908)
  %i.sj = fmul fast <8 x float> %i.si, %i.sd
  %i.sk = fadd fast <8 x float> %i.sj, splat (float f0x3D2AA9C1)
  %i.sl = fmul fast <8 x float> %i.sk, %i.sd
  %i.sm = fadd fast <8 x float> %i.sl, splat (float f0x3E2AAAAA)
  %i.sn = fmul fast <8 x float> %i.sm, %i.sd
  %i.so = fadd fast <8 x float> %i.sn, splat (float 5.000000e-01)
  %i.sp = fmul fast <8 x float> %i.se, %i.so
  %i.sq = fadd fast <8 x float> %i.sd, %i.sp
  %i.sr = fadd fast <8 x float> %i.sq, splat (float 1.000000e+00)
  %i.ss = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sb)
  %i.st = shl <8 x i32> %i.ss, splat (i32 23)
  %i.su = add <8 x i32> %i.st, splat (i32 1065353216)
  %i.sv = bitcast <8 x i32> %i.su to <8 x float>
  %i.sw = fmul fast <8 x float> %i.sr, %i.sv
  %i.sx = fadd fast <8 x float> %i.sw, splat (float 1.000000e+00)
  %i.sy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.sx
  %i.sz = fadd fast <8 x float> %i.sy, splat (float -1.000000e+00)
  %i.ta = fmul fast <8 x float> %i.sz, %i.nh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.k:                                             ; preds = %.lr.ph1067
  %i.tb = load float, ptr %i.v, align 4, !tbaa !48
  %i.tc = insertelement <8 x float> poison, float %i.tb, i64 0
  %i.td = shufflevector <8 x float> %i.tc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.te = load float, ptr %i.w, align 4, !tbaa !48
  %i.tf = insertelement <8 x float> poison, float %i.te, i64 0
  %i.tg = shufflevector <8 x float> %i.tf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.th = fmul fast <8 x float> %i.td, %i.nh
  %i.ti = fadd fast <8 x float> %i.th, %i.tg
  %i.tj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ti, <8 x float> zeroinitializer)
  %i.tk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tj, <8 x float> splat (float 1.000000e+00))
  %i.tl = fmul fast <8 x float> %i.tk, %i.nh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160:   ; preds = %.lr.ph1067, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i159 = phi nsz <8 x float> [ %i.tl, %bb.k ], [ %i.ni, %bb.f ], [ %i.np, %bb.g ], [ %i.nx, %bb.h ], [ %i.pd, %bb.i ], [ %i.ta, %bb.j ], [ %i.nh, %.lr.ph1067 ]
  %i.tm = fmul fast <8 x float> %.0.i159, %.0153  ; 2 uses
  %i.tn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tm)
  %i.to = fadd fast <8 x float> %i.tn, %i.tm
  %i.tp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.to) ; 2 uses
  %i.tq = shufflevector <8 x i32> %i.tp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tr = shufflevector <8 x i32> %i.tp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ts = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tq, <4 x i32> %i.tr)
  %i.tt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ts, <8 x i16> splat (i16 -127))
  %i.tu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tt, <8 x i16> splat (i16 127))
  %i.tv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tu, <8 x i16> poison)
  %i.tw = bitcast <16 x i8> %i.tv to <2 x i64>
  %i.tx = extractelement <2 x i64> %i.tw, i64 0
  store i64 %i.tx, ptr %.11381065, align 8, !tbaa !53
  %i.ty = getelementptr inbounds nuw i8, ptr %.11066, i64 32 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.11381065, i64 8 ; 2 uses
  %i.ua = add nuw nsw i32 %.11501064, 8           ; 3 uses
  %i.ub = or disjoint i32 %i.ua, 7
  %i.uc = icmp slt i32 %i.ub, %i.a
  br i1 %i.uc, label %.lr.ph1067, label %.preheader1027, !llvm.loop !54

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167, %.preheader1027
  %.2151.lcssa = phi i32 [ %.1150.lcssa, %.preheader1027 ], [ %i.abd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ] ; 2 uses
  %.2139.lcssa = phi ptr [ %.1138.lcssa, %.preheader1027 ], [ %i.abc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader1027 ], [ %i.abb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %i.ud = icmp slt i32 %.2151.lcssa, %i.a
  br i1 %i.ud, label %.lr.ph1081, label %.loopexit

.lr.ph1074:                                       ; preds = %.preheader1027, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167
  %.21073 = phi ptr [ %i.abb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1.lcssa, %.preheader1027 ] ; 2 uses
  %.21391072 = phi ptr [ %i.abc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1138.lcssa, %.preheader1027 ] ; 2 uses
  %.21511071 = phi i32 [ %i.abd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1150.lcssa, %.preheader1027 ]
  %i.ue = load <4 x i32>, ptr %.21073, align 1, !tbaa !50
  %i.uf = sitofp fast <4 x i32> %i.ue to <4 x float>
  %i.ug = fmul fast <4 x float> %i.d, %i.uf       ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
  ]

bb.l:                                             ; preds = %.lr.ph1074
  %i.uh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ug, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.m:                                             ; preds = %.lr.ph1074
  %i.ui = load ptr, ptr %3, align 8, !tbaa !18
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !48
  %i.uk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ug)
  %i.ul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ug)
  %i.um = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.un = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uo = fmul fast <4 x float> %i.un, %i.ul
  %i.up = fadd fast <4 x float> %i.uo, %i.uk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.n:                                             ; preds = %.lr.ph1074
  %i.uq = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !48
  %i.us = insertelement <4 x float> poison, float %i.ur, i64 0
  %i.ut = shufflevector <4 x float> %i.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !48
  %i.uw = insertelement <4 x float> poison, float %i.uv, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ug, <4 x float> nofpclass(nan inf) %i.ut)
  %i.uz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.uy, <4 x float> nofpclass(nan inf) %i.ux)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.o:                                             ; preds = %.lr.ph1074
  %i.va = fneg fast <4 x float> %i.ug
  %i.vb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.va, <4 x float> splat (float f0x42B0C0A5))
  %i.vc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vd = fmul fast <4 x float> %i.vc, splat (float f0x3FB8AA3B)
  %i.ve = fadd fast <4 x float> %i.vd, splat (float 5.000000e-01) ; 2 uses
  %i.vf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ve)
  %i.vg = sitofp fast <4 x i32> %i.vf to <4 x float> ; 2 uses
  %i.vh = fcmp fast olt <4 x float> %i.ve, %i.vg
  %i.vi = select <4 x i1> %i.vh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.vj = fsub fast <4 x float> %i.vg, %i.vi      ; 2 uses
  %i.vk = fmul fast <4 x float> %i.vj, splat (float f0x3F317218)
  %i.vl = fsub fast <4 x float> %i.vc, %i.vk      ; 8 uses
  %i.vm = fmul fast <4 x float> %i.vl, %i.vl
  %i.vn = fmul fast <4 x float> %i.vl, splat (float f0x39506967)
  %i.vo = fadd fast <4 x float> %i.vn, splat (float f0x3AB743CE)
  %i.vp = fmul fast <4 x float> %i.vo, %i.vl
  %i.vq = fadd fast <4 x float> %i.vp, splat (float f0x3C088908)
  %i.vr = fmul fast <4 x float> %i.vq, %i.vl
  %i.vs = fadd fast <4 x float> %i.vr, splat (float f0x3D2AA9C1)
  %i.vt = fmul fast <4 x float> %i.vs, %i.vl
  %i.vu = fadd fast <4 x float> %i.vt, splat (float f0x3E2AAAAA)
  %i.vv = fmul fast <4 x float> %i.vu, %i.vl
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 5.000000e-01)
  %i.vx = fmul fast <4 x float> %i.vm, %i.vw
  %i.vy = fadd fast <4 x float> %i.vl, %i.vx
  %i.vz = fadd fast <4 x float> %i.vy, splat (float 1.000000e+00)
  %i.wa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vj)
  %i.wb = shl <4 x i32> %i.wa, splat (i32 23)
  %i.wc = add <4 x i32> %i.wb, splat (i32 1065353216)
  %i.wd = bitcast <4 x i32> %i.wc to <4 x float>
  %i.we = fmul fast <4 x float> %i.vz, %i.wd
  %i.wf = fadd fast <4 x float> %i.we, splat (float 1.000000e+00)
  %i.wg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.wf
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.p:                                             ; preds = %.lr.ph1074
  %i.wh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ug, <4 x float> splat (float f0x42B0C0A5))
  %i.wi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wj = fmul fast <4 x float> %i.wi, splat (float f0x3FB8AA3B)
  %i.wk = fadd fast <4 x float> %i.wj, splat (float 5.000000e-01) ; 2 uses
  %i.wl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wk)
  %i.wm = sitofp fast <4 x i32> %i.wl to <4 x float> ; 2 uses
  %i.wn = fcmp fast olt <4 x float> %i.wk, %i.wm
  %i.wo = select <4 x i1> %i.wn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wp = fsub fast <4 x float> %i.wm, %i.wo      ; 2 uses
  %i.wq = fmul fast <4 x float> %i.wp, splat (float f0x3F317218)
  %i.wr = fsub fast <4 x float> %i.wi, %i.wq      ; 8 uses
  %i.ws = fmul fast <4 x float> %i.wr, %i.wr
  %i.wt = fmul fast <4 x float> %i.wr, splat (float f0x39506967)
  %i.wu = fadd fast <4 x float> %i.wt, splat (float f0x3AB743CE)
  %i.wv = fmul fast <4 x float> %i.wu, %i.wr
  %i.ww = fadd fast <4 x float> %i.wv, splat (float f0x3C088908)
  %i.wx = fmul fast <4 x float> %i.ww, %i.wr
  %i.wy = fadd fast <4 x float> %i.wx, splat (float f0x3D2AA9C1)
  %i.wz = fmul fast <4 x float> %i.wy, %i.wr
  %i.xa = fadd fast <4 x float> %i.wz, splat (float f0x3E2AAAAA)
  %i.xb = fmul fast <4 x float> %i.xa, %i.wr
  %i.xc = fadd fast <4 x float> %i.xb, splat (float 5.000000e-01)
  %i.xd = fmul fast <4 x float> %i.ws, %i.xc
  %i.xe = fadd fast <4 x float> %i.wr, %i.xd
  %i.xf = fadd fast <4 x float> %i.xe, splat (float 1.000000e+00)
  %i.xg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wp)
  %i.xh = shl <4 x i32> %i.xg, splat (i32 23)
  %i.xi = add <4 x i32> %i.xh, splat (i32 1065353216)
  %i.xj = bitcast <4 x i32> %i.xi to <4 x float>
  %i.xk = fmul fast <4 x float> %i.xf, %i.xj
  %i.xl = fadd fast <4 x float> %i.xk, splat (float 1.000000e+00) ; 2 uses
  %i.xm = fcmp fast ole <4 x float> %i.xl, zeroinitializer
  %i.xn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xl, <4 x float> splat (float f0x00800000))
  %i.xo = bitcast <4 x float> %i.xn to <4 x i32>  ; 2 uses
  %i.xp = lshr <4 x i32> %i.xo, splat (i32 23)
  %i.xq = and <4 x i32> %i.xo, splat (i32 -2139095041)
  %i.xr = or disjoint <4 x i32> %i.xq, splat (i32 1056964608)
  %i.xs = bitcast <4 x i32> %i.xr to <4 x float>  ; 3 uses
  %i.xt = add nsw <4 x i32> %i.xp, splat (i32 -127)
  %i.xu = sitofp fast <4 x i32> %i.xt to <4 x float> ; 2 uses
  %i.xv = fadd fast <4 x float> %i.xu, splat (float 1.000000e+00)
  %i.xw = fcmp fast olt <4 x float> %i.xs, splat (float f0x3F3504F3) ; 2 uses
  %i.xx = select <4 x i1> %i.xw, <4 x float> %i.xs, <4 x float> zeroinitializer
  %i.xy = fadd fast <4 x float> %i.xs, splat (float -1.000000e+00)
  %i.xz = select fast <4 x i1> %i.xw, <4 x float> %i.xu, <4 x float> %i.xv
  %i.ya = fadd fast <4 x float> %i.xy, %i.xx      ; 12 uses
  %i.yb = fmul fast <4 x float> %i.ya, %i.ya      ; 2 uses
  %i.yc = fmul fast <4 x float> %i.ya, splat (float f0x3D9021BB)
  %i.yd = fadd fast <4 x float> %i.yc, splat (float f0xBDEBD1B8)
  %i.ye = fmul fast <4 x float> %i.yd, %i.ya
  %i.yf = fadd fast <4 x float> %i.ye, splat (float f0x3DEF251A)
  %i.yg = fmul fast <4 x float> %i.yf, %i.ya
  %i.yh = fadd fast <4 x float> %i.yg, splat (float f0xBDFE5D4F)
  %i.yi = fmul fast <4 x float> %i.yh, %i.ya
  %i.yj = fadd fast <4 x float> %i.yi, splat (float f0x3E11E9BF)
  %i.yk = fmul fast <4 x float> %i.yj, %i.ya
  %i.yl = fadd fast <4 x float> %i.yk, splat (float f0xBE2AAE50)
  %i.ym = fmul fast <4 x float> %i.yl, %i.ya
  %i.yn = fadd fast <4 x float> %i.ym, splat (float f0x3E4CCEAC)
  %i.yo = fmul fast <4 x float> %i.yn, %i.ya
  %i.yp = fadd fast <4 x float> %i.yo, splat (float f0xBE7FFFFC)
  %i.yq = fmul fast <4 x float> %i.yp, %i.ya
  %i.yr = fadd fast <4 x float> %i.yq, splat (float f0x3EAAAAAA)
  %i.ys = fmul fast <4 x float> %i.yb, %i.ya
  %i.yt = fmul fast <4 x float> %i.ys, %i.yr
  %.neg1018 = fmul fast <4 x float> %i.yb, splat (float -5.000000e-01)
  %reass.mul1019 = fmul fast <4 x float> %i.xz, splat (float f0x3F317218)
  %9 = fadd fast <4 x float> %i.ya, %.neg1018
  %i.yu = fadd fast <4 x float> %i.yt, %9
  %i.yv = fadd fast <4 x float> %i.yu, %reass.mul1019
  %.neg1006 = fmul fast <4 x float> %i.yv, splat (float -2.000000e+00)
  %i.yw = select fast <4 x i1> %i.xm, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1006
  %i.yx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yw, <4 x float> splat (float f0x42B0C0A5))
  %i.yy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yz = fmul fast <4 x float> %i.yy, splat (float f0x3FB8AA3B)
  %i.za = fadd fast <4 x float> %i.yz, splat (float 5.000000e-01) ; 2 uses
  %i.zb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.za)
  %i.zc = sitofp fast <4 x i32> %i.zb to <4 x float> ; 2 uses
  %i.zd = fcmp fast olt <4 x float> %i.za, %i.zc
  %i.ze = select <4 x i1> %i.zd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zf = fsub fast <4 x float> %i.zc, %i.ze      ; 2 uses
  %i.zg = fmul fast <4 x float> %i.zf, splat (float f0x3F317218)
  %i.zh = fsub fast <4 x float> %i.yy, %i.zg      ; 8 uses
  %i.zi = fmul fast <4 x float> %i.zh, %i.zh
  %i.zj = fmul fast <4 x float> %i.zh, splat (float f0x39506967)
  %i.zk = fadd fast <4 x float> %i.zj, splat (float f0x3AB743CE)
  %i.zl = fmul fast <4 x float> %i.zk, %i.zh
  %i.zm = fadd fast <4 x float> %i.zl, splat (float f0x3C088908)
  %i.zn = fmul fast <4 x float> %i.zm, %i.zh
  %i.zo = fadd fast <4 x float> %i.zn, splat (float f0x3D2AA9C1)
  %i.zp = fmul fast <4 x float> %i.zo, %i.zh
  %i.zq = fadd fast <4 x float> %i.zp, splat (float f0x3E2AAAAA)
  %i.zr = fmul fast <4 x float> %i.zq, %i.zh
  %i.zs = fadd fast <4 x float> %i.zr, splat (float 5.000000e-01)
  %i.zt = fmul fast <4 x float> %i.zi, %i.zs
  %i.zu = fadd fast <4 x float> %i.zh, %i.zt
  %i.zv = fadd fast <4 x float> %i.zu, splat (float 1.000000e+00)
  %i.zw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zf)
  %i.zx = shl <4 x i32> %i.zw, splat (i32 23)
  %i.zy = add <4 x i32> %i.zx, splat (i32 1065353216)
  %i.zz = bitcast <4 x i32> %i.zy to <4 x float>
  %i.aaa = fmul fast <4 x float> %i.zv, %i.zz
  %i.aab = fadd fast <4 x float> %i.aaa, splat (float 1.000000e+00)
  %i.aac = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aab
  %i.aad = fadd fast <4 x float> %i.aac, splat (float -1.000000e+00)
  %i.aae = fmul fast <4 x float> %i.aad, %i.ug
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.q:                                             ; preds = %.lr.ph1074
  %i.aaf = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !48
  %i.aah = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !48
  %i.aal = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aan = fmul fast <4 x float> %i.aai, %i.ug
  %i.aao = fadd fast <4 x float> %i.aan, %i.aam
  %i.aap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aao, <4 x float> zeroinitializer)
  %i.aaq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aap, <4 x float> splat (float 1.000000e+00))
  %i.aar = fmul fast <4 x float> %i.aaq, %i.ug
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167:   ; preds = %.lr.ph1074, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i166 = phi nsz <4 x float> [ %i.aar, %bb.q ], [ %i.uh, %bb.l ], [ %i.up, %bb.m ], [ %i.uz, %bb.n ], [ %i.wg, %bb.o ], [ %i.aae, %bb.p ], [ %i.ug, %.lr.ph1074 ]
  %i.aas = fmul fast <4 x float> %.0.i166, %i.l   ; 2 uses
  %i.aat = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aas)
  %i.aau = fadd fast <4 x float> %i.aat, %i.aas
  %i.aav = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aau) ; 2 uses
  %i.aaw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aav, <4 x i32> %i.aav)
  %i.aax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaw, <8 x i16> splat (i16 -127))
  %i.aay = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aax, <8 x i16> splat (i16 127))
  %i.aaz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aay, <8 x i16> poison)
  %i.aba = shufflevector <16 x i8> %i.aaz, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aba, ptr %.21391072, align 1, !tbaa !50
  %i.abb = getelementptr inbounds nuw i8, ptr %.21073, i64 16 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.21391072, i64 4 ; 2 uses
  %i.abd = add nuw nsw i32 %.21511071, 4          ; 3 uses
  %i.abe = or disjoint i32 %i.abd, 3
  %i.abf = icmp slt i32 %i.abe, %i.a
  br i1 %i.abf, label %.lr.ph1074, label %.preheader, !llvm.loop !55

.lr.ph1081:                                       ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168
  %.31080 = phi ptr [ %i.act, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.31401079 = phi ptr [ %i.acu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2139.lcssa, %.preheader ] ; 2 uses
  %.31521078 = phi i32 [ %i.acv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2151.lcssa, %.preheader ]
  %i.abg = load i32, ptr %.31080, align 4, !tbaa !23
  %i.abh = sitofp fast i32 %i.abg to float
  %i.abi = fmul fast float %i.b, %i.abh           ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
  ]

bb.r:                                             ; preds = %.lr.ph1081
  %i.abj = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.abi, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.s:                                             ; preds = %.lr.ph1081
  %i.abk = load ptr, ptr %3, align 8, !tbaa !18
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !48
  %i.abm = fcmp fast ogt float %i.abi, 0.000000e+00
  %i.abn = select fast i1 %i.abm, float 1.000000e+00, float %i.abl
  %i.abo = fmul fast float %i.abn, %i.abi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.t:                                             ; preds = %.lr.ph1081
  %i.abp = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !48
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !48 ; 2 uses
  %.0959 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.abi, float %i.abq) ; 2 uses
  %i.abt = fcmp fast ogt float %.0959, %i.abs
  br i1 %i.abt, label %bb.u, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.u:                                             ; preds = %bb.t
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.v:                                             ; preds = %.lr.ph1081
  %.sroa.speculated65 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.abi, float f0x42B0C0A5)
  %.sroa.speculated61 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated65, float f0xC2B0C0A5)
  %i.abu = fneg fast float %.sroa.speculated61
  %i.abv = tail call fast float @llvm.exp.f32(float %i.abu)
  %i.abw = fadd fast float %i.abv, 1.000000e+00
  %i.abx = fdiv fast float 1.000000e+00, %i.abw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.w:                                             ; preds = %.lr.ph1081
  %i.aby = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.abi)
  %i.abz = fadd fast float %i.aby, 1.000000e+00
  %i.aca = tail call fast float @llvm.log.f32(float %i.abz)
  %i.acb = tail call fast float @llvm.tanh.f32(float %i.aca)
  %i.acc = fmul fast float %i.acb, %i.abi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.x:                                             ; preds = %.lr.ph1081
  %i.acd = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !48 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 4
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !48 ; 2 uses
  %i.ach = fneg fast float %i.acg
  %i.aci = fdiv fast float %i.ach, %i.ace         ; 2 uses
  %i.acj = fcmp fast olt float %i.abi, %i.aci
  br i1 %i.acj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ack = fdiv fast float 1.000000e+00, %i.ace
  %i.acl = fadd fast float %i.aci, %i.ack
  %i.acm = fcmp fast ogt float %i.abi, %i.acl
  br i1 %i.acm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.acn = fmul fast float %i.ace, %i.abi
  %i.aco = fadd fast float %i.acn, %i.acg
  %i.acp = fmul fast float %i.aco, %i.abi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

_ZL13activation_ssfiRKN4ncnn3MatE.exit168:        ; preds = %bb.x, %.lr.ph1081, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
  %.1960 = phi nsz float [ %i.abi, %.lr.ph1081 ], [ %i.abj, %bb.r ], [ %i.abo, %bb.s ], [ %i.abs, %bb.u ], [ %.0959, %bb.t ], [ %i.abx, %bb.v ], [ %i.acc, %bb.w ], [ %i.acp, %bb.z ], [ %i.abi, %bb.y ], [ 0.000000e+00, %bb.x ]
  %i.acq = fmul fast float %.1960, %i.j
  %i.acr = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acq)
  %i.acs = fptosi float %i.acr to i32
  %spec.select.i1701004 = tail call i32 @llvm.smax.i32(i32 %i.acs, i32 -127)
  %.0.i1711005 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1701004, i32 127)
  %.0.i171 = trunc nsw i32 %.0.i1711005 to i8
  store i8 %.0.i171, ptr %.31401079, align 1, !tbaa !50
  %i.act = getelementptr inbounds nuw i8, ptr %.31080, i64 4
  %i.acu = getelementptr inbounds nuw i8, ptr %.31401079, i64 1
  %i.acv = add nuw nsw i32 %.31521078, 1          ; 2 uses
  %exitcond1100.not = icmp eq i32 %i.acv, %i.a
  br i1 %exitcond1100.not, label %.loopexit, label %.lr.ph1081, !llvm.loop !56

bb.aa:                                            ; preds = %bb.e
  %i.acw = load float, ptr %.0.val1, align 4, !tbaa !48 ; 3 uses
  %i.acx = insertelement <4 x float> poison, float %i.acw, i64 0
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acz = insertelement <8 x float> poison, float %i.acw, i64 0
  %i.ada = shufflevector <8 x float> %i.acz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adb = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.adb, %i.h
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.adc = load <8 x float>, ptr %.0.val1, align 4, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0957 = phi nsz <8 x float> [ %i.adc, %bb.ab ], [ %i.ada, %bb.aa ] ; 3 uses
  %i.add = icmp sgt i32 %i.a, 15
  br i1 %i.add, label %.lr.ph, label %.preheader1033

.preheader1033.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %i.ade = and i32 %i.a, 2147483632
  br label %.preheader1033

.preheader1033:                                   ; preds = %.preheader1033.loopexit, %bb.ac
  %.0145.lcssa = phi i32 [ 0, %bb.ac ], [ %i.ade, %.preheader1033.loopexit ] ; 3 uses
  %.4141.lcssa = phi ptr [ %1, %bb.ac ], [ %i.aqn, %.preheader1033.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %0, %bb.ac ], [ %i.aqm, %.preheader1033.loopexit ] ; 2 uses
  %i.adf = or disjoint i32 %.0145.lcssa, 7
  %i.adg = icmp slt i32 %i.adf, %i.a
  br i1 %i.adg, label %.lr.ph1042.preheader, label %.preheader1032

.lr.ph1042.preheader:                             ; preds = %.preheader1033
  %i.adh = load ptr, ptr %3, align 8              ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  %i.adj = load ptr, ptr %3, align 8              ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 4
  %i.adl = load ptr, ptr %3, align 8
  br label %.lr.ph1042

.lr.ph:                                           ; preds = %bb.ac, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %.41036 = phi ptr [ %i.aqm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %0, %bb.ac ] ; 3 uses
  %.41411035 = phi ptr [ %i.aqn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %1, %bb.ac ] ; 2 uses
  %.01451034 = phi i32 [ %i.aqo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ 0, %bb.ac ]
  %i.adm = load <8 x i32>, ptr %.41036, align 1, !tbaa !50
  %i.adn = sitofp fast <8 x i32> %i.adm to <8 x float>
  %i.ado = getelementptr inbounds nuw i8, ptr %.41036, i64 32
  %i.adp = load <8 x i32>, ptr %i.ado, align 1, !tbaa !50
  %i.adq = sitofp fast <8 x i32> %i.adp to <8 x float>
  %i.adr = fmul fast <8 x float> %.0958, %i.adn
  %i.ads = fadd fast <8 x float> %i.adr, %.0957   ; 10 uses
  %i.adt = fmul fast <8 x float> %.0958, %i.adq
  %i.adu = fadd fast <8 x float> %i.adt, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread: ; preds = %.lr.ph
  %i.adv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> zeroinitializer)
  %i.adw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984: ; preds = %.lr.ph
  %i.adx = load ptr, ptr %3, align 8, !tbaa !18
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !48
  %i.adz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ads)
  %i.aea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ads)
  %i.aeb = insertelement <8 x float> poison, float %i.ady, i64 0
  %i.aec = shufflevector <8 x float> %i.aeb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aed = fmul fast <8 x float> %i.aec, %i.aea
  %i.aee = fadd fast <8 x float> %i.aed, %i.adz
  %i.aef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adu)
  %i.aeg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adu)
  %i.aeh = fmul fast <8 x float> %i.aec, %i.aeg
  %i.aei = fadd fast <8 x float> %i.aeh, %i.aef
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987: ; preds = %.lr.ph
  %i.aej = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !48
  %i.ael = insertelement <8 x float> poison, float %i.aek, i64 0
  %i.aem = shufflevector <8 x float> %i.ael, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !48
  %i.aep = insertelement <8 x float> poison, float %i.aeo, i64 0
  %i.aeq = shufflevector <8 x float> %i.aep, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aer = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> nofpclass(nan inf) %i.aem)
  %i.aes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.aeq)
  %i.aet = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> nofpclass(nan inf) %i.aem)
  %i.aeu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aet, <8 x float> nofpclass(nan inf) %i.aeq)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990: ; preds = %.lr.ph
  %i.aev = fneg fast <8 x float> %i.ads
  %i.aew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> splat (float f0x42B0C0A5))
  %i.aex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aew, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aey = fmul fast <8 x float> %i.aex, splat (float f0x3FB8AA3B)
  %i.aez = fadd fast <8 x float> %i.aey, splat (float 5.000000e-01) ; 2 uses
  %i.afa = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aez, i32 1) ; 2 uses
  %i.afb = fcmp fast ogt <8 x float> %i.afa, %i.aez
  %i.afc = select <8 x i1> %i.afb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afd = fsub fast <8 x float> %i.afa, %i.afc   ; 2 uses
  %i.afe = fmul fast <8 x float> %i.afd, splat (float f0x3F317218)
  %i.aff = fsub fast <8 x float> %i.aex, %i.afe   ; 8 uses
  %i.afg = fmul fast <8 x float> %i.aff, %i.aff
  %i.afh = fmul fast <8 x float> %i.aff, splat (float f0x39506967)
  %i.afi = fadd fast <8 x float> %i.afh, splat (float f0x3AB743CE)
  %i.afj = fmul fast <8 x float> %i.afi, %i.aff
  %i.afk = fadd fast <8 x float> %i.afj, splat (float f0x3C088908)
  %i.afl = fmul fast <8 x float> %i.afk, %i.aff
  %i.afm = fadd fast <8 x float> %i.afl, splat (float f0x3D2AA9C1)
  %i.afn = fmul fast <8 x float> %i.afm, %i.aff
  %i.afo = fadd fast <8 x float> %i.afn, splat (float f0x3E2AAAAA)
  %i.afp = fmul fast <8 x float> %i.afo, %i.aff
  %i.afq = fadd fast <8 x float> %i.afp, splat (float 5.000000e-01)
  %i.afr = fmul fast <8 x float> %i.afg, %i.afq
  %i.afs = fadd fast <8 x float> %i.aff, %i.afr
  %i.aft = fadd fast <8 x float> %i.afs, splat (float 1.000000e+00)
  %i.afu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afd)
  %i.afv = shl <8 x i32> %i.afu, splat (i32 23)
  %i.afw = add <8 x i32> %i.afv, splat (i32 1065353216)
  %i.afx = bitcast <8 x i32> %i.afw to <8 x float>
  %i.afy = fmul fast <8 x float> %i.aft, %i.afx
  %i.afz = fadd fast <8 x float> %i.afy, splat (float 1.000000e+00)
  %i.aga = fdiv fast <8 x float> splat (float 1.000000e+00), %i.afz
  %i.agb = fneg fast <8 x float> %i.adu
  %i.agc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agb, <8 x float> splat (float f0x42B0C0A5))
  %i.agd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.age = fmul fast <8 x float> %i.agd, splat (float f0x3FB8AA3B)
  %i.agf = fadd fast <8 x float> %i.age, splat (float 5.000000e-01) ; 2 uses
  %i.agg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agf, i32 1) ; 2 uses
  %i.agh = fcmp fast ogt <8 x float> %i.agg, %i.agf
  %i.agi = select <8 x i1> %i.agh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agj = fsub fast <8 x float> %i.agg, %i.agi   ; 2 uses
  %i.agk = fmul fast <8 x float> %i.agj, splat (float f0x3F317218)
  %i.agl = fsub fast <8 x float> %i.agd, %i.agk   ; 8 uses
  %i.agm = fmul fast <8 x float> %i.agl, %i.agl
  %i.agn = fmul fast <8 x float> %i.agl, splat (float f0x39506967)
  %i.ago = fadd fast <8 x float> %i.agn, splat (float f0x3AB743CE)
  %i.agp = fmul fast <8 x float> %i.ago, %i.agl
  %i.agq = fadd fast <8 x float> %i.agp, splat (float f0x3C088908)
  %i.agr = fmul fast <8 x float> %i.agq, %i.agl
  %i.ags = fadd fast <8 x float> %i.agr, splat (float f0x3D2AA9C1)
  %i.agt = fmul fast <8 x float> %i.ags, %i.agl
  %i.agu = fadd fast <8 x float> %i.agt, splat (float f0x3E2AAAAA)
  %i.agv = fmul fast <8 x float> %i.agu, %i.agl
  %i.agw = fadd fast <8 x float> %i.agv, splat (float 5.000000e-01)
  %i.agx = fmul fast <8 x float> %i.agm, %i.agw
  %i.agy = fadd fast <8 x float> %i.agl, %i.agx
  %i.agz = fadd fast <8 x float> %i.agy, splat (float 1.000000e+00)
  %i.aha = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agj)
  %i.ahb = shl <8 x i32> %i.aha, splat (i32 23)
  %i.ahc = add <8 x i32> %i.ahb, splat (i32 1065353216)
  %i.ahd = bitcast <8 x i32> %i.ahc to <8 x float>
  %i.ahe = fmul fast <8 x float> %i.agz, %i.ahd
  %i.ahf = fadd fast <8 x float> %i.ahe, splat (float 1.000000e+00)
  %i.ahg = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ahf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993: ; preds = %.lr.ph
  %i.ahh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> splat (float f0x42B0C0A5))
  %i.ahi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ahj = fmul fast <8 x float> %i.ahi, splat (float f0x3FB8AA3B)
  %i.ahk = fadd fast <8 x float> %i.ahj, splat (float 5.000000e-01) ; 2 uses
  %i.ahl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ahk, i32 1) ; 2 uses
  %i.ahm = fcmp fast ogt <8 x float> %i.ahl, %i.ahk
  %i.ahn = select <8 x i1> %i.ahm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aho = fsub fast <8 x float> %i.ahl, %i.ahn   ; 2 uses
  %i.ahp = fmul fast <8 x float> %i.aho, splat (float f0x3F317218)
  %i.ahq = fsub fast <8 x float> %i.ahi, %i.ahp   ; 8 uses
  %i.ahr = fmul fast <8 x float> %i.ahq, %i.ahq
  %i.ahs = fmul fast <8 x float> %i.ahq, splat (float f0x39506967)
  %i.aht = fadd fast <8 x float> %i.ahs, splat (float f0x3AB743CE)
  %i.ahu = fmul fast <8 x float> %i.aht, %i.ahq
  %i.ahv = fadd fast <8 x float> %i.ahu, splat (float f0x3C088908)
  %i.ahw = fmul fast <8 x float> %i.ahv, %i.ahq
  %i.ahx = fadd fast <8 x float> %i.ahw, splat (float f0x3D2AA9C1)
  %i.ahy = fmul fast <8 x float> %i.ahx, %i.ahq
  %i.ahz = fadd fast <8 x float> %i.ahy, splat (float f0x3E2AAAAA)
  %i.aia = fmul fast <8 x float> %i.ahz, %i.ahq
  %i.aib = fadd fast <8 x float> %i.aia, splat (float 5.000000e-01)
  %i.aic = fmul fast <8 x float> %i.ahr, %i.aib
  %i.aid = fadd fast <8 x float> %i.ahq, %i.aic
  %i.aie = fadd fast <8 x float> %i.aid, splat (float 1.000000e+00)
  %i.aif = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aho)
  %i.aig = shl <8 x i32> %i.aif, splat (i32 23)
  %i.aih = add <8 x i32> %i.aig, splat (i32 1065353216)
  %i.aii = bitcast <8 x i32> %i.aih to <8 x float>
  %i.aij = fmul fast <8 x float> %i.aie, %i.aii
  %i.aik = fadd fast <8 x float> %i.aij, splat (float 1.000000e+00) ; 2 uses
  %i.ail = fcmp fast ole <8 x float> %i.aik, zeroinitializer
  %i.aim = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aik, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ain = bitcast <8 x float> %i.aim to <8 x i32>
  %i.aio = bitcast <8 x float> %i.aim to <8 x i32>
  %i.aip = and <8 x i32> %i.aio, splat (i32 -2139095041)
  %i.aiq = or disjoint <8 x i32> %i.aip, splat (i32 1056964608)
  %i.air = bitcast <8 x i32> %i.aiq to <8 x float> ; 3 uses
  %i.ais = lshr <8 x i32> %i.ain, splat (i32 23)
  %i.ait = add nsw <8 x i32> %i.ais, splat (i32 -127)
  %i.aiu = sitofp fast <8 x i32> %i.ait to <8 x float> ; 2 uses
  %i.aiv = fadd fast <8 x float> %i.aiu, splat (float 1.000000e+00)
  %i.aiw = fcmp fast olt <8 x float> %i.air, splat (float f0x3F3504F3) ; 2 uses
  %i.aix = select <8 x i1> %i.aiw, <8 x float> %i.air, <8 x float> zeroinitializer
  %i.aiy = fadd fast <8 x float> %i.air, splat (float -1.000000e+00)
  %i.aiz = select fast <8 x i1> %i.aiw, <8 x float> %i.aiu, <8 x float> %i.aiv
  %i.aja = fadd fast <8 x float> %i.aiy, %i.aix   ; 12 uses
  %i.ajb = fmul fast <8 x float> %i.aja, %i.aja   ; 2 uses
  %i.ajc = fmul fast <8 x float> %i.aja, splat (float f0x3D9021BB)
  %i.ajd = fadd fast <8 x float> %i.ajc, splat (float f0xBDEBD1B8)
  %i.aje = fmul fast <8 x float> %i.ajd, %i.aja
  %i.ajf = fadd fast <8 x float> %i.aje, splat (float f0x3DEF251A)
  %i.ajg = fmul fast <8 x float> %i.ajf, %i.aja
  %i.ajh = fadd fast <8 x float> %i.ajg, splat (float f0xBDFE5D4F)
  %i.aji = fmul fast <8 x float> %i.ajh, %i.aja
  %i.ajj = fadd fast <8 x float> %i.aji, splat (float f0x3E11E9BF)
  %i.ajk = fmul fast <8 x float> %i.ajj, %i.aja
  %i.ajl = fadd fast <8 x float> %i.ajk, splat (float f0xBE2AAE50)
  %i.ajm = fmul fast <8 x float> %i.ajl, %i.aja
  %i.ajn = fadd fast <8 x float> %i.ajm, splat (float f0x3E4CCEAC)
  %i.ajo = fmul fast <8 x float> %i.ajn, %i.aja
  %i.ajp = fadd fast <8 x float> %i.ajo, splat (float f0xBE7FFFFC)
  %i.ajq = fmul fast <8 x float> %i.ajp, %i.aja
  %i.ajr = fadd fast <8 x float> %i.ajq, splat (float f0x3EAAAAAA)
  %i.ajs = fmul fast <8 x float> %i.ajb, %i.aja
  %i.ajt = fmul fast <8 x float> %i.ajs, %i.ajr
  %.neg1013 = fmul fast <8 x float> %i.ajb, splat (float -5.000000e-01)
  %reass.mul1014.a = fmul fast <8 x float> %i.aiz, splat (float f0x3F317218)
  %10 = fadd fast <8 x float> %i.aja, %.neg1013
  %i.aju = fadd fast <8 x float> %i.ajt, %10
  %i.ajv = fadd fast <8 x float> %i.aju, %reass.mul1014.a
  %.neg1002 = fmul fast <8 x float> %i.ajv, splat (float -2.000000e+00)
  %i.ajw = select fast <8 x i1> %i.ail, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1002
  %i.ajx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ajw, <8 x float> splat (float f0x42B0C0A5))
  %i.ajy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ajx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajz = fmul fast <8 x float> %i.ajy, splat (float f0x3FB8AA3B)
  %i.aka = fadd fast <8 x float> %i.ajz, splat (float 5.000000e-01) ; 2 uses
  %i.akb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aka, i32 1) ; 2 uses
  %i.akc = fcmp fast ogt <8 x float> %i.akb, %i.aka
  %i.akd = select <8 x i1> %i.akc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ake = fsub fast <8 x float> %i.akb, %i.akd   ; 2 uses
  %i.akf = fmul fast <8 x float> %i.ake, splat (float f0x3F317218)
  %i.akg = fsub fast <8 x float> %i.ajy, %i.akf   ; 8 uses
  %i.akh = fmul fast <8 x float> %i.akg, %i.akg
  %i.aki = fmul fast <8 x float> %i.akg, splat (float f0x39506967)
  %i.akj = fadd fast <8 x float> %i.aki, splat (float f0x3AB743CE)
  %i.akk = fmul fast <8 x float> %i.akj, %i.akg
  %i.akl = fadd fast <8 x float> %i.akk, splat (float f0x3C088908)
  %i.akm = fmul fast <8 x float> %i.akl, %i.akg
  %i.akn = fadd fast <8 x float> %i.akm, splat (float f0x3D2AA9C1)
  %i.ako = fmul fast <8 x float> %i.akn, %i.akg
  %i.akp = fadd fast <8 x float> %i.ako, splat (float f0x3E2AAAAA)
  %i.akq = fmul fast <8 x float> %i.akp, %i.akg
  %i.akr = fadd fast <8 x float> %i.akq, splat (float 5.000000e-01)
  %i.aks = fmul fast <8 x float> %i.akh, %i.akr
  %i.akt = fadd fast <8 x float> %i.akg, %i.aks
  %i.aku = fadd fast <8 x float> %i.akt, splat (float 1.000000e+00)
  %i.akv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ake)
  %i.akw = shl <8 x i32> %i.akv, splat (i32 23)
  %i.akx = add <8 x i32> %i.akw, splat (i32 1065353216)
  %i.aky = bitcast <8 x i32> %i.akx to <8 x float>
  %i.akz = fmul fast <8 x float> %i.aku, %i.aky
  %i.ala = fadd fast <8 x float> %i.akz, splat (float 1.000000e+00)
  %i.alb = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ala
  %i.alc = fadd fast <8 x float> %i.alb, splat (float -1.000000e+00)
  %i.ald = fmul fast <8 x float> %i.alc, %i.ads
  %i.ale = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> splat (float f0x42B0C0A5))
  %i.alf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ale, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alg = fmul fast <8 x float> %i.alf, splat (float f0x3FB8AA3B)
  %i.alh = fadd fast <8 x float> %i.alg, splat (float 5.000000e-01) ; 2 uses
  %i.ali = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.alh, i32 1) ; 2 uses
  %i.alj = fcmp fast ogt <8 x float> %i.ali, %i.alh
  %i.alk = select <8 x i1> %i.alj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.all = fsub fast <8 x float> %i.ali, %i.alk   ; 2 uses
  %i.alm = fmul fast <8 x float> %i.all, splat (float f0x3F317218)
  %i.aln = fsub fast <8 x float> %i.alf, %i.alm   ; 8 uses
  %i.alo = fmul fast <8 x float> %i.aln, %i.aln
  %i.alp = fmul fast <8 x float> %i.aln, splat (float f0x39506967)
  %i.alq = fadd fast <8 x float> %i.alp, splat (float f0x3AB743CE)
  %i.alr = fmul fast <8 x float> %i.alq, %i.aln
  %i.als = fadd fast <8 x float> %i.alr, splat (float f0x3C088908)
  %i.alt = fmul fast <8 x float> %i.als, %i.aln
  %i.alu = fadd fast <8 x float> %i.alt, splat (float f0x3D2AA9C1)
  %i.alv = fmul fast <8 x float> %i.alu, %i.aln
  %i.alw = fadd fast <8 x float> %i.alv, splat (float f0x3E2AAAAA)
  %i.alx = fmul fast <8 x float> %i.alw, %i.aln
  %i.aly = fadd fast <8 x float> %i.alx, splat (float 5.000000e-01)
  %i.alz = fmul fast <8 x float> %i.alo, %i.aly
  %i.ama = fadd fast <8 x float> %i.aln, %i.alz
  %i.amb = fadd fast <8 x float> %i.ama, splat (float 1.000000e+00)
  %i.amc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.all)
  %i.amd = shl <8 x i32> %i.amc, splat (i32 23)
  %i.ame = add <8 x i32> %i.amd, splat (i32 1065353216)
  %i.amf = bitcast <8 x i32> %i.ame to <8 x float>
  %i.amg = fmul fast <8 x float> %i.amb, %i.amf
  %i.amh = fadd fast <8 x float> %i.amg, splat (float 1.000000e+00) ; 2 uses
  %i.ami = fcmp fast ole <8 x float> %i.amh, zeroinitializer
  %i.amj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.amh, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.amk = bitcast <8 x float> %i.amj to <8 x i32>
  %i.aml = bitcast <8 x float> %i.amj to <8 x i32>
  %i.amm = and <8 x i32> %i.aml, splat (i32 -2139095041)
  %i.amn = or disjoint <8 x i32> %i.amm, splat (i32 1056964608)
  %i.amo = bitcast <8 x i32> %i.amn to <8 x float> ; 3 uses
  %i.amp = lshr <8 x i32> %i.amk, splat (i32 23)
  %i.amq = add nsw <8 x i32> %i.amp, splat (i32 -127)
  %i.amr = sitofp fast <8 x i32> %i.amq to <8 x float> ; 2 uses
  %i.ams = fadd fast <8 x float> %i.amr, splat (float 1.000000e+00)
  %i.amt = fcmp fast olt <8 x float> %i.amo, splat (float f0x3F3504F3) ; 2 uses
  %i.amu = select <8 x i1> %i.amt, <8 x float> %i.amo, <8 x float> zeroinitializer
  %i.amv = fadd fast <8 x float> %i.amo, splat (float -1.000000e+00)
  %i.amw = select fast <8 x i1> %i.amt, <8 x float> %i.amr, <8 x float> %i.ams
  %i.amx = fadd fast <8 x float> %i.amv, %i.amu   ; 12 uses
  %i.amy = fmul fast <8 x float> %i.amx, %i.amx   ; 2 uses
  %i.amz = fmul fast <8 x float> %i.amx, splat (float f0x3D9021BB)
  %i.ana = fadd fast <8 x float> %i.amz, splat (float f0xBDEBD1B8)
  %i.anb = fmul fast <8 x float> %i.ana, %i.amx
  %i.anc = fadd fast <8 x float> %i.anb, splat (float f0x3DEF251A)
  %i.and = fmul fast <8 x float> %i.anc, %i.amx
  %i.ane = fadd fast <8 x float> %i.and, splat (float f0xBDFE5D4F)
  %i.anf = fmul fast <8 x float> %i.ane, %i.amx
  %i.ang = fadd fast <8 x float> %i.anf, splat (float f0x3E11E9BF)
  %i.anh = fmul fast <8 x float> %i.ang, %i.amx
  %i.ani = fadd fast <8 x float> %i.anh, splat (float f0xBE2AAE50)
  %i.anj = fmul fast <8 x float> %i.ani, %i.amx
  %i.ank = fadd fast <8 x float> %i.anj, splat (float f0x3E4CCEAC)
  %i.anl = fmul fast <8 x float> %i.ank, %i.amx
  %i.anm = fadd fast <8 x float> %i.anl, splat (float f0xBE7FFFFC)
  %i.ann = fmul fast <8 x float> %i.anm, %i.amx
  %i.ano = fadd fast <8 x float> %i.ann, splat (float f0x3EAAAAAA)
  %i.anp = fmul fast <8 x float> %i.amy, %i.amx
  %i.anq = fmul fast <8 x float> %i.anp, %i.ano
  %.neg1015 = fmul fast <8 x float> %i.amy, splat (float -5.000000e-01)
  %reass.mul1017 = fmul fast <8 x float> %i.amw, splat (float f0x3F317218)
  %11 = fadd fast <8 x float> %i.amx, %.neg1015
  %i.anr = fadd fast <8 x float> %i.anq, %11
  %i.ans = fadd fast <8 x float> %i.anr, %reass.mul1017
  %.neg1003 = fmul fast <8 x float> %i.ans, splat (float -2.000000e+00)
  %i.ant = select fast <8 x i1> %i.ami, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1003
  %i.anu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ant, <8 x float> splat (float f0x42B0C0A5))
  %i.anv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.anu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anw = fmul fast <8 x float> %i.anv, splat (float f0x3FB8AA3B)
  %i.anx = fadd fast <8 x float> %i.anw, splat (float 5.000000e-01) ; 2 uses
  %i.any = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.anx, i32 1) ; 2 uses
  %i.anz = fcmp fast ogt <8 x float> %i.any, %i.anx
  %i.aoa = select <8 x i1> %i.anz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aob = fsub fast <8 x float> %i.any, %i.aoa   ; 2 uses
  %i.aoc = fmul fast <8 x float> %i.aob, splat (float f0x3F317218)
  %i.aod = fsub fast <8 x float> %i.anv, %i.aoc   ; 8 uses
  %i.aoe = fmul fast <8 x float> %i.aod, %i.aod
  %i.aof = fmul fast <8 x float> %i.aod, splat (float f0x39506967)
  %i.aog = fadd fast <8 x float> %i.aof, splat (float f0x3AB743CE)
  %i.aoh = fmul fast <8 x float> %i.aog, %i.aod
  %i.aoi = fadd fast <8 x float> %i.aoh, splat (float f0x3C088908)
  %i.aoj = fmul fast <8 x float> %i.aoi, %i.aod
  %i.aok = fadd fast <8 x float> %i.aoj, splat (float f0x3D2AA9C1)
  %i.aol = fmul fast <8 x float> %i.aok, %i.aod
  %i.aom = fadd fast <8 x float> %i.aol, splat (float f0x3E2AAAAA)
  %i.aon = fmul fast <8 x float> %i.aom, %i.aod
  %i.aoo = fadd fast <8 x float> %i.aon, splat (float 5.000000e-01)
  %i.aop = fmul fast <8 x float> %i.aoe, %i.aoo
  %i.aoq = fadd fast <8 x float> %i.aod, %i.aop
  %i.aor = fadd fast <8 x float> %i.aoq, splat (float 1.000000e+00)
  %i.aos = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aob)
  %i.aot = shl <8 x i32> %i.aos, splat (i32 23)
  %i.aou = add <8 x i32> %i.aot, splat (i32 1065353216)
  %i.aov = bitcast <8 x i32> %i.aou to <8 x float>
  %i.aow = fmul fast <8 x float> %i.aor, %i.aov
  %i.aox = fadd fast <8 x float> %i.aow, splat (float 1.000000e+00)
  %i.aoy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aox
  %i.aoz = fadd fast <8 x float> %i.aoy, splat (float -1.000000e+00)
  %i.apa = fmul fast <8 x float> %i.aoz, %i.adu
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996: ; preds = %.lr.ph
  %i.apb = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !48
  %i.apd = insertelement <8 x float> poison, float %i.apc, i64 0
  %i.ape = shufflevector <8 x float> %i.apd, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !48
  %i.aph = insertelement <8 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <8 x float> %i.aph, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apj = fmul fast <8 x float> %i.ape, %i.ads
  %i.apk = fadd fast <8 x float> %i.apj, %i.api
  %i.apl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.apk, <8 x float> zeroinitializer)
  %i.apm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apl, <8 x float> splat (float 1.000000e+00))
  %i.apn = fmul fast <8 x float> %i.apm, %i.ads
  %i.apo = fmul fast <8 x float> %i.ape, %i.adu
  %i.app = fadd fast <8 x float> %i.apo, %i.api
  %i.apq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.app, <8 x float> zeroinitializer)
  %i.apr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apq, <8 x float> splat (float 1.000000e+00))
  %i.aps = fmul fast <8 x float> %i.apr, %i.adu
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156:   ; preds = %.lr.ph, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  %.0.i157983 = phi <8 x float> [ %i.apn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.adv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.aee, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aes, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.aga, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.ald, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.ads, %.lr.ph ]
  %.0.i155 = phi nsz <8 x float> [ %i.aps, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.adw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.aei, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aeu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.ahg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.apa, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.adu, %.lr.ph ]
  %i.apt = fmul fast <8 x float> %.0.i157983, %.0153 ; 2 uses
  %i.apu = fmul fast <8 x float> %.0.i155, %.0153 ; 2 uses
  %i.apv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apt)
  %i.apw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apu)
  %i.apx = fadd fast <8 x float> %i.apv, %i.apt
  %i.apy = fadd fast <8 x float> %i.apw, %i.apu
  %i.apz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.apx) ; 2 uses
  %i.aqa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.apy) ; 2 uses
  %i.aqb = shufflevector <8 x i32> %i.apz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aqc = shufflevector <8 x i32> %i.apz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aqd = shufflevector <8 x i32> %i.aqa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aqe = shufflevector <8 x i32> %i.aqa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aqf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aqb, <4 x i32> %i.aqc)
  %i.aqg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aqd, <4 x i32> %i.aqe)
  %i.aqh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aqf, <8 x i16> splat (i16 -127))
  %i.aqi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqh, <8 x i16> splat (i16 127))
  %i.aqj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aqg, <8 x i16> splat (i16 -127))
  %i.aqk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqj, <8 x i16> splat (i16 127))
  %i.aql = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aqi, <8 x i16> %i.aqk)
  store <16 x i8> %i.aql, ptr %.41411035, align 1, !tbaa !50
  %i.aqm = getelementptr inbounds nuw i8, ptr %.41036, i64 64 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.41411035, i64 16 ; 2 uses
  %i.aqo = add nuw nsw i32 %.01451034, 16         ; 2 uses
  %i.aqp = or disjoint i32 %i.aqo, 15
  %i.aqq = icmp slt i32 %i.aqp, %i.a
  br i1 %i.aqq, label %.lr.ph, label %.preheader1033.loopexit, !llvm.loop !57

.preheader1032:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %.preheader1033
  %.1146.lcssa = phi i32 [ %.0145.lcssa, %.preheader1033 ], [ %i.axp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.5142.lcssa = phi ptr [ %.4141.lcssa, %.preheader1033 ], [ %i.axo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader1033 ], [ %i.axn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.aqr = or disjoint i32 %.1146.lcssa, 3
  %i.aqs = icmp slt i32 %i.aqr, %i.a
  br i1 %i.aqs, label %.lr.ph1049, label %.preheader1030

.lr.ph1042:                                       ; preds = %.lr.ph1042.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.51041 = phi ptr [ %i.axn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.lr.ph1042.preheader ] ; 2 uses
  %.51421040 = phi ptr [ %i.axo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4141.lcssa, %.lr.ph1042.preheader ] ; 2 uses
  %.11461039 = phi i32 [ %i.axp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.0145.lcssa, %.lr.ph1042.preheader ]
  %i.aqt = load <8 x i32>, ptr %.51041, align 1, !tbaa !50
  %i.aqu = sitofp fast <8 x i32> %i.aqt to <8 x float>
  %i.aqv = fmul fast <8 x float> %.0958, %i.aqu
  %i.aqw = fadd fast <8 x float> %i.aqv, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.ai
  ]

bb.ad:                                            ; preds = %.lr.ph1042
  %i.aqx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqw, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %.lr.ph1042
  %i.aqy = load float, ptr %i.adl, align 4, !tbaa !48
  %i.aqz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqw)
  %i.ara = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqw)
  %i.arb = insertelement <8 x float> poison, float %i.aqy, i64 0
  %i.arc = shufflevector <8 x float> %i.arb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ard = fmul fast <8 x float> %i.arc, %i.ara
  %i.are = fadd fast <8 x float> %i.ard, %i.aqz
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph1042
  %i.arf = load float, ptr %i.adj, align 4, !tbaa !48
  %i.arg = insertelement <8 x float> poison, float %i.arf, i64 0
  %i.arh = shufflevector <8 x float> %i.arg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ari = load float, ptr %i.adk, align 4, !tbaa !48
  %i.arj = insertelement <8 x float> poison, float %i.ari, i64 0
  %i.ark = shufflevector <8 x float> %i.arj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqw, <8 x float> nofpclass(nan inf) %i.arh)
  %i.arm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.arl, <8 x float> nofpclass(nan inf) %i.ark)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %.lr.ph1042
  %i.arn = fneg fast <8 x float> %i.aqw
  %i.aro = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.arn, <8 x float> splat (float f0x42B0C0A5))
  %i.arp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aro, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arq = fmul fast <8 x float> %i.arp, splat (float f0x3FB8AA3B)
  %i.arr = fadd fast <8 x float> %i.arq, splat (float 5.000000e-01) ; 2 uses
  %i.ars = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.arr, i32 1) ; 2 uses
  %i.art = fcmp fast ogt <8 x float> %i.ars, %i.arr
  %i.aru = select <8 x i1> %i.art, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.arv = fsub fast <8 x float> %i.ars, %i.aru   ; 2 uses
  %i.arw = fmul fast <8 x float> %i.arv, splat (float f0x3F317218)
  %i.arx = fsub fast <8 x float> %i.arp, %i.arw   ; 8 uses
  %i.ary = fmul fast <8 x float> %i.arx, %i.arx
  %i.arz = fmul fast <8 x float> %i.arx, splat (float f0x39506967)
  %i.asa = fadd fast <8 x float> %i.arz, splat (float f0x3AB743CE)
  %i.asb = fmul fast <8 x float> %i.asa, %i.arx
  %i.asc = fadd fast <8 x float> %i.asb, splat (float f0x3C088908)
  %i.asd = fmul fast <8 x float> %i.asc, %i.arx
  %i.ase = fadd fast <8 x float> %i.asd, splat (float f0x3D2AA9C1)
  %i.asf = fmul fast <8 x float> %i.ase, %i.arx
  %i.asg = fadd fast <8 x float> %i.asf, splat (float f0x3E2AAAAA)
  %i.ash = fmul fast <8 x float> %i.asg, %i.arx
  %i.asi = fadd fast <8 x float> %i.ash, splat (float 5.000000e-01)
  %i.asj = fmul fast <8 x float> %i.ary, %i.asi
  %i.ask = fadd fast <8 x float> %i.arx, %i.asj
  %i.asl = fadd fast <8 x float> %i.ask, splat (float 1.000000e+00)
  %i.asm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.arv)
  %i.asn = shl <8 x i32> %i.asm, splat (i32 23)
  %i.aso = add <8 x i32> %i.asn, splat (i32 1065353216)
  %i.asp = bitcast <8 x i32> %i.aso to <8 x float>
  %i.asq = fmul fast <8 x float> %i.asl, %i.asp
  %i.asr = fadd fast <8 x float> %i.asq, splat (float 1.000000e+00)
  %i.ass = fdiv fast <8 x float> splat (float 1.000000e+00), %i.asr
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %.lr.ph1042
  %i.ast = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aqw, <8 x float> splat (float f0x42B0C0A5))
  %i.asu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ast, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.asv = fmul fast <8 x float> %i.asu, splat (float f0x3FB8AA3B)
  %i.asw = fadd fast <8 x float> %i.asv, splat (float 5.000000e-01) ; 2 uses
  %i.asx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.asw, i32 1) ; 2 uses
  %i.asy = fcmp fast ogt <8 x float> %i.asx, %i.asw
  %i.asz = select <8 x i1> %i.asy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ata = fsub fast <8 x float> %i.asx, %i.asz   ; 2 uses
  %i.atb = fmul fast <8 x float> %i.ata, splat (float f0x3F317218)
  %i.atc = fsub fast <8 x float> %i.asu, %i.atb   ; 8 uses
  %i.atd = fmul fast <8 x float> %i.atc, %i.atc
  %i.ate = fmul fast <8 x float> %i.atc, splat (float f0x39506967)
  %i.atf = fadd fast <8 x float> %i.ate, splat (float f0x3AB743CE)
  %i.atg = fmul fast <8 x float> %i.atf, %i.atc
  %i.ath = fadd fast <8 x float> %i.atg, splat (float f0x3C088908)
  %i.ati = fmul fast <8 x float> %i.ath, %i.atc
  %i.atj = fadd fast <8 x float> %i.ati, splat (float f0x3D2AA9C1)
  %i.atk = fmul fast <8 x float> %i.atj, %i.atc
  %i.atl = fadd fast <8 x float> %i.atk, splat (float f0x3E2AAAAA)
  %i.atm = fmul fast <8 x float> %i.atl, %i.atc
  %i.atn = fadd fast <8 x float> %i.atm, splat (float 5.000000e-01)
  %i.ato = fmul fast <8 x float> %i.atd, %i.atn
  %i.atp = fadd fast <8 x float> %i.atc, %i.ato
  %i.atq = fadd fast <8 x float> %i.atp, splat (float 1.000000e+00)
  %i.atr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ata)
  %i.ats = shl <8 x i32> %i.atr, splat (i32 23)
  %i.att = add <8 x i32> %i.ats, splat (i32 1065353216)
  %i.atu = bitcast <8 x i32> %i.att to <8 x float>
  %i.atv = fmul fast <8 x float> %i.atq, %i.atu
  %i.atw = fadd fast <8 x float> %i.atv, splat (float 1.000000e+00) ; 2 uses
  %i.atx = fcmp fast ole <8 x float> %i.atw, zeroinitializer
  %i.aty = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atw, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.atz = bitcast <8 x float> %i.aty to <8 x i32>
  %i.aua = bitcast <8 x float> %i.aty to <8 x i32>
  %i.aub = and <8 x i32> %i.aua, splat (i32 -2139095041)
  %i.auc = or disjoint <8 x i32> %i.aub, splat (i32 1056964608)
  %i.aud = bitcast <8 x i32> %i.auc to <8 x float> ; 3 uses
  %i.aue = lshr <8 x i32> %i.atz, splat (i32 23)
  %i.auf = add nsw <8 x i32> %i.aue, splat (i32 -127)
  %i.aug = sitofp fast <8 x i32> %i.auf to <8 x float> ; 2 uses
  %i.auh = fadd fast <8 x float> %i.aug, splat (float 1.000000e+00)
  %i.aui = fcmp fast olt <8 x float> %i.aud, splat (float f0x3F3504F3) ; 2 uses
  %i.auj = select <8 x i1> %i.aui, <8 x float> %i.aud, <8 x float> zeroinitializer
  %i.auk = fadd fast <8 x float> %i.aud, splat (float -1.000000e+00)
  %i.aul = select fast <8 x i1> %i.aui, <8 x float> %i.aug, <8 x float> %i.auh
  %i.aum = fadd fast <8 x float> %i.auk, %i.auj   ; 12 uses
  %i.aun = fmul fast <8 x float> %i.aum, %i.aum   ; 2 uses
  %i.auo = fmul fast <8 x float> %i.aum, splat (float f0x3D9021BB)
  %i.aup = fadd fast <8 x float> %i.auo, splat (float f0xBDEBD1B8)
  %i.auq = fmul fast <8 x float> %i.aup, %i.aum
  %i.aur = fadd fast <8 x float> %i.auq, splat (float f0x3DEF251A)
  %i.aus = fmul fast <8 x float> %i.aur, %i.aum
  %i.aut = fadd fast <8 x float> %i.aus, splat (float f0xBDFE5D4F)
  %i.auu = fmul fast <8 x float> %i.aut, %i.aum
  %i.auv = fadd fast <8 x float> %i.auu, splat (float f0x3E11E9BF)
  %i.auw = fmul fast <8 x float> %i.auv, %i.aum
  %i.aux = fadd fast <8 x float> %i.auw, splat (float f0xBE2AAE50)
  %i.auy = fmul fast <8 x float> %i.aux, %i.aum
  %i.auz = fadd fast <8 x float> %i.auy, splat (float f0x3E4CCEAC)
  %i.ava = fmul fast <8 x float> %i.auz, %i.aum
  %i.avb = fadd fast <8 x float> %i.ava, splat (float f0xBE7FFFFC)
  %i.avc = fmul fast <8 x float> %i.avb, %i.aum
  %i.avd = fadd fast <8 x float> %i.avc, splat (float f0x3EAAAAAA)
  %i.ave = fmul fast <8 x float> %i.aun, %i.aum
  %i.avf = fmul fast <8 x float> %i.ave, %i.avd
  %.neg1011 = fmul fast <8 x float> %i.aun, splat (float -5.000000e-01)
  %reass.mul1012.a = fmul fast <8 x float> %i.aul, splat (float f0x3F317218)
  %12 = fadd fast <8 x float> %i.aum, %.neg1011
  %i.avg = fadd fast <8 x float> %i.avf, %12
  %i.avh = fadd fast <8 x float> %i.avg, %reass.mul1012.a
  %.neg1001 = fmul fast <8 x float> %i.avh, splat (float -2.000000e+00)
  %i.avi = select fast <8 x i1> %i.atx, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1001
  %i.avj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.avi, <8 x float> splat (float f0x42B0C0A5))
  %i.avk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.avj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.avl = fmul fast <8 x float> %i.avk, splat (float f0x3FB8AA3B)
  %i.avm = fadd fast <8 x float> %i.avl, splat (float 5.000000e-01) ; 2 uses
  %i.avn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.avm, i32 1) ; 2 uses
  %i.avo = fcmp fast ogt <8 x float> %i.avn, %i.avm
  %i.avp = select <8 x i1> %i.avo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.avq = fsub fast <8 x float> %i.avn, %i.avp   ; 2 uses
  %i.avr = fmul fast <8 x float> %i.avq, splat (float f0x3F317218)
  %i.avs = fsub fast <8 x float> %i.avk, %i.avr   ; 8 uses
  %i.avt = fmul fast <8 x float> %i.avs, %i.avs
  %i.avu = fmul fast <8 x float> %i.avs, splat (float f0x39506967)
  %i.avv = fadd fast <8 x float> %i.avu, splat (float f0x3AB743CE)
  %i.avw = fmul fast <8 x float> %i.avv, %i.avs
  %i.avx = fadd fast <8 x float> %i.avw, splat (float f0x3C088908)
  %i.avy = fmul fast <8 x float> %i.avx, %i.avs
  %i.avz = fadd fast <8 x float> %i.avy, splat (float f0x3D2AA9C1)
  %i.awa = fmul fast <8 x float> %i.avz, %i.avs
  %i.awb = fadd fast <8 x float> %i.awa, splat (float f0x3E2AAAAA)
  %i.awc = fmul fast <8 x float> %i.awb, %i.avs
  %i.awd = fadd fast <8 x float> %i.awc, splat (float 5.000000e-01)
  %i.awe = fmul fast <8 x float> %i.avt, %i.awd
  %i.awf = fadd fast <8 x float> %i.avs, %i.awe
  %i.awg = fadd fast <8 x float> %i.awf, splat (float 1.000000e+00)
  %i.awh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.avq)
  %i.awi = shl <8 x i32> %i.awh, splat (i32 23)
  %i.awj = add <8 x i32> %i.awi, splat (i32 1065353216)
  %i.awk = bitcast <8 x i32> %i.awj to <8 x float>
  %i.awl = fmul fast <8 x float> %i.awg, %i.awk
  %i.awm = fadd fast <8 x float> %i.awl, splat (float 1.000000e+00)
  %i.awn = fdiv fast <8 x float> splat (float 2.000000e+00), %i.awm
  %i.awo = fadd fast <8 x float> %i.awn, splat (float -1.000000e+00)
  %i.awp = fmul fast <8 x float> %i.awo, %i.aqw
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %.lr.ph1042
  %i.awq = load float, ptr %i.adh, align 4, !tbaa !48
  %i.awr = insertelement <8 x float> poison, float %i.awq, i64 0
  %i.aws = shufflevector <8 x float> %i.awr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awt = load float, ptr %i.adi, align 4, !tbaa !48
  %i.awu = insertelement <8 x float> poison, float %i.awt, i64 0
  %i.awv = shufflevector <8 x float> %i.awu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aww = fmul fast <8 x float> %i.aws, %i.aqw
  %i.awx = fadd fast <8 x float> %i.aww, %i.awv
  %i.awy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.awx, <8 x float> zeroinitializer)
  %i.awz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.awy, <8 x float> splat (float 1.000000e+00))
  %i.axa = fmul fast <8 x float> %i.awz, %i.aqw
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1042, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i = phi nsz <8 x float> [ %i.axa, %bb.ai ], [ %i.aqx, %bb.ad ], [ %i.are, %bb.ae ], [ %i.arm, %bb.af ], [ %i.ass, %bb.ag ], [ %i.awp, %bb.ah ], [ %i.aqw, %.lr.ph1042 ]
  %i.axb = fmul fast <8 x float> %.0.i, %.0153    ; 2 uses
  %i.axc = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.axb)
  %i.axd = fadd fast <8 x float> %i.axc, %i.axb
  %i.axe = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.axd) ; 2 uses
  %i.axf = shufflevector <8 x i32> %i.axe, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axg = shufflevector <8 x i32> %i.axe, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.axh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.axf, <4 x i32> %i.axg)
  %i.axi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.axh, <8 x i16> splat (i16 -127))
  %i.axj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axi, <8 x i16> splat (i16 127))
  %i.axk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axj, <8 x i16> poison)
  %i.axl = bitcast <16 x i8> %i.axk to <2 x i64>
  %i.axm = extractelement <2 x i64> %i.axl, i64 0
  store i64 %i.axm, ptr %.51421040, align 8, !tbaa !53
  %i.axn = getelementptr inbounds nuw i8, ptr %.51041, i64 32 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.51421040, i64 8 ; 2 uses
  %i.axp = add nuw nsw i32 %.11461039, 8          ; 3 uses
  %i.axq = or disjoint i32 %i.axp, 7
  %i.axr = icmp slt i32 %i.axq, %i.a
  br i1 %i.axr, label %.lr.ph1042, label %.preheader1032, !llvm.loop !58

.preheader1030:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader1032
  %.2147.lcssa = phi i32 [ %.1146.lcssa, %.preheader1032 ], [ %i.bet, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.6143.lcssa = phi ptr [ %.5142.lcssa, %.preheader1032 ], [ %i.bes, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader1032 ], [ %i.ber, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.axs = icmp slt i32 %.2147.lcssa, %i.a
  br i1 %i.axs, label %.lr.ph1056, label %.loopexit

.lr.ph1049:                                       ; preds = %.preheader1032, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.61048 = phi ptr [ %i.ber, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5.lcssa, %.preheader1032 ] ; 2 uses
  %.61431047 = phi ptr [ %i.bes, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5142.lcssa, %.preheader1032 ] ; 2 uses
  %.21471046 = phi i32 [ %i.bet, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.1146.lcssa, %.preheader1032 ]
  %i.axt = load <4 x i32>, ptr %.61048, align 1, !tbaa !50
  %i.axu = sitofp fast <4 x i32> %i.axt to <4 x float>
  %i.axv = fmul fast <4 x float> %i.d, %i.axu
  %i.axw = fadd fast <4 x float> %i.axv, %i.acy   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
    i32 5, label %bb.an
    i32 6, label %bb.ao
  ]

bb.aj:                                            ; preds = %.lr.ph1049
  %i.axx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axw, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %.lr.ph1049
  %i.axy = load ptr, ptr %3, align 8, !tbaa !18
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !48
  %i.aya = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axw)
  %i.ayb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axw)
  %i.ayc = insertelement <4 x float> poison, float %i.axz, i64 0
  %i.ayd = shufflevector <4 x float> %i.ayc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aye = fmul fast <4 x float> %i.ayd, %i.ayb
  %i.ayf = fadd fast <4 x float> %i.aye, %i.aya
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.al:                                            ; preds = %.lr.ph1049
  %i.ayg = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !48
  %i.ayi = insertelement <4 x float> poison, float %i.ayh, i64 0
  %i.ayj = shufflevector <4 x float> %i.ayi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayg, i64 4
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !48
  %i.aym = insertelement <4 x float> poison, float %i.ayl, i64 0
  %i.ayn = shufflevector <4 x float> %i.aym, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axw, <4 x float> nofpclass(nan inf) %i.ayj)
  %i.ayp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayo, <4 x float> nofpclass(nan inf) %i.ayn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.am:                                            ; preds = %.lr.ph1049
  %i.ayq = fneg fast <4 x float> %i.axw
  %i.ayr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayq, <4 x float> splat (float f0x42B0C0A5))
  %i.ays = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ayt = fmul fast <4 x float> %i.ays, splat (float f0x3FB8AA3B)
  %i.ayu = fadd fast <4 x float> %i.ayt, splat (float 5.000000e-01) ; 2 uses
  %i.ayv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayu)
  %i.ayw = sitofp fast <4 x i32> %i.ayv to <4 x float> ; 2 uses
  %i.ayx = fcmp fast olt <4 x float> %i.ayu, %i.ayw
  %i.ayy = select <4 x i1> %i.ayx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ayz = fsub fast <4 x float> %i.ayw, %i.ayy   ; 2 uses
  %i.aza = fmul fast <4 x float> %i.ayz, splat (float f0x3F317218)
  %i.azb = fsub fast <4 x float> %i.ays, %i.aza   ; 8 uses
  %i.azc = fmul fast <4 x float> %i.azb, %i.azb
  %i.azd = fmul fast <4 x float> %i.azb, splat (float f0x39506967)
  %i.aze = fadd fast <4 x float> %i.azd, splat (float f0x3AB743CE)
  %i.azf = fmul fast <4 x float> %i.aze, %i.azb
  %i.azg = fadd fast <4 x float> %i.azf, splat (float f0x3C088908)
  %i.azh = fmul fast <4 x float> %i.azg, %i.azb
  %i.azi = fadd fast <4 x float> %i.azh, splat (float f0x3D2AA9C1)
  %i.azj = fmul fast <4 x float> %i.azi, %i.azb
  %i.azk = fadd fast <4 x float> %i.azj, splat (float f0x3E2AAAAA)
  %i.azl = fmul fast <4 x float> %i.azk, %i.azb
  %i.azm = fadd fast <4 x float> %i.azl, splat (float 5.000000e-01)
  %i.azn = fmul fast <4 x float> %i.azc, %i.azm
  %i.azo = fadd fast <4 x float> %i.azb, %i.azn
  %i.azp = fadd fast <4 x float> %i.azo, splat (float 1.000000e+00)
  %i.azq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayz)
  %i.azr = shl <4 x i32> %i.azq, splat (i32 23)
  %i.azs = add <4 x i32> %i.azr, splat (i32 1065353216)
  %i.azt = bitcast <4 x i32> %i.azs to <4 x float>
  %i.azu = fmul fast <4 x float> %i.azp, %i.azt
  %i.azv = fadd fast <4 x float> %i.azu, splat (float 1.000000e+00)
  %i.azw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.azv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.an:                                            ; preds = %.lr.ph1049
  %i.azx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.axw, <4 x float> splat (float f0x42B0C0A5))
  %i.azy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.azz = fmul fast <4 x float> %i.azy, splat (float f0x3FB8AA3B)
  %i.baa = fadd fast <4 x float> %i.azz, splat (float 5.000000e-01) ; 2 uses
  %i.bab = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.baa)
  %i.bac = sitofp fast <4 x i32> %i.bab to <4 x float> ; 2 uses
  %i.bad = fcmp fast olt <4 x float> %i.baa, %i.bac
  %i.bae = select <4 x i1> %i.bad, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.baf = fsub fast <4 x float> %i.bac, %i.bae   ; 2 uses
  %i.bag = fmul fast <4 x float> %i.baf, splat (float f0x3F317218)
  %i.bah = fsub fast <4 x float> %i.azy, %i.bag   ; 8 uses
  %i.bai = fmul fast <4 x float> %i.bah, %i.bah
  %i.baj = fmul fast <4 x float> %i.bah, splat (float f0x39506967)
  %i.bak = fadd fast <4 x float> %i.baj, splat (float f0x3AB743CE)
  %i.bal = fmul fast <4 x float> %i.bak, %i.bah
  %i.bam = fadd fast <4 x float> %i.bal, splat (float f0x3C088908)
  %i.ban = fmul fast <4 x float> %i.bam, %i.bah
  %i.bao = fadd fast <4 x float> %i.ban, splat (float f0x3D2AA9C1)
  %i.bap = fmul fast <4 x float> %i.bao, %i.bah
  %i.baq = fadd fast <4 x float> %i.bap, splat (float f0x3E2AAAAA)
  %i.bar = fmul fast <4 x float> %i.baq, %i.bah
  %i.bas = fadd fast <4 x float> %i.bar, splat (float 5.000000e-01)
  %i.bat = fmul fast <4 x float> %i.bai, %i.bas
  %i.bau = fadd fast <4 x float> %i.bah, %i.bat
  %i.bav = fadd fast <4 x float> %i.bau, splat (float 1.000000e+00)
  %i.baw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.baf)
  %i.bax = shl <4 x i32> %i.baw, splat (i32 23)
  %i.bay = add <4 x i32> %i.bax, splat (i32 1065353216)
  %i.baz = bitcast <4 x i32> %i.bay to <4 x float>
  %i.bba = fmul fast <4 x float> %i.bav, %i.baz
  %i.bbb = fadd fast <4 x float> %i.bba, splat (float 1.000000e+00) ; 2 uses
  %i.bbc = fcmp fast ole <4 x float> %i.bbb, zeroinitializer
  %i.bbd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> splat (float f0x00800000))
  %i.bbe = bitcast <4 x float> %i.bbd to <4 x i32> ; 2 uses
  %i.bbf = lshr <4 x i32> %i.bbe, splat (i32 23)
  %i.bbg = and <4 x i32> %i.bbe, splat (i32 -2139095041)
  %i.bbh = or disjoint <4 x i32> %i.bbg, splat (i32 1056964608)
  %i.bbi = bitcast <4 x i32> %i.bbh to <4 x float> ; 3 uses
  %i.bbj = add nsw <4 x i32> %i.bbf, splat (i32 -127)
  %i.bbk = sitofp fast <4 x i32> %i.bbj to <4 x float> ; 2 uses
  %i.bbl = fadd fast <4 x float> %i.bbk, splat (float 1.000000e+00)
  %i.bbm = fcmp fast olt <4 x float> %i.bbi, splat (float f0x3F3504F3) ; 2 uses
  %i.bbn = select <4 x i1> %i.bbm, <4 x float> %i.bbi, <4 x float> zeroinitializer
  %i.bbo = fadd fast <4 x float> %i.bbi, splat (float -1.000000e+00)
  %i.bbp = select fast <4 x i1> %i.bbm, <4 x float> %i.bbk, <4 x float> %i.bbl
  %i.bbq = fadd fast <4 x float> %i.bbo, %i.bbn   ; 12 uses
  %i.bbr = fmul fast <4 x float> %i.bbq, %i.bbq   ; 2 uses
  %i.bbs = fmul fast <4 x float> %i.bbq, splat (float f0x3D9021BB)
  %i.bbt = fadd fast <4 x float> %i.bbs, splat (float f0xBDEBD1B8)
  %i.bbu = fmul fast <4 x float> %i.bbt, %i.bbq
  %i.bbv = fadd fast <4 x float> %i.bbu, splat (float f0x3DEF251A)
  %i.bbw = fmul fast <4 x float> %i.bbv, %i.bbq
  %i.bbx = fadd fast <4 x float> %i.bbw, splat (float f0xBDFE5D4F)
  %i.bby = fmul fast <4 x float> %i.bbx, %i.bbq
  %i.bbz = fadd fast <4 x float> %i.bby, splat (float f0x3E11E9BF)
  %i.bca = fmul fast <4 x float> %i.bbz, %i.bbq
  %i.bcb = fadd fast <4 x float> %i.bca, splat (float f0xBE2AAE50)
  %i.bcc = fmul fast <4 x float> %i.bcb, %i.bbq
  %i.bcd = fadd fast <4 x float> %i.bcc, splat (float f0x3E4CCEAC)
  %i.bce = fmul fast <4 x float> %i.bcd, %i.bbq
  %i.bcf = fadd fast <4 x float> %i.bce, splat (float f0xBE7FFFFC)
  %i.bcg = fmul fast <4 x float> %i.bcf, %i.bbq
  %i.bch = fadd fast <4 x float> %i.bcg, splat (float f0x3EAAAAAA)
  %i.bci = fmul fast <4 x float> %i.bbr, %i.bbq
  %i.bcj = fmul fast <4 x float> %i.bci, %i.bch
  %.neg1010 = fmul fast <4 x float> %i.bbr, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.bbp, splat (float f0x3F317218)
  %13 = fadd fast <4 x float> %i.bbq, %.neg1010
  %i.bck = fadd fast <4 x float> %i.bcj, %13
  %i.bcl = fadd fast <4 x float> %i.bck, %reass.mul
  %.neg = fmul fast <4 x float> %i.bcl, splat (float -2.000000e+00)
  %i.bcm = select fast <4 x i1> %i.bbc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.bcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bcm, <4 x float> splat (float f0x42B0C0A5))
  %i.bco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bcn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bcp = fmul fast <4 x float> %i.bco, splat (float f0x3FB8AA3B)
  %i.bcq = fadd fast <4 x float> %i.bcp, splat (float 5.000000e-01) ; 2 uses
  %i.bcr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bcq)
  %i.bcs = sitofp fast <4 x i32> %i.bcr to <4 x float> ; 2 uses
  %i.bct = fcmp fast olt <4 x float> %i.bcq, %i.bcs
  %i.bcu = select <4 x i1> %i.bct, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bcv = fsub fast <4 x float> %i.bcs, %i.bcu   ; 2 uses
  %i.bcw = fmul fast <4 x float> %i.bcv, splat (float f0x3F317218)
  %i.bcx = fsub fast <4 x float> %i.bco, %i.bcw   ; 8 uses
  %i.bcy = fmul fast <4 x float> %i.bcx, %i.bcx
  %i.bcz = fmul fast <4 x float> %i.bcx, splat (float f0x39506967)
  %i.bda = fadd fast <4 x float> %i.bcz, splat (float f0x3AB743CE)
  %i.bdb = fmul fast <4 x float> %i.bda, %i.bcx
  %i.bdc = fadd fast <4 x float> %i.bdb, splat (float f0x3C088908)
  %i.bdd = fmul fast <4 x float> %i.bdc, %i.bcx
  %i.bde = fadd fast <4 x float> %i.bdd, splat (float f0x3D2AA9C1)
  %i.bdf = fmul fast <4 x float> %i.bde, %i.bcx
  %i.bdg = fadd fast <4 x float> %i.bdf, splat (float f0x3E2AAAAA)
  %i.bdh = fmul fast <4 x float> %i.bdg, %i.bcx
  %i.bdi = fadd fast <4 x float> %i.bdh, splat (float 5.000000e-01)
  %i.bdj = fmul fast <4 x float> %i.bcy, %i.bdi
  %i.bdk = fadd fast <4 x float> %i.bcx, %i.bdj
  %i.bdl = fadd fast <4 x float> %i.bdk, splat (float 1.000000e+00)
  %i.bdm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bcv)
  %i.bdn = shl <4 x i32> %i.bdm, splat (i32 23)
  %i.bdo = add <4 x i32> %i.bdn, splat (i32 1065353216)
  %i.bdp = bitcast <4 x i32> %i.bdo to <4 x float>
  %i.bdq = fmul fast <4 x float> %i.bdl, %i.bdp
  %i.bdr = fadd fast <4 x float> %i.bdq, splat (float 1.000000e+00)
  %i.bds = fdiv fast <4 x float> splat (float 2.000000e+00), %i.bdr
  %i.bdt = fadd fast <4 x float> %i.bds, splat (float -1.000000e+00)
  %i.bdu = fmul fast <4 x float> %i.bdt, %i.axw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ao:                                            ; preds = %.lr.ph1049
  %i.bdv = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bdw = load float, ptr %i.bdv, align 4, !tbaa !48
  %i.bdx = insertelement <4 x float> poison, float %i.bdw, i64 0
  %i.bdy = shufflevector <4 x float> %i.bdx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdv, i64 4
  %i.bea = load float, ptr %i.bdz, align 4, !tbaa !48
  %i.beb = insertelement <4 x float> poison, float %i.bea, i64 0
  %i.bec = shufflevector <4 x float> %i.beb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bed = fmul fast <4 x float> %i.bdy, %i.axw
  %i.bee = fadd fast <4 x float> %i.bed, %i.bec
  %i.bef = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bee, <4 x float> zeroinitializer)
  %i.beg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bef, <4 x float> splat (float 1.000000e+00))
  %i.beh = fmul fast <4 x float> %i.beg, %i.axw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1049, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i165 = phi nsz <4 x float> [ %i.beh, %bb.ao ], [ %i.axx, %bb.aj ], [ %i.ayf, %bb.ak ], [ %i.ayp, %bb.al ], [ %i.azw, %bb.am ], [ %i.bdu, %bb.an ], [ %i.axw, %.lr.ph1049 ]
  %i.bei = fmul fast <4 x float> %.0.i165, %i.l   ; 2 uses
  %i.bej = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bei)
  %i.bek = fadd fast <4 x float> %i.bej, %i.bei
  %i.bel = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bek) ; 2 uses
  %i.bem = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bel, <4 x i32> %i.bel)
  %i.ben = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bem, <8 x i16> splat (i16 -127))
  %i.beo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ben, <8 x i16> splat (i16 127))
  %i.bep = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.beo, <8 x i16> poison)
  %i.beq = shufflevector <16 x i8> %i.bep, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.beq, ptr %.61431047, align 1, !tbaa !50
  %i.ber = getelementptr inbounds nuw i8, ptr %.61048, i64 16 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %.61431047, i64 4 ; 2 uses
  %i.bet = add nuw nsw i32 %.21471046, 4          ; 3 uses
  %i.beu = or disjoint i32 %i.bet, 3
  %i.bev = icmp slt i32 %i.beu, %i.a
  br i1 %i.bev, label %.lr.ph1049, label %.preheader1030, !llvm.loop !59

.lr.ph1056:                                       ; preds = %.preheader1030, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.71055 = phi ptr [ %i.bgk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6.lcssa, %.preheader1030 ] ; 2 uses
  %.71441054 = phi ptr [ %i.bgl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6143.lcssa, %.preheader1030 ] ; 2 uses
  %.31481053 = phi i32 [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.2147.lcssa, %.preheader1030 ]
  %i.bew = load i32, ptr %.71055, align 4, !tbaa !23
  %i.bex = sitofp fast i32 %i.bew to float
  %i.bey = fmul fast float %i.b, %i.bex
  %i.bez = fadd fast float %i.bey, %i.acw         ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ap
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
  ]

bb.ap:                                            ; preds = %.lr.ph1056
  %i.bfa = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.bez, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aq:                                            ; preds = %.lr.ph1056
  %i.bfb = load ptr, ptr %3, align 8, !tbaa !18
  %i.bfc = load float, ptr %i.bfb, align 4, !tbaa !48
  %i.bfd = fcmp fast ogt float %i.bez, 0.000000e+00
  %i.bfe = select fast i1 %i.bfd, float 1.000000e+00, float %i.bfc
  %i.bff = fmul fast float %i.bfe, %i.bez
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ar:                                            ; preds = %.lr.ph1056
  %i.bfg = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !48
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfg, i64 4
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !48 ; 2 uses
  %.0961 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bez, float %i.bfh) ; 2 uses
  %i.bfk = fcmp fast ogt float %.0961, %i.bfj
  br i1 %i.bfk, label %bb.as, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.as:                                            ; preds = %bb.ar
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.at:                                            ; preds = %.lr.ph1056
  %.sroa.speculated51 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.bez, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated51, float f0xC2B0C0A5)
  %i.bfl = fneg fast float %.sroa.speculated
  %i.bfm = tail call fast float @llvm.exp.f32(float %i.bfl)
  %i.bfn = fadd fast float %i.bfm, 1.000000e+00
  %i.bfo = fdiv fast float 1.000000e+00, %i.bfn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.au:                                            ; preds = %.lr.ph1056
  %i.bfp = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bez)
  %i.bfq = fadd fast float %i.bfp, 1.000000e+00
  %i.bfr = tail call fast float @llvm.log.f32(float %i.bfq)
  %i.bfs = tail call fast float @llvm.tanh.f32(float %i.bfr)
  %i.bft = fmul fast float %i.bfs, %i.bez
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.av:                                            ; preds = %.lr.ph1056
  %i.bfu = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !48 ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfu, i64 4
  %i.bfx = load float, ptr %i.bfw, align 4, !tbaa !48 ; 2 uses
  %i.bfy = fneg fast float %i.bfx
  %i.bfz = fdiv fast float %i.bfy, %i.bfv         ; 2 uses
  %i.bga = fcmp fast olt float %i.bez, %i.bfz
  br i1 %i.bga, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bgb = fdiv fast float 1.000000e+00, %i.bfv
  %i.bgc = fadd fast float %i.bfz, %i.bgb
  %i.bgd = fcmp fast ogt float %i.bez, %i.bgc
  br i1 %i.bgd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bge = fmul fast float %i.bfv, %i.bez
  %i.bgf = fadd fast float %i.bge, %i.bfx
  %i.bgg = fmul fast float %i.bgf, %i.bez
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.av, %.lr.ph1056, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax
  %.1962 = phi nsz float [ %i.bez, %.lr.ph1056 ], [ %i.bfa, %bb.ap ], [ %i.bff, %bb.aq ], [ %i.bfj, %bb.as ], [ %.0961, %bb.ar ], [ %i.bfo, %bb.at ], [ %i.bft, %bb.au ], [ %i.bgg, %bb.ax ], [ %i.bez, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.bgh = fmul fast float %.1962, %i.j
  %i.bgi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bgh)
  %i.bgj = fptosi float %i.bgi to i32
  %spec.select.i999 = tail call i32 @llvm.smax.i32(i32 %i.bgj, i32 -127)
  %.0.i1691000 = tail call i32 @llvm.smin.i32(i32 %spec.select.i999, i32 127)
  %.0.i169 = trunc nsw i32 %.0.i1691000 to i8
  store i8 %.0.i169, ptr %.71441054, align 1, !tbaa !50
  %i.bgk = getelementptr inbounds nuw i8, ptr %.71055, i64 4
  %i.bgl = getelementptr inbounds nuw i8, ptr %.71441054, i64 1
  %i.bgm = add nuw nsw i32 %.31481053, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bgm, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph1056, !llvm.loop !60

.loopexit:                                        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, %.preheader1030, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !61 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Requantize_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
end_hunk_0
