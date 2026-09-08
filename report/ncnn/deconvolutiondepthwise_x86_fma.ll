Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_fma?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <8 x float>, ptr %i.bq, align 1, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph273
  %.0256 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph273 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph267, label %._crit_edge

.lr.ph267:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !69
  %i.bv = load i32, ptr %9, align 4, !tbaa !60
  %invariant.op269 = sub i32 %.neg259, %i.bv
  %.neg261 = add nuw nsw i32 %.055272, 1
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1257.lcssa = phi <8 x float> [ %.0256, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !80
  switch i32 %i.bw, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %.noexc78
    i32 4, label %.noexc79
    i32 5, label %.noexc80
    i32 6, label %.noexc83
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1257.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1257.lcssa)
  %i.cc = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ce = fmul fast <8 x float> %i.cd, %i.cb
  %i.cf = fadd fast <8 x float> %i.ce, %i.ca
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !52
  %i.ci = insertelement <8 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <8 x float> %i.ci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !52
  %i.cm = insertelement <8 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc79:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <8 x float> %.1257.lcssa
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cs, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ct, i32 1) ; 2 uses
  %i.cv = fcmp fast ogt <8 x float> %i.cu, %i.ct
  %i.cw = select <8 x i1> %i.cv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cx = fsub fast <8 x float> %i.cu, %i.cw      ; 2 uses
  %i.cy = fneg fast <8 x float> %i.cx             ; 2 uses
  %i.cz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cy, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cs)
  %i.da = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cy, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cz) ; 8 uses
  %i.db = fmul fast <8 x float> %i.da, %i.da
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.da, <8 x float> splat (float f0x3C088908))
  %i.de = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.da, <8 x float> splat (float f0x3D2AA9C1))
  %i.df = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.de, <8 x float> nofpclass(nan inf) %i.da, <8 x float> splat (float f0x3E2AAAAA))
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.da, <8 x float> splat (float 5.000000e-01))
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dg, <8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.da)
  %i.di = fadd fast <8 x float> %i.dh, splat (float 1.000000e+00)
  %i.dj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cx)
  %i.dk = shl <8 x i32> %i.dj, splat (i32 23)
  %i.dl = add <8 x i32> %i.dk, splat (i32 1065353216)
  %i.dm = bitcast <8 x i32> %i.dl to <8 x float>
  %i.dn = fmul fast <8 x float> %i.di, %i.dm
  %i.do = fadd fast <8 x float> %i.dn, splat (float 1.000000e+00)
  %i.dp = fdiv fast <8 x float> splat (float 1.000000e+00), %i.do
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc80:                                         ; preds = %._crit_edge
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dt = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ds, i32 1) ; 2 uses
  %i.du = fcmp fast ogt <8 x float> %i.dt, %i.ds
  %i.dv = select <8 x i1> %i.du, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dw = fsub fast <8 x float> %i.dt, %i.dv      ; 2 uses
  %i.dx = fneg fast <8 x float> %i.dw             ; 2 uses
  %i.dy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dr)
  %i.dz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.dy) ; 8 uses
  %i.ea = fmul fast <8 x float> %i.dz, %i.dz
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3C088908))
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3D2AA9C1))
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float f0x3E2AAAAA))
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> splat (float 5.000000e-01))
  %i.eg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dz)
  %i.eh = fadd fast <8 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw)
  %i.ej = shl <8 x i32> %i.ei, splat (i32 23)
  %i.ek = add <8 x i32> %i.ej, splat (i32 1065353216)
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>
  %i.em = fmul fast <8 x float> %i.eh, %i.el
  %i.en = fadd fast <8 x float> %i.em, splat (float 1.000000e+00) ; 2 uses
  %i.eo = fcmp fast ole <8 x float> %i.en, zeroinitializer
  %i.ep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.eq = bitcast <8 x float> %i.ep to <8 x i32>
  %i.er = bitcast <8 x float> %i.ep to <8 x i32>
  %i.es = and <8 x i32> %i.er, splat (i32 -2139095041)
  %i.et = or disjoint <8 x i32> %i.es, splat (i32 1056964608)
  %i.eu = bitcast <8 x i32> %i.et to <8 x float>  ; 3 uses
  %i.ev = lshr <8 x i32> %i.eq, splat (i32 23)
  %i.ew = add nsw <8 x i32> %i.ev, splat (i32 -127)
  %i.ex = sitofp fast <8 x i32> %i.ew to <8 x float> ; 2 uses
  %i.ey = fadd fast <8 x float> %i.ex, splat (float 1.000000e+00)
  %i.ez = fcmp fast olt <8 x float> %i.eu, splat (float f0x3F3504F3) ; 2 uses
  %i.fa = select <8 x i1> %i.ez, <8 x float> %i.eu, <8 x float> zeroinitializer
  %i.fb = fadd fast <8 x float> %i.eu, splat (float -1.000000e+00)
  %i.fc = select fast <8 x i1> %i.ez, <8 x float> %i.ex, <8 x float> %i.ey ; 2 uses
  %i.fd = fadd fast <8 x float> %i.fb, %i.fa      ; 12 uses
  %i.fe = fmul fast <8 x float> %i.fd, %i.fd      ; 2 uses
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0x3DEF251A))
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0xBDFE5D4F))
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0x3E11E9BF))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0xBE2AAE50))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0x3E4CCEAC))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0xBE7FFFFC))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0x3EAAAAAA))
  %i.fn = fmul fast <8 x float> %i.fe, %i.fd
  %i.fo = fmul fast <8 x float> %i.fn, %i.fm
  %i.fp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fo)
  %i.fq = fneg fast <8 x float> %i.fe
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fq, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fp)
  %i.fs = fadd fast <8 x float> %i.fr, %i.fd
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fs)
  %.neg = fmul fast <8 x float> %i.ft, splat (float -2.000000e+00)
  %i.fu = select fast <8 x i1> %i.eo, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> splat (float f0x42B0C0A5))
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fx, i32 1) ; 2 uses
  %i.fz = fcmp fast ogt <8 x float> %i.fy, %i.fx
  %i.ga = select <8 x i1> %i.fz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gb = fsub fast <8 x float> %i.fy, %i.ga      ; 2 uses
  %i.gc = fneg fast <8 x float> %i.gb             ; 2 uses
  %i.gd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fw)
  %i.ge = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gd) ; 8 uses
  %i.gf = fmul fast <8 x float> %i.ge, %i.ge
  %i.gg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ge, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> splat (float f0x3C088908))
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> splat (float f0x3D2AA9C1))
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> splat (float f0x3E2AAAAA))
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> splat (float 5.000000e-01))
  %i.gl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gk, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> nofpclass(nan inf) %i.ge)
  %i.gm = fadd fast <8 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gb)
  %i.go = shl <8 x i32> %i.gn, splat (i32 23)
  %i.gp = add <8 x i32> %i.go, splat (i32 1065353216)
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>
  %i.gr = fmul fast <8 x float> %i.gm, %i.gq
  %i.gs = fadd fast <8 x float> %i.gr, splat (float 1.000000e+00)
  %i.gt = fdiv fast <8 x float> splat (float 1.000000e+00), %i.gs
  %i.gu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.gv = fmul fast <8 x float> %i.gu, %.1257.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc83:                                         ; preds = %._crit_edge
  %i.gw = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !52
  %i.gy = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !52
  %i.hc = insertelement <8 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <8 x float> %i.hc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.he = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> nofpclass(nan inf) %i.gz, <8 x float> nofpclass(nan inf) %i.hd)
  %i.hf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.he, <8 x float> zeroinitializer)
  %i.hg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hf, <8 x float> splat (float 1.000000e+00))
  %i.hh = fmul fast <8 x float> %i.hg, %.1257.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %.lr.ph267, %.loopexit
  %.054266 = phi i32 [ 0, %.lr.ph267 ], [ %i.io, %.loopexit ] ; 3 uses
  %.1257265 = phi <8 x float> [ %.0256, %.lr.ph267 ], [ %.4, %.loopexit ] ; 5 uses
  %i.hi = mul nsw i32 %i.bu, %.054266
  %.reass270 = add i32 %i.hi, %invariant.op269    ; 3 uses
  %i.hj = icmp slt i32 %.reass270, 0
  br i1 %i.hj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hk = load i32, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  %i.hl = srem i32 %.reass270, %i.hk
  %i.hm = sdiv i32 %.reass270, %i.hk              ; 2 uses
  %.not64 = icmp eq i32 %i.hl, 0
  br i1 %.not64, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.hn = load i32, ptr %10, align 4, !tbaa !60
  %.not65 = icmp slt i32 %i.hm, %i.hn
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.ho = load i32, ptr %i.w, align 4, !tbaa !42  ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.hq = load i32, ptr %i.x, align 4, !tbaa !68
  %i.hr = load i32, ptr %11, align 4, !tbaa !60
  %invariant.op = sub i32 %.neg261, %i.hr
  %i.hs = sext i32 %i.hm to i64
  %i.ht = mul i64 %i.ax, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ht
  %i.hv = mul nuw nsw i32 %i.ho, %.054266
  %wide.trip.count = zext nneg i32 %i.ho to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.2263 = phi <8 x float> [ %.1257265, %.lr.ph ], [ %.3, %bb.m ] ; 4 uses
  %i.hw = trunc i64 %indvars.iv to i32
  %i.hx = mul i32 %i.hq, %i.hw
  %.reass = add i32 %i.hx, %invariant.op          ; 3 uses
  %i.hy = icmp slt i32 %.reass, 0
  br i1 %i.hy, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hz = load i32, ptr %i.y, align 4, !tbaa !70  ; 2 uses
  %i.ia = srem i32 %.reass, %i.hz
  %i.ib = sdiv i32 %.reass, %i.hz                 ; 2 uses
  %.not66 = icmp eq i32 %i.ia, 0
  br i1 %.not66, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ic = load i32, ptr %12, align 4, !tbaa !60
  %.not67 = icmp slt i32 %i.ib, %i.ic
  br i1 %.not67, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.id = shl nsw i32 %i.ib, 3
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.ie
  %i.ig = load <8 x float>, ptr %i.if, align 1, !tbaa !81
  %i.ih = trunc i64 %indvars.iv to i32
  %i.ii = add i32 %i.hv, %i.ih
  %i.ij = shl nsw i32 %i.ii, 3
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ik
  %i.im = load <8 x float>, ptr %i.il, align 1, !tbaa !81
  %i.in = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %.2263)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.j
  %.3 = phi nsz <8 x float> [ %.2263, %bb.i ], [ %i.in, %bb.l ], [ %.2263, %bb.k ], [ %.2263, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !144

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.h, %bb.f, %bb.g
  %.4 = phi nsz <8 x float> [ %.1257265, %bb.f ], [ %.1257265, %bb.g ], [ %.1257265, %bb.h ], [ %.1257265, %.preheader ], [ %.3, %bb.m ] ; 2 uses
  %i.io = add nuw nsw i32 %.054266, 1             ; 2 uses
  %exitcond284.not = icmp eq i32 %i.io, %i.bs
  br i1 %exitcond284.not, label %._crit_edge, label %bb.f, !llvm.loop !145

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc83, %.noexc80, %.noexc79, %.noexc78, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.hh, %.noexc83 ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %.noexc78 ], [ %i.dp, %.noexc79 ], [ %i.gv, %.noexc80 ], [ %.1257.lcssa, %._crit_edge ]
  store <8 x float> %.0.i, ptr %.1271, align 1, !tbaa !81
  %i.ip = getelementptr inbounds nuw i8, ptr %.1271, i64 32 ; 2 uses
  %i.iq = add nuw nsw i32 %.055272, 1             ; 2 uses
  %i.ir = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.is = icmp slt i32 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph273, label %._crit_edge274.loopexit, !llvm.loop !146

._crit_edge280:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge280, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !84 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.h = load i32, ptr %0, align 4, !tbaa !60     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !60
  %i.k = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %.not232 = icmp sgt i32 %i.k, %i.j
  br i1 %.not232, label %._crit_edge234, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

_ZN4ncnn3MatD2Ev.exit68.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !60    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge234

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv239 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next240, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ai = load i32, ptr %5, align 4, !tbaa !60
  %i.aj = trunc nsw i64 %indvars.iv239 to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !20, !noalias !158
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !21, !noalias !158
  %i.aq = mul i64 %i.ap, %indvars.iv239
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !58, !noalias !158 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader216.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader216.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !65, !noalias !158
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader216.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader216.preheader:                          ; preds = %.preheader216.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !20, !noalias !159
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !159
  %i.bc = mul i64 %i.bb, %indvars.iv239
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !58, !noalias !159
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv239, 4
  br label %.preheader216

.preheader216:                                    ; preds = %.preheader216.preheader, %._crit_edge228
  %i.bg = phi i32 [ %i.bl, %._crit_edge228 ], [ %i.af, %.preheader216.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge228 ], [ %i.ay, %.preheader216.preheader ] ; 2 uses
  %.056231 = phi i32 [ %.neg213, %._crit_edge228 ], [ 0, %.preheader216.preheader ]
  %.057230 = phi ptr [ %.1.lcssa, %._crit_edge228 ], [ %i.bf, %.preheader216.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg213 = add nuw nsw i32 %.056231, 1          ; 3 uses
  br i1 %i.bi, label %.lr.ph227, label %._crit_edge228

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge228, %.preheader216.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader216.lr.ph ], [ %i.bl, %._crit_edge228 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader216.lr.ph ], [ %i.bl, %._crit_edge228 ]
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next240 to i32
  %exitcond242.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond242.not, label %._crit_edge234, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !153

._crit_edge228.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !60
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.preheader216, %._crit_edge228.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge228.loopexit ], [ %i.bg, %.preheader216 ] ; 4 uses
  %i.bm = phi i32 [ %i.ix, %._crit_edge228.loopexit ], [ %i.bh, %.preheader216 ]
  %.1.lcssa = phi ptr [ %i.iv, %._crit_edge228.loopexit ], [ %.057230, %.preheader216 ]
  %i.bn = icmp slt i32 %.neg213, %i.bl
  br i1 %i.bn, label %.preheader216, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !154

.lr.ph227:                                        ; preds = %.preheader216, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.055226 = phi i32 [ %i.iw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader216 ] ; 2 uses
  %.1225 = phi ptr [ %i.iv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.057230, %.preheader216 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !67
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
end_hunk_0
begin_hunk_1_@_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !69
  %i.bv = load i32, ptr %9, align 4, !tbaa !60
  %invariant.op223 = sub i32 %.neg213, %i.bv
  %.neg215 = add nuw nsw i32 %.055226, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !80
  switch i32 %i.bw, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %bb.f
    i32 4, label %.noexc77
    i32 5, label %.noexc78
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cc = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul fast <4 x float> %i.cd, %i.cb
  %i.cf = fadd fast <4 x float> %i.ce, %i.ca
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !52
  %i.ci = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !52
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc77:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <4 x float> %.1211.lcssa
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = sitofp fast <4 x i32> %i.cv to <4 x float> ; 2 uses
  %i.cx = fcmp fast olt <4 x float> %i.cu, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cz = fsub fast <4 x float> %i.cw, %i.cy      ; 2 uses
  %i.da = fneg fast <4 x float> %i.cz             ; 2 uses
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.da, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cs)
  %i.dc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.da, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.db) ; 8 uses
  %i.dd = fmul fast <4 x float> %i.dc, %i.dc
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.de, <4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x3C088908))
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x3D2AA9C1))
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dg, <4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x3E2AAAAA))
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float 5.000000e-01))
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.dc)
  %i.dk = fadd fast <4 x float> %i.dj, splat (float 1.000000e+00)
  %i.dl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dm = shl <4 x i32> %i.dl, splat (i32 23)
  %i.dn = add <4 x i32> %i.dm, splat (i32 1065353216)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>
  %i.dp = fmul fast <4 x float> %i.dk, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.du = fmul fast <4 x float> %i.dt, splat (float f0x3FB8AA3B)
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01) ; 2 uses
  %i.dw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.dx = sitofp fast <4 x i32> %i.dw to <4 x float> ; 2 uses
  %i.dy = fcmp fast olt <4 x float> %i.dv, %i.dx
  %i.dz = select <4 x i1> %i.dy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ea = fsub fast <4 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fneg fast <4 x float> %i.ea             ; 2 uses
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dt)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ec) ; 8 uses
  %i.ee = fmul fast <4 x float> %i.ed, %i.ed
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0x3C088908))
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0x3D2AA9C1))
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eh, <4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0x3E2AAAAA))
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float 5.000000e-01))
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.ed)
  %i.el = fadd fast <4 x float> %i.ek, splat (float 1.000000e+00)
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ea)
  %i.en = shl <4 x i32> %i.em, splat (i32 23)
  %i.eo = add <4 x i32> %i.en, splat (i32 1065353216)
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>
  %i.eq = fmul fast <4 x float> %i.el, %i.ep
  %i.er = fadd fast <4 x float> %i.eq, splat (float 1.000000e+00) ; 2 uses
  %i.es = fcmp fast ole <4 x float> %i.er, zeroinitializer
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.er, <4 x float> splat (float f0x00800000))
  %i.eu = bitcast <4 x float> %i.et to <4 x i32>  ; 2 uses
  %i.ev = lshr <4 x i32> %i.eu, splat (i32 23)
  %i.ew = and <4 x i32> %i.eu, splat (i32 -2139095041)
  %i.ex = or disjoint <4 x i32> %i.ew, splat (i32 1056964608)
  %i.ey = bitcast <4 x i32> %i.ex to <4 x float>  ; 3 uses
  %i.ez = add nsw <4 x i32> %i.ev, splat (i32 -127)
  %i.fa = sitofp fast <4 x i32> %i.ez to <4 x float> ; 2 uses
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fcmp fast olt <4 x float> %i.ey, splat (float f0x3F3504F3) ; 2 uses
  %i.fd = select <4 x i1> %i.fc, <4 x float> %i.ey, <4 x float> zeroinitializer
  %i.fe = fadd fast <4 x float> %i.ey, splat (float -1.000000e+00)
  %i.ff = select fast <4 x i1> %i.fc, <4 x float> %i.fa, <4 x float> %i.fb ; 2 uses
  %i.fg = fadd fast <4 x float> %i.fe, %i.fd      ; 12 uses
  %i.fh = fmul fast <4 x float> %i.fg, %i.fg      ; 2 uses
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0x3DEF251A))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0xBDFE5D4F))
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0x3E11E9BF))
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0xBE2AAE50))
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0x3E4CCEAC))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0xBE7FFFFC))
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0x3EAAAAAA))
  %i.fq = fmul fast <4 x float> %i.fh, %i.fg
  %i.fr = fmul fast <4 x float> %i.fq, %i.fp
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fr)
  %i.ft = fneg fast <4 x float> %i.fh
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ft, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fs)
  %i.fv = fadd fast <4 x float> %i.fu, %i.fg
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fv)
  %.neg = fmul fast <4 x float> %i.fw, splat (float -2.000000e+00)
  %i.fx = select fast <4 x i1> %i.es, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> splat (float f0x42B0C0A5))
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ga = fmul fast <4 x float> %i.fz, splat (float f0x3FB8AA3B)
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 5.000000e-01) ; 2 uses
  %i.gc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gb)
  %i.gd = sitofp fast <4 x i32> %i.gc to <4 x float> ; 2 uses
  %i.ge = fcmp fast olt <4 x float> %i.gb, %i.gd
  %i.gf = select <4 x i1> %i.ge, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gg = fsub fast <4 x float> %i.gd, %i.gf      ; 2 uses
  %i.gh = fneg fast <4 x float> %i.gg             ; 2 uses
  %i.gi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fz)
  %i.gj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gi) ; 8 uses
  %i.gk = fmul fast <4 x float> %i.gj, %i.gj
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float f0x3C088908))
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float f0x3D2AA9C1))
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float f0x3E2AAAAA))
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float 5.000000e-01))
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gk, <4 x float> nofpclass(nan inf) %i.gj)
  %i.gr = fadd fast <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gg)
  %i.gt = shl <4 x i32> %i.gs, splat (i32 23)
  %i.gu = add <4 x i32> %i.gt, splat (i32 1065353216)
  %i.gv = bitcast <4 x i32> %i.gu to <4 x float>
  %i.gw = fmul fast <4 x float> %i.gr, %i.gv
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gx
  %i.gz = fadd fast <4 x float> %i.gy, splat (float -1.000000e+00)
  %i.ha = fmul fast <4 x float> %i.gz, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.hb = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !52
  %i.hd = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !52
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fmul fast <4 x float> %i.he, %.1211.lcssa
  %i.hk = fadd fast <4 x float> %i.hj, %i.hi
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hk, <4 x float> zeroinitializer)
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> splat (float 1.000000e+00))
  %i.hn = fmul fast <4 x float> %i.hm, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %.lr.ph221, %.loopexit
  %.054220 = phi i32 [ 0, %.lr.ph221 ], [ %i.iu, %.loopexit ] ; 3 uses
  %.1211219 = phi <4 x float> [ %.0210, %.lr.ph221 ], [ %.4, %.loopexit ] ; 5 uses
  %i.ho = mul nsw i32 %i.bu, %.054220
  %.reass224 = add i32 %i.ho, %invariant.op223    ; 3 uses
  %i.hp = icmp slt i32 %.reass224, 0
  br i1 %i.hp, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hq = load i32, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  %i.hr = srem i32 %.reass224, %i.hq
  %i.hs = sdiv i32 %.reass224, %i.hq              ; 2 uses
  %.not64 = icmp eq i32 %i.hr, 0
  br i1 %.not64, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ht = load i32, ptr %10, align 4, !tbaa !60
  %.not65 = icmp slt i32 %i.hs, %i.ht
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.hu = load i32, ptr %i.w, align 4, !tbaa !42  ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.hw = load i32, ptr %i.x, align 4, !tbaa !68
  %i.hx = load i32, ptr %11, align 4, !tbaa !60
  %invariant.op = sub i32 %.neg215, %i.hx
  %i.hy = sext i32 %i.hs to i64
  %i.hz = mul i64 %i.ax, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.hz
  %i.ib = mul nuw nsw i32 %i.hu, %.054220
  %wide.trip.count = zext nneg i32 %i.hu to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.2217 = phi <4 x float> [ %.1211219, %.lr.ph ], [ %.3, %bb.o ] ; 4 uses
  %i.ic = trunc i64 %indvars.iv to i32
  %i.id = mul i32 %i.hw, %i.ic
  %.reass = add i32 %i.id, %invariant.op          ; 3 uses
  %i.ie = icmp slt i32 %.reass, 0
  br i1 %i.ie, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.if = load i32, ptr %i.y, align 4, !tbaa !70  ; 2 uses
  %i.ig = srem i32 %.reass, %i.if
  %i.ih = sdiv i32 %.reass, %i.if                 ; 2 uses
  %.not66 = icmp eq i32 %i.ig, 0
  br i1 %.not66, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ii = load i32, ptr %12, align 4, !tbaa !60
  %.not67 = icmp slt i32 %i.ih, %i.ii
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ij = shl nsw i32 %i.ih, 2
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ik
  %i.im = load <4 x float>, ptr %i.il, align 1, !tbaa !81
  %i.in = trunc i64 %indvars.iv to i32
  %i.io = add i32 %i.ib, %i.in
  %i.ip = shl nsw i32 %i.io, 2
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.iq
  %i.is = load <4 x float>, ptr %i.ir, align 1, !tbaa !81
  %i.it = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.is, <4 x float> nofpclass(nan inf) %.2217)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2217, %bb.k ], [ %i.it, %bb.n ], [ %.2217, %bb.m ], [ %.2217, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !155

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211219, %bb.h ], [ %.1211219, %bb.i ], [ %.1211219, %bb.j ], [ %.1211219, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.iu = add nuw nsw i32 %.054220, 1             ; 2 uses
  %exitcond238.not = icmp eq i32 %i.iu, %i.bs
  br i1 %exitcond238.not, label %._crit_edge, label %bb.h, !llvm.loop !156

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.hn, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dr, %.noexc77 ], [ %i.ha, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1225, align 1, !tbaa !81
  %i.iv = getelementptr inbounds nuw i8, ptr %.1225, i64 16 ; 2 uses
  %i.iw = add nuw nsw i32 %.055226, 1             ; 2 uses
  %i.ix = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.iy = icmp slt i32 %i.iw, %i.ix
  br i1 %i.iy, label %.lr.ph227, label %._crit_edge228.loopexit, !llvm.loop !157

._crit_edge234:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge234, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.h = load i32, ptr %0, align 4, !tbaa !60     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !60
  %i.k = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge135.split, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph

_ZN4ncnn3MatD2Ev.exit76.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !168
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !168
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !168
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = load i32, ptr %5, align 4, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65, !noalias !169
  %i.v = load ptr, ptr %6, align 8, !tbaa !20, !noalias !169
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !169
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58, !noalias !169 ; 2 uses
  %factor.op.mul137 = mul i64 %i.x, %i.z
  %i.aa = sext i32 %i.u to i64
  %i.ab = load i32, ptr %7, align 4, !tbaa !60    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ai = mul i64 %i.z, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split, label %._crit_edge135.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph
  %i.ao = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, label %._crit_edge135.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split:        ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !67
  %.not71 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = load i32, ptr %i.am, align 8, !tbaa !80
  %i.au = sext i32 %i.k to i64
  %i.av = sext i32 %i.s to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit76

_ZN4ncnn3MatD2Ev.exit76:                          ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv144 = phi i64 [ %i.au, %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split ], [ %indvars.iv.next145, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 5 uses
  %.reass136 = mul i64 %factor.op.mul, %indvars.iv144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass136
  %i.ay = mul nsw i64 %indvars.iv144, %i.av
  %i.az = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ay
  %.reass138 = mul i64 %factor.op.mul137, %indvars.iv144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass138
  br label %.preheader

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit76, %._crit_edge129
  %.063132 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit76 ], [ %.neg115, %._crit_edge129 ]
  %.064131 = phi ptr [ %i.ax, %_ZN4ncnn3MatD2Ev.exit76 ], [ %i.dp, %._crit_edge129 ]
  %.neg115 = add nuw nsw i32 %.063132, 1          ; 3 uses
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge129
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next145 to i32
  %exitcond147.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond147.not, label %._crit_edge135.split, label %_ZN4ncnn3MatD2Ev.exit76

._crit_edge129:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond143.not = icmp eq i32 %.neg115, %i.ab
  br i1 %exitcond143.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !164

bb.c:                                             ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.062127 = phi i32 [ 0, %.preheader ], [ %i.dq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %.165126 = phi ptr [ %.064131, %.preheader ], [ %i.dp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv144
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.061 = phi nsz float [ %i.bd, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  br i1 %i.as, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %bb.e
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !69
  %i.bf = load i32, ptr %9, align 4, !tbaa !60
  %invariant.op124 = sub i32 %.neg115, %i.bf
  %.neg117 = add nuw nsw i32 %.062127, 1
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  %.1.lcssa = phi float [ %.061, %bb.e ], [ %.6, %.loopexit ] ; 13 uses
  switch i32 %i.at, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.bg = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52
  %i.bj = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.bk = select fast i1 %i.bj, float 1.000000e+00, float %i.bi
  %i.bl = fmul fast float %i.bk, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !52
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.bn)
  %spec.select114 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select, float %i.bp)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %.sroa.speculated103 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated103, float f0xC2B0C0A5)
  %i.bq = fneg fast float %.sroa.speculated
  %i.br = call fast float @llvm.exp.f32(float %i.bq)
  %i.bs = fadd fast float %i.br, 1.000000e+00
  %i.bt = fdiv fast float 1.000000e+00, %i.bs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.bu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.bv = fadd fast float %i.bu, 1.000000e+00
  %i.bw = call fast float @llvm.log.f32(float %i.bv)
  %i.bx = call fast float @llvm.tanh.f32(float %i.bw)
  %i.by = fmul fast float %i.bx, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !52 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !52 ; 2 uses
  %i.cd = fneg fast float %i.cc
  %i.ce = fdiv fast float %i.cd, %i.ca            ; 2 uses
  %i.cf = fcmp fast olt float %.1.lcssa, %i.ce
  br i1 %i.cf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = fdiv fast float 1.000000e+00, %i.ca
  %i.ch = fadd fast float %i.ce, %i.cg
  %i.ci = fcmp fast ogt float %.1.lcssa, %i.ch
  br i1 %i.ci, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = fmul fast float %i.ca, %.1.lcssa
  %i.ck = fadd fast float %i.cj, %i.cc
  %i.cl = fmul fast float %i.ck, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %.lr.ph122, %.loopexit
  %.060121 = phi i32 [ 0, %.lr.ph122 ], [ %i.do, %.loopexit ] ; 3 uses
  %.1120 = phi float [ %.061, %.lr.ph122 ], [ %.6, %.loopexit ] ; 5 uses
  %i.cm = mul nsw i32 %i.be, %.060121
  %.reass125 = add i32 %i.cm, %invariant.op124    ; 3 uses
  %i.cn = icmp slt i32 %.reass125, 0
  br i1 %i.cn, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !71 ; 2 uses
  %i.cp = srem i32 %.reass125, %i.co
  %i.cq = sdiv i32 %.reass125, %i.co              ; 2 uses
  %.not72 = icmp eq i32 %i.cp, 0
  br i1 %.not72, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cr = load i32, ptr %10, align 4, !tbaa !60
  %.not73 = icmp slt i32 %i.cq, %i.cr
  br i1 %.not73, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cs = sext i32 %i.cq to i64
  %i.ct = mul i64 %i.ai, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ct
  %i.cv = load i32, ptr %i.aj, align 4, !tbaa !42 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.cx = load i32, ptr %i.ak, align 4, !tbaa !68
  %i.cy = load i32, ptr %11, align 4, !tbaa !60
  %invariant.op = sub i32 %.neg117, %i.cy
  %i.cz = mul nuw nsw i32 %i.cv, %.060121
  %i.da = zext nneg i32 %i.cz to i64
  %wide.trip.count = zext nneg i32 %i.cv to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.da
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.2118 = phi float [ %.1120, %.lr.ph ], [ %.4, %bb.v ] ; 4 uses
  %i.db = trunc i64 %indvars.iv to i32
  %i.dc = mul i32 %i.cx, %i.db
  %.reass = add i32 %i.dc, %invariant.op          ; 3 uses
  %i.dd = icmp slt i32 %.reass, 0
  br i1 %i.dd, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load i32, ptr %i.al, align 4, !tbaa !70 ; 2 uses
  %i.df = srem i32 %.reass, %i.de
  %i.dg = sdiv i32 %.reass, %i.de                 ; 2 uses
  %.not74 = icmp eq i32 %i.df, 0
  br i1 %.not74, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dh = load i32, ptr %12, align 4, !tbaa !60
  %.not75 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not75, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !52
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dl = load float, ptr %gep, align 4, !tbaa !52
  %i.dm = fmul fast float %i.dl, %i.dk
  %i.dn = fadd fast float %i.dm, %.2118
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.s
  %.4 = phi nsz float [ %.2118, %bb.r ], [ %.2118, %bb.s ], [ %i.dn, %bb.u ], [ %.2118, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !165

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.p, %bb.n, %bb.o
  %.6 = phi nsz float [ %.1120, %bb.n ], [ %.1120, %bb.o ], [ %.1120, %bb.p ], [ %.1120, %bb.q ], [ %.4, %bb.v ] ; 2 uses
  %i.do = add nuw nsw i32 %.060121, 1             ; 2 uses
  %exitcond141.not = icmp eq i32 %i.do, %i.ar
  br i1 %exitcond141.not, label %._crit_edge, label %bb.n, !llvm.loop !166

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.h, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %._crit_edge, %bb.k
  %.1113 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ], [ 0.000000e+00, %bb.k ], [ %spec.select114, %bb.h ], [ %i.bt, %bb.i ], [ %i.by, %bb.j ], [ %i.cl, %bb.m ], [ %.1.lcssa, %bb.l ]
  store float %.1113, ptr %.165126, align 4, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %.165126, i64 4 ; 2 uses
  %i.dq = add nuw nsw i32 %.062127, 1             ; 2 uses
  %exitcond142.not = icmp eq i32 %i.dq, %i.ao
  br i1 %exitcond142.not, label %._crit_edge129, label %bb.c, !llvm.loop !167

._crit_edge135.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %_ZN4ncnn3MatD2Ev.exit76.lr.ph, %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge135.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @_ZNK4ncnn22DeconvolutionDepthWise11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #17

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !8, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64}
!18 = !{!17, !14, i64 8}
!19 = !{!17, !16, i64 32}
!20 = !{!17, !13, i64 0}
!21 = !{!17, !15, i64 64}
!22 = !{!"any p2 pointer", !13, i64 0}
!23 = !{!"p2 _ZTSN4ncnn5LayerE", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 16}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !15, i64 8, !7, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSN4ncnn5LayerE", !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !27, i64 13, !27, i64 14, !27, i64 15, !27, i64 16, !27, i64 17, !27, i64 18, !27, i64 19, !27, i64 20, !27, i64 21, !27, i64 22, !27, i64 23, !27, i64 24, !27, i64 25, !27, i64 26, !27, i64 27, !8, i64 28, !13, i64 32, !8, i64 40, !30, i64 48, !30, i64 80, !34, i64 112, !34, i64 136, !39, i64 160, !39, i64 184}
!41 = !{!"_ZTSN4ncnn22DeconvolutionDepthWiseE", !40, i64 0, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !17, i64 288, !8, i64 360, !17, i64 368, !17, i64 440}
!42 = !{!41, !8, i64 212}
!43 = !{!41, !8, i64 216}
!44 = !{!41, !8, i64 272}
!45 = !{!41, !8, i64 276}
!46 = !{!41, !8, i64 208}
!47 = !{!"_ZTSN4ncnn6OptionE", !27, i64 0, !27, i64 1, !27, i64 2, !27, i64 3, !8, i64 4, !16, i64 8, !16, i64 16, !8, i64 24, !27, i64 28, !27, i64 29, !27, i64 30, !27, i64 31, !27, i64 32, !27, i64 33, !27, i64 34, !27, i64 35, !27, i64 36, !27, i64 37, !27, i64 38, !27, i64 39, !8, i64 40, !27, i64 44, !27, i64 45, !27, i64 46, !27, i64 47, !7, i64 48, !27, i64 49, !27, i64 50, !27, i64 51, !27, i64 52, !27, i64 53, !27, i64 54, !27, i64 55, !27, i64 56, !27, i64 57, !27, i64 58, !27, i64 59, !27, i64 60, !27, i64 61, !27, i64 62, !27, i64 63}
!48 = !{!47, !27, i64 39}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!"float", !7, i64 0}
!52 = !{!51, !51, i64 0}
end_hunk_1
