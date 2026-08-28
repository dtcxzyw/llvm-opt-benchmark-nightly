Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0131 = phi nsz <4 x float> [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %.0130 = phi nsz <4 x float> [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader746, label %bb.u

.preheader746:                                    ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 7
  br i1 %i.r, label %.lr.ph769.preheader, label %.preheader745

.lr.ph769.preheader:                              ; preds = %.preheader746
  %i.s = load ptr, ptr %3, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load ptr, ptr %3, align 8
  br label %.lr.ph769

.preheader745.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %i.x = and i32 %i.a, 2147483640
  br label %.preheader745

.preheader745:                                    ; preds = %.preheader745.loopexit, %.preheader746
  %.0127.lcssa = phi i32 [ 0, %.preheader746 ], [ %i.x, %.preheader745.loopexit ] ; 3 uses
  %.0118.lcssa = phi ptr [ %1, %.preheader746 ], [ %i.mt, %.preheader745.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader746 ], [ %i.ms, %.preheader745.loopexit ] ; 2 uses
  %i.y = or disjoint i32 %.0127.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.a
  br i1 %i.z, label %.lr.ph776, label %.preheader

.lr.ph769:                                        ; preds = %.lr.ph769.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %.0768 = phi ptr [ %i.ms, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ %0, %.lr.ph769.preheader ] ; 3 uses
  %.0118767 = phi ptr [ %i.mt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ %1, %.lr.ph769.preheader ] ; 2 uses
  %.0127766 = phi i32 [ %i.mu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ 0, %.lr.ph769.preheader ]
  %i.aa = load <4 x i32>, ptr %.0768, align 1, !tbaa !50
  %i.ab = sitofp fast <4 x i32> %i.aa to <4 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %.0768, i64 16
  %i.ad = load <4 x i32>, ptr %i.ac, align 1, !tbaa !50
  %i.ae = sitofp fast <4 x i32> %i.ad to <4 x float>
  %i.af = fmul fast <4 x float> %.0682, %i.ab     ; 10 uses
  %i.ag = fmul fast <4 x float> %.0681, %i.ae     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread: ; preds = %.lr.ph769
  %i.ah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> zeroinitializer)
  %i.ai = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690: ; preds = %.lr.ph769
  %i.aj = load float, ptr %i.w, align 4, !tbaa !48
  %i.ak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.al = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.am = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul fast <4 x float> %i.an, %i.al
  %i.ap = fadd fast <4 x float> %i.ao, %i.ak
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ag)
  %i.ar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ag)
  %i.as = fmul fast <4 x float> %i.an, %i.ar
  %i.at = fadd fast <4 x float> %i.as, %i.aq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693: ; preds = %.lr.ph769
  %i.au = load float, ptr %i.u, align 4, !tbaa !48
  %i.av = insertelement <4 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ax = load float, ptr %i.v, align 4, !tbaa !48
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.az)
  %i.bc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> nofpclass(nan inf) %i.az)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696: ; preds = %.lr.ph769
  %i.be = fneg fast <4 x float> %i.af
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.be, <4 x float> splat (float f0x42B0C0A5))
  %i.bg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bh = fmul fast <4 x float> %i.bg, splat (float f0x3FB8AA3B)
  %i.bi = fadd fast <4 x float> %i.bh, splat (float 5.000000e-01) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bi)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fcmp fast olt <4 x float> %i.bi, %i.bk
  %i.bm = select <4 x i1> %i.bl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bn = fsub fast <4 x float> %i.bk, %i.bm      ; 2 uses
  %i.bo = fmul fast <4 x float> %i.bn, splat (float f0x3F317218)
  %i.bp = fsub fast <4 x float> %i.bg, %i.bo      ; 8 uses
  %i.bq = fmul fast <4 x float> %i.bp, %i.bp
  %i.br = fmul fast <4 x float> %i.bp, splat (float f0x39506967)
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0x3AB743CE)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bp
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3C088908)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bp
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3D2AA9C1)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bp
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3E2AAAAA)
  %i.bz = fmul fast <4 x float> %i.by, %i.bp
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fmul fast <4 x float> %i.bq, %i.ca
  %i.cc = fadd fast <4 x float> %i.bp, %i.cb
  %i.cd = fadd fast <4 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bn)
  %i.cf = shl <4 x i32> %i.ce, splat (i32 23)
  %i.cg = add <4 x i32> %i.cf, splat (i32 1065353216)
  %i.ch = bitcast <4 x i32> %i.cg to <4 x float>
  %i.ci = fmul fast <4 x float> %i.cd, %i.ch
  %i.cj = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.ck = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cj
  %i.cl = fneg fast <4 x float> %i.ag
  %i.cm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cl, <4 x float> splat (float f0x42B0C0A5))
  %i.cn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.co = fmul fast <4 x float> %i.cn, splat (float f0x3FB8AA3B)
  %i.cp = fadd fast <4 x float> %i.co, splat (float 5.000000e-01) ; 2 uses
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cp)
  %i.cr = sitofp fast <4 x i32> %i.cq to <4 x float> ; 2 uses
  %i.cs = fcmp fast olt <4 x float> %i.cp, %i.cr
  %i.ct = select <4 x i1> %i.cs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cu = fsub fast <4 x float> %i.cr, %i.ct      ; 2 uses
  %i.cv = fmul fast <4 x float> %i.cu, splat (float f0x3F317218)
  %i.cw = fsub fast <4 x float> %i.cn, %i.cv      ; 8 uses
  %i.cx = fmul fast <4 x float> %i.cw, %i.cw
  %i.cy = fmul fast <4 x float> %i.cw, splat (float f0x39506967)
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0x3AB743CE)
  %i.da = fmul fast <4 x float> %i.cz, %i.cw
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3C088908)
  %i.dc = fmul fast <4 x float> %i.db, %i.cw
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0x3D2AA9C1)
  %i.de = fmul fast <4 x float> %i.dd, %i.cw
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3E2AAAAA)
  %i.dg = fmul fast <4 x float> %i.df, %i.cw
  %i.dh = fadd fast <4 x float> %i.dg, splat (float 5.000000e-01)
  %i.di = fmul fast <4 x float> %i.cx, %i.dh
  %i.dj = fadd fast <4 x float> %i.cw, %i.di
  %i.dk = fadd fast <4 x float> %i.dj, splat (float 1.000000e+00)
  %i.dl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.dm = shl <4 x i32> %i.dl, splat (i32 23)
  %i.dn = add <4 x i32> %i.dm, splat (i32 1065353216)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>
  %i.dp = fmul fast <4 x float> %i.dk, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699: ; preds = %.lr.ph769
  %i.ds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> splat (float f0x42B0C0A5))
  %i.dt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.du = fmul fast <4 x float> %i.dt, splat (float f0x3FB8AA3B)
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01) ; 2 uses
  %i.dw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.dx = sitofp fast <4 x i32> %i.dw to <4 x float> ; 2 uses
  %i.dy = fcmp fast olt <4 x float> %i.dv, %i.dx
  %i.dz = select <4 x i1> %i.dy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ea = fsub fast <4 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fmul fast <4 x float> %i.ea, splat (float f0x3F317218)
  %i.ec = fsub fast <4 x float> %i.dt, %i.eb      ; 8 uses
  %i.ed = fmul fast <4 x float> %i.ec, %i.ec
  %i.ee = fmul fast <4 x float> %i.ec, splat (float f0x39506967)
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3AB743CE)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ec
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3C088908)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ec
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3D2AA9C1)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ec
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3E2AAAAA)
  %i.em = fmul fast <4 x float> %i.el, %i.ec
  %i.en = fadd fast <4 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <4 x float> %i.ed, %i.en
  %i.ep = fadd fast <4 x float> %i.ec, %i.eo
  %i.eq = fadd fast <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ea)
  %i.es = shl <4 x i32> %i.er, splat (i32 23)
  %i.et = add <4 x i32> %i.es, splat (i32 1065353216)
  %i.eu = bitcast <4 x i32> %i.et to <4 x float>
  %i.ev = fmul fast <4 x float> %i.eq, %i.eu
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 1.000000e+00) ; 2 uses
  %i.ex = fcmp fast ole <4 x float> %i.ew, zeroinitializer
  %i.ey = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x00800000))
  %i.ez = bitcast <4 x float> %i.ey to <4 x i32>  ; 2 uses
  %i.fa = lshr <4 x i32> %i.ez, splat (i32 23)
  %i.fb = and <4 x i32> %i.ez, splat (i32 -2139095041)
  %i.fc = or disjoint <4 x i32> %i.fb, splat (i32 1056964608)
  %i.fd = bitcast <4 x i32> %i.fc to <4 x float>  ; 3 uses
  %i.fe = add nsw <4 x i32> %i.fa, splat (i32 -127)
  %i.ff = sitofp fast <4 x i32> %i.fe to <4 x float> ; 2 uses
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = fcmp fast olt <4 x float> %i.fd, splat (float f0x3F3504F3) ; 2 uses
  %i.fi = select <4 x i1> %i.fh, <4 x float> %i.fd, <4 x float> zeroinitializer
  %i.fj = fadd fast <4 x float> %i.fd, splat (float -1.000000e+00)
  %i.fk = select fast <4 x i1> %i.fh, <4 x float> %i.ff, <4 x float> %i.fg
  %i.fl = fadd fast <4 x float> %i.fj, %i.fi      ; 12 uses
  %i.fm = fmul fast <4 x float> %i.fl, %i.fl      ; 2 uses
  %i.fn = fmul fast <4 x float> %i.fl, splat (float f0x3D9021BB)
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0xBDEBD1B8)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fl
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3DEF251A)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fl
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0xBDFE5D4F)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fl
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3E11E9BF)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fl
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0xBE2AAE50)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fl
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3E4CCEAC)
  %i.fz = fmul fast <4 x float> %i.fy, %i.fl
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0xBE7FFFFC)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fl
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3EAAAAAA)
  %i.gd = fmul fast <4 x float> %i.fm, %i.fl
  %i.ge = fmul fast <4 x float> %i.gd, %i.gc
  %.neg740 = fmul fast <4 x float> %i.fm, splat (float -5.000000e-01)
  %reass.mul741.a = fmul fast <4 x float> %i.fk, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.fl, %.neg740
  %i.gf = fadd fast <4 x float> %i.ge, %6
  %i.gg = fadd fast <4 x float> %i.gf, %reass.mul741.a
  %.neg730 = fmul fast <4 x float> %i.gg, splat (float -2.000000e+00)
  %i.gh = select fast <4 x i1> %i.ex, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg730
  %i.gi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x42B0C0A5))
  %i.gj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gj, splat (float f0x3FB8AA3B)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01) ; 2 uses
  %i.gm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gl)
  %i.gn = sitofp fast <4 x i32> %i.gm to <4 x float> ; 2 uses
  %i.go = fcmp fast olt <4 x float> %i.gl, %i.gn
  %i.gp = select <4 x i1> %i.go, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gq = fsub fast <4 x float> %i.gn, %i.gp      ; 2 uses
  %i.gr = fmul fast <4 x float> %i.gq, splat (float f0x3F317218)
  %i.gs = fsub fast <4 x float> %i.gj, %i.gr      ; 8 uses
  %i.gt = fmul fast <4 x float> %i.gs, %i.gs
  %i.gu = fmul fast <4 x float> %i.gs, splat (float f0x39506967)
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3AB743CE)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gs
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3C088908)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gs
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3D2AA9C1)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gs
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3E2AAAAA)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gs
  %i.hd = fadd fast <4 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = fmul fast <4 x float> %i.gt, %i.hd
  %i.hf = fadd fast <4 x float> %i.gs, %i.he
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 1.000000e+00)
  %i.hh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <4 x i32> %i.hh, splat (i32 23)
  %i.hj = add <4 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <4 x i32> %i.hj to <4 x float>
  %i.hl = fmul fast <4 x float> %i.hg, %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hm
  %i.ho = fadd fast <4 x float> %i.hn, splat (float -1.000000e+00)
  %i.hp = fmul fast <4 x float> %i.ho, %i.af
  %i.hq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> splat (float f0x42B0C0A5))
  %i.hr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hs = fmul fast <4 x float> %i.hr, splat (float f0x3FB8AA3B)
  %i.ht = fadd fast <4 x float> %i.hs, splat (float 5.000000e-01) ; 2 uses
  %i.hu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.hv = sitofp fast <4 x i32> %i.hu to <4 x float> ; 2 uses
  %i.hw = fcmp fast olt <4 x float> %i.ht, %i.hv
  %i.hx = select <4 x i1> %i.hw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hy = fsub fast <4 x float> %i.hv, %i.hx      ; 2 uses
  %i.hz = fmul fast <4 x float> %i.hy, splat (float f0x3F317218)
  %i.ia = fsub fast <4 x float> %i.hr, %i.hz      ; 8 uses
  %i.ib = fmul fast <4 x float> %i.ia, %i.ia
  %i.ic = fmul fast <4 x float> %i.ia, splat (float f0x39506967)
  %i.id = fadd fast <4 x float> %i.ic, splat (float f0x3AB743CE)
  %i.ie = fmul fast <4 x float> %i.id, %i.ia
  %i.if = fadd fast <4 x float> %i.ie, splat (float f0x3C088908)
  %i.ig = fmul fast <4 x float> %i.if, %i.ia
  %i.ih = fadd fast <4 x float> %i.ig, splat (float f0x3D2AA9C1)
  %i.ii = fmul fast <4 x float> %i.ih, %i.ia
  %i.ij = fadd fast <4 x float> %i.ii, splat (float f0x3E2AAAAA)
  %i.ik = fmul fast <4 x float> %i.ij, %i.ia
  %i.il = fadd fast <4 x float> %i.ik, splat (float 5.000000e-01)
  %i.im = fmul fast <4 x float> %i.ib, %i.il
  %i.in = fadd fast <4 x float> %i.ia, %i.im
  %i.io = fadd fast <4 x float> %i.in, splat (float 1.000000e+00)
  %i.ip = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hy)
  %i.iq = shl <4 x i32> %i.ip, splat (i32 23)
  %i.ir = add <4 x i32> %i.iq, splat (i32 1065353216)
  %i.is = bitcast <4 x i32> %i.ir to <4 x float>
  %i.it = fmul fast <4 x float> %i.io, %i.is
  %i.iu = fadd fast <4 x float> %i.it, splat (float 1.000000e+00) ; 2 uses
  %i.iv = fcmp fast ole <4 x float> %i.iu, zeroinitializer
  %i.iw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x00800000))
  %i.ix = bitcast <4 x float> %i.iw to <4 x i32>  ; 2 uses
  %i.iy = lshr <4 x i32> %i.ix, splat (i32 23)
  %i.iz = and <4 x i32> %i.ix, splat (i32 -2139095041)
  %i.ja = or disjoint <4 x i32> %i.iz, splat (i32 1056964608)
  %i.jb = bitcast <4 x i32> %i.ja to <4 x float>  ; 3 uses
  %i.jc = add nsw <4 x i32> %i.iy, splat (i32 -127)
  %i.jd = sitofp fast <4 x i32> %i.jc to <4 x float> ; 2 uses
  %i.je = fadd fast <4 x float> %i.jd, splat (float 1.000000e+00)
  %i.jf = fcmp fast olt <4 x float> %i.jb, splat (float f0x3F3504F3) ; 2 uses
  %i.jg = select <4 x i1> %i.jf, <4 x float> %i.jb, <4 x float> zeroinitializer
  %i.jh = fadd fast <4 x float> %i.jb, splat (float -1.000000e+00)
  %i.ji = select fast <4 x i1> %i.jf, <4 x float> %i.jd, <4 x float> %i.je
  %i.jj = fadd fast <4 x float> %i.jh, %i.jg      ; 12 uses
  %i.jk = fmul fast <4 x float> %i.jj, %i.jj      ; 2 uses
  %i.jl = fmul fast <4 x float> %i.jj, splat (float f0x3D9021BB)
  %i.jm = fadd fast <4 x float> %i.jl, splat (float f0xBDEBD1B8)
  %i.jn = fmul fast <4 x float> %i.jm, %i.jj
  %i.jo = fadd fast <4 x float> %i.jn, splat (float f0x3DEF251A)
  %i.jp = fmul fast <4 x float> %i.jo, %i.jj
  %i.jq = fadd fast <4 x float> %i.jp, splat (float f0xBDFE5D4F)
  %i.jr = fmul fast <4 x float> %i.jq, %i.jj
  %i.js = fadd fast <4 x float> %i.jr, splat (float f0x3E11E9BF)
  %i.jt = fmul fast <4 x float> %i.js, %i.jj
  %i.ju = fadd fast <4 x float> %i.jt, splat (float f0xBE2AAE50)
  %i.jv = fmul fast <4 x float> %i.ju, %i.jj
  %i.jw = fadd fast <4 x float> %i.jv, splat (float f0x3E4CCEAC)
  %i.jx = fmul fast <4 x float> %i.jw, %i.jj
  %i.jy = fadd fast <4 x float> %i.jx, splat (float f0xBE7FFFFC)
  %i.jz = fmul fast <4 x float> %i.jy, %i.jj
  %i.ka = fadd fast <4 x float> %i.jz, splat (float f0x3EAAAAAA)
  %i.kb = fmul fast <4 x float> %i.jk, %i.jj
  %i.kc = fmul fast <4 x float> %i.kb, %i.ka
  %.neg742 = fmul fast <4 x float> %i.jk, splat (float -5.000000e-01)
  %reass.mul744 = fmul fast <4 x float> %i.ji, splat (float f0x3F317218)
  %7 = fadd fast <4 x float> %i.jj, %.neg742
  %i.kd = fadd fast <4 x float> %i.kc, %7
  %i.ke = fadd fast <4 x float> %i.kd, %reass.mul744
  %.neg731 = fmul fast <4 x float> %i.ke, splat (float -2.000000e+00)
  %i.kf = select fast <4 x i1> %i.iv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg731
  %i.kg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kf, <4 x float> splat (float f0x42B0C0A5))
  %i.kh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ki = fmul fast <4 x float> %i.kh, splat (float f0x3FB8AA3B)
  %i.kj = fadd fast <4 x float> %i.ki, splat (float 5.000000e-01) ; 2 uses
  %i.kk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kj)
  %i.kl = sitofp fast <4 x i32> %i.kk to <4 x float> ; 2 uses
  %i.km = fcmp fast olt <4 x float> %i.kj, %i.kl
  %i.kn = select <4 x i1> %i.km, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ko = fsub fast <4 x float> %i.kl, %i.kn      ; 2 uses
  %i.kp = fmul fast <4 x float> %i.ko, splat (float f0x3F317218)
  %i.kq = fsub fast <4 x float> %i.kh, %i.kp      ; 8 uses
  %i.kr = fmul fast <4 x float> %i.kq, %i.kq
  %i.ks = fmul fast <4 x float> %i.kq, splat (float f0x39506967)
  %i.kt = fadd fast <4 x float> %i.ks, splat (float f0x3AB743CE)
  %i.ku = fmul fast <4 x float> %i.kt, %i.kq
  %i.kv = fadd fast <4 x float> %i.ku, splat (float f0x3C088908)
  %i.kw = fmul fast <4 x float> %i.kv, %i.kq
  %i.kx = fadd fast <4 x float> %i.kw, splat (float f0x3D2AA9C1)
  %i.ky = fmul fast <4 x float> %i.kx, %i.kq
  %i.kz = fadd fast <4 x float> %i.ky, splat (float f0x3E2AAAAA)
  %i.la = fmul fast <4 x float> %i.kz, %i.kq
  %i.lb = fadd fast <4 x float> %i.la, splat (float 5.000000e-01)
  %i.lc = fmul fast <4 x float> %i.kr, %i.lb
  %i.ld = fadd fast <4 x float> %i.kq, %i.lc
  %i.le = fadd fast <4 x float> %i.ld, splat (float 1.000000e+00)
  %i.lf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ko)
  %i.lg = shl <4 x i32> %i.lf, splat (i32 23)
  %i.lh = add <4 x i32> %i.lg, splat (i32 1065353216)
  %i.li = bitcast <4 x i32> %i.lh to <4 x float>
  %i.lj = fmul fast <4 x float> %i.le, %i.li
  %i.lk = fadd fast <4 x float> %i.lj, splat (float 1.000000e+00)
  %i.ll = fdiv fast <4 x float> splat (float 2.000000e+00), %i.lk
  %i.lm = fadd fast <4 x float> %i.ll, splat (float -1.000000e+00)
  %i.ln = fmul fast <4 x float> %i.lm, %i.ag
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702: ; preds = %.lr.ph769
  %i.lo = load float, ptr %i.s, align 4, !tbaa !48
  %i.lp = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lr = load float, ptr %i.t, align 4, !tbaa !48
  %i.ls = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lu = fmul fast <4 x float> %i.lq, %i.af
  %i.lv = fadd fast <4 x float> %i.lu, %i.lt
  %i.lw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lv, <4 x float> zeroinitializer)
  %i.lx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lw, <4 x float> splat (float 1.000000e+00))
  %i.ly = fmul fast <4 x float> %i.lx, %i.af
  %i.lz = fmul fast <4 x float> %i.lq, %i.ag
  %i.ma = fadd fast <4 x float> %i.lz, %i.lt
  %i.mb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ma, <4 x float> zeroinitializer)
  %i.mc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mb, <4 x float> splat (float 1.000000e+00))
  %i.md = fmul fast <4 x float> %i.mc, %i.ag
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140:   ; preds = %.lr.ph769, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  %.0.i141689 = phi <4 x float> [ %i.ly, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ah, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.ap, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.bb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.ck, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.hp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.af, %.lr.ph769 ]
  %.0.i139 = phi nsz <4 x float> [ %i.md, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ai, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.at, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.bd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.dr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.ln, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.ag, %.lr.ph769 ]
  %i.me = fmul fast <4 x float> %.0.i141689, %.0131 ; 2 uses
  %i.mf = fmul fast <4 x float> %.0.i139, %.0130  ; 2 uses
  %i.mg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.me)
  %i.mh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mf)
  %i.mi = fadd fast <4 x float> %i.mg, %i.me
  %i.mj = fadd fast <4 x float> %i.mh, %i.mf
  %i.mk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mi)
  %i.ml = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mj)
  %i.mm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mk, <4 x i32> %i.ml)
  %i.mn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mm, <8 x i16> splat (i16 -127))
  %i.mo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mn, <8 x i16> splat (i16 127))
  %i.mp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mo, <8 x i16> poison)
  %i.mq = bitcast <16 x i8> %i.mp to <2 x i64>
  %i.mr = extractelement <2 x i64> %i.mq, i64 0
  store i64 %i.mr, ptr %.0118767, align 8, !tbaa !51
  %i.ms = getelementptr inbounds nuw i8, ptr %.0768, i64 32 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0118767, i64 8 ; 2 uses
  %i.mu = add nuw nsw i32 %.0127766, 8            ; 2 uses
  %i.mv = or disjoint i32 %i.mu, 7
  %i.mw = icmp slt i32 %i.mv, %i.a
  br i1 %i.mw, label %.lr.ph769, label %.preheader745.loopexit, !llvm.loop !52

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138, %.preheader745
  %.1128.lcssa = phi i32 [ %.0127.lcssa, %.preheader745 ], [ %i.tx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ] ; 2 uses
  %.1119.lcssa = phi ptr [ %.0118.lcssa, %.preheader745 ], [ %i.tw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader745 ], [ %i.tv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %i.mx = icmp slt i32 %.1128.lcssa, %i.a
  br i1 %i.mx, label %.lr.ph783, label %.loopexit

.lr.ph776:                                        ; preds = %.preheader745, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138
  %.1775 = phi ptr [ %i.tv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0.lcssa, %.preheader745 ] ; 2 uses
  %.1119774 = phi ptr [ %i.tw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0118.lcssa, %.preheader745 ] ; 2 uses
  %.1128773 = phi i32 [ %i.tx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0127.lcssa, %.preheader745 ]
  %i.my = load <4 x i32>, ptr %.1775, align 1, !tbaa !50
  %i.mz = sitofp fast <4 x i32> %i.my to <4 x float>
  %i.na = fmul fast <4 x float> %.0682, %i.mz     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph776
  %i.nb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.na, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.g:                                             ; preds = %.lr.ph776
  %i.nc = load ptr, ptr %3, align 8, !tbaa !18
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !48
  %i.ne = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.na)
  %i.nf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.na)
  %i.ng = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = fmul fast <4 x float> %i.nh, %i.nf
  %i.nj = fadd fast <4 x float> %i.ni, %i.ne
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.h:                                             ; preds = %.lr.ph776
  %i.nk = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !48
  %i.nm = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !48
  %i.nq = insertelement <4 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.na, <4 x float> nofpclass(nan inf) %i.nn)
  %i.nt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> nofpclass(nan inf) %i.nr)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.i:                                             ; preds = %.lr.ph776
  %i.nu = fneg fast <4 x float> %i.na
  %i.nv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nu, <4 x float> splat (float f0x42B0C0A5))
  %i.nw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nx = fmul fast <4 x float> %i.nw, splat (float f0x3FB8AA3B)
  %i.ny = fadd fast <4 x float> %i.nx, splat (float 5.000000e-01) ; 2 uses
  %i.nz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ny)
  %i.oa = sitofp fast <4 x i32> %i.nz to <4 x float> ; 2 uses
  %i.ob = fcmp fast olt <4 x float> %i.ny, %i.oa
  %i.oc = select <4 x i1> %i.ob, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.od = fsub fast <4 x float> %i.oa, %i.oc      ; 2 uses
  %i.oe = fmul fast <4 x float> %i.od, splat (float f0x3F317218)
  %i.of = fsub fast <4 x float> %i.nw, %i.oe      ; 8 uses
  %i.og = fmul fast <4 x float> %i.of, %i.of
  %i.oh = fmul fast <4 x float> %i.of, splat (float f0x39506967)
  %i.oi = fadd fast <4 x float> %i.oh, splat (float f0x3AB743CE)
  %i.oj = fmul fast <4 x float> %i.oi, %i.of
  %i.ok = fadd fast <4 x float> %i.oj, splat (float f0x3C088908)
  %i.ol = fmul fast <4 x float> %i.ok, %i.of
  %i.om = fadd fast <4 x float> %i.ol, splat (float f0x3D2AA9C1)
  %i.on = fmul fast <4 x float> %i.om, %i.of
  %i.oo = fadd fast <4 x float> %i.on, splat (float f0x3E2AAAAA)
  %i.op = fmul fast <4 x float> %i.oo, %i.of
  %i.oq = fadd fast <4 x float> %i.op, splat (float 5.000000e-01)
  %i.or = fmul fast <4 x float> %i.og, %i.oq
  %i.os = fadd fast <4 x float> %i.of, %i.or
  %i.ot = fadd fast <4 x float> %i.os, splat (float 1.000000e+00)
  %i.ou = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.od)
  %i.ov = shl <4 x i32> %i.ou, splat (i32 23)
  %i.ow = add <4 x i32> %i.ov, splat (i32 1065353216)
  %i.ox = bitcast <4 x i32> %i.ow to <4 x float>
  %i.oy = fmul fast <4 x float> %i.ot, %i.ox
  %i.oz = fadd fast <4 x float> %i.oy, splat (float 1.000000e+00)
  %i.pa = fdiv fast <4 x float> splat (float 1.000000e+00), %i.oz
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.j:                                             ; preds = %.lr.ph776
  %i.pb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.na, <4 x float> splat (float f0x42B0C0A5))
  %i.pc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pd = fmul fast <4 x float> %i.pc, splat (float f0x3FB8AA3B)
  %i.pe = fadd fast <4 x float> %i.pd, splat (float 5.000000e-01) ; 2 uses
  %i.pf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pe)
  %i.pg = sitofp fast <4 x i32> %i.pf to <4 x float> ; 2 uses
  %i.ph = fcmp fast olt <4 x float> %i.pe, %i.pg
  %i.pi = select <4 x i1> %i.ph, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pj = fsub fast <4 x float> %i.pg, %i.pi      ; 2 uses
  %i.pk = fmul fast <4 x float> %i.pj, splat (float f0x3F317218)
  %i.pl = fsub fast <4 x float> %i.pc, %i.pk      ; 8 uses
  %i.pm = fmul fast <4 x float> %i.pl, %i.pl
  %i.pn = fmul fast <4 x float> %i.pl, splat (float f0x39506967)
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3AB743CE)
  %i.pp = fmul fast <4 x float> %i.po, %i.pl
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3C088908)
  %i.pr = fmul fast <4 x float> %i.pq, %i.pl
  %i.ps = fadd fast <4 x float> %i.pr, splat (float f0x3D2AA9C1)
  %i.pt = fmul fast <4 x float> %i.ps, %i.pl
  %i.pu = fadd fast <4 x float> %i.pt, splat (float f0x3E2AAAAA)
  %i.pv = fmul fast <4 x float> %i.pu, %i.pl
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 5.000000e-01)
  %i.px = fmul fast <4 x float> %i.pm, %i.pw
  %i.py = fadd fast <4 x float> %i.pl, %i.px
  %i.pz = fadd fast <4 x float> %i.py, splat (float 1.000000e+00)
  %i.qa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pj)
  %i.qb = shl <4 x i32> %i.qa, splat (i32 23)
  %i.qc = add <4 x i32> %i.qb, splat (i32 1065353216)
  %i.qd = bitcast <4 x i32> %i.qc to <4 x float>
  %i.qe = fmul fast <4 x float> %i.pz, %i.qd
  %i.qf = fadd fast <4 x float> %i.qe, splat (float 1.000000e+00) ; 2 uses
  %i.qg = fcmp fast ole <4 x float> %i.qf, zeroinitializer
  %i.qh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qf, <4 x float> splat (float f0x00800000))
  %i.qi = bitcast <4 x float> %i.qh to <4 x i32>  ; 2 uses
  %i.qj = lshr <4 x i32> %i.qi, splat (i32 23)
  %i.qk = and <4 x i32> %i.qi, splat (i32 -2139095041)
  %i.ql = or disjoint <4 x i32> %i.qk, splat (i32 1056964608)
  %i.qm = bitcast <4 x i32> %i.ql to <4 x float>  ; 3 uses
  %i.qn = add nsw <4 x i32> %i.qj, splat (i32 -127)
  %i.qo = sitofp fast <4 x i32> %i.qn to <4 x float> ; 2 uses
  %i.qp = fadd fast <4 x float> %i.qo, splat (float 1.000000e+00)
  %i.qq = fcmp fast olt <4 x float> %i.qm, splat (float f0x3F3504F3) ; 2 uses
  %i.qr = select <4 x i1> %i.qq, <4 x float> %i.qm, <4 x float> zeroinitializer
  %i.qs = fadd fast <4 x float> %i.qm, splat (float -1.000000e+00)
  %i.qt = select fast <4 x i1> %i.qq, <4 x float> %i.qo, <4 x float> %i.qp
  %i.qu = fadd fast <4 x float> %i.qs, %i.qr      ; 12 uses
  %i.qv = fmul fast <4 x float> %i.qu, %i.qu      ; 2 uses
  %i.qw = fmul fast <4 x float> %i.qu, splat (float f0x3D9021BB)
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0xBDEBD1B8)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qu
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3DEF251A)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qu
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0xBDFE5D4F)
  %i.rc = fmul fast <4 x float> %i.rb, %i.qu
  %i.rd = fadd fast <4 x float> %i.rc, splat (float f0x3E11E9BF)
  %i.re = fmul fast <4 x float> %i.rd, %i.qu
  %i.rf = fadd fast <4 x float> %i.re, splat (float f0xBE2AAE50)
  %i.rg = fmul fast <4 x float> %i.rf, %i.qu
  %i.rh = fadd fast <4 x float> %i.rg, splat (float f0x3E4CCEAC)
  %i.ri = fmul fast <4 x float> %i.rh, %i.qu
  %i.rj = fadd fast <4 x float> %i.ri, splat (float f0xBE7FFFFC)
  %i.rk = fmul fast <4 x float> %i.rj, %i.qu
  %i.rl = fadd fast <4 x float> %i.rk, splat (float f0x3EAAAAAA)
  %i.rm = fmul fast <4 x float> %i.qv, %i.qu
  %i.rn = fmul fast <4 x float> %i.rm, %i.rl
  %.neg738 = fmul fast <4 x float> %i.qv, splat (float -5.000000e-01)
  %reass.mul739.a = fmul fast <4 x float> %i.qt, splat (float f0x3F317218)
  %8 = fadd fast <4 x float> %i.qu, %.neg738
  %i.ro = fadd fast <4 x float> %i.rn, %8
  %i.rp = fadd fast <4 x float> %i.ro, %reass.mul739.a
  %.neg729 = fmul fast <4 x float> %i.rp, splat (float -2.000000e+00)
  %i.rq = select fast <4 x i1> %i.qg, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg729
  %i.rr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rq, <4 x float> splat (float f0x42B0C0A5))
  %i.rs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rt = fmul fast <4 x float> %i.rs, splat (float f0x3FB8AA3B)
  %i.ru = fadd fast <4 x float> %i.rt, splat (float 5.000000e-01) ; 2 uses
  %i.rv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru)
  %i.rw = sitofp fast <4 x i32> %i.rv to <4 x float> ; 2 uses
  %i.rx = fcmp fast olt <4 x float> %i.ru, %i.rw
  %i.ry = select <4 x i1> %i.rx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rz = fsub fast <4 x float> %i.rw, %i.ry      ; 2 uses
  %i.sa = fmul fast <4 x float> %i.rz, splat (float f0x3F317218)
  %i.sb = fsub fast <4 x float> %i.rs, %i.sa      ; 8 uses
  %i.sc = fmul fast <4 x float> %i.sb, %i.sb
  %i.sd = fmul fast <4 x float> %i.sb, splat (float f0x39506967)
  %i.se = fadd fast <4 x float> %i.sd, splat (float f0x3AB743CE)
  %i.sf = fmul fast <4 x float> %i.se, %i.sb
  %i.sg = fadd fast <4 x float> %i.sf, splat (float f0x3C088908)
  %i.sh = fmul fast <4 x float> %i.sg, %i.sb
  %i.si = fadd fast <4 x float> %i.sh, splat (float f0x3D2AA9C1)
  %i.sj = fmul fast <4 x float> %i.si, %i.sb
  %i.sk = fadd fast <4 x float> %i.sj, splat (float f0x3E2AAAAA)
  %i.sl = fmul fast <4 x float> %i.sk, %i.sb
  %i.sm = fadd fast <4 x float> %i.sl, splat (float 5.000000e-01)
  %i.sn = fmul fast <4 x float> %i.sc, %i.sm
  %i.so = fadd fast <4 x float> %i.sb, %i.sn
  %i.sp = fadd fast <4 x float> %i.so, splat (float 1.000000e+00)
  %i.sq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rz)
  %i.sr = shl <4 x i32> %i.sq, splat (i32 23)
  %i.ss = add <4 x i32> %i.sr, splat (i32 1065353216)
  %i.st = bitcast <4 x i32> %i.ss to <4 x float>
  %i.su = fmul fast <4 x float> %i.sp, %i.st
  %i.sv = fadd fast <4 x float> %i.su, splat (float 1.000000e+00)
  %i.sw = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sv
  %i.sx = fadd fast <4 x float> %i.sw, splat (float -1.000000e+00)
  %i.sy = fmul fast <4 x float> %i.sx, %i.na
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.k:                                             ; preds = %.lr.ph776
  %i.sz = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !48
  %i.tb = insertelement <4 x float> poison, float %i.ta, i64 0
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.te = load float, ptr %i.td, align 4, !tbaa !48
  %i.tf = insertelement <4 x float> poison, float %i.te, i64 0
  %i.tg = shufflevector <4 x float> %i.tf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.th = fmul fast <4 x float> %i.tc, %i.na
  %i.ti = fadd fast <4 x float> %i.th, %i.tg
  %i.tj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ti, <4 x float> zeroinitializer)
  %i.tk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.tj, <4 x float> splat (float 1.000000e+00))
  %i.tl = fmul fast <4 x float> %i.tk, %i.na
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138:   ; preds = %.lr.ph776, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i137 = phi nsz <4 x float> [ %i.tl, %bb.k ], [ %i.nb, %bb.f ], [ %i.nj, %bb.g ], [ %i.nt, %bb.h ], [ %i.pa, %bb.i ], [ %i.sy, %bb.j ], [ %i.na, %.lr.ph776 ]
  %i.tm = fmul fast <4 x float> %.0.i137, %.0131  ; 2 uses
  %i.tn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tm)
  %i.to = fadd fast <4 x float> %i.tn, %i.tm
  %i.tp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.to) ; 2 uses
  %i.tq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tp, <4 x i32> %i.tp)
  %i.tr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tq, <8 x i16> splat (i16 -127))
  %i.ts = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tr, <8 x i16> splat (i16 127))
  %i.tt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ts, <8 x i16> poison)
  %i.tu = shufflevector <16 x i8> %i.tt, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.tu, ptr %.1119774, align 1, !tbaa !50
  %i.tv = getelementptr inbounds nuw i8, ptr %.1775, i64 16 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.1119774, i64 4 ; 2 uses
  %i.tx = add nuw nsw i32 %.1128773, 4            ; 3 uses
  %i.ty = or disjoint i32 %i.tx, 3
  %i.tz = icmp slt i32 %i.ty, %i.a
  br i1 %i.tz, label %.lr.ph776, label %.preheader, !llvm.loop !54

.lr.ph783:                                        ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143
  %.2782 = phi ptr [ %i.vn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2120781 = phi ptr [ %i.vo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1119.lcssa, %.preheader ] ; 2 uses
  %.2129780 = phi i32 [ %i.vp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1128.lcssa, %.preheader ]
  %i.ua = load i32, ptr %.2782, align 4, !tbaa !23
  %i.ub = sitofp fast i32 %i.ua to float
  %i.uc = fmul fast float %i.b, %i.ub             ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
  ]

bb.l:                                             ; preds = %.lr.ph783
  %i.ud = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.uc, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.m:                                             ; preds = %.lr.ph783
  %i.ue = load ptr, ptr %3, align 8, !tbaa !18
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !48
  %i.ug = fcmp fast ogt float %i.uc, 0.000000e+00
  %i.uh = select fast i1 %i.ug, float 1.000000e+00, float %i.uf
  %i.ui = fmul fast float %i.uh, %i.uc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.n:                                             ; preds = %.lr.ph783
  %i.uj = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !48
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.um = load float, ptr %i.ul, align 4, !tbaa !48 ; 2 uses
  %.0683 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.uc, float %i.uk) ; 2 uses
  %i.un = fcmp fast ogt float %.0683, %i.um
  br i1 %i.un, label %bb.o, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.o:                                             ; preds = %bb.n
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.p:                                             ; preds = %.lr.ph783
  %.sroa.speculated57 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.uc, float f0x42B0C0A5)
  %.sroa.speculated53 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated57, float f0xC2B0C0A5)
  %i.uo = fneg fast float %.sroa.speculated53
  %i.up = tail call fast float @llvm.exp.f32(float %i.uo)
  %i.uq = fadd fast float %i.up, 1.000000e+00
  %i.ur = fdiv fast float 1.000000e+00, %i.uq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.q:                                             ; preds = %.lr.ph783
  %i.us = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.uc)
  %i.ut = fadd fast float %i.us, 1.000000e+00
  %i.uu = tail call fast float @llvm.log.f32(float %i.ut)
  %i.uv = tail call fast float @llvm.tanh.f32(float %i.uu)
  %i.uw = fmul fast float %i.uv, %i.uc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.r:                                             ; preds = %.lr.ph783
  %i.ux = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !48 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !48 ; 2 uses
  %i.vb = fneg fast float %i.va
  %i.vc = fdiv fast float %i.vb, %i.uy            ; 2 uses
  %i.vd = fcmp fast olt float %i.uc, %i.vc
  br i1 %i.vd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ve = fdiv fast float 1.000000e+00, %i.uy
  %i.vf = fadd fast float %i.vc, %i.ve
  %i.vg = fcmp fast ogt float %i.uc, %i.vf
  br i1 %i.vg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.vh = fmul fast float %i.uy, %i.uc
  %i.vi = fadd fast float %i.vh, %i.va
  %i.vj = fmul fast float %i.vi, %i.uc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

_ZL13activation_ssfiRKN4ncnn3MatE.exit143:        ; preds = %bb.r, %.lr.ph783, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t
  %.1684 = phi nsz float [ %i.uc, %.lr.ph783 ], [ %i.ud, %bb.l ], [ %i.ui, %bb.m ], [ %i.um, %bb.o ], [ %.0683, %bb.n ], [ %i.ur, %bb.p ], [ %i.uw, %bb.q ], [ %i.vj, %bb.t ], [ %i.uc, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.vk = fmul fast float %.1684, %i.j
  %i.vl = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vk)
  %i.vm = fptosi float %i.vl to i32
  %spec.select.i145727 = tail call i32 @llvm.smax.i32(i32 %i.vm, i32 -127)
  %.0.i146728 = tail call i32 @llvm.smin.i32(i32 %spec.select.i145727, i32 127)
  %.0.i146 = trunc nsw i32 %.0.i146728 to i8
  store i8 %.0.i146, ptr %.2120781, align 1, !tbaa !50
  %i.vn = getelementptr inbounds nuw i8, ptr %.2782, i64 4
  %i.vo = getelementptr inbounds nuw i8, ptr %.2120781, i64 1
  %i.vp = add nuw nsw i32 %.2129780, 1            ; 2 uses
  %exitcond796.not = icmp eq i32 %i.vp, %i.a
  br i1 %exitcond796.not, label %.loopexit, label %.lr.ph783, !llvm.loop !55

bb.u:                                             ; preds = %bb.e
  %i.vq = load float, ptr %.0.val1, align 4, !tbaa !48 ; 2 uses
  %i.vr = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vt = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.vt, %i.f
  br i1 %or.cond5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.vu = load <4 x float>, ptr %.0.val1, align 4, !tbaa !50
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.vw = load <4 x float>, ptr %i.vv, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0680 = phi nsz <4 x float> [ %i.vu, %bb.v ], [ %i.vs, %bb.u ] ; 2 uses
  %.0679 = phi nsz <4 x float> [ %i.vw, %bb.v ], [ %i.vs, %bb.u ]
  %i.vx = icmp sgt i32 %i.a, 7
  br i1 %i.vx, label %.lr.ph.preheader, label %.preheader749

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.vy = load ptr, ptr %3, align 8               ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = load ptr, ptr %3, align 8               ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wc = load ptr, ptr %3, align 8
  br label %.lr.ph

.preheader749.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %i.wd = and i32 %i.a, 2147483640
  br label %.preheader749

.preheader749:                                    ; preds = %.preheader749.loopexit, %bb.w
  %.0124.lcssa = phi i32 [ 0, %bb.w ], [ %i.wd, %.preheader749.loopexit ] ; 3 uses
  %.3121.lcssa = phi ptr [ %1, %bb.w ], [ %i.ajb, %.preheader749.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %0, %bb.w ], [ %i.aja, %.preheader749.loopexit ] ; 2 uses
  %i.we = or disjoint i32 %.0124.lcssa, 3
  %i.wf = icmp slt i32 %i.we, %i.a
  br i1 %i.wf, label %.lr.ph758, label %.preheader747

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %.3752 = phi ptr [ %i.aja, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.3121751 = phi ptr [ %i.ajb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0124750 = phi i32 [ %i.ajc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ 0, %.lr.ph.preheader ]
  %i.wg = load <4 x i32>, ptr %.3752, align 1, !tbaa !50
  %i.wh = sitofp fast <4 x i32> %i.wg to <4 x float>
  %i.wi = getelementptr inbounds nuw i8, ptr %.3752, i64 16
  %i.wj = load <4 x i32>, ptr %i.wi, align 1, !tbaa !50
  %i.wk = sitofp fast <4 x i32> %i.wj to <4 x float>
  %i.wl = fmul fast <4 x float> %.0682, %i.wh
  %i.wm = fadd fast <4 x float> %i.wl, %.0680     ; 10 uses
  %i.wn = fmul fast <4 x float> %.0681, %i.wk
  %i.wo = fadd fast <4 x float> %i.wn, %.0679     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread: ; preds = %.lr.ph
  %i.wp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wm, <4 x float> zeroinitializer)
  %i.wq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wo, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708: ; preds = %.lr.ph
  %i.wr = load float, ptr %i.wc, align 4, !tbaa !48
  %i.ws = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wm)
  %i.wt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wm)
  %i.wu = insertelement <4 x float> poison, float %i.wr, i64 0
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ww = fmul fast <4 x float> %i.wv, %i.wt
  %i.wx = fadd fast <4 x float> %i.ww, %i.ws
  %i.wy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wo)
  %i.wz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wo)
  %i.xa = fmul fast <4 x float> %i.wv, %i.wz
  %i.xb = fadd fast <4 x float> %i.xa, %i.wy
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711: ; preds = %.lr.ph
  %i.xc = load float, ptr %i.wa, align 4, !tbaa !48
  %i.xd = insertelement <4 x float> poison, float %i.xc, i64 0
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xf = load float, ptr %i.wb, align 4, !tbaa !48
  %i.xg = insertelement <4 x float> poison, float %i.xf, i64 0
  %i.xh = shufflevector <4 x float> %i.xg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wm, <4 x float> nofpclass(nan inf) %i.xe)
  %i.xj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xi, <4 x float> nofpclass(nan inf) %i.xh)
  %i.xk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wo, <4 x float> nofpclass(nan inf) %i.xe)
  %i.xl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xk, <4 x float> nofpclass(nan inf) %i.xh)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714: ; preds = %.lr.ph
  %i.xm = fneg fast <4 x float> %i.wm
  %i.xn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xm, <4 x float> splat (float f0x42B0C0A5))
  %i.xo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xp = fmul fast <4 x float> %i.xo, splat (float f0x3FB8AA3B)
  %i.xq = fadd fast <4 x float> %i.xp, splat (float 5.000000e-01) ; 2 uses
  %i.xr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xq)
  %i.xs = sitofp fast <4 x i32> %i.xr to <4 x float> ; 2 uses
  %i.xt = fcmp fast olt <4 x float> %i.xq, %i.xs
  %i.xu = select <4 x i1> %i.xt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xv = fsub fast <4 x float> %i.xs, %i.xu      ; 2 uses
  %i.xw = fmul fast <4 x float> %i.xv, splat (float f0x3F317218)
  %i.xx = fsub fast <4 x float> %i.xo, %i.xw      ; 8 uses
  %i.xy = fmul fast <4 x float> %i.xx, %i.xx
  %i.xz = fmul fast <4 x float> %i.xx, splat (float f0x39506967)
  %i.ya = fadd fast <4 x float> %i.xz, splat (float f0x3AB743CE)
  %i.yb = fmul fast <4 x float> %i.ya, %i.xx
  %i.yc = fadd fast <4 x float> %i.yb, splat (float f0x3C088908)
  %i.yd = fmul fast <4 x float> %i.yc, %i.xx
  %i.ye = fadd fast <4 x float> %i.yd, splat (float f0x3D2AA9C1)
  %i.yf = fmul fast <4 x float> %i.ye, %i.xx
  %i.yg = fadd fast <4 x float> %i.yf, splat (float f0x3E2AAAAA)
  %i.yh = fmul fast <4 x float> %i.yg, %i.xx
  %i.yi = fadd fast <4 x float> %i.yh, splat (float 5.000000e-01)
  %i.yj = fmul fast <4 x float> %i.xy, %i.yi
  %i.yk = fadd fast <4 x float> %i.xx, %i.yj
  %i.yl = fadd fast <4 x float> %i.yk, splat (float 1.000000e+00)
  %i.ym = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xv)
  %i.yn = shl <4 x i32> %i.ym, splat (i32 23)
  %i.yo = add <4 x i32> %i.yn, splat (i32 1065353216)
  %i.yp = bitcast <4 x i32> %i.yo to <4 x float>
  %i.yq = fmul fast <4 x float> %i.yl, %i.yp
  %i.yr = fadd fast <4 x float> %i.yq, splat (float 1.000000e+00)
  %i.ys = fdiv fast <4 x float> splat (float 1.000000e+00), %i.yr
  %i.yt = fneg fast <4 x float> %i.wo
  %i.yu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> splat (float f0x42B0C0A5))
  %i.yv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yw = fmul fast <4 x float> %i.yv, splat (float f0x3FB8AA3B)
  %i.yx = fadd fast <4 x float> %i.yw, splat (float 5.000000e-01) ; 2 uses
  %i.yy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yx)
  %i.yz = sitofp fast <4 x i32> %i.yy to <4 x float> ; 2 uses
  %i.za = fcmp fast olt <4 x float> %i.yx, %i.yz
  %i.zb = select <4 x i1> %i.za, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zc = fsub fast <4 x float> %i.yz, %i.zb      ; 2 uses
  %i.zd = fmul fast <4 x float> %i.zc, splat (float f0x3F317218)
  %i.ze = fsub fast <4 x float> %i.yv, %i.zd      ; 8 uses
  %i.zf = fmul fast <4 x float> %i.ze, %i.ze
  %i.zg = fmul fast <4 x float> %i.ze, splat (float f0x39506967)
  %i.zh = fadd fast <4 x float> %i.zg, splat (float f0x3AB743CE)
  %i.zi = fmul fast <4 x float> %i.zh, %i.ze
  %i.zj = fadd fast <4 x float> %i.zi, splat (float f0x3C088908)
  %i.zk = fmul fast <4 x float> %i.zj, %i.ze
  %i.zl = fadd fast <4 x float> %i.zk, splat (float f0x3D2AA9C1)
  %i.zm = fmul fast <4 x float> %i.zl, %i.ze
  %i.zn = fadd fast <4 x float> %i.zm, splat (float f0x3E2AAAAA)
  %i.zo = fmul fast <4 x float> %i.zn, %i.ze
  %i.zp = fadd fast <4 x float> %i.zo, splat (float 5.000000e-01)
  %i.zq = fmul fast <4 x float> %i.zf, %i.zp
  %i.zr = fadd fast <4 x float> %i.ze, %i.zq
  %i.zs = fadd fast <4 x float> %i.zr, splat (float 1.000000e+00)
  %i.zt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zc)
  %i.zu = shl <4 x i32> %i.zt, splat (i32 23)
  %i.zv = add <4 x i32> %i.zu, splat (i32 1065353216)
  %i.zw = bitcast <4 x i32> %i.zv to <4 x float>
  %i.zx = fmul fast <4 x float> %i.zs, %i.zw
  %i.zy = fadd fast <4 x float> %i.zx, splat (float 1.000000e+00)
  %i.zz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zy
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717: ; preds = %.lr.ph
  %i.aaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wm, <4 x float> splat (float f0x42B0C0A5))
  %i.aab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aaa, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aac = fmul fast <4 x float> %i.aab, splat (float f0x3FB8AA3B)
  %i.aad = fadd fast <4 x float> %i.aac, splat (float 5.000000e-01) ; 2 uses
  %i.aae = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aad)
  %i.aaf = sitofp fast <4 x i32> %i.aae to <4 x float> ; 2 uses
  %i.aag = fcmp fast olt <4 x float> %i.aad, %i.aaf
  %i.aah = select <4 x i1> %i.aag, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aai = fsub fast <4 x float> %i.aaf, %i.aah   ; 2 uses
  %i.aaj = fmul fast <4 x float> %i.aai, splat (float f0x3F317218)
  %i.aak = fsub fast <4 x float> %i.aab, %i.aaj   ; 8 uses
  %i.aal = fmul fast <4 x float> %i.aak, %i.aak
  %i.aam = fmul fast <4 x float> %i.aak, splat (float f0x39506967)
  %i.aan = fadd fast <4 x float> %i.aam, splat (float f0x3AB743CE)
  %i.aao = fmul fast <4 x float> %i.aan, %i.aak
  %i.aap = fadd fast <4 x float> %i.aao, splat (float f0x3C088908)
  %i.aaq = fmul fast <4 x float> %i.aap, %i.aak
  %i.aar = fadd fast <4 x float> %i.aaq, splat (float f0x3D2AA9C1)
  %i.aas = fmul fast <4 x float> %i.aar, %i.aak
  %i.aat = fadd fast <4 x float> %i.aas, splat (float f0x3E2AAAAA)
  %i.aau = fmul fast <4 x float> %i.aat, %i.aak
  %i.aav = fadd fast <4 x float> %i.aau, splat (float 5.000000e-01)
  %i.aaw = fmul fast <4 x float> %i.aal, %i.aav
  %i.aax = fadd fast <4 x float> %i.aak, %i.aaw
  %i.aay = fadd fast <4 x float> %i.aax, splat (float 1.000000e+00)
  %i.aaz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aai)
  %i.aba = shl <4 x i32> %i.aaz, splat (i32 23)
  %i.abb = add <4 x i32> %i.aba, splat (i32 1065353216)
  %i.abc = bitcast <4 x i32> %i.abb to <4 x float>
  %i.abd = fmul fast <4 x float> %i.aay, %i.abc
  %i.abe = fadd fast <4 x float> %i.abd, splat (float 1.000000e+00) ; 2 uses
  %i.abf = fcmp fast ole <4 x float> %i.abe, zeroinitializer
  %i.abg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abe, <4 x float> splat (float f0x00800000))
  %i.abh = bitcast <4 x float> %i.abg to <4 x i32> ; 2 uses
  %i.abi = lshr <4 x i32> %i.abh, splat (i32 23)
  %i.abj = and <4 x i32> %i.abh, splat (i32 -2139095041)
  %i.abk = or disjoint <4 x i32> %i.abj, splat (i32 1056964608)
  %i.abl = bitcast <4 x i32> %i.abk to <4 x float> ; 3 uses
  %i.abm = add nsw <4 x i32> %i.abi, splat (i32 -127)
  %i.abn = sitofp fast <4 x i32> %i.abm to <4 x float> ; 2 uses
  %i.abo = fadd fast <4 x float> %i.abn, splat (float 1.000000e+00)
  %i.abp = fcmp fast olt <4 x float> %i.abl, splat (float f0x3F3504F3) ; 2 uses
  %i.abq = select <4 x i1> %i.abp, <4 x float> %i.abl, <4 x float> zeroinitializer
  %i.abr = fadd fast <4 x float> %i.abl, splat (float -1.000000e+00)
  %i.abs = select fast <4 x i1> %i.abp, <4 x float> %i.abn, <4 x float> %i.abo
  %i.abt = fadd fast <4 x float> %i.abr, %i.abq   ; 12 uses
  %i.abu = fmul fast <4 x float> %i.abt, %i.abt   ; 2 uses
  %i.abv = fmul fast <4 x float> %i.abt, splat (float f0x3D9021BB)
  %i.abw = fadd fast <4 x float> %i.abv, splat (float f0xBDEBD1B8)
  %i.abx = fmul fast <4 x float> %i.abw, %i.abt
  %i.aby = fadd fast <4 x float> %i.abx, splat (float f0x3DEF251A)
  %i.abz = fmul fast <4 x float> %i.aby, %i.abt
  %i.aca = fadd fast <4 x float> %i.abz, splat (float f0xBDFE5D4F)
  %i.acb = fmul fast <4 x float> %i.aca, %i.abt
  %i.acc = fadd fast <4 x float> %i.acb, splat (float f0x3E11E9BF)
  %i.acd = fmul fast <4 x float> %i.acc, %i.abt
  %i.ace = fadd fast <4 x float> %i.acd, splat (float f0xBE2AAE50)
  %i.acf = fmul fast <4 x float> %i.ace, %i.abt
  %i.acg = fadd fast <4 x float> %i.acf, splat (float f0x3E4CCEAC)
  %i.ach = fmul fast <4 x float> %i.acg, %i.abt
  %i.aci = fadd fast <4 x float> %i.ach, splat (float f0xBE7FFFFC)
  %i.acj = fmul fast <4 x float> %i.aci, %i.abt
  %i.ack = fadd fast <4 x float> %i.acj, splat (float f0x3EAAAAAA)
  %i.acl = fmul fast <4 x float> %i.abu, %i.abt
  %i.acm = fmul fast <4 x float> %i.acl, %i.ack
  %.neg733 = fmul fast <4 x float> %i.abu, splat (float -5.000000e-01)
  %reass.mul734.a = fmul fast <4 x float> %i.abs, splat (float f0x3F317218)
  %9 = fadd fast <4 x float> %i.abt, %.neg733
  %i.acn = fadd fast <4 x float> %i.acm, %9
  %i.aco = fadd fast <4 x float> %i.acn, %reass.mul734.a
  %.neg725 = fmul fast <4 x float> %i.aco, splat (float -2.000000e+00)
  %i.acp = select fast <4 x i1> %i.abf, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg725
  %i.acq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acp, <4 x float> splat (float f0x42B0C0A5))
  %i.acr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.acq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acs = fmul fast <4 x float> %i.acr, splat (float f0x3FB8AA3B)
  %i.act = fadd fast <4 x float> %i.acs, splat (float 5.000000e-01) ; 2 uses
  %i.acu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.act)
  %i.acv = sitofp fast <4 x i32> %i.acu to <4 x float> ; 2 uses
  %i.acw = fcmp fast olt <4 x float> %i.act, %i.acv
  %i.acx = select <4 x i1> %i.acw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.acy = fsub fast <4 x float> %i.acv, %i.acx   ; 2 uses
  %i.acz = fmul fast <4 x float> %i.acy, splat (float f0x3F317218)
  %i.ada = fsub fast <4 x float> %i.acr, %i.acz   ; 8 uses
  %i.adb = fmul fast <4 x float> %i.ada, %i.ada
  %i.adc = fmul fast <4 x float> %i.ada, splat (float f0x39506967)
  %i.add = fadd fast <4 x float> %i.adc, splat (float f0x3AB743CE)
  %i.ade = fmul fast <4 x float> %i.add, %i.ada
  %i.adf = fadd fast <4 x float> %i.ade, splat (float f0x3C088908)
  %i.adg = fmul fast <4 x float> %i.adf, %i.ada
  %i.adh = fadd fast <4 x float> %i.adg, splat (float f0x3D2AA9C1)
  %i.adi = fmul fast <4 x float> %i.adh, %i.ada
  %i.adj = fadd fast <4 x float> %i.adi, splat (float f0x3E2AAAAA)
  %i.adk = fmul fast <4 x float> %i.adj, %i.ada
  %i.adl = fadd fast <4 x float> %i.adk, splat (float 5.000000e-01)
  %i.adm = fmul fast <4 x float> %i.adb, %i.adl
  %i.adn = fadd fast <4 x float> %i.ada, %i.adm
  %i.ado = fadd fast <4 x float> %i.adn, splat (float 1.000000e+00)
  %i.adp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acy)
  %i.adq = shl <4 x i32> %i.adp, splat (i32 23)
  %i.adr = add <4 x i32> %i.adq, splat (i32 1065353216)
  %i.ads = bitcast <4 x i32> %i.adr to <4 x float>
  %i.adt = fmul fast <4 x float> %i.ado, %i.ads
  %i.adu = fadd fast <4 x float> %i.adt, splat (float 1.000000e+00)
  %i.adv = fdiv fast <4 x float> splat (float 2.000000e+00), %i.adu
  %i.adw = fadd fast <4 x float> %i.adv, splat (float -1.000000e+00)
  %i.adx = fmul fast <4 x float> %i.adw, %i.wm
  %i.ady = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wo, <4 x float> splat (float f0x42B0C0A5))
  %i.adz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ady, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aea = fmul fast <4 x float> %i.adz, splat (float f0x3FB8AA3B)
  %i.aeb = fadd fast <4 x float> %i.aea, splat (float 5.000000e-01) ; 2 uses
  %i.aec = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeb)
  %i.aed = sitofp fast <4 x i32> %i.aec to <4 x float> ; 2 uses
  %i.aee = fcmp fast olt <4 x float> %i.aeb, %i.aed
  %i.aef = select <4 x i1> %i.aee, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aeg = fsub fast <4 x float> %i.aed, %i.aef   ; 2 uses
  %i.aeh = fmul fast <4 x float> %i.aeg, splat (float f0x3F317218)
  %i.aei = fsub fast <4 x float> %i.adz, %i.aeh   ; 8 uses
  %i.aej = fmul fast <4 x float> %i.aei, %i.aei
  %i.aek = fmul fast <4 x float> %i.aei, splat (float f0x39506967)
  %i.ael = fadd fast <4 x float> %i.aek, splat (float f0x3AB743CE)
  %i.aem = fmul fast <4 x float> %i.ael, %i.aei
  %i.aen = fadd fast <4 x float> %i.aem, splat (float f0x3C088908)
  %i.aeo = fmul fast <4 x float> %i.aen, %i.aei
  %i.aep = fadd fast <4 x float> %i.aeo, splat (float f0x3D2AA9C1)
  %i.aeq = fmul fast <4 x float> %i.aep, %i.aei
  %i.aer = fadd fast <4 x float> %i.aeq, splat (float f0x3E2AAAAA)
  %i.aes = fmul fast <4 x float> %i.aer, %i.aei
  %i.aet = fadd fast <4 x float> %i.aes, splat (float 5.000000e-01)
  %i.aeu = fmul fast <4 x float> %i.aej, %i.aet
  %i.aev = fadd fast <4 x float> %i.aei, %i.aeu
  %i.aew = fadd fast <4 x float> %i.aev, splat (float 1.000000e+00)
  %i.aex = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeg)
  %i.aey = shl <4 x i32> %i.aex, splat (i32 23)
  %i.aez = add <4 x i32> %i.aey, splat (i32 1065353216)
  %i.afa = bitcast <4 x i32> %i.aez to <4 x float>
  %i.afb = fmul fast <4 x float> %i.aew, %i.afa
  %i.afc = fadd fast <4 x float> %i.afb, splat (float 1.000000e+00) ; 2 uses
  %i.afd = fcmp fast ole <4 x float> %i.afc, zeroinitializer
  %i.afe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afc, <4 x float> splat (float f0x00800000))
  %i.aff = bitcast <4 x float> %i.afe to <4 x i32> ; 2 uses
  %i.afg = lshr <4 x i32> %i.aff, splat (i32 23)
  %i.afh = and <4 x i32> %i.aff, splat (i32 -2139095041)
  %i.afi = or disjoint <4 x i32> %i.afh, splat (i32 1056964608)
  %i.afj = bitcast <4 x i32> %i.afi to <4 x float> ; 3 uses
  %i.afk = add nsw <4 x i32> %i.afg, splat (i32 -127)
  %i.afl = sitofp fast <4 x i32> %i.afk to <4 x float> ; 2 uses
  %i.afm = fadd fast <4 x float> %i.afl, splat (float 1.000000e+00)
  %i.afn = fcmp fast olt <4 x float> %i.afj, splat (float f0x3F3504F3) ; 2 uses
  %i.afo = select <4 x i1> %i.afn, <4 x float> %i.afj, <4 x float> zeroinitializer
  %i.afp = fadd fast <4 x float> %i.afj, splat (float -1.000000e+00)
  %i.afq = select fast <4 x i1> %i.afn, <4 x float> %i.afl, <4 x float> %i.afm
  %i.afr = fadd fast <4 x float> %i.afp, %i.afo   ; 12 uses
  %i.afs = fmul fast <4 x float> %i.afr, %i.afr   ; 2 uses
  %i.aft = fmul fast <4 x float> %i.afr, splat (float f0x3D9021BB)
  %i.afu = fadd fast <4 x float> %i.aft, splat (float f0xBDEBD1B8)
  %i.afv = fmul fast <4 x float> %i.afu, %i.afr
  %i.afw = fadd fast <4 x float> %i.afv, splat (float f0x3DEF251A)
  %i.afx = fmul fast <4 x float> %i.afw, %i.afr
  %i.afy = fadd fast <4 x float> %i.afx, splat (float f0xBDFE5D4F)
  %i.afz = fmul fast <4 x float> %i.afy, %i.afr
  %i.aga = fadd fast <4 x float> %i.afz, splat (float f0x3E11E9BF)
  %i.agb = fmul fast <4 x float> %i.aga, %i.afr
  %i.agc = fadd fast <4 x float> %i.agb, splat (float f0xBE2AAE50)
  %i.agd = fmul fast <4 x float> %i.agc, %i.afr
  %i.age = fadd fast <4 x float> %i.agd, splat (float f0x3E4CCEAC)
  %i.agf = fmul fast <4 x float> %i.age, %i.afr
  %i.agg = fadd fast <4 x float> %i.agf, splat (float f0xBE7FFFFC)
  %i.agh = fmul fast <4 x float> %i.agg, %i.afr
  %i.agi = fadd fast <4 x float> %i.agh, splat (float f0x3EAAAAAA)
  %i.agj = fmul fast <4 x float> %i.afs, %i.afr
  %i.agk = fmul fast <4 x float> %i.agj, %i.agi
  %.neg735 = fmul fast <4 x float> %i.afs, splat (float -5.000000e-01)
  %reass.mul737 = fmul fast <4 x float> %i.afq, splat (float f0x3F317218)
  %10 = fadd fast <4 x float> %i.afr, %.neg735
  %i.agl = fadd fast <4 x float> %i.agk, %10
  %i.agm = fadd fast <4 x float> %i.agl, %reass.mul737
  %.neg726 = fmul fast <4 x float> %i.agm, splat (float -2.000000e+00)
  %i.agn = select fast <4 x i1> %i.afd, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg726
  %i.ago = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agn, <4 x float> splat (float f0x42B0C0A5))
  %i.agp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ago, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agq = fmul fast <4 x float> %i.agp, splat (float f0x3FB8AA3B)
  %i.agr = fadd fast <4 x float> %i.agq, splat (float 5.000000e-01) ; 2 uses
  %i.ags = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agr)
  %i.agt = sitofp fast <4 x i32> %i.ags to <4 x float> ; 2 uses
  %i.agu = fcmp fast olt <4 x float> %i.agr, %i.agt
  %i.agv = select <4 x i1> %i.agu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agw = fsub fast <4 x float> %i.agt, %i.agv   ; 2 uses
  %i.agx = fmul fast <4 x float> %i.agw, splat (float f0x3F317218)
  %i.agy = fsub fast <4 x float> %i.agp, %i.agx   ; 8 uses
  %i.agz = fmul fast <4 x float> %i.agy, %i.agy
  %i.aha = fmul fast <4 x float> %i.agy, splat (float f0x39506967)
  %i.ahb = fadd fast <4 x float> %i.aha, splat (float f0x3AB743CE)
  %i.ahc = fmul fast <4 x float> %i.ahb, %i.agy
  %i.ahd = fadd fast <4 x float> %i.ahc, splat (float f0x3C088908)
  %i.ahe = fmul fast <4 x float> %i.ahd, %i.agy
  %i.ahf = fadd fast <4 x float> %i.ahe, splat (float f0x3D2AA9C1)
  %i.ahg = fmul fast <4 x float> %i.ahf, %i.agy
  %i.ahh = fadd fast <4 x float> %i.ahg, splat (float f0x3E2AAAAA)
  %i.ahi = fmul fast <4 x float> %i.ahh, %i.agy
  %i.ahj = fadd fast <4 x float> %i.ahi, splat (float 5.000000e-01)
  %i.ahk = fmul fast <4 x float> %i.agz, %i.ahj
  %i.ahl = fadd fast <4 x float> %i.agy, %i.ahk
  %i.ahm = fadd fast <4 x float> %i.ahl, splat (float 1.000000e+00)
  %i.ahn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agw)
  %i.aho = shl <4 x i32> %i.ahn, splat (i32 23)
  %i.ahp = add <4 x i32> %i.aho, splat (i32 1065353216)
  %i.ahq = bitcast <4 x i32> %i.ahp to <4 x float>
  %i.ahr = fmul fast <4 x float> %i.ahm, %i.ahq
  %i.ahs = fadd fast <4 x float> %i.ahr, splat (float 1.000000e+00)
  %i.aht = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ahs
  %i.ahu = fadd fast <4 x float> %i.aht, splat (float -1.000000e+00)
  %i.ahv = fmul fast <4 x float> %i.ahu, %i.wo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720: ; preds = %.lr.ph
  %i.ahw = load float, ptr %i.vy, align 4, !tbaa !48
  %i.ahx = insertelement <4 x float> poison, float %i.ahw, i64 0
  %i.ahy = shufflevector <4 x float> %i.ahx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahz = load float, ptr %i.vz, align 4, !tbaa !48
  %i.aia = insertelement <4 x float> poison, float %i.ahz, i64 0
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aic = fmul fast <4 x float> %i.ahy, %i.wm
  %i.aid = fadd fast <4 x float> %i.aic, %i.aib
  %i.aie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> zeroinitializer)
  %i.aif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aie, <4 x float> splat (float 1.000000e+00))
  %i.aig = fmul fast <4 x float> %i.aif, %i.wm
  %i.aih = fmul fast <4 x float> %i.ahy, %i.wo
  %i.aii = fadd fast <4 x float> %i.aih, %i.aib
  %i.aij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aii, <4 x float> zeroinitializer)
  %i.aik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aij, <4 x float> splat (float 1.000000e+00))
  %i.ail = fmul fast <4 x float> %i.aik, %i.wo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134:   ; preds = %.lr.ph, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  %.0.i135707 = phi <4 x float> [ %i.aig, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.wx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.ys, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.adx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wm, %.lr.ph ]
  %.0.i133 = phi nsz <4 x float> [ %i.ail, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.xb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.zz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.ahv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wo, %.lr.ph ]
  %i.aim = fmul fast <4 x float> %.0.i135707, %.0131 ; 2 uses
  %i.ain = fmul fast <4 x float> %.0.i133, %.0130 ; 2 uses
  %i.aio = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aim)
  %i.aip = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ain)
  %i.aiq = fadd fast <4 x float> %i.aio, %i.aim
  %i.air = fadd fast <4 x float> %i.aip, %i.ain
  %i.ais = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiq)
  %i.ait = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.air)
  %i.aiu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ais, <4 x i32> %i.ait)
  %i.aiv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aiu, <8 x i16> splat (i16 -127))
  %i.aiw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aiv, <8 x i16> splat (i16 127))
  %i.aix = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aiw, <8 x i16> poison)
  %i.aiy = bitcast <16 x i8> %i.aix to <2 x i64>
  %i.aiz = extractelement <2 x i64> %i.aiy, i64 0
  store i64 %i.aiz, ptr %.3121751, align 8, !tbaa !51
  %i.aja = getelementptr inbounds nuw i8, ptr %.3752, i64 32 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.3121751, i64 8 ; 2 uses
  %i.ajc = add nuw nsw i32 %.0124750, 8           ; 2 uses
  %i.ajd = or disjoint i32 %i.ajc, 7
  %i.aje = icmp slt i32 %i.ajd, %i.a
  br i1 %i.aje, label %.lr.ph, label %.preheader749.loopexit, !llvm.loop !56

.preheader747:                                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader749
  %.1125.lcssa = phi i32 [ %.0124.lcssa, %.preheader749 ], [ %i.aqg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.4122.lcssa = phi ptr [ %.3121.lcssa, %.preheader749 ], [ %i.aqf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader749 ], [ %i.aqe, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.ajf = icmp slt i32 %.1125.lcssa, %i.a
  br i1 %i.ajf, label %.lr.ph765, label %.loopexit

.lr.ph758:                                        ; preds = %.preheader749, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.4757 = phi ptr [ %i.aqe, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3.lcssa, %.preheader749 ] ; 2 uses
  %.4122756 = phi ptr [ %i.aqf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3121.lcssa, %.preheader749 ] ; 2 uses
  %.1125755 = phi i32 [ %i.aqg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.0124.lcssa, %.preheader749 ]
  %i.ajg = load <4 x i32>, ptr %.4757, align 1, !tbaa !50
  %i.ajh = sitofp fast <4 x i32> %i.ajg to <4 x float>
  %i.aji = fmul fast <4 x float> %.0682, %i.ajh
  %i.ajj = fadd fast <4 x float> %i.aji, %.0680   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
    i32 5, label %bb.ab
    i32 6, label %bb.ac
  ]

bb.x:                                             ; preds = %.lr.ph758
  %i.ajk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajj, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %.lr.ph758
  %i.ajl = load ptr, ptr %3, align 8, !tbaa !18
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !48
  %i.ajn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ajj)
  %i.ajo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ajj)
  %i.ajp = insertelement <4 x float> poison, float %i.ajm, i64 0
  %i.ajq = shufflevector <4 x float> %i.ajp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajr = fmul fast <4 x float> %i.ajq, %i.ajo
  %i.ajs = fadd fast <4 x float> %i.ajr, %i.ajn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %.lr.ph758
  %i.ajt = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !48
  %i.ajv = insertelement <4 x float> poison, float %i.aju, i64 0
  %i.ajw = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !48
  %i.ajz = insertelement <4 x float> poison, float %i.ajy, i64 0
  %i.aka = shufflevector <4 x float> %i.ajz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajj, <4 x float> nofpclass(nan inf) %i.ajw)
  %i.akc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akb, <4 x float> nofpclass(nan inf) %i.aka)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.aa:                                            ; preds = %.lr.ph758
  %i.akd = fneg fast <4 x float> %i.ajj
  %i.ake = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akd, <4 x float> splat (float f0x42B0C0A5))
  %i.akf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ake, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akg = fmul fast <4 x float> %i.akf, splat (float f0x3FB8AA3B)
  %i.akh = fadd fast <4 x float> %i.akg, splat (float 5.000000e-01) ; 2 uses
  %i.aki = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akh)
  %i.akj = sitofp fast <4 x i32> %i.aki to <4 x float> ; 2 uses
  %i.akk = fcmp fast olt <4 x float> %i.akh, %i.akj
  %i.akl = select <4 x i1> %i.akk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akm = fsub fast <4 x float> %i.akj, %i.akl   ; 2 uses
  %i.akn = fmul fast <4 x float> %i.akm, splat (float f0x3F317218)
  %i.ako = fsub fast <4 x float> %i.akf, %i.akn   ; 8 uses
  %i.akp = fmul fast <4 x float> %i.ako, %i.ako
  %i.akq = fmul fast <4 x float> %i.ako, splat (float f0x39506967)
  %i.akr = fadd fast <4 x float> %i.akq, splat (float f0x3AB743CE)
  %i.aks = fmul fast <4 x float> %i.akr, %i.ako
  %i.akt = fadd fast <4 x float> %i.aks, splat (float f0x3C088908)
  %i.aku = fmul fast <4 x float> %i.akt, %i.ako
  %i.akv = fadd fast <4 x float> %i.aku, splat (float f0x3D2AA9C1)
  %i.akw = fmul fast <4 x float> %i.akv, %i.ako
  %i.akx = fadd fast <4 x float> %i.akw, splat (float f0x3E2AAAAA)
  %i.aky = fmul fast <4 x float> %i.akx, %i.ako
  %i.akz = fadd fast <4 x float> %i.aky, splat (float 5.000000e-01)
  %i.ala = fmul fast <4 x float> %i.akp, %i.akz
  %i.alb = fadd fast <4 x float> %i.ako, %i.ala
  %i.alc = fadd fast <4 x float> %i.alb, splat (float 1.000000e+00)
  %i.ald = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akm)
  %i.ale = shl <4 x i32> %i.ald, splat (i32 23)
  %i.alf = add <4 x i32> %i.ale, splat (i32 1065353216)
  %i.alg = bitcast <4 x i32> %i.alf to <4 x float>
  %i.alh = fmul fast <4 x float> %i.alc, %i.alg
  %i.ali = fadd fast <4 x float> %i.alh, splat (float 1.000000e+00)
  %i.alj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ali
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %.lr.ph758
  %i.alk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajj, <4 x float> splat (float f0x42B0C0A5))
  %i.all = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alm = fmul fast <4 x float> %i.all, splat (float f0x3FB8AA3B)
  %i.aln = fadd fast <4 x float> %i.alm, splat (float 5.000000e-01) ; 2 uses
  %i.alo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aln)
  %i.alp = sitofp fast <4 x i32> %i.alo to <4 x float> ; 2 uses
  %i.alq = fcmp fast olt <4 x float> %i.aln, %i.alp
  %i.alr = select <4 x i1> %i.alq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.als = fsub fast <4 x float> %i.alp, %i.alr   ; 2 uses
  %i.alt = fmul fast <4 x float> %i.als, splat (float f0x3F317218)
  %i.alu = fsub fast <4 x float> %i.all, %i.alt   ; 8 uses
  %i.alv = fmul fast <4 x float> %i.alu, %i.alu
  %i.alw = fmul fast <4 x float> %i.alu, splat (float f0x39506967)
  %i.alx = fadd fast <4 x float> %i.alw, splat (float f0x3AB743CE)
  %i.aly = fmul fast <4 x float> %i.alx, %i.alu
  %i.alz = fadd fast <4 x float> %i.aly, splat (float f0x3C088908)
  %i.ama = fmul fast <4 x float> %i.alz, %i.alu
  %i.amb = fadd fast <4 x float> %i.ama, splat (float f0x3D2AA9C1)
  %i.amc = fmul fast <4 x float> %i.amb, %i.alu
  %i.amd = fadd fast <4 x float> %i.amc, splat (float f0x3E2AAAAA)
  %i.ame = fmul fast <4 x float> %i.amd, %i.alu
  %i.amf = fadd fast <4 x float> %i.ame, splat (float 5.000000e-01)
  %i.amg = fmul fast <4 x float> %i.alv, %i.amf
  %i.amh = fadd fast <4 x float> %i.alu, %i.amg
  %i.ami = fadd fast <4 x float> %i.amh, splat (float 1.000000e+00)
  %i.amj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.als)
  %i.amk = shl <4 x i32> %i.amj, splat (i32 23)
  %i.aml = add <4 x i32> %i.amk, splat (i32 1065353216)
  %i.amm = bitcast <4 x i32> %i.aml to <4 x float>
  %i.amn = fmul fast <4 x float> %i.ami, %i.amm
  %i.amo = fadd fast <4 x float> %i.amn, splat (float 1.000000e+00) ; 2 uses
  %i.amp = fcmp fast ole <4 x float> %i.amo, zeroinitializer
  %i.amq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amo, <4 x float> splat (float f0x00800000))
  %i.amr = bitcast <4 x float> %i.amq to <4 x i32> ; 2 uses
  %i.ams = lshr <4 x i32> %i.amr, splat (i32 23)
  %i.amt = and <4 x i32> %i.amr, splat (i32 -2139095041)
  %i.amu = or disjoint <4 x i32> %i.amt, splat (i32 1056964608)
  %i.amv = bitcast <4 x i32> %i.amu to <4 x float> ; 3 uses
  %i.amw = add nsw <4 x i32> %i.ams, splat (i32 -127)
  %i.amx = sitofp fast <4 x i32> %i.amw to <4 x float> ; 2 uses
  %i.amy = fadd fast <4 x float> %i.amx, splat (float 1.000000e+00)
  %i.amz = fcmp fast olt <4 x float> %i.amv, splat (float f0x3F3504F3) ; 2 uses
  %i.ana = select <4 x i1> %i.amz, <4 x float> %i.amv, <4 x float> zeroinitializer
  %i.anb = fadd fast <4 x float> %i.amv, splat (float -1.000000e+00)
  %i.anc = select fast <4 x i1> %i.amz, <4 x float> %i.amx, <4 x float> %i.amy
  %i.and = fadd fast <4 x float> %i.anb, %i.ana   ; 12 uses
  %i.ane = fmul fast <4 x float> %i.and, %i.and   ; 2 uses
  %i.anf = fmul fast <4 x float> %i.and, splat (float f0x3D9021BB)
  %i.ang = fadd fast <4 x float> %i.anf, splat (float f0xBDEBD1B8)
  %i.anh = fmul fast <4 x float> %i.ang, %i.and
  %i.ani = fadd fast <4 x float> %i.anh, splat (float f0x3DEF251A)
  %i.anj = fmul fast <4 x float> %i.ani, %i.and
  %i.ank = fadd fast <4 x float> %i.anj, splat (float f0xBDFE5D4F)
  %i.anl = fmul fast <4 x float> %i.ank, %i.and
  %i.anm = fadd fast <4 x float> %i.anl, splat (float f0x3E11E9BF)
  %i.ann = fmul fast <4 x float> %i.anm, %i.and
  %i.ano = fadd fast <4 x float> %i.ann, splat (float f0xBE2AAE50)
  %i.anp = fmul fast <4 x float> %i.ano, %i.and
  %i.anq = fadd fast <4 x float> %i.anp, splat (float f0x3E4CCEAC)
  %i.anr = fmul fast <4 x float> %i.anq, %i.and
  %i.ans = fadd fast <4 x float> %i.anr, splat (float f0xBE7FFFFC)
  %i.ant = fmul fast <4 x float> %i.ans, %i.and
  %i.anu = fadd fast <4 x float> %i.ant, splat (float f0x3EAAAAAA)
  %i.anv = fmul fast <4 x float> %i.ane, %i.and
  %i.anw = fmul fast <4 x float> %i.anv, %i.anu
  %.neg732 = fmul fast <4 x float> %i.ane, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.anc, splat (float f0x3F317218)
  %11 = fadd fast <4 x float> %i.and, %.neg732
  %i.anx = fadd fast <4 x float> %i.anw, %11
  %i.any = fadd fast <4 x float> %i.anx, %reass.mul
  %.neg = fmul fast <4 x float> %i.any, splat (float -2.000000e+00)
  %i.anz = select fast <4 x i1> %i.amp, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.aoa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.anz, <4 x float> splat (float f0x42B0C0A5))
  %i.aob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aoa, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aoc = fmul fast <4 x float> %i.aob, splat (float f0x3FB8AA3B)
  %i.aod = fadd fast <4 x float> %i.aoc, splat (float 5.000000e-01) ; 2 uses
  %i.aoe = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aod)
  %i.aof = sitofp fast <4 x i32> %i.aoe to <4 x float> ; 2 uses
  %i.aog = fcmp fast olt <4 x float> %i.aod, %i.aof
  %i.aoh = select <4 x i1> %i.aog, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aoi = fsub fast <4 x float> %i.aof, %i.aoh   ; 2 uses
  %i.aoj = fmul fast <4 x float> %i.aoi, splat (float f0x3F317218)
  %i.aok = fsub fast <4 x float> %i.aob, %i.aoj   ; 8 uses
  %i.aol = fmul fast <4 x float> %i.aok, %i.aok
  %i.aom = fmul fast <4 x float> %i.aok, splat (float f0x39506967)
  %i.aon = fadd fast <4 x float> %i.aom, splat (float f0x3AB743CE)
  %i.aoo = fmul fast <4 x float> %i.aon, %i.aok
  %i.aop = fadd fast <4 x float> %i.aoo, splat (float f0x3C088908)
  %i.aoq = fmul fast <4 x float> %i.aop, %i.aok
  %i.aor = fadd fast <4 x float> %i.aoq, splat (float f0x3D2AA9C1)
  %i.aos = fmul fast <4 x float> %i.aor, %i.aok
  %i.aot = fadd fast <4 x float> %i.aos, splat (float f0x3E2AAAAA)
  %i.aou = fmul fast <4 x float> %i.aot, %i.aok
  %i.aov = fadd fast <4 x float> %i.aou, splat (float 5.000000e-01)
  %i.aow = fmul fast <4 x float> %i.aol, %i.aov
  %i.aox = fadd fast <4 x float> %i.aok, %i.aow
  %i.aoy = fadd fast <4 x float> %i.aox, splat (float 1.000000e+00)
  %i.aoz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aoi)
  %i.apa = shl <4 x i32> %i.aoz, splat (i32 23)
  %i.apb = add <4 x i32> %i.apa, splat (i32 1065353216)
  %i.apc = bitcast <4 x i32> %i.apb to <4 x float>
  %i.apd = fmul fast <4 x float> %i.aoy, %i.apc
  %i.ape = fadd fast <4 x float> %i.apd, splat (float 1.000000e+00)
  %i.apf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ape
  %i.apg = fadd fast <4 x float> %i.apf, splat (float -1.000000e+00)
  %i.aph = fmul fast <4 x float> %i.apg, %i.ajj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %.lr.ph758
  %i.api = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !48
  %i.apk = insertelement <4 x float> poison, float %i.apj, i64 0
  %i.apl = shufflevector <4 x float> %i.apk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apm = getelementptr inbounds nuw i8, ptr %i.api, i64 4
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !48
  %i.apo = insertelement <4 x float> poison, float %i.apn, i64 0
  %i.app = shufflevector <4 x float> %i.apo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apq = fmul fast <4 x float> %i.apl, %i.ajj
  %i.apr = fadd fast <4 x float> %i.apq, %i.app
  %i.aps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apr, <4 x float> zeroinitializer)
  %i.apt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aps, <4 x float> splat (float 1.000000e+00))
  %i.apu = fmul fast <4 x float> %i.apt, %i.ajj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph758, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i = phi nsz <4 x float> [ %i.apu, %bb.ac ], [ %i.ajk, %bb.x ], [ %i.ajs, %bb.y ], [ %i.akc, %bb.z ], [ %i.alj, %bb.aa ], [ %i.aph, %bb.ab ], [ %i.ajj, %.lr.ph758 ]
  %i.apv = fmul fast <4 x float> %.0.i, %.0131    ; 2 uses
  %i.apw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.apv)
  %i.apx = fadd fast <4 x float> %i.apw, %i.apv
  %i.apy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.apx) ; 2 uses
  %i.apz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apy, <4 x i32> %i.apy)
  %i.aqa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apz, <8 x i16> splat (i16 -127))
  %i.aqb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqa, <8 x i16> splat (i16 127))
  %i.aqc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aqb, <8 x i16> poison)
  %i.aqd = shufflevector <16 x i8> %i.aqc, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aqd, ptr %.4122756, align 1, !tbaa !50
  %i.aqe = getelementptr inbounds nuw i8, ptr %.4757, i64 16 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.4122756, i64 4 ; 2 uses
  %i.aqg = add nuw nsw i32 %.1125755, 4           ; 3 uses
  %i.aqh = or disjoint i32 %i.aqg, 3
  %i.aqi = icmp slt i32 %i.aqh, %i.a
  br i1 %i.aqi, label %.lr.ph758, label %.preheader747, !llvm.loop !57

.lr.ph765:                                        ; preds = %.preheader747, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.5764 = phi ptr [ %i.arx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.preheader747 ] ; 2 uses
  %.5123763 = phi ptr [ %i.ary, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4122.lcssa, %.preheader747 ] ; 2 uses
  %.2126762 = phi i32 [ %i.arz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.1125.lcssa, %.preheader747 ]
  %i.aqj = load i32, ptr %.5764, align 4, !tbaa !23
  %i.aqk = sitofp fast i32 %i.aqj to float
  %i.aql = fmul fast float %i.b, %i.aqk
  %i.aqm = fadd fast float %i.aql, %i.vq          ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
  ]

bb.ad:                                            ; preds = %.lr.ph765
  %i.aqn = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.aqm, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %.lr.ph765
  %i.aqo = load ptr, ptr %3, align 8, !tbaa !18
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !48
  %i.aqq = fcmp fast ogt float %i.aqm, 0.000000e+00
  %i.aqr = select fast i1 %i.aqq, float 1.000000e+00, float %i.aqp
  %i.aqs = fmul fast float %i.aqr, %i.aqm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph765
  %i.aqt = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !48
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 4
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !48 ; 2 uses
  %.0685 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aqm, float %i.aqu) ; 2 uses
  %i.aqx = fcmp fast ogt float %.0685, %i.aqw
  br i1 %i.aqx, label %bb.ag, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %bb.af
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %.lr.ph765
  %.sroa.speculated43 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.aqm, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated43, float f0xC2B0C0A5)
  %i.aqy = fneg fast float %.sroa.speculated
  %i.aqz = tail call fast float @llvm.exp.f32(float %i.aqy)
  %i.ara = fadd fast float %i.aqz, 1.000000e+00
  %i.arb = fdiv fast float 1.000000e+00, %i.ara
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %.lr.ph765
  %i.arc = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aqm)
  %i.ard = fadd fast float %i.arc, 1.000000e+00
  %i.are = tail call fast float @llvm.log.f32(float %i.ard)
  %i.arf = tail call fast float @llvm.tanh.f32(float %i.are)
  %i.arg = fmul fast float %i.arf, %i.aqm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aj:                                            ; preds = %.lr.ph765
  %i.arh = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !48 ; 3 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 4
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !48 ; 2 uses
  %i.arl = fneg fast float %i.ark
  %i.arm = fdiv fast float %i.arl, %i.ari         ; 2 uses
  %i.arn = fcmp fast olt float %i.aqm, %i.arm
  br i1 %i.arn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aro = fdiv fast float 1.000000e+00, %i.ari
  %i.arp = fadd fast float %i.arm, %i.aro
  %i.arq = fcmp fast ogt float %i.aqm, %i.arp
  br i1 %i.arq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.arr = fmul fast float %i.ari, %i.aqm
  %i.ars = fadd fast float %i.arr, %i.ark
  %i.art = fmul fast float %i.ars, %i.aqm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.aj, %.lr.ph765, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %.1686 = phi nsz float [ %i.aqm, %.lr.ph765 ], [ %i.aqn, %bb.ad ], [ %i.aqs, %bb.ae ], [ %i.aqw, %bb.ag ], [ %.0685, %bb.af ], [ %i.arb, %bb.ah ], [ %i.arg, %bb.ai ], [ %i.art, %bb.al ], [ %i.aqm, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.aru = fmul fast float %.1686, %i.j
  %i.arv = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aru)
  %i.arw = fptosi float %i.arv to i32
  %spec.select.i723 = tail call i32 @llvm.smax.i32(i32 %i.arw, i32 -127)
  %.0.i144724 = tail call i32 @llvm.smin.i32(i32 %spec.select.i723, i32 127)
  %.0.i144 = trunc nsw i32 %.0.i144724 to i8
  store i8 %.0.i144, ptr %.5123763, align 1, !tbaa !50
  %i.arx = getelementptr inbounds nuw i8, ptr %.5764, i64 4
  %i.ary = getelementptr inbounds nuw i8, ptr %.5123763, i64 1
  %i.arz = add nuw nsw i32 %.2126762, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.arz, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph765, !llvm.loop !58

.loopexit:                                        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, %.preheader747, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !59 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
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
