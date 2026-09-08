Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn33DeconvolutionDepthWise_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
bb.c:                                             ; preds = %.lr.ph131
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph131
  %.061 = phi nsz <16 x float> [ %i.br, %bb.c ], [ zeroinitializer, %.lr.ph131 ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph125, label %._crit_edge

.lr.ph125:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !70
  %i.bv = load i32, ptr %9, align 4, !tbaa !61
  %invariant.op127 = sub i32 %.neg117, %i.bv
  %.neg119 = add nuw nsw i32 %.062130, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1.lcssa = phi <16 x float> [ %.061, %bb.d ], [ %.6, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !81
  switch i32 %i.bw, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc83
    i32 3, label %bb.f
    i32 4, label %.noexc84
    i32 5, label %.noexc85
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.1.lcssa, <16 x float> zeroinitializer, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc83:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = fcmp fast olt <16 x float> %.1.lcssa, zeroinitializer
  %i.cb = insertelement <16 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <16 x float> %i.cb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cd = select fast <16 x i1> %i.ca, <16 x float> %i.cc, <16 x float> splat (float 1.000000e+00)
  %i.ce = fmul fast <16 x float> %i.cd, %.1.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cf = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !52
  %i.ch = insertelement <16 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <16 x float> %i.ch, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !52
  %i.cl = insertelement <16 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <16 x float> %i.cl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.1.lcssa, <16 x float> nofpclass(nan inf) %i.ci, i32 4)
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.cm, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc84:                                         ; preds = %._crit_edge
  %i.cp = fneg fast <16 x float> %.1.lcssa
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ct = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cs, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cu = fcmp fast ogt <16 x float> %i.ct, %i.cs
  %i.cv = fadd fast <16 x float> %i.ct, splat (float -1.000000e+00)
  %i.cw = select fast <16 x i1> %i.cu, <16 x float> %i.cv, <16 x float> %i.ct ; 2 uses
  %i.cx = fneg fast <16 x float> %i.cw            ; 2 uses
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cx, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cr)
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cx, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cy) ; 8 uses
  %i.da = fmul fast <16 x float> %i.cz, %i.cz
  %i.db = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.db, <16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float f0x3C088908))
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dc, <16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float f0x3D2AA9C1))
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float f0x3E2AAAAA))
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float 5.000000e-01))
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> nofpclass(nan inf) %i.da, <16 x float> nofpclass(nan inf) %i.cz)
  %i.dh = fadd fast <16 x float> %i.dg, splat (float 1.000000e+00)
  %i.di = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dj = shl <16 x i32> %i.di, splat (i32 23)
  %i.dk = add <16 x i32> %i.dj, splat (i32 1065353216)
  %i.dl = bitcast <16 x i32> %i.dk to <16 x float>
  %i.dm = fmul fast <16 x float> %i.dh, %i.dl
  %i.dn = fadd fast <16 x float> %i.dm, splat (float 1.000000e+00)
  %i.do = fdiv fast <16 x float> splat (float 1.000000e+00), %i.dn
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc85:                                         ; preds = %._crit_edge
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %.1.lcssa, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ds = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dr, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dt = fcmp fast ogt <16 x float> %i.ds, %i.dr
  %i.du = fadd fast <16 x float> %i.ds, splat (float -1.000000e+00)
  %i.dv = select fast <16 x i1> %i.dt, <16 x float> %i.du, <16 x float> %i.ds ; 2 uses
  %i.dw = fneg fast <16 x float> %i.dv            ; 2 uses
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dq)
  %i.dy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dx) ; 8 uses
  %i.dz = fmul fast <16 x float> %i.dy, %i.dy
  %i.ea = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.eb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x3C088908))
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eb, <16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x3D2AA9C1))
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x3E2AAAAA))
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float 5.000000e-01))
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.dz, <16 x float> nofpclass(nan inf) %i.dy)
  %i.eg = fadd fast <16 x float> %i.ef, splat (float 1.000000e+00)
  %i.eh = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ei = shl <16 x i32> %i.eh, splat (i32 23)
  %i.ej = add <16 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <16 x i32> %i.ej to <16 x float>
  %i.el = fmul fast <16 x float> %i.eg, %i.ek
  %i.em = fadd fast <16 x float> %i.el, splat (float 1.000000e+00) ; 2 uses
  %i.en = fcmp fast ole <16 x float> %i.em, zeroinitializer
  %i.eo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x00800000), i32 4)
  %i.ep = bitcast <16 x float> %i.eo to <16 x i32> ; 2 uses
  %i.eq = lshr <16 x i32> %i.ep, splat (i32 23)
  %i.er = and <16 x i32> %i.ep, splat (i32 -2139095041)
  %i.es = or disjoint <16 x i32> %i.er, splat (i32 1056964608)
  %i.et = bitcast <16 x i32> %i.es to <16 x float> ; 3 uses
  %i.eu = add nsw <16 x i32> %i.eq, splat (i32 -127)
  %i.ev = sitofp fast <16 x i32> %i.eu to <16 x float> ; 2 uses
  %i.ew = fadd fast <16 x float> %i.ev, splat (float 1.000000e+00)
  %i.ex = fcmp fast olt <16 x float> %i.et, splat (float f0x3F3504F3) ; 2 uses
  %i.ey = fadd fast <16 x float> %i.et, splat (float -1.000000e+00)
  %i.ez = select fast <16 x i1> %i.ex, <16 x float> %i.ev, <16 x float> %i.ew ; 2 uses
  %i.fa = select fast <16 x i1> %i.ex, <16 x float> %i.et, <16 x float> zeroinitializer
  %i.fb = fadd fast <16 x float> %i.ey, %i.fa     ; 12 uses
  %i.fc = fmul fast <16 x float> %i.fb, %i.fb     ; 2 uses
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fd, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x3DEF251A))
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0xBDFE5D4F))
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x3E11E9BF))
  %i.fh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0xBE2AAE50))
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fh, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x3E4CCEAC))
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0xBE7FFFFC))
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x3EAAAAAA))
  %i.fl = fmul fast <16 x float> %i.fc, %i.fb
  %i.fm = fmul fast <16 x float> %i.fl, %i.fk
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fm)
  %i.fo = fneg fast <16 x float> %i.fc
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fo, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fn)
  %i.fq = fadd fast <16 x float> %i.fp, %i.fb
  %i.fr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fq)
  %.neg = fmul fast <16 x float> %i.fr, splat (float -2.000000e+00)
  %i.fs = select fast <16 x i1> %i.en, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg
  %i.ft = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ft, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fw = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fv, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fx = fcmp fast ogt <16 x float> %i.fw, %i.fv
  %i.fy = fadd fast <16 x float> %i.fw, splat (float -1.000000e+00)
  %i.fz = select fast <16 x i1> %i.fx, <16 x float> %i.fy, <16 x float> %i.fw ; 2 uses
  %i.ga = fneg fast <16 x float> %i.fz            ; 2 uses
  %i.gb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ga, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fu)
  %i.gc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ga, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gb) ; 8 uses
  %i.gd = fmul fast <16 x float> %i.gc, %i.gc
  %i.ge = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gc, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.gf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ge, <16 x float> nofpclass(nan inf) %i.gc, <16 x float> splat (float f0x3C088908))
  %i.gg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gf, <16 x float> nofpclass(nan inf) %i.gc, <16 x float> splat (float f0x3D2AA9C1))
  %i.gh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gg, <16 x float> nofpclass(nan inf) %i.gc, <16 x float> splat (float f0x3E2AAAAA))
  %i.gi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gh, <16 x float> nofpclass(nan inf) %i.gc, <16 x float> splat (float 5.000000e-01))
  %i.gj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gi, <16 x float> nofpclass(nan inf) %i.gd, <16 x float> nofpclass(nan inf) %i.gc)
  %i.gk = fadd fast <16 x float> %i.gj, splat (float 1.000000e+00)
  %i.gl = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gm = shl <16 x i32> %i.gl, splat (i32 23)
  %i.gn = add <16 x i32> %i.gm, splat (i32 1065353216)
  %i.go = bitcast <16 x i32> %i.gn to <16 x float>
  %i.gp = fmul fast <16 x float> %i.gk, %i.go
  %i.gq = fadd fast <16 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = fdiv fast <16 x float> splat (float 1.000000e+00), %i.gq
  %i.gs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gr, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.gt = fmul fast <16 x float> %i.gs, %.1.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.gu = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !52
  %i.gw = insertelement <16 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <16 x float> %i.gw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !52
  %i.ha = insertelement <16 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <16 x float> %i.ha, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.1.lcssa, <16 x float> nofpclass(nan inf) %i.gx, <16 x float> nofpclass(nan inf) %i.hb)
  %i.hd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hc, <16 x float> zeroinitializer, i32 4)
  %i.he = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hd, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.hf = fmul fast <16 x float> %i.he, %.1.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %.lr.ph125, %.loopexit
  %.060124 = phi i32 [ 0, %.lr.ph125 ], [ %i.im, %.loopexit ] ; 3 uses
  %.1123 = phi <16 x float> [ %.061, %.lr.ph125 ], [ %.6, %.loopexit ] ; 5 uses
  %i.hg = mul nsw i32 %i.bu, %.060124
  %.reass128 = add i32 %i.hg, %invariant.op127    ; 3 uses
  %i.hh = icmp slt i32 %.reass128, 0
  br i1 %i.hh, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hi = load i32, ptr %i.v, align 8, !tbaa !72  ; 2 uses
  %i.hj = srem i32 %.reass128, %i.hi
  %i.hk = sdiv exact i32 %.reass128, %i.hi        ; 2 uses
  %.not71 = icmp eq i32 %i.hj, 0
  br i1 %.not71, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.hl = load i32, ptr %10, align 4, !tbaa !61
  %.not72 = icmp slt i32 %i.hk, %i.hl
  br i1 %.not72, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.hm = load i32, ptr %i.w, align 4, !tbaa !42  ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ho = load i32, ptr %i.x, align 4, !tbaa !69
  %i.hp = load i32, ptr %11, align 4, !tbaa !61
  %invariant.op = sub i32 %.neg119, %i.hp
  %i.hq = sext i32 %i.hk to i64
  %i.hr = mul i64 %i.ax, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.hr
  %i.ht = mul nuw nsw i32 %i.hm, %.060124
  %wide.trip.count = zext nneg i32 %i.hm to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.2121 = phi <16 x float> [ %.1123, %.lr.ph ], [ %.4, %bb.o ] ; 4 uses
  %i.hu = trunc i64 %indvars.iv to i32
  %i.hv = mul i32 %i.ho, %i.hu
  %.reass = add i32 %i.hv, %invariant.op          ; 3 uses
  %i.hw = icmp slt i32 %.reass, 0
  br i1 %i.hw, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hx = load i32, ptr %i.y, align 4, !tbaa !71  ; 2 uses
  %i.hy = srem i32 %.reass, %i.hx
  %i.hz = sdiv exact i32 %.reass, %i.hx           ; 2 uses
  %.not73 = icmp eq i32 %i.hy, 0
  br i1 %.not73, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ia = load i32, ptr %12, align 4, !tbaa !61
  %.not74 = icmp slt i32 %i.hz, %i.ia
  br i1 %.not74, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ib = shl nsw i32 %i.hz, 4
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ic
  %i.ie = load <16 x float>, ptr %i.id, align 1, !tbaa !82
  %i.if = trunc i64 %indvars.iv to i32
  %i.ig = add i32 %i.ht, %i.if
  %i.ih = shl nsw i32 %i.ig, 4
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ii
  %i.ik = load <16 x float>, ptr %i.ij, align 1, !tbaa !82
  %i.il = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ie, <16 x float> nofpclass(nan inf) %i.ik, <16 x float> nofpclass(nan inf) %.2121)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.4 = phi nsz <16 x float> [ %.2121, %bb.k ], [ %.2121, %bb.l ], [ %i.il, %bb.n ], [ %.2121, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !143

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.6 = phi nsz <16 x float> [ %.1123, %bb.h ], [ %.1123, %bb.i ], [ %.1123, %bb.j ], [ %.1123, %.preheader ], [ %.4, %bb.o ] ; 2 uses
  %i.im = add nuw nsw i32 %.060124, 1             ; 2 uses
  %exitcond142.not = icmp eq i32 %i.im, %i.bs
  br i1 %exitcond142.not, label %._crit_edge, label %bb.h, !llvm.loop !144

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit:  ; preds = %bb.g, %.noexc85, %.noexc84, %bb.f, %.noexc83, %bb.e, %._crit_edge
  %.0.i = phi nsz <16 x float> [ %i.hf, %bb.g ], [ %i.bx, %bb.e ], [ %i.ce, %.noexc83 ], [ %i.co, %bb.f ], [ %i.do, %.noexc84 ], [ %i.gt, %.noexc85 ], [ %.1.lcssa, %._crit_edge ]
  store <16 x float> %.0.i, ptr %.165129, align 1, !tbaa !82
  %i.in = getelementptr inbounds nuw i8, ptr %.165129, i64 64 ; 2 uses
  %i.io = add nuw nsw i32 %.062130, 1             ; 2 uses
  %i.ip = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph131, label %._crit_edge132.loopexit, !llvm.loop !145

._crit_edge138:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit75.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge138, %bb.a
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
declare !callback !85 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn33DeconvolutionDepthWise_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
  %.not255 = icmp sgt i32 %i.k, %i.j
  br i1 %.not255, label %._crit_edge257, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

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
  %i.ab = load i32, ptr %7, align 4, !tbaa !61    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge257

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv262 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next263, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ai = load i32, ptr %5, align 4, !tbaa !61
  %i.aj = trunc nsw i64 %indvars.iv262 to i32
  %i.ak = shl i32 %i.aj, 3
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !20, !noalias !157
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !21, !noalias !157
  %i.aq = mul i64 %i.ap, %indvars.iv262
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !157 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader239.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader239.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !66, !noalias !157
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader239.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader239.preheader:                          ; preds = %.preheader239.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !20, !noalias !158
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !158
  %i.bc = mul i64 %i.bb, %indvars.iv262
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !158
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv262, 5
  br label %.preheader239

.preheader239:                                    ; preds = %.preheader239.preheader, %._crit_edge251
  %i.bg = phi i32 [ %i.bl, %._crit_edge251 ], [ %i.af, %.preheader239.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge251 ], [ %i.ay, %.preheader239.preheader ] ; 2 uses
  %.056254 = phi i32 [ %.neg236, %._crit_edge251 ], [ 0, %.preheader239.preheader ]
  %.057253 = phi ptr [ %.1.lcssa, %._crit_edge251 ], [ %i.bf, %.preheader239.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg236 = add nuw nsw i32 %.056254, 1          ; 3 uses
  br i1 %i.bi, label %.lr.ph250, label %._crit_edge251

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge251, %.preheader239.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader239.lr.ph ], [ %i.bl, %._crit_edge251 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader239.lr.ph ], [ %i.bl, %._crit_edge251 ]
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next263 to i32
  %exitcond265.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond265.not, label %._crit_edge257, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !152

._crit_edge251.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !61
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %.preheader239, %._crit_edge251.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge251.loopexit ], [ %i.bg, %.preheader239 ] ; 4 uses
  %i.bm = phi i32 [ %i.iq, %._crit_edge251.loopexit ], [ %i.bh, %.preheader239 ]
  %.1.lcssa = phi ptr [ %i.io, %._crit_edge251.loopexit ], [ %.057253, %.preheader239 ]
  %i.bn = icmp slt i32 %.neg236, %i.bl
  br i1 %i.bn, label %.preheader239, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !153

.lr.ph250:                                        ; preds = %.preheader239, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.055249 = phi i32 [ %i.ip, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader239 ] ; 2 uses
  %.1248 = phi ptr [ %i.io, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.057253, %.preheader239 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !68
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph250
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <8 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph250
  %.0233 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph250 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph244, label %._crit_edge

.lr.ph244:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !70
  %i.bv = load i32, ptr %9, align 4, !tbaa !61
  %invariant.op246 = sub i32 %.neg236, %i.bv
  %.neg238 = add nuw nsw i32 %.055249, 1
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1234.lcssa = phi <8 x float> [ %.0233, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !81
  switch i32 %i.bw, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %.noexc78
    i32 4, label %.noexc79
    i32 5, label %.noexc80
    i32 6, label %.noexc83
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1234.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1234.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1234.lcssa)
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
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1234.lcssa, <8 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc79:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <8 x float> %.1234.lcssa
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
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.1234.lcssa, <8 x float> splat (float f0x42B0C0A5))
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
  %i.ep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float f0x00800000))
  %i.eq = bitcast <8 x float> %i.ep to <8 x i32>  ; 2 uses
  %i.er = lshr <8 x i32> %i.eq, splat (i32 23)
  %i.es = and <8 x i32> %i.eq, splat (i32 -2139095041)
  %i.et = or disjoint <8 x i32> %i.es, splat (i32 1056964608)
  %i.eu = bitcast <8 x i32> %i.et to <8 x float>  ; 3 uses
  %i.ev = add nsw <8 x i32> %i.er, splat (i32 -127)
  %i.ew = sitofp fast <8 x i32> %i.ev to <8 x float> ; 2 uses
  %i.ex = fadd fast <8 x float> %i.ew, splat (float 1.000000e+00)
  %i.ey = fcmp fast olt <8 x float> %i.eu, splat (float f0x3F3504F3) ; 2 uses
  %i.ez = select <8 x i1> %i.ey, <8 x float> %i.eu, <8 x float> zeroinitializer
  %i.fa = fadd fast <8 x float> %i.eu, splat (float -1.000000e+00)
  %i.fb = select fast <8 x i1> %i.ey, <8 x float> %i.ew, <8 x float> %i.ex ; 2 uses
  %i.fc = fadd fast <8 x float> %i.fa, %i.ez      ; 12 uses
  %i.fd = fmul fast <8 x float> %i.fc, %i.fc      ; 2 uses
  %i.fe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0x3DEF251A))
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0xBDFE5D4F))
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0x3E11E9BF))
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0xBE2AAE50))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0x3E4CCEAC))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0xBE7FFFFC))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> splat (float f0x3EAAAAAA))
  %i.fm = fmul fast <8 x float> %i.fd, %i.fc
  %i.fn = fmul fast <8 x float> %i.fm, %i.fl
  %i.fo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fn)
  %i.fp = fneg fast <8 x float> %i.fd
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fo)
  %i.fr = fadd fast <8 x float> %i.fq, %i.fc
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fr)
  %.neg = fmul fast <8 x float> %i.fs, splat (float -2.000000e+00)
  %i.ft = select fast <8 x i1> %i.eo, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> splat (float f0x42B0C0A5))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fx = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fw, i32 1) ; 2 uses
  %i.fy = fcmp fast ogt <8 x float> %i.fx, %i.fw
  %i.fz = select <8 x i1> %i.fy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ga = fsub fast <8 x float> %i.fx, %i.fz      ; 2 uses
  %i.gb = fneg fast <8 x float> %i.ga             ; 2 uses
  %i.gc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fv)
  %i.gd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gc) ; 8 uses
  %i.ge = fmul fast <8 x float> %i.gd, %i.gd
  %i.gf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gd, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gf, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> splat (float f0x3C088908))
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> splat (float f0x3D2AA9C1))
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> splat (float f0x3E2AAAAA))
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> splat (float 5.000000e-01))
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> nofpclass(nan inf) %i.ge, <8 x float> nofpclass(nan inf) %i.gd)
  %i.gl = fadd fast <8 x float> %i.gk, splat (float 1.000000e+00)
  %i.gm = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ga)
  %i.gn = shl <8 x i32> %i.gm, splat (i32 23)
  %i.go = add <8 x i32> %i.gn, splat (i32 1065353216)
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>
  %i.gq = fmul fast <8 x float> %i.gl, %i.gp
  %i.gr = fadd fast <8 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv fast <8 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.gu = fmul fast <8 x float> %i.gt, %.1234.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc83:                                         ; preds = %._crit_edge
  %i.gv = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !52
  %i.gx = insertelement <8 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <8 x float> %i.gx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !52
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.1234.lcssa, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.hc)
  %i.he = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> zeroinitializer)
  %i.hf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.he, <8 x float> splat (float 1.000000e+00))
  %i.hg = fmul fast <8 x float> %i.hf, %.1234.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %.lr.ph244, %.loopexit
  %.054243 = phi i32 [ 0, %.lr.ph244 ], [ %i.in, %.loopexit ] ; 3 uses
  %.1234242 = phi <8 x float> [ %.0233, %.lr.ph244 ], [ %.4, %.loopexit ] ; 5 uses
  %i.hh = mul nsw i32 %i.bu, %.054243
  %.reass247 = add i32 %i.hh, %invariant.op246    ; 3 uses
  %i.hi = icmp slt i32 %.reass247, 0
  br i1 %i.hi, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hj = load i32, ptr %i.v, align 8, !tbaa !72  ; 2 uses
  %i.hk = srem i32 %.reass247, %i.hj
  %i.hl = sdiv exact i32 %.reass247, %i.hj        ; 2 uses
  %.not64 = icmp eq i32 %i.hk, 0
  br i1 %.not64, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.hm = load i32, ptr %10, align 4, !tbaa !61
  %.not65 = icmp slt i32 %i.hl, %i.hm
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.hn = load i32, ptr %i.w, align 4, !tbaa !42  ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.hp = load i32, ptr %i.x, align 4, !tbaa !69
  %i.hq = load i32, ptr %11, align 4, !tbaa !61
  %invariant.op = sub i32 %.neg238, %i.hq
  %i.hr = sext i32 %i.hl to i64
  %i.hs = mul i64 %i.ax, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.hs
  %i.hu = mul nuw nsw i32 %i.hn, %.054243
  %wide.trip.count = zext nneg i32 %i.hn to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.2240 = phi <8 x float> [ %.1234242, %.lr.ph ], [ %.3, %bb.m ] ; 4 uses
  %i.hv = trunc i64 %indvars.iv to i32
  %i.hw = mul i32 %i.hp, %i.hv
  %.reass = add i32 %i.hw, %invariant.op          ; 3 uses
  %i.hx = icmp slt i32 %.reass, 0
  br i1 %i.hx, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hy = load i32, ptr %i.y, align 4, !tbaa !71  ; 2 uses
  %i.hz = srem i32 %.reass, %i.hy
  %i.ia = sdiv exact i32 %.reass, %i.hy           ; 2 uses
  %.not66 = icmp eq i32 %i.hz, 0
  br i1 %.not66, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ib = load i32, ptr %12, align 4, !tbaa !61
  %.not67 = icmp slt i32 %i.ia, %i.ib
  br i1 %.not67, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ic = shl nsw i32 %i.ia, 3
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.id
  %i.if = load <8 x float>, ptr %i.ie, align 1, !tbaa !82
  %i.ig = trunc i64 %indvars.iv to i32
  %i.ih = add i32 %i.hu, %i.ig
  %i.ii = shl nsw i32 %i.ih, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ij
  %i.il = load <8 x float>, ptr %i.ik, align 1, !tbaa !82
  %i.im = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.if, <8 x float> nofpclass(nan inf) %i.il, <8 x float> nofpclass(nan inf) %.2240)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.j
  %.3 = phi nsz <8 x float> [ %.2240, %bb.i ], [ %i.im, %bb.l ], [ %.2240, %bb.k ], [ %.2240, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !154

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.h, %bb.f, %bb.g
  %.4 = phi nsz <8 x float> [ %.1234242, %bb.f ], [ %.1234242, %bb.g ], [ %.1234242, %bb.h ], [ %.1234242, %.preheader ], [ %.3, %bb.m ] ; 2 uses
  %i.in = add nuw nsw i32 %.054243, 1             ; 2 uses
  %exitcond261.not = icmp eq i32 %i.in, %i.bs
  br i1 %exitcond261.not, label %._crit_edge, label %bb.f, !llvm.loop !155

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc83, %.noexc80, %.noexc79, %.noexc78, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.hg, %.noexc83 ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %.noexc78 ], [ %i.dp, %.noexc79 ], [ %i.gu, %.noexc80 ], [ %.1234.lcssa, %._crit_edge ]
  store <8 x float> %.0.i, ptr %.1248, align 1, !tbaa !82
  %i.io = getelementptr inbounds nuw i8, ptr %.1248, i64 32 ; 2 uses
  %i.ip = add nuw nsw i32 %.055249, 1             ; 2 uses
  %i.iq = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.ir = icmp slt i32 %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph250, label %._crit_edge251.loopexit, !llvm.loop !156

._crit_edge257:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge257, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn33DeconvolutionDepthWise_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
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
  %i.ab = load i32, ptr %7, align 4, !tbaa !61    ; 3 uses
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
  %i.ai = load i32, ptr %5, align 4, !tbaa !61
  %i.aj = trunc nsw i64 %indvars.iv239 to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !20, !noalias !168
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !21, !noalias !168
  %i.aq = mul i64 %i.ap, %indvars.iv239
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !59, !noalias !168 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader216.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader216.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !66, !noalias !168
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader216.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader216.preheader:                          ; preds = %.preheader216.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !20, !noalias !169
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !169
  %i.bc = mul i64 %i.bb, %indvars.iv239
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !169
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
  br i1 %exitcond242.not, label %._crit_edge234, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !163

._crit_edge228.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !61
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.preheader216, %._crit_edge228.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge228.loopexit ], [ %i.bg, %.preheader216 ] ; 4 uses
  %i.bm = phi i32 [ %i.ix, %._crit_edge228.loopexit ], [ %i.bh, %.preheader216 ]
  %.1.lcssa = phi ptr [ %i.iv, %._crit_edge228.loopexit ], [ %.057230, %.preheader216 ]
  %i.bn = icmp slt i32 %.neg213, %i.bl
  br i1 %i.bn, label %.preheader216, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !164

.lr.ph227:                                        ; preds = %.preheader216, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.055226 = phi i32 [ %i.iw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader216 ] ; 2 uses
  %.1225 = phi ptr [ %i.iv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.057230, %.preheader216 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !68
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph227
  %.0210 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph227 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !70
  %i.bv = load i32, ptr %9, align 4, !tbaa !61
  %invariant.op223 = sub i32 %.neg213, %i.bv
  %.neg215 = add nuw nsw i32 %.055226, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !81
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
  %i.hq = load i32, ptr %i.v, align 8, !tbaa !72  ; 2 uses
  %i.hr = srem i32 %.reass224, %i.hq
  %i.hs = sdiv exact i32 %.reass224, %i.hq        ; 2 uses
  %.not64 = icmp eq i32 %i.hr, 0
  br i1 %.not64, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ht = load i32, ptr %10, align 4, !tbaa !61
  %.not65 = icmp slt i32 %i.hs, %i.ht
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.hu = load i32, ptr %i.w, align 4, !tbaa !42  ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.hw = load i32, ptr %i.x, align 4, !tbaa !69
  %i.hx = load i32, ptr %11, align 4, !tbaa !61
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
  %i.if = load i32, ptr %i.y, align 4, !tbaa !71  ; 2 uses
  %i.ig = srem i32 %.reass, %i.if
  %i.ih = sdiv exact i32 %.reass, %i.if           ; 2 uses
  %.not66 = icmp eq i32 %i.ig, 0
  br i1 %.not66, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ii = load i32, ptr %12, align 4, !tbaa !61
  %.not67 = icmp slt i32 %i.ih, %i.ii
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ij = shl nsw i32 %i.ih, 2
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ik
  %i.im = load <4 x float>, ptr %i.il, align 1, !tbaa !82
  %i.in = trunc i64 %indvars.iv to i32
  %i.io = add i32 %i.ib, %i.in
  %i.ip = shl nsw i32 %i.io, 2
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.iq
  %i.is = load <4 x float>, ptr %i.ir, align 1, !tbaa !82
  %i.it = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.is, <4 x float> nofpclass(nan inf) %.2217)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2217, %bb.k ], [ %i.it, %bb.n ], [ %.2217, %bb.m ], [ %.2217, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !165

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211219, %bb.h ], [ %.1211219, %bb.i ], [ %.1211219, %bb.j ], [ %.1211219, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.iu = add nuw nsw i32 %.054220, 1             ; 2 uses
  %exitcond238.not = icmp eq i32 %i.iu, %i.bs
  br i1 %exitcond238.not, label %._crit_edge, label %bb.h, !llvm.loop !166

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.hn, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dr, %.noexc77 ], [ %i.ha, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1225, align 1, !tbaa !82
  %i.iv = getelementptr inbounds nuw i8, ptr %.1225, i64 16 ; 2 uses
  %i.iw = add nuw nsw i32 %.055226, 1             ; 2 uses
  %i.ix = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.iy = icmp slt i32 %i.iw, %i.ix
  br i1 %i.iy, label %.lr.ph227, label %._crit_edge228.loopexit, !llvm.loop !167

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
define internal void @_ZNK4ncnn33DeconvolutionDepthWise_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge135.split, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph

_ZN4ncnn3MatD2Ev.exit76.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !178
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !178
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !178
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = load i32, ptr %5, align 4, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !66, !noalias !179
  %i.v = load ptr, ptr %6, align 8, !tbaa !20, !noalias !179
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !179
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59, !noalias !179 ; 2 uses
  %factor.op.mul137 = mul i64 %i.x, %i.z
  %i.aa = sext i32 %i.u to i64
  %i.ab = load i32, ptr %7, align 4, !tbaa !61    ; 2 uses
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
  %i.ao = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, label %._crit_edge135.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split:        ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !68
  %.not71 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = load i32, ptr %i.am, align 8, !tbaa !81
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
  br i1 %exitcond143.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !174

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
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !70
  %i.bf = load i32, ptr %9, align 4, !tbaa !61
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
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !72 ; 2 uses
  %i.cp = srem i32 %.reass125, %i.co
  %i.cq = sdiv exact i32 %.reass125, %i.co        ; 2 uses
  %.not72 = icmp eq i32 %i.cp, 0
  br i1 %.not72, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cr = load i32, ptr %10, align 4, !tbaa !61
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
  %i.cx = load i32, ptr %i.ak, align 4, !tbaa !69
  %i.cy = load i32, ptr %11, align 4, !tbaa !61
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
  %i.de = load i32, ptr %i.al, align 4, !tbaa !71 ; 2 uses
  %i.df = srem i32 %.reass, %i.de
  %i.dg = sdiv exact i32 %.reass, %i.de           ; 2 uses
  %.not74 = icmp eq i32 %i.df, 0
  br i1 %.not74, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dh = load i32, ptr %12, align 4, !tbaa !61
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
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !175

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.p, %bb.n, %bb.o
  %.6 = phi nsz float [ %.1120, %bb.n ], [ %.1120, %bb.o ], [ %.1120, %bb.p ], [ %.1120, %bb.q ], [ %.4, %bb.v ] ; 2 uses
  %i.do = add nuw nsw i32 %.060121, 1             ; 2 uses
  %exitcond141.not = icmp eq i32 %i.do, %i.ar
  br i1 %exitcond141.not, label %._crit_edge, label %bb.n, !llvm.loop !176

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.h, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %._crit_edge, %bb.k
  %.1113 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ], [ 0.000000e+00, %bb.k ], [ %spec.select114, %bb.h ], [ %i.bt, %bb.i ], [ %i.by, %bb.j ], [ %i.cl, %bb.m ], [ %.1.lcssa, %bb.l ]
  store float %.1113, ptr %.165126, align 4, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %.165126, i64 4 ; 2 uses
  %i.dq = add nuw nsw i32 %.062127, 1             ; 2 uses
  %exitcond142.not = icmp eq i32 %i.dq, %i.ao
  br i1 %exitcond142.not, label %._crit_edge129, label %bb.c, !llvm.loop !177

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
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #18

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

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
end_hunk_0
