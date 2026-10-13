Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_f16c?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.dg = fmul fast <8 x float> %i.cj, %i.cz
  %i.dh = fadd fast <8 x float> %i.dg, %.0284308  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.070310, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.073309, i64 128 ; 2 uses
  %i.dk = add nuw nsw i32 %.069311, 8             ; 2 uses
  %i.dl = or disjoint i32 %i.dk, 7
  %i.dm = icmp slt i32 %i.dl, %i.aa
  br i1 %i.dm, label %.lr.ph, label %.preheader300.loopexit, !llvm.loop !35

.preheader:                                       ; preds = %.lr.ph330, %.preheader300
  %.2296.lcssa = phi <8 x float> [ %.1295.lcssa, %.preheader300 ], [ %i.fg, %.lr.ph330 ] ; 3 uses
  %.1293.lcssa = phi <8 x float> [ %.0292.lcssa, %.preheader300 ], [ %i.fi, %.lr.ph330 ]
  %.1291.lcssa = phi <8 x float> [ %.0290.lcssa, %.preheader300 ], [ %i.fk, %.lr.ph330 ]
  %.1289.lcssa = phi <8 x float> [ %.0288.lcssa, %.preheader300 ], [ %i.fm, %.lr.ph330 ]
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader300 ], [ %i.fo, %.lr.ph330 ] ; 3 uses
  %.171.lcssa = phi ptr [ %.070.lcssa, %.preheader300 ], [ %i.fn, %.lr.ph330 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.069.lcssa, %.preheader300 ], [ %i.fp, %.lr.ph330 ] ; 5 uses
  %i.dn = icmp slt i32 %.1.lcssa, %i.aa
  br i1 %i.dn, label %.lr.ph342.preheader, label %._crit_edge

.lr.ph342.preheader:                              ; preds = %.preheader
  %i.do = sub i32 %i.aa, %.1.lcssa
  %.neg425 = add i32 %.1.lcssa, 1
  %xtraiter = and i32 %i.do, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph342.prol.loopexit, label %.lr.ph342.prol

.lr.ph342.prol:                                   ; preds = %.lr.ph342.preheader
  %i.dp = load float, ptr %.171.lcssa, align 4, !tbaa !27
  %i.dq = insertelement <8 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ds = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.174.lcssa)
  %i.dt = bitcast <16 x i8> %i.ds to <8 x half>
  %i.du = fpext fast <8 x half> %i.dt to <8 x float>
  %i.dv = fmul fast <8 x float> %i.dr, %i.du
  %i.dw = fadd fast <8 x float> %i.dv, %.2296.lcssa ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.171.lcssa, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.174.lcssa, i64 16
  %i.dz = add nuw nsw i32 %.1.lcssa, 1
  br label %.lr.ph342.prol.loopexit

.lr.ph342.prol.loopexit:                          ; preds = %.lr.ph342.prol, %.lr.ph342.preheader
  %.lcssa424.unr = phi <8 x float> [ poison, %.lr.ph342.preheader ], [ %i.dw, %.lr.ph342.prol ]
  %.2341.unr = phi i32 [ %.1.lcssa, %.lr.ph342.preheader ], [ %i.dz, %.lr.ph342.prol ]
  %.272340.unr = phi ptr [ %.171.lcssa, %.lr.ph342.preheader ], [ %i.dx, %.lr.ph342.prol ]
  %.275339.unr = phi ptr [ %.174.lcssa, %.lr.ph342.preheader ], [ %i.dy, %.lr.ph342.prol ]
  %.3338.unr = phi <8 x float> [ %.2296.lcssa, %.lr.ph342.preheader ], [ %i.dw, %.lr.ph342.prol ]
  %i.ea = icmp eq i32 %i.aa, %.neg425
  br i1 %i.ea, label %._crit_edge, label %.lr.ph342

.lr.ph330:                                        ; preds = %.preheader300, %.lr.ph330
  %.1329 = phi i32 [ %i.fp, %.lr.ph330 ], [ %.069.lcssa, %.preheader300 ]
  %.171328 = phi ptr [ %i.fn, %.lr.ph330 ], [ %.070.lcssa, %.preheader300 ] ; 5 uses
  %.174327 = phi ptr [ %i.fo, %.lr.ph330 ], [ %.073.lcssa, %.preheader300 ] ; 3 uses
  %.1289326 = phi <8 x float> [ %i.fm, %.lr.ph330 ], [ %.0288.lcssa, %.preheader300 ]
  %.1291325 = phi <8 x float> [ %i.fk, %.lr.ph330 ], [ %.0290.lcssa, %.preheader300 ]
  %.1293324 = phi <8 x float> [ %i.fi, %.lr.ph330 ], [ %.0292.lcssa, %.preheader300 ]
  %.2296323 = phi <8 x float> [ %i.fg, %.lr.ph330 ], [ %.1295.lcssa, %.preheader300 ]
  %i.eb = load float, ptr %.171328, align 1, !tbaa !23
  %i.ec = insertelement <8 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <8 x float> %i.ec, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ee = getelementptr inbounds nuw i8, ptr %.171328, i64 4
  %i.ef = load float, ptr %i.ee, align 1, !tbaa !23
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ei = getelementptr inbounds nuw i8, ptr %.171328, i64 8
  %i.ej = load float, ptr %i.ei, align 1, !tbaa !23
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer
  %i.em = getelementptr inbounds nuw i8, ptr %.171328, i64 12
  %i.en = load float, ptr %i.em, align 1, !tbaa !23
  %i.eo = insertelement <8 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <8 x float> %i.eo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eq = call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.174327) ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.174327, i64 32
  %i.es = call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.er) ; 2 uses
  %i.et = bitcast <32 x i8> %i.eq to <16 x half>
  %i.eu = shufflevector <16 x half> %i.et, <16 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ev = fpext fast <8 x half> %i.eu to <8 x float>
  %i.ew = bitcast <32 x i8> %i.eq to <16 x half>
  %i.ex = shufflevector <16 x half> %i.ew, <16 x half> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = fpext fast <8 x half> %i.ex to <8 x float>
  %i.ez = bitcast <32 x i8> %i.es to <16 x half>
  %i.fa = shufflevector <16 x half> %i.ez, <16 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = fpext fast <8 x half> %i.fa to <8 x float>
  %i.fc = bitcast <32 x i8> %i.es to <16 x half>
  %i.fd = shufflevector <16 x half> %i.fc, <16 x half> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fe = fpext fast <8 x half> %i.fd to <8 x float>
  %i.ff = fmul fast <8 x float> %i.ed, %i.ev
  %i.fg = fadd fast <8 x float> %i.ff, %.2296323  ; 2 uses
  %i.fh = fmul fast <8 x float> %i.eh, %i.ey
  %i.fi = fadd fast <8 x float> %i.fh, %.1293324  ; 2 uses
  %i.fj = fmul fast <8 x float> %i.el, %i.fb
  %i.fk = fadd fast <8 x float> %i.fj, %.1291325  ; 2 uses
  %i.fl = fmul fast <8 x float> %i.ep, %i.fe
  %i.fm = fadd fast <8 x float> %i.fl, %.1289326  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.171328, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.174327, i64 64 ; 2 uses
  %i.fp = add nuw nsw i32 %.1329, 4               ; 3 uses
  %i.fq = or disjoint i32 %i.fp, 3
  %i.fr = icmp slt i32 %i.fq, %i.aa
  br i1 %i.fr, label %.lr.ph330, label %.preheader, !llvm.loop !36

.lr.ph342:                                        ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342
  %.2341 = phi i32 [ %i.gm, %.lr.ph342 ], [ %.2341.unr, %.lr.ph342.prol.loopexit ]
  %.272340 = phi ptr [ %i.gk, %.lr.ph342 ], [ %.272340.unr, %.lr.ph342.prol.loopexit ] ; 3 uses
  %.275339 = phi ptr [ %i.gl, %.lr.ph342 ], [ %.275339.unr, %.lr.ph342.prol.loopexit ] ; 3 uses
  %.3338 = phi <8 x float> [ %i.gj, %.lr.ph342 ], [ %.3338.unr, %.lr.ph342.prol.loopexit ]
  %i.fs = load float, ptr %.272340, align 4, !tbaa !27
  %i.ft = insertelement <8 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <8 x float> %i.ft, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fv = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.275339)
  %i.fw = bitcast <16 x i8> %i.fv to <8 x half>
  %i.fx = fpext fast <8 x half> %i.fw to <8 x float>
  %i.fy = fmul fast <8 x float> %i.fu, %i.fx
  %i.fz = fadd fast <8 x float> %i.fy, %.3338
  %i.ga = getelementptr inbounds nuw i8, ptr %.272340, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %.275339, i64 16
  %i.gc = load float, ptr %i.ga, align 4, !tbaa !27
  %i.gd = insertelement <8 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <8 x float> %i.gd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gf = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.gb)
  %i.gg = bitcast <16 x i8> %i.gf to <8 x half>
  %i.gh = fpext fast <8 x half> %i.gg to <8 x float>
  %i.gi = fmul fast <8 x float> %i.ge, %i.gh
  %i.gj = fadd fast <8 x float> %i.gi, %i.fz      ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.272340, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.275339, i64 32
  %i.gm = add nuw nsw i32 %.2341, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.gm, %i.aa
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph342, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342, %.preheader
  %.3.lcssa = phi <8 x float> [ %.2296.lcssa, %.preheader ], [ %.lcssa424.unr, %.lr.ph342.prol.loopexit ], [ %i.gj, %.lr.ph342 ]
  %i.gn = fadd fast <8 x float> %.0286.lcssa, %.1293.lcssa
  %i.go = fadd fast <8 x float> %i.gn, %.1291.lcssa
  %i.gp = fadd fast <8 x float> %i.go, %.1289.lcssa
  %i.gq = fadd fast <8 x float> %i.gp, %.3.lcssa  ; 10 uses
  %i.gr = load i32, ptr %7, align 4, !tbaa !9
  switch i32 %i.gr, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc78
    i32 5, label %.noexc79
    i32 6, label %.noexc80
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.gs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.gt = load ptr, ptr %8, align 8, !tbaa !17
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !27
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.gq)
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.gq)
  %i.gx = insertelement <8 x float> poison, float %i.gu, i64 0
  %i.gy = shufflevector <8 x float> %i.gx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gz = fmul fast <8 x float> %i.gy, %i.gw
  %i.ha = fadd fast <8 x float> %i.gz, %i.gv
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.hb = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !27
  %i.hd = insertelement <8 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !27
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %i.he)
  %i.hk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) %i.hi)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.hl = fneg fast <8 x float> %i.gq
  %i.hm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> splat (float f0x42B0C0A5))
  %i.hn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ho = fmul fast <8 x float> %i.hn, splat (float f0x3FB8AA3B)
  %i.hp = fadd fast <8 x float> %i.ho, splat (float 5.000000e-01) ; 2 uses
  %i.hq = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hp, i32 1) ; 2 uses
  %i.hr = fcmp fast ogt <8 x float> %i.hq, %i.hp
  %i.hs = select <8 x i1> %i.hr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ht = fsub fast <8 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fmul fast <8 x float> %i.ht, splat (float f0x3F317218)
  %i.hv = fsub fast <8 x float> %i.hn, %i.hu      ; 8 uses
  %i.hw = fmul fast <8 x float> %i.hv, %i.hv
  %i.hx = fmul fast <8 x float> %i.hv, splat (float f0x39506967)
  %i.hy = fadd fast <8 x float> %i.hx, splat (float f0x3AB743CE)
  %i.hz = fmul fast <8 x float> %i.hy, %i.hv
  %i.ia = fadd fast <8 x float> %i.hz, splat (float f0x3C088908)
  %i.ib = fmul fast <8 x float> %i.ia, %i.hv
  %i.ic = fadd fast <8 x float> %i.ib, splat (float f0x3D2AA9C1)
  %i.id = fmul fast <8 x float> %i.ic, %i.hv
  %i.ie = fadd fast <8 x float> %i.id, splat (float f0x3E2AAAAA)
  %i.if = fmul fast <8 x float> %i.ie, %i.hv
  %i.ig = fadd fast <8 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fmul fast <8 x float> %i.hw, %i.ig
  %i.ii = fadd fast <8 x float> %i.hv, splat (float 1.000000e+00)
  %i.ij = fadd fast <8 x float> %i.ii, %i.ih
  %i.ik = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ht)
  %i.il = shl <8 x i32> %i.ik, splat (i32 23)
  %i.im = add <8 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <8 x i32> %i.im to <8 x float>
  %i.io = fmul fast <8 x float> %i.ij, %i.in
  %i.ip = fadd fast <8 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ip
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc79:                                         ; preds = %._crit_edge
  %i.ir = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> splat (float f0x42B0C0A5))
  %i.is = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.it = fmul fast <8 x float> %i.is, splat (float f0x3FB8AA3B)
  %i.iu = fadd fast <8 x float> %i.it, splat (float 5.000000e-01) ; 2 uses
  %i.iv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iu, i32 1) ; 2 uses
  %i.iw = fcmp fast ogt <8 x float> %i.iv, %i.iu
  %i.ix = select <8 x i1> %i.iw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.iy = fsub fast <8 x float> %i.iv, %i.ix      ; 2 uses
  %i.iz = fmul fast <8 x float> %i.iy, splat (float f0x3F317218)
  %i.ja = fsub fast <8 x float> %i.is, %i.iz      ; 8 uses
  %i.jb = fmul fast <8 x float> %i.ja, %i.ja
  %i.jc = fmul fast <8 x float> %i.ja, splat (float f0x39506967)
  %i.jd = fadd fast <8 x float> %i.jc, splat (float f0x3AB743CE)
  %i.je = fmul fast <8 x float> %i.jd, %i.ja
  %i.jf = fadd fast <8 x float> %i.je, splat (float f0x3C088908)
  %i.jg = fmul fast <8 x float> %i.jf, %i.ja
  %i.jh = fadd fast <8 x float> %i.jg, splat (float f0x3D2AA9C1)
  %i.ji = fmul fast <8 x float> %i.jh, %i.ja
  %i.jj = fadd fast <8 x float> %i.ji, splat (float f0x3E2AAAAA)
  %i.jk = fmul fast <8 x float> %i.jj, %i.ja
  %i.jl = fadd fast <8 x float> %i.jk, splat (float 5.000000e-01)
  %i.jm = fmul fast <8 x float> %i.jb, %i.jl
  %i.jn = fadd fast <8 x float> %i.ja, splat (float 1.000000e+00)
  %i.jo = fadd fast <8 x float> %i.jn, %i.jm
  %i.jp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iy)
  %i.jq = shl <8 x i32> %i.jp, splat (i32 23)
  %i.jr = add <8 x i32> %i.jq, splat (i32 1065353216)
  %i.js = bitcast <8 x i32> %i.jr to <8 x float>
  %i.jt = fmul fast <8 x float> %i.jo, %i.js
  %i.ju = fadd fast <8 x float> %i.jt, splat (float 1.000000e+00) ; 2 uses
  %i.jv = fcmp fast ole <8 x float> %i.ju, zeroinitializer
  %i.jw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ju, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jx = bitcast <8 x float> %i.jw to <8 x i32>
  %i.jy = bitcast <8 x float> %i.jw to <8 x i32>
  %i.jz = and <8 x i32> %i.jy, splat (i32 -2139095041)
  %i.ka = or disjoint <8 x i32> %i.jz, splat (i32 1056964608)
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>  ; 3 uses
  %i.kc = lshr <8 x i32> %i.jx, splat (i32 23)
  %i.kd = add nsw <8 x i32> %i.kc, splat (i32 -127)
  %i.ke = sitofp fast <8 x i32> %i.kd to <8 x float> ; 2 uses
  %i.kf = fadd fast <8 x float> %i.ke, splat (float 1.000000e+00)
  %i.kg = fcmp fast olt <8 x float> %i.kb, splat (float f0x3F3504F3) ; 2 uses
  %i.kh = select <8 x i1> %i.kg, <8 x float> %i.kb, <8 x float> zeroinitializer
  %i.ki = fadd fast <8 x float> %i.kb, splat (float -1.000000e+00)
  %i.kj = select fast <8 x i1> %i.kg, <8 x float> %i.ke, <8 x float> %i.kf
  %i.kk = fadd fast <8 x float> %i.ki, %i.kh      ; 12 uses
  %i.kl = fmul fast <8 x float> %i.kk, %i.kk
  %i.km = fmul fast <8 x float> %i.kk, splat (float f0x3D9021BB)
  %i.kn = fadd fast <8 x float> %i.km, splat (float f0xBDEBD1B8)
  %i.ko = fmul fast <8 x float> %i.kn, %i.kk
  %i.kp = fadd fast <8 x float> %i.ko, splat (float f0x3DEF251A)
  %i.kq = fmul fast <8 x float> %i.kp, %i.kk
  %i.kr = fadd fast <8 x float> %i.kq, splat (float f0xBDFE5D4F)
  %i.ks = fmul fast <8 x float> %i.kr, %i.kk
  %i.kt = fadd fast <8 x float> %i.ks, splat (float f0x3E11E9BF)
  %i.ku = fmul fast <8 x float> %i.kt, %i.kk
  %i.kv = fadd fast <8 x float> %i.ku, splat (float f0xBE2AAE50)
  %i.kw = fmul fast <8 x float> %i.kv, %i.kk
  %i.kx = fadd fast <8 x float> %i.kw, splat (float f0x3E4CCEAC)
  %i.ky = fmul fast <8 x float> %i.kx, %i.kk
  %i.kz = fadd fast <8 x float> %i.ky, splat (float f0xBE7FFFFC)
  %i.la = fmul fast <8 x float> %i.kz, %i.kk
  %i.lb = fadd fast <8 x float> %i.la, splat (float f0x3EAAAAAA)
  %i.lc = fmul fast <8 x float> %i.lb, %i.kk
  %reass.mul = fmul fast <8 x float> %i.kj, splat (float f0x3F317218)
  %reass.add298 = fadd fast <8 x float> %i.lc, splat (float -5.000000e-01)
  %reass.mul299 = fmul fast <8 x float> %i.kl, %reass.add298
  %i.ld = fadd fast <8 x float> %reass.mul, %i.kk
  %i.le = fadd fast <8 x float> %i.ld, %reass.mul299
  %.neg = fmul fast <8 x float> %i.le, splat (float -2.000000e+00)
  %i.lf = select fast <8 x i1> %i.jv, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.lg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lf, <8 x float> splat (float f0x42B0C0A5))
  %i.lh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.li = fmul fast <8 x float> %i.lh, splat (float f0x3FB8AA3B)
  %i.lj = fadd fast <8 x float> %i.li, splat (float 5.000000e-01) ; 2 uses
  %i.lk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lj, i32 1) ; 2 uses
  %i.ll = fcmp fast ogt <8 x float> %i.lk, %i.lj
  %i.lm = select <8 x i1> %i.ll, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ln = fsub fast <8 x float> %i.lk, %i.lm      ; 2 uses
  %i.lo = fmul fast <8 x float> %i.ln, splat (float f0x3F317218)
  %i.lp = fsub fast <8 x float> %i.lh, %i.lo      ; 8 uses
  %i.lq = fmul fast <8 x float> %i.lp, %i.lp
  %i.lr = fmul fast <8 x float> %i.lp, splat (float f0x39506967)
  %i.ls = fadd fast <8 x float> %i.lr, splat (float f0x3AB743CE)
  %i.lt = fmul fast <8 x float> %i.ls, %i.lp
  %i.lu = fadd fast <8 x float> %i.lt, splat (float f0x3C088908)
  %i.lv = fmul fast <8 x float> %i.lu, %i.lp
  %i.lw = fadd fast <8 x float> %i.lv, splat (float f0x3D2AA9C1)
  %i.lx = fmul fast <8 x float> %i.lw, %i.lp
  %i.ly = fadd fast <8 x float> %i.lx, splat (float f0x3E2AAAAA)
  %i.lz = fmul fast <8 x float> %i.ly, %i.lp
  %i.ma = fadd fast <8 x float> %i.lz, splat (float 5.000000e-01)
  %i.mb = fmul fast <8 x float> %i.lq, %i.ma
  %i.mc = fadd fast <8 x float> %i.lp, splat (float 1.000000e+00)
  %i.md = fadd fast <8 x float> %i.mc, %i.mb
  %i.me = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ln)
  %i.mf = shl <8 x i32> %i.me, splat (i32 23)
  %i.mg = add <8 x i32> %i.mf, splat (i32 1065353216)
  %i.mh = bitcast <8 x i32> %i.mg to <8 x float>
  %i.mi = fmul fast <8 x float> %i.md, %i.mh
  %i.mj = fadd fast <8 x float> %i.mi, splat (float 1.000000e+00)
  %i.mk = fdiv fast <8 x float> splat (float 2.000000e+00), %i.mj
  %i.ml = fadd fast <8 x float> %i.mk, splat (float -1.000000e+00)
  %i.mm = fmul fast <8 x float> %i.ml, %i.gq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc80:                                         ; preds = %._crit_edge
  %i.mn = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !27
  %i.mp = insertelement <8 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <8 x float> %i.mp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !27
  %i.mt = insertelement <8 x float> poison, float %i.ms, i64 0
  %i.mu = shufflevector <8 x float> %i.mt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mv = fmul fast <8 x float> %i.mq, %i.gq
  %i.mw = fadd fast <8 x float> %i.mv, %i.mu
  %i.mx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mw, <8 x float> zeroinitializer)
  %i.my = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mx, <8 x float> splat (float 1.000000e+00))
  %i.mz = fmul fast <8 x float> %i.my, %i.gq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc80, %.noexc79, %.noexc78, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.mz, %.noexc80 ], [ %i.gs, %bb.f ], [ %i.ha, %.noexc ], [ %i.hk, %bb.g ], [ %i.iq, %.noexc78 ], [ %i.mm, %.noexc79 ], [ %i.gq, %._crit_edge ]
  %i.na = load ptr, ptr %9, align 8, !tbaa !17
  %.idx373 = shl nsw i64 %indvars.iv, 5
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 %.idx373
  store <8 x float> %.0.i, ptr %i.nb, align 1, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond368.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond368.not, label %._crit_edge348, label %bb.c

._crit_edge348:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge348, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not265 = icmp sgt i32 %i.k, %i.j
  br i1 %.not265, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph268, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph268 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %.not68 = icmp eq ptr %i.p, null
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0228 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !17
  %i.t = load i32, ptr %i.l, align 4, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !24
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !9     ; 9 uses
  %i.ab = icmp sgt i32 %i.aa, 7
  br i1 %i.ab, label %.lr.ph, label %.preheader233

.preheader233.loopexit:                           ; preds = %.lr.ph
  %i.ac = and i32 %i.aa, 2147483640
  %i.ad = fadd fast <8 x float> %i.cd, %i.cb
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.loopexit, %bb.e
  %.0226.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bx, %.preheader233.loopexit ] ; 2 uses
  %.0224.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bz, %.preheader233.loopexit ] ; 2 uses
  %.0222.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ad, %.preheader233.loopexit ]
  %.064.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.cf, %.preheader233.loopexit ] ; 2 uses
  %.061.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.ce, %.preheader233.loopexit ] ; 2 uses
  %.060.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader233.loopexit ] ; 3 uses
  %i.ae = or disjoint i32 %.060.lcssa, 3
  %i.af = icmp slt i32 %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph253, label %.preheader

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.060240 = phi i32 [ %i.cg, %.lr.ph ], [ 0, %bb.e ]
  %.061239 = phi ptr [ %i.ce, %.lr.ph ], [ %i.z, %bb.e ] ; 9 uses
  %.064238 = phi ptr [ %i.cf, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %.0222237 = phi <8 x float> [ %i.cd, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0223236 = phi <8 x float> [ %i.cb, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0224235 = phi <8 x float> [ %i.bz, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0226234 = phi <8 x float> [ %i.bx, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %i.ag = load float, ptr %.061239, align 1, !tbaa !23
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.061239, i64 4
  %i.aj = load float, ptr %i.ai, align 1, !tbaa !23
  %i.ak = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %.061239, i64 8
  %i.am = load float, ptr %i.al, align 1, !tbaa !23
  %i.an = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.061239, i64 12
  %i.ap = load float, ptr %i.ao, align 1, !tbaa !23
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %.061239, i64 16
  %i.as = load float, ptr %i.ar, align 1, !tbaa !23
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %.061239, i64 20
  %i.av = load float, ptr %i.au, align 1, !tbaa !23
  %i.aw = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.061239, i64 24
  %i.ay = load float, ptr %i.ax, align 1, !tbaa !23
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.061239, i64 28
  %i.bb = load float, ptr %i.ba, align 1, !tbaa !23
  %i.bc = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <4 x float> %i.ah, <4 x float> %i.ak, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.be = shufflevector <4 x float> %i.an, <4 x float> %i.aq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bf = shufflevector <4 x float> %i.at, <4 x float> %i.aw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bg = shufflevector <4 x float> %i.az, <4 x float> %i.bc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bh = call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.064238) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.064238, i64 32
  %i.bj = call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.bi) ; 2 uses
  %i.bk = bitcast <32 x i8> %i.bh to <16 x half>
  %i.bl = shufflevector <16 x half> %i.bk, <16 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fpext fast <8 x half> %i.bl to <8 x float>
  %i.bn = bitcast <32 x i8> %i.bh to <16 x half>
  %i.bo = shufflevector <16 x half> %i.bn, <16 x half> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = fpext fast <8 x half> %i.bo to <8 x float>
  %i.bq = bitcast <32 x i8> %i.bj to <16 x half>
  %i.br = shufflevector <16 x half> %i.bq, <16 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = fpext fast <8 x half> %i.br to <8 x float>
  %i.bt = bitcast <32 x i8> %i.bj to <16 x half>
  %i.bu = shufflevector <16 x half> %i.bt, <16 x half> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bv = fpext fast <8 x half> %i.bu to <8 x float>
  %i.bw = fmul fast <8 x float> %i.bd, %i.bm
  %i.bx = fadd fast <8 x float> %i.bw, %.0226234  ; 2 uses
  %i.by = fmul fast <8 x float> %i.be, %i.bp
  %i.bz = fadd fast <8 x float> %i.by, %.0224235  ; 2 uses
  %i.ca = fmul fast <8 x float> %i.bf, %i.bs
  %i.cb = fadd fast <8 x float> %i.ca, %.0223236  ; 2 uses
  %i.cc = fmul fast <8 x float> %i.bg, %i.bv
  %i.cd = fadd fast <8 x float> %i.cc, %.0222237  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.061239, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.064238, i64 64 ; 2 uses
  %i.cg = add nuw nsw i32 %.060240, 8             ; 2 uses
  %i.ch = or disjoint i32 %i.cg, 7
  %i.ci = icmp slt i32 %i.ch, %i.aa
  br i1 %i.ci, label %.lr.ph, label %.preheader233.loopexit, !llvm.loop !38

.preheader:                                       ; preds = %.lr.ph253, %.preheader233
  %.1227.lcssa = phi <8 x float> [ %.0226.lcssa, %.preheader233 ], [ %i.dr, %.lr.ph253 ]
  %.1225.lcssa = phi <8 x float> [ %.0224.lcssa, %.preheader233 ], [ %i.dt, %.lr.ph253 ]
  %.165.lcssa = phi ptr [ %.064.lcssa, %.preheader233 ], [ %i.dv, %.lr.ph253 ] ; 3 uses
  %.162.lcssa = phi ptr [ %.061.lcssa, %.preheader233 ], [ %i.du, %.lr.ph253 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.060.lcssa, %.preheader233 ], [ %i.dw, %.lr.ph253 ] ; 5 uses
  %i.cj = icmp slt i32 %.1.lcssa, %i.aa
  br i1 %i.cj, label %.lr.ph263.preheader, label %._crit_edge

.lr.ph263.preheader:                              ; preds = %.preheader
  %i.ck = sub i32 %i.aa, %.1.lcssa
  %.neg322 = add i32 %.1.lcssa, 1
  %xtraiter = and i32 %i.ck, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph263.prol.loopexit, label %.lr.ph263.prol

.lr.ph263.prol:                                   ; preds = %.lr.ph263.preheader
  %i.cl = load float, ptr %.162.lcssa, align 4, !tbaa !27
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = load <4 x half>, ptr %.165.lcssa, align 1, !tbaa !23
  %i.cp = fpext fast <4 x half> %i.co to <4 x float>
  %i.cq = fmul fast <4 x float> %i.cn, %i.cp
  %i.cr = fadd fast <4 x float> %i.cq, %.0228     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.162.lcssa, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.165.lcssa, i64 8
  %i.cu = add nuw nsw i32 %.1.lcssa, 1
  br label %.lr.ph263.prol.loopexit

.lr.ph263.prol.loopexit:                          ; preds = %.lr.ph263.prol, %.lr.ph263.preheader
  %.lcssa321.unr = phi <4 x float> [ poison, %.lr.ph263.preheader ], [ %i.cr, %.lr.ph263.prol ]
  %.2262.unr = phi i32 [ %.1.lcssa, %.lr.ph263.preheader ], [ %i.cu, %.lr.ph263.prol ]
  %.263261.unr = phi ptr [ %.162.lcssa, %.lr.ph263.preheader ], [ %i.cs, %.lr.ph263.prol ]
  %.266260.unr = phi ptr [ %.165.lcssa, %.lr.ph263.preheader ], [ %i.ct, %.lr.ph263.prol ]
  %.1229259.unr = phi <4 x float> [ %.0228, %.lr.ph263.preheader ], [ %i.cr, %.lr.ph263.prol ]
  %i.cv = icmp eq i32 %i.aa, %.neg322
  br i1 %i.cv, label %._crit_edge, label %.lr.ph263

.lr.ph253:                                        ; preds = %.preheader233, %.lr.ph253
  %.1252 = phi i32 [ %i.dw, %.lr.ph253 ], [ %.060.lcssa, %.preheader233 ]
  %.162251 = phi ptr [ %i.du, %.lr.ph253 ], [ %.061.lcssa, %.preheader233 ] ; 5 uses
  %.165250 = phi ptr [ %i.dv, %.lr.ph253 ], [ %.064.lcssa, %.preheader233 ] ; 2 uses
  %.1225249 = phi <8 x float> [ %i.dt, %.lr.ph253 ], [ %.0224.lcssa, %.preheader233 ]
  %.1227248 = phi <8 x float> [ %i.dr, %.lr.ph253 ], [ %.0226.lcssa, %.preheader233 ]
  %i.cw = load float, ptr %.162251, align 1, !tbaa !23
  %i.cx = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.162251, i64 4
  %i.cz = load float, ptr %i.cy, align 1, !tbaa !23
  %i.da = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %.162251, i64 8
  %i.dc = load float, ptr %i.db, align 1, !tbaa !23
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %.162251, i64 12
  %i.df = load float, ptr %i.de, align 1, !tbaa !23
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <4 x float> %i.cx, <4 x float> %i.da, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.di = shufflevector <4 x float> %i.dd, <4 x float> %i.dg, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.dj = call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.165250) ; 2 uses
  %i.dk = bitcast <32 x i8> %i.dj to <16 x half>
  %i.dl = shufflevector <16 x half> %i.dk, <16 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = fpext fast <8 x half> %i.dl to <8 x float>
  %i.dn = bitcast <32 x i8> %i.dj to <16 x half>
  %i.do = shufflevector <16 x half> %i.dn, <16 x half> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = fpext fast <8 x half> %i.do to <8 x float>
  %i.dq = fmul fast <8 x float> %i.dh, %i.dm
  %i.dr = fadd fast <8 x float> %i.dq, %.1227248  ; 2 uses
  %i.ds = fmul fast <8 x float> %i.di, %i.dp
  %i.dt = fadd fast <8 x float> %i.ds, %.1225249  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.162251, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.165250, i64 32 ; 2 uses
  %i.dw = add nuw nsw i32 %.1252, 4               ; 3 uses
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = icmp slt i32 %i.dx, %i.aa
  br i1 %i.dy, label %.lr.ph253, label %.preheader, !llvm.loop !39

.lr.ph263:                                        ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263
  %.2262 = phi i32 [ %i.er, %.lr.ph263 ], [ %.2262.unr, %.lr.ph263.prol.loopexit ]
  %.263261 = phi ptr [ %i.ep, %.lr.ph263 ], [ %.263261.unr, %.lr.ph263.prol.loopexit ] ; 3 uses
  %.266260 = phi ptr [ %i.eq, %.lr.ph263 ], [ %.266260.unr, %.lr.ph263.prol.loopexit ] ; 3 uses
  %.1229259 = phi <4 x float> [ %i.eo, %.lr.ph263 ], [ %.1229259.unr, %.lr.ph263.prol.loopexit ]
  %i.dz = load float, ptr %.263261, align 4, !tbaa !27
  %i.ea = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = load <4 x half>, ptr %.266260, align 1, !tbaa !23
  %i.ed = fpext fast <4 x half> %i.ec to <4 x float>
  %i.ee = fmul fast <4 x float> %i.eb, %i.ed
  %i.ef = fadd fast <4 x float> %i.ee, %.1229259
  %i.eg = getelementptr inbounds nuw i8, ptr %.263261, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.266260, i64 8
  %i.ei = load float, ptr %i.eg, align 4, !tbaa !27
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = load <4 x half>, ptr %i.eh, align 1, !tbaa !23
  %i.em = fpext fast <4 x half> %i.el to <4 x float>
  %i.en = fmul fast <4 x float> %i.ek, %i.em
  %i.eo = fadd fast <4 x float> %i.en, %i.ef      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.263261, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.266260, i64 16
  %i.er = add nuw nsw i32 %.2262, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.er, %i.aa
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph263, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263, %.preheader
  %.1229.lcssa = phi <4 x float> [ %.0228, %.preheader ], [ %.lcssa321.unr, %.lr.ph263.prol.loopexit ], [ %i.eo, %.lr.ph263 ]
  %i.es = fadd fast <8 x float> %.0222.lcssa, %.1227.lcssa
  %i.et = fadd fast <8 x float> %i.es, %.1225.lcssa ; 2 uses
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ev = shufflevector <8 x float> %i.et, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ew = fadd fast <4 x float> %i.ev, %i.eu
  %i.ex = fadd fast <4 x float> %i.ew, %.1229.lcssa ; 10 uses
  %i.ey = load i32, ptr %7, align 4, !tbaa !9
  switch i32 %i.ey, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc69
    i32 5, label %.noexc70
    i32 6, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.fa = load ptr, ptr %8, align 8, !tbaa !17
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !27
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ex)
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ex)
  %i.fe = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = fmul fast <4 x float> %i.ff, %i.fd
  %i.fh = fadd fast <4 x float> %i.fg, %i.fc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !27
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27
  %i.fo = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.fl)
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fp)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc69:                                         ; preds = %._crit_edge
  %i.fs = fneg fast <4 x float> %i.ex
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0x42B0C0A5))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fv = fmul fast <4 x float> %i.fu, splat (float f0x3FB8AA3B)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float 5.000000e-01) ; 2 uses
  %i.fx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fw)
  %i.fy = sitofp fast <4 x i32> %i.fx to <4 x float> ; 2 uses
  %i.fz = fcmp fast olt <4 x float> %i.fw, %i.fy
  %i.ga = select <4 x i1> %i.fz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gb = fsub fast <4 x float> %i.fy, %i.ga      ; 2 uses
  %i.gc = fmul fast <4 x float> %i.gb, splat (float f0x3F317218)
  %i.gd = fsub fast <4 x float> %i.fu, %i.gc      ; 8 uses
  %i.ge = fmul fast <4 x float> %i.gd, %i.gd
  %i.gf = fmul fast <4 x float> %i.gd, splat (float f0x39506967)
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3AB743CE)
  %i.gh = fmul fast <4 x float> %i.gg, %i.gd
  %i.gi = fadd fast <4 x float> %i.gh, splat (float f0x3C088908)
  %i.gj = fmul fast <4 x float> %i.gi, %i.gd
  %i.gk = fadd fast <4 x float> %i.gj, splat (float f0x3D2AA9C1)
  %i.gl = fmul fast <4 x float> %i.gk, %i.gd
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0x3E2AAAAA)
  %i.gn = fmul fast <4 x float> %i.gm, %i.gd
  %i.go = fadd fast <4 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = fmul fast <4 x float> %i.ge, %i.go
  %i.gq = fadd fast <4 x float> %i.gd, splat (float 1.000000e+00)
  %i.gr = fadd fast <4 x float> %i.gq, %i.gp
  %i.gs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gb)
  %i.gt = shl <4 x i32> %i.gs, splat (i32 23)
  %i.gu = add <4 x i32> %i.gt, splat (i32 1065353216)
  %i.gv = bitcast <4 x i32> %i.gu to <4 x float>
  %i.gw = fmul fast <4 x float> %i.gr, %i.gv
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc70:                                         ; preds = %._crit_edge
  %i.gz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> splat (float f0x42B0C0A5))
  %i.ha = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hb = fmul fast <4 x float> %i.ha, splat (float f0x3FB8AA3B)
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 5.000000e-01) ; 2 uses
  %i.hd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hc)
  %i.he = sitofp fast <4 x i32> %i.hd to <4 x float> ; 2 uses
  %i.hf = fcmp fast olt <4 x float> %i.hc, %i.he
  %i.hg = select <4 x i1> %i.hf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hh = fsub fast <4 x float> %i.he, %i.hg      ; 2 uses
  %i.hi = fmul fast <4 x float> %i.hh, splat (float f0x3F317218)
  %i.hj = fsub fast <4 x float> %i.ha, %i.hi      ; 8 uses
  %i.hk = fmul fast <4 x float> %i.hj, %i.hj
  %i.hl = fmul fast <4 x float> %i.hj, splat (float f0x39506967)
  %i.hm = fadd fast <4 x float> %i.hl, splat (float f0x3AB743CE)
  %i.hn = fmul fast <4 x float> %i.hm, %i.hj
  %i.ho = fadd fast <4 x float> %i.hn, splat (float f0x3C088908)
  %i.hp = fmul fast <4 x float> %i.ho, %i.hj
  %i.hq = fadd fast <4 x float> %i.hp, splat (float f0x3D2AA9C1)
  %i.hr = fmul fast <4 x float> %i.hq, %i.hj
  %i.hs = fadd fast <4 x float> %i.hr, splat (float f0x3E2AAAAA)
  %i.ht = fmul fast <4 x float> %i.hs, %i.hj
  %i.hu = fadd fast <4 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = fmul fast <4 x float> %i.hk, %i.hu
  %i.hw = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hx = fadd fast <4 x float> %i.hw, %i.hv
  %i.hy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hh)
  %i.hz = shl <4 x i32> %i.hy, splat (i32 23)
  %i.ia = add <4 x i32> %i.hz, splat (i32 1065353216)
  %i.ib = bitcast <4 x i32> %i.ia to <4 x float>
  %i.ic = fmul fast <4 x float> %i.hx, %i.ib
  %i.id = fadd fast <4 x float> %i.ic, splat (float 1.000000e+00) ; 2 uses
  %i.ie = fcmp fast ole <4 x float> %i.id, zeroinitializer
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> splat (float f0x00800000))
  %i.ig = bitcast <4 x float> %i.if to <4 x i32>  ; 2 uses
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 23)
  %i.ii = and <4 x i32> %i.ig, splat (i32 -2139095041)
  %i.ij = or disjoint <4 x i32> %i.ii, splat (i32 1056964608)
  %i.ik = bitcast <4 x i32> %i.ij to <4 x float>  ; 3 uses
  %i.il = add nsw <4 x i32> %i.ih, splat (i32 -127)
  %i.im = sitofp fast <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.in = fadd fast <4 x float> %i.im, splat (float 1.000000e+00)
  %i.io = fcmp fast olt <4 x float> %i.ik, splat (float f0x3F3504F3) ; 2 uses
  %i.ip = select <4 x i1> %i.io, <4 x float> %i.ik, <4 x float> zeroinitializer
  %i.iq = fadd fast <4 x float> %i.ik, splat (float -1.000000e+00)
  %i.ir = select fast <4 x i1> %i.io, <4 x float> %i.im, <4 x float> %i.in
  %i.is = fadd fast <4 x float> %i.iq, %i.ip      ; 12 uses
  %i.it = fmul fast <4 x float> %i.is, %i.is
  %i.iu = fmul fast <4 x float> %i.is, splat (float f0x3D9021BB)
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0xBDEBD1B8)
  %i.iw = fmul fast <4 x float> %i.iv, %i.is
  %i.ix = fadd fast <4 x float> %i.iw, splat (float f0x3DEF251A)
  %i.iy = fmul fast <4 x float> %i.ix, %i.is
  %i.iz = fadd fast <4 x float> %i.iy, splat (float f0xBDFE5D4F)
  %i.ja = fmul fast <4 x float> %i.iz, %i.is
  %i.jb = fadd fast <4 x float> %i.ja, splat (float f0x3E11E9BF)
  %i.jc = fmul fast <4 x float> %i.jb, %i.is
  %i.jd = fadd fast <4 x float> %i.jc, splat (float f0xBE2AAE50)
  %i.je = fmul fast <4 x float> %i.jd, %i.is
  %i.jf = fadd fast <4 x float> %i.je, splat (float f0x3E4CCEAC)
  %i.jg = fmul fast <4 x float> %i.jf, %i.is
  %i.jh = fadd fast <4 x float> %i.jg, splat (float f0xBE7FFFFC)
  %i.ji = fmul fast <4 x float> %i.jh, %i.is
  %i.jj = fadd fast <4 x float> %i.ji, splat (float f0x3EAAAAAA)
  %i.jk = fmul fast <4 x float> %i.jj, %i.is
  %reass.mul = fmul fast <4 x float> %i.ir, splat (float f0x3F317218)
  %reass.add231 = fadd fast <4 x float> %i.jk, splat (float -5.000000e-01)
  %reass.mul232 = fmul fast <4 x float> %i.it, %reass.add231
  %i.jl = fadd fast <4 x float> %reass.mul, %i.is
  %i.jm = fadd fast <4 x float> %i.jl, %reass.mul232
  %.neg = fmul fast <4 x float> %i.jm, splat (float -2.000000e+00)
  %i.jn = select fast <4 x i1> %i.ie, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.jo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float f0x42B0C0A5))
  %i.jp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jq = fmul fast <4 x float> %i.jp, splat (float f0x3FB8AA3B)
  %i.jr = fadd fast <4 x float> %i.jq, splat (float 5.000000e-01) ; 2 uses
  %i.js = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jr)
  %i.jt = sitofp fast <4 x i32> %i.js to <4 x float> ; 2 uses
  %i.ju = fcmp fast olt <4 x float> %i.jr, %i.jt
  %i.jv = select <4 x i1> %i.ju, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jw = fsub fast <4 x float> %i.jt, %i.jv      ; 2 uses
  %i.jx = fmul fast <4 x float> %i.jw, splat (float f0x3F317218)
  %i.jy = fsub fast <4 x float> %i.jp, %i.jx      ; 8 uses
  %i.jz = fmul fast <4 x float> %i.jy, %i.jy
  %i.ka = fmul fast <4 x float> %i.jy, splat (float f0x39506967)
  %i.kb = fadd fast <4 x float> %i.ka, splat (float f0x3AB743CE)
  %i.kc = fmul fast <4 x float> %i.kb, %i.jy
  %i.kd = fadd fast <4 x float> %i.kc, splat (float f0x3C088908)
  %i.ke = fmul fast <4 x float> %i.kd, %i.jy
  %i.kf = fadd fast <4 x float> %i.ke, splat (float f0x3D2AA9C1)
  %i.kg = fmul fast <4 x float> %i.kf, %i.jy
  %i.kh = fadd fast <4 x float> %i.kg, splat (float f0x3E2AAAAA)
  %i.ki = fmul fast <4 x float> %i.kh, %i.jy
  %i.kj = fadd fast <4 x float> %i.ki, splat (float 5.000000e-01)
  %i.kk = fmul fast <4 x float> %i.jz, %i.kj
  %i.kl = fadd fast <4 x float> %i.jy, splat (float 1.000000e+00)
  %i.km = fadd fast <4 x float> %i.kl, %i.kk
  %i.kn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jw)
  %i.ko = shl <4 x i32> %i.kn, splat (i32 23)
  %i.kp = add <4 x i32> %i.ko, splat (i32 1065353216)
  %i.kq = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kr = fmul fast <4 x float> %i.km, %i.kq
  %i.ks = fadd fast <4 x float> %i.kr, splat (float 1.000000e+00)
  %i.kt = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ks
  %i.ku = fadd fast <4 x float> %i.kt, splat (float -1.000000e+00)
  %i.kv = fmul fast <4 x float> %i.ku, %i.ex
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.kw = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !27
  %i.ky = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> zeroinitializer
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.lb = load float, ptr %i.la, align 4, !tbaa !27
  %i.lc = insertelement <4 x float> poison, float %i.lb, i64 0
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.le = fmul fast <4 x float> %i.kz, %i.ex
  %i.lf = fadd fast <4 x float> %i.le, %i.ld
  %i.lg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> zeroinitializer)
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> splat (float 1.000000e+00))
  %i.li = fmul fast <4 x float> %i.lh, %i.ex
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.h, %.noexc70, %.noexc69, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.li, %bb.h ], [ %i.ez, %bb.f ], [ %i.fh, %.noexc ], [ %i.fr, %bb.g ], [ %i.gy, %.noexc69 ], [ %i.kv, %.noexc70 ], [ %i.ex, %._crit_edge ]
  %i.lj = load ptr, ptr %9, align 8, !tbaa !17
  %.idx288 = shl nsw i64 %indvars.iv, 4
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %.idx288
  store <4 x float> %.0.i, ptr %i.lk, align 1, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond283.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond283.not, label %._crit_edge269, label %bb.c

._crit_edge269:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge269, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not389 = icmp sgt i32 %i.k, %i.j
  br i1 %.not389, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph392, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph392 ], [ %indvars.iv.next, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.o = shl nsw i64 %indvars.iv, 3               ; 10 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %.not118 = icmp eq ptr %i.p, null
  br i1 %.not118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load <8 x float>, ptr %i.q, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !17     ; 8 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.m, align 8, !tbaa !24
  %i.w = mul i64 %i.v, %i.u                       ; 8 uses
  %i.x = mul i64 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = or disjoint i64 %i.o, 1
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = or disjoint i64 %i.o, 2
  %i.ad = mul i64 %i.w, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = or disjoint i64 %i.o, 3
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ag ; 2 uses
  %i.ai = or disjoint i64 %i.o, 4
  %i.aj = mul i64 %i.w, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.o, 5
  %i.am = mul i64 %i.w, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.am ; 2 uses
  %i.ao = or disjoint i64 %i.o, 6
  %i.ap = mul i64 %i.w, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ap ; 2 uses
  %i.ar = or disjoint i64 %i.o, 7
  %i.as = mul i64 %i.w, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.av = load i32, ptr %6, align 4, !tbaa !9     ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 7
  br i1 %i.aw, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.ax = and i32 %i.av, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.0336.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bn, %.preheader.loopexit ]
  %.0335.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bp, %.preheader.loopexit ]
  %.0334.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.br, %.preheader.loopexit ]
  %.0333.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bt, %.preheader.loopexit ]
  %.0332.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ch, %.preheader.loopexit ]
  %.0331.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cj, %.preheader.loopexit ]
  %.0330.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cl, %.preheader.loopexit ]
  %.0329.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.cn, %.preheader.loopexit ]
  %.0115.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.cp, %.preheader.loopexit ]
  %.0113.lcssa = phi ptr [ %i.ab, %bb.e ], [ %i.cq, %.preheader.loopexit ]
  %.0111.lcssa = phi ptr [ %i.ae, %bb.e ], [ %i.cr, %.preheader.loopexit ]
  %.0109.lcssa = phi ptr [ %i.ah, %bb.e ], [ %i.cs, %.preheader.loopexit ]
  %.0107.lcssa = phi ptr [ %i.ak, %bb.e ], [ %i.ct, %.preheader.loopexit ]
  %.0105.lcssa = phi ptr [ %i.an, %bb.e ], [ %i.cu, %.preheader.loopexit ]
  %.0103.lcssa = phi ptr [ %i.aq, %bb.e ], [ %i.cv, %.preheader.loopexit ]
  %.0101.lcssa = phi ptr [ %i.at, %bb.e ], [ %i.cw, %.preheader.loopexit ]
  %.099.lcssa = phi ptr [ %i.au, %bb.e ], [ %i.co, %.preheader.loopexit ]
  %.098.lcssa = phi i32 [ 0, %bb.e ], [ %i.ax, %.preheader.loopexit ] ; 2 uses
  %i.ay = icmp slt i32 %.098.lcssa, %i.av
  br i1 %i.ay, label %.lr.ph387, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.098358 = phi i32 [ %i.cx, %.lr.ph ], [ 0, %bb.e ]
  %.099357 = phi ptr [ %i.co, %.lr.ph ], [ %i.au, %bb.e ] ; 2 uses
  %.0101356 = phi ptr [ %i.cw, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.0103355 = phi ptr [ %i.cv, %.lr.ph ], [ %i.aq, %bb.e ] ; 2 uses
  %.0105354 = phi ptr [ %i.cu, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.0107353 = phi ptr [ %i.ct, %.lr.ph ], [ %i.ak, %bb.e ] ; 2 uses
  %.0109352 = phi ptr [ %i.cs, %.lr.ph ], [ %i.ah, %bb.e ] ; 2 uses
  %.0111351 = phi ptr [ %i.cr, %.lr.ph ], [ %i.ae, %bb.e ] ; 2 uses
  %.0113350 = phi ptr [ %i.cq, %.lr.ph ], [ %i.ab, %bb.e ] ; 2 uses
  %.0115349 = phi ptr [ %i.cp, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %.0329348 = phi <8 x float> [ %i.cn, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0330347 = phi <8 x float> [ %i.cl, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0331346 = phi <8 x float> [ %i.cj, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0332345 = phi <8 x float> [ %i.ch, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0333344 = phi <8 x float> [ %i.bt, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0334343 = phi <8 x float> [ %i.br, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0335342 = phi <8 x float> [ %i.bp, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0336341 = phi <8 x float> [ %i.bn, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %i.az = load <8 x float>, ptr %.099357, align 1, !tbaa !23 ; 8 uses
  %i.ba = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0115349)
  %i.bb = bitcast <16 x i8> %i.ba to <8 x half>
  %i.bc = fpext fast <8 x half> %i.bb to <8 x float>
  %i.bd = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0113350)
  %i.be = bitcast <16 x i8> %i.bd to <8 x half>
  %i.bf = fpext fast <8 x half> %i.be to <8 x float>
  %i.bg = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0111351)
  %i.bh = bitcast <16 x i8> %i.bg to <8 x half>
  %i.bi = fpext fast <8 x half> %i.bh to <8 x float>
  %i.bj = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0109352)
  %i.bk = bitcast <16 x i8> %i.bj to <8 x half>
  %i.bl = fpext fast <8 x half> %i.bk to <8 x float>
  %i.bm = fmul fast <8 x float> %i.az, %i.bc
  %i.bn = fadd fast <8 x float> %i.bm, %.0336341  ; 2 uses
  %i.bo = fmul fast <8 x float> %i.az, %i.bf
  %i.bp = fadd fast <8 x float> %i.bo, %.0335342  ; 2 uses
  %i.bq = fmul fast <8 x float> %i.az, %i.bi
  %i.br = fadd fast <8 x float> %i.bq, %.0334343  ; 2 uses
  %i.bs = fmul fast <8 x float> %i.az, %i.bl
  %i.bt = fadd fast <8 x float> %i.bs, %.0333344  ; 2 uses
  %i.bu = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0107353)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.bw = fpext fast <8 x half> %i.bv to <8 x float>
  %i.bx = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0105354)
  %i.by = bitcast <16 x i8> %i.bx to <8 x half>
  %i.bz = fpext fast <8 x half> %i.by to <8 x float>
  %i.ca = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0103355)
  %i.cb = bitcast <16 x i8> %i.ca to <8 x half>
  %i.cc = fpext fast <8 x half> %i.cb to <8 x float>
  %i.cd = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0101356)
  %i.ce = bitcast <16 x i8> %i.cd to <8 x half>
  %i.cf = fpext fast <8 x half> %i.ce to <8 x float>
  %i.cg = fmul fast <8 x float> %i.az, %i.bw
  %i.ch = fadd fast <8 x float> %i.cg, %.0332345  ; 2 uses
  %i.ci = fmul fast <8 x float> %i.az, %i.bz
  %i.cj = fadd fast <8 x float> %i.ci, %.0331346  ; 2 uses
  %i.ck = fmul fast <8 x float> %i.az, %i.cc
  %i.cl = fadd fast <8 x float> %i.ck, %.0330347  ; 2 uses
  %i.cm = fmul fast <8 x float> %i.az, %i.cf
  %i.cn = fadd fast <8 x float> %i.cm, %.0329348  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.099357, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0115349, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0113350, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0111351, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0109352, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0107353, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0105354, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0103355, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0101356, i64 16 ; 2 uses
  %i.cx = add nuw nsw i32 %.098358, 8             ; 2 uses
  %i.cy = or disjoint i32 %i.cx, 7
  %i.cz = icmp slt i32 %i.cy, %i.av
  br i1 %i.cz, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !41

.lr.ph387:                                        ; preds = %.preheader, %bb.m
  %.1386 = phi i32 [ %i.fb, %bb.m ], [ %.098.lcssa, %.preheader ]
  %.1100385 = phi ptr [ %i.es, %bb.m ], [ %.099.lcssa, %.preheader ] ; 9 uses
  %.1102384 = phi ptr [ %i.fa, %bb.m ], [ %.0101.lcssa, %.preheader ] ; 2 uses
  %.1104383 = phi ptr [ %i.ez, %bb.m ], [ %.0103.lcssa, %.preheader ] ; 2 uses
  %.1106382 = phi ptr [ %i.ey, %bb.m ], [ %.0105.lcssa, %.preheader ] ; 2 uses
  %.1108381 = phi ptr [ %i.ex, %bb.m ], [ %.0107.lcssa, %.preheader ] ; 2 uses
  %.1110380 = phi ptr [ %i.ew, %bb.m ], [ %.0109.lcssa, %.preheader ] ; 2 uses
  %.1112379 = phi ptr [ %i.ev, %bb.m ], [ %.0111.lcssa, %.preheader ] ; 2 uses
  %.1114378 = phi ptr [ %i.eu, %bb.m ], [ %.0113.lcssa, %.preheader ] ; 2 uses
  %.1116377 = phi ptr [ %i.et, %bb.m ], [ %.0115.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1376 = phi <8 x float> [ %i.er, %bb.m ], [ %.sroa.0.0, %.preheader ]
  %i.da = load float, ptr %.1100385, align 4, !tbaa !27
  %i.db = load i16, ptr %.1116377, align 2, !tbaa !31
  %i.dc = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.db)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %.lr.ph387
  %i.dd = load float, ptr %.1100385, align 4, !tbaa !27
  %i.de = load i16, ptr %.1114378, align 2, !tbaa !31
  %i.df = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.de)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.dg = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dh = load i16, ptr %.1112379, align 2, !tbaa !31
  %i.di = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dh)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.dj = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dk = load i16, ptr %.1110380, align 2, !tbaa !31
  %i.dl = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dk)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.dm = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dn = load i16, ptr %.1108381, align 2, !tbaa !31
  %i.do = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dn)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.dp = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dq = load i16, ptr %.1106382, align 2, !tbaa !31
  %i.dr = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dq)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ds = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dt = load i16, ptr %.1104383, align 2, !tbaa !31
  %i.du = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dt)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.dv = load float, ptr %.1100385, align 4, !tbaa !27
  %i.dw = load i16, ptr %.1102384, align 2, !tbaa !31
  %i.dx = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dw)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dy = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.df, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.di, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dl, i64 3
  %i.ec = insertelement <4 x float> poison, float %i.da, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.dd, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %i.dg, i64 2
  %i.ef = insertelement <4 x float> %i.ee, float %i.dj, i64 3
  %i.eg = fmul fast <4 x float> %i.eb, %i.ef
  %i.eh = insertelement <4 x float> poison, float %i.do, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.dr, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.du, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.dx, i64 3
  %i.el = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.dp, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.ds, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.dv, i64 3
  %i.ep = fmul fast <4 x float> %i.ek, %i.eo
  %i.eq = shufflevector <4 x float> %i.eg, <4 x float> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.er = fadd fast <8 x float> %i.eq, %.sroa.0.1376 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1100385, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %.1116377, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.1114378, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.1112379, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.1110380, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %.1108381, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %.1106382, i64 2
  %i.ez = getelementptr inbounds nuw i8, ptr %.1104383, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %.1102384, i64 2
  %i.fb = add nuw nsw i32 %.1386, 1               ; 2 uses
  %i.fc = load i32, ptr %6, align 4, !tbaa !9
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph387, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.sroa.0.1.lcssa = phi <8 x float> [ %.sroa.0.0, %.preheader ], [ %i.er, %bb.m ]
  %i.fe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0336.lcssa, <8 x float> nofpclass(nan inf) %.0335.lcssa)
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0334.lcssa, <8 x float> nofpclass(nan inf) %.0333.lcssa)
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0332.lcssa, <8 x float> nofpclass(nan inf) %.0331.lcssa)
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0330.lcssa, <8 x float> nofpclass(nan inf) %.0329.lcssa)
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) %i.ff) ; 2 uses
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.fh) ; 2 uses
  %i.fk = shufflevector <8 x float> %i.fi, <8 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.fl = shufflevector <8 x float> %i.fi, <8 x float> %i.fj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.fm = fadd fast <8 x float> %i.fl, %.sroa.0.1.lcssa
  %i.fn = fadd fast <8 x float> %i.fm, %i.fk      ; 10 uses
  %i.fo = load i32, ptr %7, align 4, !tbaa !9
  switch i32 %i.fo, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.n
    i32 2, label %.noexc
    i32 3, label %bb.o
    i32 4, label %.noexc119
    i32 5, label %.noexc120
    i32 6, label %.noexc121
  ]

bb.n:                                             ; preds = %._crit_edge
  %i.fp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.fq = load ptr, ptr %8, align 8, !tbaa !17
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !27
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.fn)
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.fn)
  %i.fu = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.fv = shufflevector <8 x float> %i.fu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fw = fmul fast <8 x float> %i.fv, %i.ft
  %i.fx = fadd fast <8 x float> %i.fw, %i.fs
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.o:                                             ; preds = %._crit_edge
  %i.fy = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !27
  %i.ga = insertelement <8 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !27
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %i.gb)
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> nofpclass(nan inf) %i.gf)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc119:                                        ; preds = %._crit_edge
  %i.gi = fneg fast <8 x float> %i.fn
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> splat (float f0x42B0C0A5))
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gl = fmul fast <8 x float> %i.gk, splat (float f0x3FB8AA3B)
  %i.gm = fadd fast <8 x float> %i.gl, splat (float 5.000000e-01) ; 2 uses
  %i.gn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gm, i32 1) ; 2 uses
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
  %i.hf = fadd fast <8 x float> %i.gs, splat (float 1.000000e+00)
  %i.hg = fadd fast <8 x float> %i.hf, %i.he
  %i.hh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <8 x i32> %i.hh, splat (i32 23)
  %i.hj = add <8 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = fmul fast <8 x float> %i.hg, %i.hk
  %i.hm = fadd fast <8 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = fdiv fast <8 x float> splat (float 1.000000e+00), %i.hm
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc120:                                        ; preds = %._crit_edge
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> splat (float f0x42B0C0A5))
  %i.hp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hq = fmul fast <8 x float> %i.hp, splat (float f0x3FB8AA3B)
  %i.hr = fadd fast <8 x float> %i.hq, splat (float 5.000000e-01) ; 2 uses
  %i.hs = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hr, i32 1) ; 2 uses
  %i.ht = fcmp fast ogt <8 x float> %i.hs, %i.hr
  %i.hu = select <8 x i1> %i.ht, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hv = fsub fast <8 x float> %i.hs, %i.hu      ; 2 uses
  %i.hw = fmul fast <8 x float> %i.hv, splat (float f0x3F317218)
  %i.hx = fsub fast <8 x float> %i.hp, %i.hw      ; 8 uses
  %i.hy = fmul fast <8 x float> %i.hx, %i.hx
  %i.hz = fmul fast <8 x float> %i.hx, splat (float f0x39506967)
  %i.ia = fadd fast <8 x float> %i.hz, splat (float f0x3AB743CE)
  %i.ib = fmul fast <8 x float> %i.ia, %i.hx
  %i.ic = fadd fast <8 x float> %i.ib, splat (float f0x3C088908)
  %i.id = fmul fast <8 x float> %i.ic, %i.hx
  %i.ie = fadd fast <8 x float> %i.id, splat (float f0x3D2AA9C1)
  %i.if = fmul fast <8 x float> %i.ie, %i.hx
  %i.ig = fadd fast <8 x float> %i.if, splat (float f0x3E2AAAAA)
  %i.ih = fmul fast <8 x float> %i.ig, %i.hx
  %i.ii = fadd fast <8 x float> %i.ih, splat (float 5.000000e-01)
  %i.ij = fmul fast <8 x float> %i.hy, %i.ii
  %i.ik = fadd fast <8 x float> %i.hx, splat (float 1.000000e+00)
  %i.il = fadd fast <8 x float> %i.ik, %i.ij
  %i.im = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hv)
  %i.in = shl <8 x i32> %i.im, splat (i32 23)
  %i.io = add <8 x i32> %i.in, splat (i32 1065353216)
  %i.ip = bitcast <8 x i32> %i.io to <8 x float>
  %i.iq = fmul fast <8 x float> %i.il, %i.ip
  %i.ir = fadd fast <8 x float> %i.iq, splat (float 1.000000e+00) ; 2 uses
  %i.is = fcmp fast ole <8 x float> %i.ir, zeroinitializer
  %i.it = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iu = bitcast <8 x float> %i.it to <8 x i32>
  %i.iv = bitcast <8 x float> %i.it to <8 x i32>
  %i.iw = and <8 x i32> %i.iv, splat (i32 -2139095041)
  %i.ix = or disjoint <8 x i32> %i.iw, splat (i32 1056964608)
  %i.iy = bitcast <8 x i32> %i.ix to <8 x float>  ; 3 uses
  %i.iz = lshr <8 x i32> %i.iu, splat (i32 23)
  %i.ja = add nsw <8 x i32> %i.iz, splat (i32 -127)
  %i.jb = sitofp fast <8 x i32> %i.ja to <8 x float> ; 2 uses
  %i.jc = fadd fast <8 x float> %i.jb, splat (float 1.000000e+00)
  %i.jd = fcmp fast olt <8 x float> %i.iy, splat (float f0x3F3504F3) ; 2 uses
  %i.je = select <8 x i1> %i.jd, <8 x float> %i.iy, <8 x float> zeroinitializer
  %i.jf = fadd fast <8 x float> %i.iy, splat (float -1.000000e+00)
  %i.jg = select fast <8 x i1> %i.jd, <8 x float> %i.jb, <8 x float> %i.jc
  %i.jh = fadd fast <8 x float> %i.jf, %i.je      ; 12 uses
  %i.ji = fmul fast <8 x float> %i.jh, %i.jh
  %i.jj = fmul fast <8 x float> %i.jh, splat (float f0x3D9021BB)
  %i.jk = fadd fast <8 x float> %i.jj, splat (float f0xBDEBD1B8)
  %i.jl = fmul fast <8 x float> %i.jk, %i.jh
  %i.jm = fadd fast <8 x float> %i.jl, splat (float f0x3DEF251A)
  %i.jn = fmul fast <8 x float> %i.jm, %i.jh
  %i.jo = fadd fast <8 x float> %i.jn, splat (float f0xBDFE5D4F)
  %i.jp = fmul fast <8 x float> %i.jo, %i.jh
  %i.jq = fadd fast <8 x float> %i.jp, splat (float f0x3E11E9BF)
  %i.jr = fmul fast <8 x float> %i.jq, %i.jh
  %i.js = fadd fast <8 x float> %i.jr, splat (float f0xBE2AAE50)
  %i.jt = fmul fast <8 x float> %i.js, %i.jh
  %i.ju = fadd fast <8 x float> %i.jt, splat (float f0x3E4CCEAC)
  %i.jv = fmul fast <8 x float> %i.ju, %i.jh
  %i.jw = fadd fast <8 x float> %i.jv, splat (float f0xBE7FFFFC)
  %i.jx = fmul fast <8 x float> %i.jw, %i.jh
  %i.jy = fadd fast <8 x float> %i.jx, splat (float f0x3EAAAAAA)
  %i.jz = fmul fast <8 x float> %i.jy, %i.jh
  %reass.mul = fmul fast <8 x float> %i.jg, splat (float f0x3F317218)
  %reass.add338 = fadd fast <8 x float> %i.jz, splat (float -5.000000e-01)
  %reass.mul339 = fmul fast <8 x float> %i.ji, %reass.add338
  %i.ka = fadd fast <8 x float> %reass.mul, %i.jh
  %i.kb = fadd fast <8 x float> %i.ka, %reass.mul339
  %.neg = fmul fast <8 x float> %i.kb, splat (float -2.000000e+00)
  %i.kc = select fast <8 x i1> %i.is, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.kd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kc, <8 x float> splat (float f0x42B0C0A5))
  %i.ke = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kf = fmul fast <8 x float> %i.ke, splat (float f0x3FB8AA3B)
  %i.kg = fadd fast <8 x float> %i.kf, splat (float 5.000000e-01) ; 2 uses
  %i.kh = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kg, i32 1) ; 2 uses
  %i.ki = fcmp fast ogt <8 x float> %i.kh, %i.kg
  %i.kj = select <8 x i1> %i.ki, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kk = fsub fast <8 x float> %i.kh, %i.kj      ; 2 uses
  %i.kl = fmul fast <8 x float> %i.kk, splat (float f0x3F317218)
  %i.km = fsub fast <8 x float> %i.ke, %i.kl      ; 8 uses
  %i.kn = fmul fast <8 x float> %i.km, %i.km
  %i.ko = fmul fast <8 x float> %i.km, splat (float f0x39506967)
  %i.kp = fadd fast <8 x float> %i.ko, splat (float f0x3AB743CE)
  %i.kq = fmul fast <8 x float> %i.kp, %i.km
  %i.kr = fadd fast <8 x float> %i.kq, splat (float f0x3C088908)
  %i.ks = fmul fast <8 x float> %i.kr, %i.km
  %i.kt = fadd fast <8 x float> %i.ks, splat (float f0x3D2AA9C1)
  %i.ku = fmul fast <8 x float> %i.kt, %i.km
  %i.kv = fadd fast <8 x float> %i.ku, splat (float f0x3E2AAAAA)
  %i.kw = fmul fast <8 x float> %i.kv, %i.km
  %i.kx = fadd fast <8 x float> %i.kw, splat (float 5.000000e-01)
  %i.ky = fmul fast <8 x float> %i.kn, %i.kx
  %i.kz = fadd fast <8 x float> %i.km, splat (float 1.000000e+00)
  %i.la = fadd fast <8 x float> %i.kz, %i.ky
  %i.lb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kk)
  %i.lc = shl <8 x i32> %i.lb, splat (i32 23)
  %i.ld = add <8 x i32> %i.lc, splat (i32 1065353216)
  %i.le = bitcast <8 x i32> %i.ld to <8 x float>
  %i.lf = fmul fast <8 x float> %i.la, %i.le
  %i.lg = fadd fast <8 x float> %i.lf, splat (float 1.000000e+00)
  %i.lh = fdiv fast <8 x float> splat (float 2.000000e+00), %i.lg
  %i.li = fadd fast <8 x float> %i.lh, splat (float -1.000000e+00)
  %i.lj = fmul fast <8 x float> %i.li, %i.fn
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc121:                                        ; preds = %._crit_edge
  %i.lk = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !27
  %i.lm = insertelement <8 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <8 x float> %i.lm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !27
  %i.lq = insertelement <8 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <8 x float> %i.lq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ls = fmul fast <8 x float> %i.ln, %i.fn
  %i.lt = fadd fast <8 x float> %i.ls, %i.lr
  %i.lu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lt, <8 x float> zeroinitializer)
  %i.lv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lu, <8 x float> splat (float 1.000000e+00))
  %i.lw = fmul fast <8 x float> %i.lv, %i.fn
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc121, %.noexc120, %.noexc119, %bb.o, %.noexc, %bb.n, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.lw, %.noexc121 ], [ %i.fp, %bb.n ], [ %i.fx, %.noexc ], [ %i.gh, %bb.o ], [ %i.hn, %.noexc119 ], [ %i.lj, %.noexc120 ], [ %i.fn, %._crit_edge ]
  %i.lx = load ptr, ptr %9, align 8, !tbaa !17
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.o
  store <8 x float> %.0.i, ptr %i.ly, align 1, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.lz = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ma = sext i32 %i.lz to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ma
  br i1 %.not.not, label %bb.c, label %._crit_edge393

._crit_edge393:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge393, %bb.a
  ret void

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph387
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #14
  unreachable
}

declare noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not336 = icmp sgt i32 %i.k, %i.j
  br i1 %.not336, label %._crit_edge340, label %.lr.ph339

.lr.ph339:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph339, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0337 = phi i32 [ %i.k, %.lr.ph339 ], [ %i.lf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !9
  %i.o = shl nsw i32 %.0337, 2
  %i.p = add nsw i32 %i.n, %i.o                   ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %.not107 = icmp eq ptr %i.q, null
  %.pre = sext i32 %i.p to i64                    ; 3 uses
  br i1 %.not107, label %._crit_edge360, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !27
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi nsz <4 x float> [ %i.s, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !17     ; 4 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !15
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.m, align 8, !tbaa !24
  %i.x = mul i64 %i.w, %i.v                       ; 4 uses
  %i.y = mul i64 %i.x, %.pre
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = add nsw i32 %i.p, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = add nsw i32 %i.p, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.x, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ag ; 2 uses
  %i.ai = add nsw i32 %i.p, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.x, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !9     ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %.lr.ph, label %.preheader284

.preheader284.loopexit:                           ; preds = %.lr.ph
  %i.ap = and i32 %i.an, 2147483640
  br label %.preheader284

.preheader284:                                    ; preds = %.preheader284.loopexit, %._crit_edge360
  %.0280.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge360 ], [ %i.bg, %.preheader284.loopexit ]
  %.0279.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge360 ], [ %i.bi, %.preheader284.loopexit ]
  %.0278.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge360 ], [ %i.bk, %.preheader284.loopexit ]
  %.0277.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge360 ], [ %i.bm, %.preheader284.loopexit ]
  %.0103.lcssa = phi ptr [ %i.z, %._crit_edge360 ], [ %i.bo, %.preheader284.loopexit ] ; 2 uses
  %.0100.lcssa = phi ptr [ %i.ad, %._crit_edge360 ], [ %i.bp, %.preheader284.loopexit ] ; 2 uses
  %.097.lcssa = phi ptr [ %i.ah, %._crit_edge360 ], [ %i.bq, %.preheader284.loopexit ] ; 2 uses
  %.094.lcssa = phi ptr [ %i.al, %._crit_edge360 ], [ %i.br, %.preheader284.loopexit ] ; 2 uses
  %.091.lcssa = phi ptr [ %i.am, %._crit_edge360 ], [ %i.bn, %.preheader284.loopexit ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %._crit_edge360 ], [ %i.ap, %.preheader284.loopexit ] ; 3 uses
  %i.aq = or disjoint i32 %.090.lcssa, 3
  %i.ar = icmp slt i32 %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph316, label %.preheader

.lr.ph:                                           ; preds = %._crit_edge360, %.lr.ph
  %.090295 = phi i32 [ %i.bs, %.lr.ph ], [ 0, %._crit_edge360 ]
  %.091294 = phi ptr [ %i.bn, %.lr.ph ], [ %i.am, %._crit_edge360 ] ; 2 uses
  %.094293 = phi ptr [ %i.br, %.lr.ph ], [ %i.al, %._crit_edge360 ] ; 2 uses
  %.097292 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ah, %._crit_edge360 ] ; 2 uses
  %.0100291 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ad, %._crit_edge360 ] ; 2 uses
  %.0103290 = phi ptr [ %i.bo, %.lr.ph ], [ %i.z, %._crit_edge360 ] ; 2 uses
  %.0277289 = phi <8 x float> [ %i.bm, %.lr.ph ], [ zeroinitializer, %._crit_edge360 ]
  %.0278288 = phi <8 x float> [ %i.bk, %.lr.ph ], [ zeroinitializer, %._crit_edge360 ]
  %.0279287 = phi <8 x float> [ %i.bi, %.lr.ph ], [ zeroinitializer, %._crit_edge360 ]
  %.0280286 = phi <8 x float> [ %i.bg, %.lr.ph ], [ zeroinitializer, %._crit_edge360 ]
  %i.as = load <8 x float>, ptr %.091294, align 1, !tbaa !23 ; 4 uses
  %i.at = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0103290)
  %i.au = bitcast <16 x i8> %i.at to <8 x half>
  %i.av = fpext fast <8 x half> %i.au to <8 x float>
  %i.aw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.0100291)
  %i.ax = bitcast <16 x i8> %i.aw to <8 x half>
  %i.ay = fpext fast <8 x half> %i.ax to <8 x float>
  %i.az = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.097292)
  %i.ba = bitcast <16 x i8> %i.az to <8 x half>
  %i.bb = fpext fast <8 x half> %i.ba to <8 x float>
  %i.bc = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.094293)
  %i.bd = bitcast <16 x i8> %i.bc to <8 x half>
  %i.be = fpext fast <8 x half> %i.bd to <8 x float>
  %i.bf = fmul fast <8 x float> %i.as, %i.av
  %i.bg = fadd fast <8 x float> %i.bf, %.0280286  ; 2 uses
  %i.bh = fmul fast <8 x float> %i.as, %i.ay
  %i.bi = fadd fast <8 x float> %i.bh, %.0279287  ; 2 uses
  %i.bj = fmul fast <8 x float> %i.as, %i.bb
  %i.bk = fadd fast <8 x float> %i.bj, %.0278288  ; 2 uses
  %i.bl = fmul fast <8 x float> %i.as, %i.be
  %i.bm = fadd fast <8 x float> %i.bl, %.0277289  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.091294, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0103290, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0100291, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.097292, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.094293, i64 16 ; 2 uses
  %i.bs = add nuw nsw i32 %.090295, 8             ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 7
  %i.bu = icmp slt i32 %i.bt, %i.an
  br i1 %i.bu, label %.lr.ph, label %.preheader284.loopexit, !llvm.loop !43

.preheader:                                       ; preds = %.lr.ph316, %.preheader284
  %.0276.lcssa = phi <4 x float> [ zeroinitializer, %.preheader284 ], [ %i.cg, %.lr.ph316 ] ; 2 uses
  %.0275.lcssa = phi <4 x float> [ zeroinitializer, %.preheader284 ], [ %i.ci, %.lr.ph316 ] ; 2 uses
  %.0274.lcssa = phi <4 x float> [ zeroinitializer, %.preheader284 ], [ %i.ck, %.lr.ph316 ] ; 2 uses
  %.0273.lcssa = phi <4 x float> [ zeroinitializer, %.preheader284 ], [ %i.cm, %.lr.ph316 ] ; 2 uses
  %.1104.lcssa = phi ptr [ %.0103.lcssa, %.preheader284 ], [ %i.co, %.lr.ph316 ]
  %.1101.lcssa = phi ptr [ %.0100.lcssa, %.preheader284 ], [ %i.cp, %.lr.ph316 ]
  %.198.lcssa = phi ptr [ %.097.lcssa, %.preheader284 ], [ %i.cq, %.lr.ph316 ]
  %.195.lcssa = phi ptr [ %.094.lcssa, %.preheader284 ], [ %i.cr, %.lr.ph316 ]
  %.192.lcssa = phi ptr [ %.091.lcssa, %.preheader284 ], [ %i.cn, %.lr.ph316 ]
  %.1.lcssa = phi i32 [ %.090.lcssa, %.preheader284 ], [ %i.cs, %.lr.ph316 ] ; 2 uses
  %i.bv = icmp slt i32 %.1.lcssa, %i.an
  br i1 %i.bv, label %.lr.ph334, label %._crit_edge

.lr.ph316:                                        ; preds = %.preheader284, %.lr.ph316
  %.1315 = phi i32 [ %i.cs, %.lr.ph316 ], [ %.090.lcssa, %.preheader284 ]
  %.192314 = phi ptr [ %i.cn, %.lr.ph316 ], [ %.091.lcssa, %.preheader284 ] ; 2 uses
  %.195313 = phi ptr [ %i.cr, %.lr.ph316 ], [ %.094.lcssa, %.preheader284 ] ; 2 uses
  %.198312 = phi ptr [ %i.cq, %.lr.ph316 ], [ %.097.lcssa, %.preheader284 ] ; 2 uses
  %.1101311 = phi ptr [ %i.cp, %.lr.ph316 ], [ %.0100.lcssa, %.preheader284 ] ; 2 uses
  %.1104310 = phi ptr [ %i.co, %.lr.ph316 ], [ %.0103.lcssa, %.preheader284 ] ; 2 uses
  %.0273309 = phi <4 x float> [ %i.cm, %.lr.ph316 ], [ zeroinitializer, %.preheader284 ]
  %.0274308 = phi <4 x float> [ %i.ck, %.lr.ph316 ], [ zeroinitializer, %.preheader284 ]
  %.0275307 = phi <4 x float> [ %i.ci, %.lr.ph316 ], [ zeroinitializer, %.preheader284 ]
  %.0276306 = phi <4 x float> [ %i.cg, %.lr.ph316 ], [ zeroinitializer, %.preheader284 ]
  %i.bw = load <4 x float>, ptr %.192314, align 1, !tbaa !23 ; 4 uses
  %i.bx = load <4 x half>, ptr %.1104310, align 1, !tbaa !23
  %i.by = fpext fast <4 x half> %i.bx to <4 x float>
  %i.bz = load <4 x half>, ptr %.1101311, align 1, !tbaa !23
  %i.ca = fpext fast <4 x half> %i.bz to <4 x float>
  %i.cb = load <4 x half>, ptr %.198312, align 1, !tbaa !23
  %i.cc = fpext fast <4 x half> %i.cb to <4 x float>
  %i.cd = load <4 x half>, ptr %.195313, align 1, !tbaa !23
  %i.ce = fpext fast <4 x half> %i.cd to <4 x float>
  %i.cf = fmul fast <4 x float> %i.bw, %i.by
  %i.cg = fadd fast <4 x float> %i.cf, %.0276306  ; 2 uses
  %i.ch = fmul fast <4 x float> %i.bw, %i.ca
  %i.ci = fadd fast <4 x float> %i.ch, %.0275307  ; 2 uses
  %i.cj = fmul fast <4 x float> %i.bw, %i.cc
  %i.ck = fadd fast <4 x float> %i.cj, %.0274308  ; 2 uses
  %i.cl = fmul fast <4 x float> %i.bw, %i.ce
  %i.cm = fadd fast <4 x float> %i.cl, %.0273309  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.192314, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1104310, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1101311, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.198312, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.195313, i64 8 ; 2 uses
  %i.cs = add nuw nsw i32 %.1315, 4               ; 3 uses
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = icmp slt i32 %i.ct, %i.an
  br i1 %i.cu, label %.lr.ph316, label %.preheader, !llvm.loop !44

.lr.ph334:                                        ; preds = %.preheader, %bb.h
  %.2333 = phi i32 [ %i.dw, %bb.h ], [ %.1.lcssa, %.preheader ]
  %.293332 = phi ptr [ %i.dr, %bb.h ], [ %.192.lcssa, %.preheader ] ; 5 uses
  %.296331 = phi ptr [ %i.dv, %bb.h ], [ %.195.lcssa, %.preheader ] ; 2 uses
  %.299330 = phi ptr [ %i.du, %bb.h ], [ %.198.lcssa, %.preheader ] ; 2 uses
  %.2102329 = phi ptr [ %i.dt, %bb.h ], [ %.1101.lcssa, %.preheader ] ; 2 uses
  %.2105328 = phi ptr [ %i.ds, %bb.h ], [ %.1104.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1327 = phi <4 x float> [ %i.dq, %bb.h ], [ %.sroa.0.0, %.preheader ]
  %i.cv = load float, ptr %.293332, align 4, !tbaa !27
  %i.cw = load i16, ptr %.2105328, align 2, !tbaa !31
  %i.cx = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cw)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %.lr.ph334
  %i.cy = load float, ptr %.293332, align 4, !tbaa !27
  %i.cz = load i16, ptr %.2102329, align 2, !tbaa !31
  %i.da = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.cz)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.db = load float, ptr %.293332, align 4, !tbaa !27
  %i.dc = load i16, ptr %.299330, align 2, !tbaa !31
  %i.dd = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.dc)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.de = load float, ptr %.293332, align 4, !tbaa !27
  %i.df = load i16, ptr %.296331, align 2, !tbaa !31
  %i.dg = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.df)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.dh = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.da, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.dd, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 3
  %i.dl = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.cy, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.db, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.de, i64 3
  %i.dp = fmul fast <4 x float> %i.dk, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, %.sroa.0.1327 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.293332, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.2105328, i64 2
  %i.dt = getelementptr inbounds nuw i8, ptr %.2102329, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.299330, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.296331, i64 2
  %i.dw = add nuw nsw i32 %.2333, 1               ; 2 uses
  %i.dx = load i32, ptr %7, align 4, !tbaa !9
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph334, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.dq, %bb.h ]
  %i.dz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0280.lcssa, <8 x float> nofpclass(nan inf) %.0279.lcssa)
  %i.ea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0278.lcssa, <8 x float> nofpclass(nan inf) %.0277.lcssa)
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.ec = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ed = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <4 x float> %.0276.lcssa, <4 x float> %.0275.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %.0274.lcssa, <4 x float> %.0273.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %.0276.lcssa, <4 x float> %.0275.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %.0274.lcssa, <4 x float> %.0273.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.ee, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.el = shufflevector <4 x float> %i.eh, <4 x float> %i.eg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.em = fadd fast <4 x float> %i.ej, %i.ei
  %i.en = fadd fast <4 x float> %i.em, %i.ek
  %i.eo = fadd fast <4 x float> %i.en, %i.el
  %i.ep = fadd fast <4 x float> %i.eo, %.sroa.0.1.lcssa
  %i.eq = fadd fast <4 x float> %i.ep, %i.ed
  %i.er = fadd fast <4 x float> %i.eq, %i.ec      ; 10 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !9
  switch i32 %i.es, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.i
    i32 2, label %.noexc
    i32 3, label %bb.j
    i32 4, label %.noexc108
    i32 5, label %.noexc109
    i32 6, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.er, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.eu = load ptr, ptr %9, align 8, !tbaa !17
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !27
  %i.ew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.er)
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.er)
  %i.ey = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = fmul fast <4 x float> %i.ez, %i.ex
  %i.fb = fadd fast <4 x float> %i.fa, %i.ew
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.fc = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !27
  %i.fe = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !27
  %i.fi = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.ff)
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.fj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc108:                                        ; preds = %._crit_edge
  %i.fm = fneg fast <4 x float> %i.er
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> splat (float f0x42B0C0A5))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fo, splat (float f0x3FB8AA3B)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 5.000000e-01) ; 2 uses
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fq)
  %i.fs = sitofp fast <4 x i32> %i.fr to <4 x float> ; 2 uses
  %i.ft = fcmp fast olt <4 x float> %i.fq, %i.fs
  %i.fu = select <4 x i1> %i.ft, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fv = fsub fast <4 x float> %i.fs, %i.fu      ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3F317218)
  %i.fx = fsub fast <4 x float> %i.fo, %i.fw      ; 8 uses
  %i.fy = fmul fast <4 x float> %i.fx, %i.fx
  %i.fz = fmul fast <4 x float> %i.fx, splat (float f0x39506967)
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3AB743CE)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fx
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3C088908)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fx
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3D2AA9C1)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fx
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3E2AAAAA)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fx
  %i.gi = fadd fast <4 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fmul fast <4 x float> %i.fy, %i.gi
  %i.gk = fadd fast <4 x float> %i.fx, splat (float 1.000000e+00)
  %i.gl = fadd fast <4 x float> %i.gk, %i.gj
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.gn = shl <4 x i32> %i.gm, splat (i32 23)
  %i.go = add <4 x i32> %i.gn, splat (i32 1065353216)
  %i.gp = bitcast <4 x i32> %i.go to <4 x float>
  %i.gq = fmul fast <4 x float> %i.gl, %i.gp
  %i.gr = fadd fast <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc109:                                        ; preds = %._crit_edge
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.er, <4 x float> splat (float f0x42B0C0A5))
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gv = fmul fast <4 x float> %i.gu, splat (float f0x3FB8AA3B)
  %i.gw = fadd fast <4 x float> %i.gv, splat (float 5.000000e-01) ; 2 uses
  %i.gx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gw)
  %i.gy = sitofp fast <4 x i32> %i.gx to <4 x float> ; 2 uses
  %i.gz = fcmp fast olt <4 x float> %i.gw, %i.gy
  %i.ha = select <4 x i1> %i.gz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hb = fsub fast <4 x float> %i.gy, %i.ha      ; 2 uses
  %i.hc = fmul fast <4 x float> %i.hb, splat (float f0x3F317218)
  %i.hd = fsub fast <4 x float> %i.gu, %i.hc      ; 8 uses
  %i.he = fmul fast <4 x float> %i.hd, %i.hd
  %i.hf = fmul fast <4 x float> %i.hd, splat (float f0x39506967)
  %i.hg = fadd fast <4 x float> %i.hf, splat (float f0x3AB743CE)
  %i.hh = fmul fast <4 x float> %i.hg, %i.hd
  %i.hi = fadd fast <4 x float> %i.hh, splat (float f0x3C088908)
  %i.hj = fmul fast <4 x float> %i.hi, %i.hd
  %i.hk = fadd fast <4 x float> %i.hj, splat (float f0x3D2AA9C1)
  %i.hl = fmul fast <4 x float> %i.hk, %i.hd
  %i.hm = fadd fast <4 x float> %i.hl, splat (float f0x3E2AAAAA)
  %i.hn = fmul fast <4 x float> %i.hm, %i.hd
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hp = fmul fast <4 x float> %i.he, %i.ho
  %i.hq = fadd fast <4 x float> %i.hd, splat (float 1.000000e+00)
  %i.hr = fadd fast <4 x float> %i.hq, %i.hp
  %i.hs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hb)
  %i.ht = shl <4 x i32> %i.hs, splat (i32 23)
  %i.hu = add <4 x i32> %i.ht, splat (i32 1065353216)
  %i.hv = bitcast <4 x i32> %i.hu to <4 x float>
  %i.hw = fmul fast <4 x float> %i.hr, %i.hv
  %i.hx = fadd fast <4 x float> %i.hw, splat (float 1.000000e+00) ; 2 uses
  %i.hy = fcmp fast ole <4 x float> %i.hx, zeroinitializer
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> splat (float f0x00800000))
  %i.ia = bitcast <4 x float> %i.hz to <4 x i32>  ; 2 uses
  %i.ib = lshr <4 x i32> %i.ia, splat (i32 23)
  %i.ic = and <4 x i32> %i.ia, splat (i32 -2139095041)
  %i.id = or disjoint <4 x i32> %i.ic, splat (i32 1056964608)
  %i.ie = bitcast <4 x i32> %i.id to <4 x float>  ; 3 uses
  %i.if = add nsw <4 x i32> %i.ib, splat (i32 -127)
  %i.ig = sitofp fast <4 x i32> %i.if to <4 x float> ; 2 uses
  %i.ih = fadd fast <4 x float> %i.ig, splat (float 1.000000e+00)
  %i.ii = fcmp fast olt <4 x float> %i.ie, splat (float f0x3F3504F3) ; 2 uses
  %i.ij = select <4 x i1> %i.ii, <4 x float> %i.ie, <4 x float> zeroinitializer
  %i.ik = fadd fast <4 x float> %i.ie, splat (float -1.000000e+00)
  %i.il = select fast <4 x i1> %i.ii, <4 x float> %i.ig, <4 x float> %i.ih
  %i.im = fadd fast <4 x float> %i.ik, %i.ij      ; 12 uses
  %i.in = fmul fast <4 x float> %i.im, %i.im
  %i.io = fmul fast <4 x float> %i.im, splat (float f0x3D9021BB)
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0xBDEBD1B8)
  %i.iq = fmul fast <4 x float> %i.ip, %i.im
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3DEF251A)
  %i.is = fmul fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, splat (float f0xBDFE5D4F)
  %i.iu = fmul fast <4 x float> %i.it, %i.im
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0x3E11E9BF)
  %i.iw = fmul fast <4 x float> %i.iv, %i.im
  %i.ix = fadd fast <4 x float> %i.iw, splat (float f0xBE2AAE50)
  %i.iy = fmul fast <4 x float> %i.ix, %i.im
  %i.iz = fadd fast <4 x float> %i.iy, splat (float f0x3E4CCEAC)
  %i.ja = fmul fast <4 x float> %i.iz, %i.im
  %i.jb = fadd fast <4 x float> %i.ja, splat (float f0xBE7FFFFC)
  %i.jc = fmul fast <4 x float> %i.jb, %i.im
  %i.jd = fadd fast <4 x float> %i.jc, splat (float f0x3EAAAAAA)
  %i.je = fmul fast <4 x float> %i.jd, %i.im
  %reass.mul = fmul fast <4 x float> %i.il, splat (float f0x3F317218)
  %reass.add282 = fadd fast <4 x float> %i.je, splat (float -5.000000e-01)
  %reass.mul283 = fmul fast <4 x float> %i.in, %reass.add282
  %i.jf = fadd fast <4 x float> %reass.mul, %i.im
  %i.jg = fadd fast <4 x float> %i.jf, %reass.mul283
  %.neg = fmul fast <4 x float> %i.jg, splat (float -2.000000e+00)
  %i.jh = select fast <4 x i1> %i.hy, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> splat (float f0x42B0C0A5))
  %i.jj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ji, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jk = fmul fast <4 x float> %i.jj, splat (float f0x3FB8AA3B)
  %i.jl = fadd fast <4 x float> %i.jk, splat (float 5.000000e-01) ; 2 uses
  %i.jm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jl)
  %i.jn = sitofp fast <4 x i32> %i.jm to <4 x float> ; 2 uses
  %i.jo = fcmp fast olt <4 x float> %i.jl, %i.jn
  %i.jp = select <4 x i1> %i.jo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jq = fsub fast <4 x float> %i.jn, %i.jp      ; 2 uses
  %i.jr = fmul fast <4 x float> %i.jq, splat (float f0x3F317218)
  %i.js = fsub fast <4 x float> %i.jj, %i.jr      ; 8 uses
  %i.jt = fmul fast <4 x float> %i.js, %i.js
  %i.ju = fmul fast <4 x float> %i.js, splat (float f0x39506967)
  %i.jv = fadd fast <4 x float> %i.ju, splat (float f0x3AB743CE)
  %i.jw = fmul fast <4 x float> %i.jv, %i.js
  %i.jx = fadd fast <4 x float> %i.jw, splat (float f0x3C088908)
  %i.jy = fmul fast <4 x float> %i.jx, %i.js
  %i.jz = fadd fast <4 x float> %i.jy, splat (float f0x3D2AA9C1)
  %i.ka = fmul fast <4 x float> %i.jz, %i.js
  %i.kb = fadd fast <4 x float> %i.ka, splat (float f0x3E2AAAAA)
  %i.kc = fmul fast <4 x float> %i.kb, %i.js
  %i.kd = fadd fast <4 x float> %i.kc, splat (float 5.000000e-01)
  %i.ke = fmul fast <4 x float> %i.jt, %i.kd
  %i.kf = fadd fast <4 x float> %i.js, splat (float 1.000000e+00)
  %i.kg = fadd fast <4 x float> %i.kf, %i.ke
  %i.kh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jq)
  %i.ki = shl <4 x i32> %i.kh, splat (i32 23)
  %i.kj = add <4 x i32> %i.ki, splat (i32 1065353216)
  %i.kk = bitcast <4 x i32> %i.kj to <4 x float>
  %i.kl = fmul fast <4 x float> %i.kg, %i.kk
  %i.km = fadd fast <4 x float> %i.kl, splat (float 1.000000e+00)
  %i.kn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.km
  %i.ko = fadd fast <4 x float> %i.kn, splat (float -1.000000e+00)
  %i.kp = fmul fast <4 x float> %i.ko, %i.er
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.kq = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !27
  %i.ks = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !27
  %i.kw = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ky = fmul fast <4 x float> %i.kt, %i.er
  %i.kz = fadd fast <4 x float> %i.ky, %i.kx
  %i.la = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kz, <4 x float> zeroinitializer)
  %i.lb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float 1.000000e+00))
  %i.lc = fmul fast <4 x float> %i.lb, %i.er
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc109, %.noexc108, %bb.j, %.noexc, %bb.i, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.lc, %bb.k ], [ %i.et, %bb.i ], [ %i.fb, %.noexc ], [ %i.fl, %bb.j ], [ %i.gs, %.noexc108 ], [ %i.kp, %.noexc109 ], [ %i.er, %._crit_edge ]
  %i.ld = load ptr, ptr %10, align 8, !tbaa !17
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %.pre
  store <4 x float> %.0.i, ptr %i.le, align 1, !tbaa !23
  %i.lf = add nsw i32 %.0337, 1
  %i.lg = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.0337, %i.lg
  br i1 %.not.not, label %bb.c, label %._crit_edge340

._crit_edge340:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge340, %bb.a
  ret void

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph334
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #14
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !9      ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.i, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !9
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !9
  %i.m = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph115, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.0113 = phi i32 [ %i.m, %.lr.ph115 ], [ %i.du, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.r = add i32 %.0113, %i.e
  %i.s = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %.not = icmp eq ptr %i.s, null
  %.pre = sext i32 %i.r to i64                    ; 3 uses
  br i1 %.not, label %._crit_edge125, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.pre
  %i.u = load float, ptr %i.t, align 4, !tbaa !27
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.c, %bb.d
  %.059 = phi nsz float [ %i.u, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !17
  %i.w = load i32, ptr %i.p, align 4, !tbaa !15
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %.pre, %i.x
  %i.z = load i64, ptr %i.q, align 8, !tbaa !24
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !9     ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %._crit_edge125
  %i.af = add nsw i32 %i.ad, -8                   ; 2 uses
  %i.ag = lshr i32 %i.af, 3                       ; 2 uses
  %i.ah = add nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ah, 1073741822
  br label %.lr.ph

.preheader88.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %i.aj = and i32 %i.af, 8
  %lcmp.mod.not.not = icmp eq i32 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader88.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader88.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05392.epil.init = phi ptr [ %i.ac, %.lr.ph.preheader ], [ %i.bj, %.preheader88.loopexit.unr-lcssa ] ; 2 uses
  %.05691.epil.init = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %i.bk, %.preheader88.loopexit.unr-lcssa ] ; 2 uses
  %.08490.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bi, %.preheader88.loopexit.unr-lcssa ]
  %lcmp.mod159 = trunc i32 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod159)
  %i.ak = load <8 x float>, ptr %.05392.epil.init, align 1, !tbaa !23
  %i.al = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.05691.epil.init)
  %i.am = bitcast <16 x i8> %i.al to <8 x half>
  %i.an = fpext fast <8 x half> %i.am to <8 x float>
  %i.ao = fmul fast <8 x float> %i.ak, %i.an
  %i.ap = fadd fast <8 x float> %i.ao, %.08490.epil.init
  %i.aq = getelementptr inbounds nuw i8, ptr %.05392.epil.init, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.05691.epil.init, i64 16
  br label %.preheader88.loopexit

.preheader88.loopexit:                            ; preds = %.preheader88.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa150 = phi <8 x float> [ %i.bi, %.preheader88.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ]
  %.lcssa149 = phi ptr [ %i.bj, %.preheader88.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil.preheader ]
  %.lcssa = phi ptr [ %i.bk, %.preheader88.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.epil.preheader ]
  %i.as = and i32 %i.ad, 2147483640
  br label %.preheader88

.preheader88:                                     ; preds = %.preheader88.loopexit, %._crit_edge125
  %.084.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge125 ], [ %.lcssa150, %.preheader88.loopexit ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.ab, %._crit_edge125 ], [ %.lcssa, %.preheader88.loopexit ] ; 2 uses
  %.053.lcssa = phi ptr [ %i.ac, %._crit_edge125 ], [ %.lcssa149, %.preheader88.loopexit ] ; 2 uses
  %.052.lcssa = phi i32 [ 0, %._crit_edge125 ], [ %i.as, %.preheader88.loopexit ] ; 3 uses
  %i.at = or disjoint i32 %.052.lcssa, 3
  %i.au = icmp slt i32 %i.at, %i.ad
  br i1 %i.au, label %.lr.ph102, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05392 = phi ptr [ %i.ac, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %.05691 = phi ptr [ %i.ab, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ] ; 3 uses
  %.08490 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.av = load <8 x float>, ptr %.05392, align 1, !tbaa !23
  %i.aw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.05691)
  %i.ax = bitcast <16 x i8> %i.aw to <8 x half>
  %i.ay = fpext fast <8 x half> %i.ax to <8 x float>
  %i.az = fmul fast <8 x float> %i.av, %i.ay
  %i.ba = fadd fast <8 x float> %i.az, %.08490
  %i.bb = getelementptr inbounds nuw i8, ptr %.05392, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.05691, i64 16
  %i.bd = load <8 x float>, ptr %i.bb, align 1, !tbaa !23
  %i.be = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bc)
  %i.bf = bitcast <16 x i8> %i.be to <8 x half>
  %i.bg = fpext fast <8 x half> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bd, %i.bg
  %i.bi = fadd fast <8 x float> %i.bh, %i.ba      ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05392, i64 64 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05691, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader88.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !46

.preheader:                                       ; preds = %.lr.ph102, %.preheader88
  %.083.lcssa = phi <4 x float> [ zeroinitializer, %.preheader88 ], [ %i.bq, %.lr.ph102 ]
  %.157.lcssa = phi ptr [ %.056.lcssa, %.preheader88 ], [ %i.bs, %.lr.ph102 ]
  %.154.lcssa = phi ptr [ %.053.lcssa, %.preheader88 ], [ %i.br, %.lr.ph102 ]
  %.1.lcssa = phi i32 [ %.052.lcssa, %.preheader88 ], [ %i.bt, %.lr.ph102 ] ; 2 uses
  %i.bl = icmp slt i32 %.1.lcssa, %i.ad
end_hunk_1
begin_hunk_2_@_ZN4ncnnL27innerproduct_gemm_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not5727 = icmp sgt i32 %i.k, %i.j
  br i1 %.not5727, label %._crit_edge5731, label %.lr.ph5730

.lr.ph5730:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.r = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph5730, %.thread5321.thread5336
  %indvars.iv5833 = phi i64 [ %i.r, %.lr.ph5730 ], [ %indvars.iv.next5834, %.thread5321.thread5336 ] ; 20 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.t = icmp eq i32 %i.s, 8
  br i1 %i.t, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.v = icmp eq i32 %i.u, 8
  br i1 %i.v, label %bb.e, label %.thread5323

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %6, align 4, !tbaa !9
  %i.x = icmp sgt i32 %i.w, 7
  br i1 %i.x, label %.lr.ph5508.preheader, label %thread-pre-split5324

.lr.ph5508.preheader:                             ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !17
  %i.z = load i32, ptr %i.l, align 4, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %indvars.iv5833, %i.aa
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  br label %.lr.ph5508

.lr.ph5508:                                       ; preds = %.lr.ph5508.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478
  %indvars.iv = phi i64 [ 0, %.lr.ph5508.preheader ], [ %indvars.iv.next, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478 ] ; 3 uses
  %.03915505 = phi ptr [ %i.ae, %.lr.ph5508.preheader ], [ %i.axh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478 ] ; 9 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !17
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !15
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %indvars.iv, %i.ah
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !24
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = load ptr, ptr %8, align 8, !tbaa !17
  %i.an = load i32, ptr %i.p, align 4, !tbaa !15
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %indvars.iv5833, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %.not409 = icmp eq ptr %i.at, null
  br i1 %.not409, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph5508
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph5508
  %.04631 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5508 ], [ %i.av, %bb.f ] ; 16 uses
  %i.aw = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.14632.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avk, %.lr.ph ] ; 10 uses
  %.04630.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avm, %.lr.ph ] ; 10 uses
  %.04629.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avo, %.lr.ph ] ; 10 uses
  %.04628.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avq, %.lr.ph ] ; 10 uses
  %.04627.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avs, %.lr.ph ] ; 10 uses
  %.04626.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avu, %.lr.ph ] ; 10 uses
  %.04625.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avw, %.lr.ph ] ; 10 uses
  %.04624.lcssa = phi <8 x float> [ %.04631, %bb.g ], [ %i.avy, %.lr.ph ] ; 10 uses
  %i.ay = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.ay, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread: ; preds = %._crit_edge
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14632.lcssa, <8 x float> zeroinitializer)
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04630.lcssa, <8 x float> zeroinitializer)
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04629.lcssa, <8 x float> zeroinitializer)
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04628.lcssa, <8 x float> zeroinitializer)
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04627.lcssa, <8 x float> zeroinitializer)
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04626.lcssa, <8 x float> zeroinitializer)
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04625.lcssa, <8 x float> zeroinitializer)
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04624.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638: ; preds = %._crit_edge
  %i.bh = load ptr, ptr %12, align 8, !tbaa !17
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !27
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14632.lcssa)
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14632.lcssa)
  %i.bl = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.bm = shufflevector <8 x float> %i.bl, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.bn = fmul fast <8 x float> %i.bm, %i.bk
  %i.bo = fadd fast <8 x float> %i.bn, %i.bj
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04630.lcssa)
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04630.lcssa)
  %i.br = fmul fast <8 x float> %i.bm, %i.bq
  %i.bs = fadd fast <8 x float> %i.br, %i.bp
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04629.lcssa)
  %i.bu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04629.lcssa)
  %i.bv = fmul fast <8 x float> %i.bm, %i.bu
  %i.bw = fadd fast <8 x float> %i.bv, %i.bt
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04628.lcssa)
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04628.lcssa)
  %i.bz = fmul fast <8 x float> %i.bm, %i.by
  %i.ca = fadd fast <8 x float> %i.bz, %i.bx
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04627.lcssa)
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04627.lcssa)
  %i.cd = fmul fast <8 x float> %i.bm, %i.cc
  %i.ce = fadd fast <8 x float> %i.cd, %i.cb
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04626.lcssa)
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04626.lcssa)
  %i.ch = fmul fast <8 x float> %i.bm, %i.cg
  %i.ci = fadd fast <8 x float> %i.ch, %i.cf
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04625.lcssa)
  %i.ck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04625.lcssa)
  %i.cl = fmul fast <8 x float> %i.bm, %i.ck
  %i.cm = fadd fast <8 x float> %i.cl, %i.cj
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04624.lcssa)
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04624.lcssa)
  %i.cp = fmul fast <8 x float> %i.bm, %i.co
  %i.cq = fadd fast <8 x float> %i.cp, %i.cn
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641: ; preds = %._crit_edge
  %i.cr = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !27
  %i.ct = insertelement <8 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <8 x float> %i.ct, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27
  %i.cx = insertelement <8 x float> poison, float %i.cw, i64 0
  %i.cy = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.cz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14632.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.da = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.cy)
  %i.db = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04630.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04629.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.de = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.cy)
  %i.df = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04628.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04627.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.di = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dh, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04626.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dj, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04625.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04624.lcssa, <8 x float> nofpclass(nan inf) %i.cu)
  %i.do = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.cy)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644: ; preds = %._crit_edge
  %i.dp = fneg fast <8 x float> %.14632.lcssa
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dp, <8 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <8 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <8 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dt, i32 1) ; 2 uses
  %i.dv = fcmp fast ogt <8 x float> %i.du, %i.dt
  %i.dw = select <8 x i1> %i.dv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dx = fsub fast <8 x float> %i.du, %i.dw      ; 2 uses
  %i.dy = fmul fast <8 x float> %i.dx, splat (float f0x3F317218)
  %i.dz = fsub fast <8 x float> %i.dr, %i.dy      ; 8 uses
  %i.ea = fmul fast <8 x float> %i.dz, %i.dz
  %i.eb = fmul fast <8 x float> %i.dz, splat (float f0x39506967)
  %i.ec = fadd fast <8 x float> %i.eb, splat (float f0x3AB743CE)
  %i.ed = fmul fast <8 x float> %i.ec, %i.dz
  %i.ee = fadd fast <8 x float> %i.ed, splat (float f0x3C088908)
  %i.ef = fmul fast <8 x float> %i.ee, %i.dz
  %i.eg = fadd fast <8 x float> %i.ef, splat (float f0x3D2AA9C1)
  %i.eh = fmul fast <8 x float> %i.eg, %i.dz
  %i.ei = fadd fast <8 x float> %i.eh, splat (float f0x3E2AAAAA)
  %i.ej = fmul fast <8 x float> %i.ei, %i.dz
  %i.ek = fadd fast <8 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fmul fast <8 x float> %i.ea, %i.ek
  %i.em = fadd fast <8 x float> %i.dz, splat (float 1.000000e+00)
  %i.en = fadd fast <8 x float> %i.em, %i.el
  %i.eo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx)
  %i.ep = shl <8 x i32> %i.eo, splat (i32 23)
  %i.eq = add <8 x i32> %i.ep, splat (i32 1065353216)
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>
  %i.es = fmul fast <8 x float> %i.en, %i.er
  %i.et = fadd fast <8 x float> %i.es, splat (float 1.000000e+00)
  %i.eu = fdiv fast <8 x float> splat (float 1.000000e+00), %i.et
  %i.ev = fneg fast <8 x float> %.04630.lcssa
  %i.ew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> splat (float f0x42B0C0A5))
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ey = fmul fast <8 x float> %i.ex, splat (float f0x3FB8AA3B)
  %i.ez = fadd fast <8 x float> %i.ey, splat (float 5.000000e-01) ; 2 uses
  %i.fa = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ez, i32 1) ; 2 uses
  %i.fb = fcmp fast ogt <8 x float> %i.fa, %i.ez
  %i.fc = select <8 x i1> %i.fb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fd = fsub fast <8 x float> %i.fa, %i.fc      ; 2 uses
  %i.fe = fmul fast <8 x float> %i.fd, splat (float f0x3F317218)
  %i.ff = fsub fast <8 x float> %i.ex, %i.fe      ; 8 uses
  %i.fg = fmul fast <8 x float> %i.ff, %i.ff
  %i.fh = fmul fast <8 x float> %i.ff, splat (float f0x39506967)
  %i.fi = fadd fast <8 x float> %i.fh, splat (float f0x3AB743CE)
  %i.fj = fmul fast <8 x float> %i.fi, %i.ff
  %i.fk = fadd fast <8 x float> %i.fj, splat (float f0x3C088908)
  %i.fl = fmul fast <8 x float> %i.fk, %i.ff
  %i.fm = fadd fast <8 x float> %i.fl, splat (float f0x3D2AA9C1)
  %i.fn = fmul fast <8 x float> %i.fm, %i.ff
  %i.fo = fadd fast <8 x float> %i.fn, splat (float f0x3E2AAAAA)
  %i.fp = fmul fast <8 x float> %i.fo, %i.ff
  %i.fq = fadd fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.fr = fmul fast <8 x float> %i.fg, %i.fq
  %i.fs = fadd fast <8 x float> %i.ff, splat (float 1.000000e+00)
  %i.ft = fadd fast <8 x float> %i.fs, %i.fr
  %i.fu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fd)
  %i.fv = shl <8 x i32> %i.fu, splat (i32 23)
  %i.fw = add <8 x i32> %i.fv, splat (i32 1065353216)
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = fmul fast <8 x float> %i.ft, %i.fx
  %i.fz = fadd fast <8 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = fdiv fast <8 x float> splat (float 1.000000e+00), %i.fz
  %i.gb = fneg fast <8 x float> %.04629.lcssa
  %i.gc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gb, <8 x float> splat (float f0x42B0C0A5))
  %i.gd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ge = fmul fast <8 x float> %i.gd, splat (float f0x3FB8AA3B)
  %i.gf = fadd fast <8 x float> %i.ge, splat (float 5.000000e-01) ; 2 uses
  %i.gg = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gf, i32 1) ; 2 uses
  %i.gh = fcmp fast ogt <8 x float> %i.gg, %i.gf
  %i.gi = select <8 x i1> %i.gh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gj = fsub fast <8 x float> %i.gg, %i.gi      ; 2 uses
  %i.gk = fmul fast <8 x float> %i.gj, splat (float f0x3F317218)
  %i.gl = fsub fast <8 x float> %i.gd, %i.gk      ; 8 uses
  %i.gm = fmul fast <8 x float> %i.gl, %i.gl
  %i.gn = fmul fast <8 x float> %i.gl, splat (float f0x39506967)
  %i.go = fadd fast <8 x float> %i.gn, splat (float f0x3AB743CE)
  %i.gp = fmul fast <8 x float> %i.go, %i.gl
  %i.gq = fadd fast <8 x float> %i.gp, splat (float f0x3C088908)
  %i.gr = fmul fast <8 x float> %i.gq, %i.gl
  %i.gs = fadd fast <8 x float> %i.gr, splat (float f0x3D2AA9C1)
  %i.gt = fmul fast <8 x float> %i.gs, %i.gl
  %i.gu = fadd fast <8 x float> %i.gt, splat (float f0x3E2AAAAA)
  %i.gv = fmul fast <8 x float> %i.gu, %i.gl
  %i.gw = fadd fast <8 x float> %i.gv, splat (float 5.000000e-01)
  %i.gx = fmul fast <8 x float> %i.gm, %i.gw
  %i.gy = fadd fast <8 x float> %i.gl, splat (float 1.000000e+00)
  %i.gz = fadd fast <8 x float> %i.gy, %i.gx
  %i.ha = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gj)
  %i.hb = shl <8 x i32> %i.ha, splat (i32 23)
  %i.hc = add <8 x i32> %i.hb, splat (i32 1065353216)
  %i.hd = bitcast <8 x i32> %i.hc to <8 x float>
  %i.he = fmul fast <8 x float> %i.gz, %i.hd
  %i.hf = fadd fast <8 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = fdiv fast <8 x float> splat (float 1.000000e+00), %i.hf
  %i.hh = fneg fast <8 x float> %.04628.lcssa
  %i.hi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hh, <8 x float> splat (float f0x42B0C0A5))
  %i.hj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hk = fmul fast <8 x float> %i.hj, splat (float f0x3FB8AA3B)
  %i.hl = fadd fast <8 x float> %i.hk, splat (float 5.000000e-01) ; 2 uses
  %i.hm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hl, i32 1) ; 2 uses
  %i.hn = fcmp fast ogt <8 x float> %i.hm, %i.hl
  %i.ho = select <8 x i1> %i.hn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hp = fsub fast <8 x float> %i.hm, %i.ho      ; 2 uses
  %i.hq = fmul fast <8 x float> %i.hp, splat (float f0x3F317218)
  %i.hr = fsub fast <8 x float> %i.hj, %i.hq      ; 8 uses
  %i.hs = fmul fast <8 x float> %i.hr, %i.hr
  %i.ht = fmul fast <8 x float> %i.hr, splat (float f0x39506967)
  %i.hu = fadd fast <8 x float> %i.ht, splat (float f0x3AB743CE)
  %i.hv = fmul fast <8 x float> %i.hu, %i.hr
  %i.hw = fadd fast <8 x float> %i.hv, splat (float f0x3C088908)
  %i.hx = fmul fast <8 x float> %i.hw, %i.hr
  %i.hy = fadd fast <8 x float> %i.hx, splat (float f0x3D2AA9C1)
  %i.hz = fmul fast <8 x float> %i.hy, %i.hr
  %i.ia = fadd fast <8 x float> %i.hz, splat (float f0x3E2AAAAA)
  %i.ib = fmul fast <8 x float> %i.ia, %i.hr
  %i.ic = fadd fast <8 x float> %i.ib, splat (float 5.000000e-01)
  %i.id = fmul fast <8 x float> %i.hs, %i.ic
  %i.ie = fadd fast <8 x float> %i.hr, splat (float 1.000000e+00)
  %i.if = fadd fast <8 x float> %i.ie, %i.id
  %i.ig = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hp)
  %i.ih = shl <8 x i32> %i.ig, splat (i32 23)
  %i.ii = add <8 x i32> %i.ih, splat (i32 1065353216)
  %i.ij = bitcast <8 x i32> %i.ii to <8 x float>
  %i.ik = fmul fast <8 x float> %i.if, %i.ij
  %i.il = fadd fast <8 x float> %i.ik, splat (float 1.000000e+00)
  %i.im = fdiv fast <8 x float> splat (float 1.000000e+00), %i.il
  %i.in = fneg fast <8 x float> %.04627.lcssa
  %i.io = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.in, <8 x float> splat (float f0x42B0C0A5))
  %i.ip = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.io, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iq = fmul fast <8 x float> %i.ip, splat (float f0x3FB8AA3B)
  %i.ir = fadd fast <8 x float> %i.iq, splat (float 5.000000e-01) ; 2 uses
  %i.is = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ir, i32 1) ; 2 uses
  %i.it = fcmp fast ogt <8 x float> %i.is, %i.ir
  %i.iu = select <8 x i1> %i.it, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.iv = fsub fast <8 x float> %i.is, %i.iu      ; 2 uses
  %i.iw = fmul fast <8 x float> %i.iv, splat (float f0x3F317218)
  %i.ix = fsub fast <8 x float> %i.ip, %i.iw      ; 8 uses
  %i.iy = fmul fast <8 x float> %i.ix, %i.ix
  %i.iz = fmul fast <8 x float> %i.ix, splat (float f0x39506967)
  %i.ja = fadd fast <8 x float> %i.iz, splat (float f0x3AB743CE)
  %i.jb = fmul fast <8 x float> %i.ja, %i.ix
  %i.jc = fadd fast <8 x float> %i.jb, splat (float f0x3C088908)
  %i.jd = fmul fast <8 x float> %i.jc, %i.ix
  %i.je = fadd fast <8 x float> %i.jd, splat (float f0x3D2AA9C1)
  %i.jf = fmul fast <8 x float> %i.je, %i.ix
  %i.jg = fadd fast <8 x float> %i.jf, splat (float f0x3E2AAAAA)
  %i.jh = fmul fast <8 x float> %i.jg, %i.ix
  %i.ji = fadd fast <8 x float> %i.jh, splat (float 5.000000e-01)
  %i.jj = fmul fast <8 x float> %i.iy, %i.ji
  %i.jk = fadd fast <8 x float> %i.ix, splat (float 1.000000e+00)
  %i.jl = fadd fast <8 x float> %i.jk, %i.jj
  %i.jm = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iv)
  %i.jn = shl <8 x i32> %i.jm, splat (i32 23)
  %i.jo = add <8 x i32> %i.jn, splat (i32 1065353216)
  %i.jp = bitcast <8 x i32> %i.jo to <8 x float>
  %i.jq = fmul fast <8 x float> %i.jl, %i.jp
  %i.jr = fadd fast <8 x float> %i.jq, splat (float 1.000000e+00)
  %i.js = fdiv fast <8 x float> splat (float 1.000000e+00), %i.jr
  %i.jt = fneg fast <8 x float> %.04626.lcssa
  %i.ju = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jt, <8 x float> splat (float f0x42B0C0A5))
  %i.jv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ju, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jw = fmul fast <8 x float> %i.jv, splat (float f0x3FB8AA3B)
  %i.jx = fadd fast <8 x float> %i.jw, splat (float 5.000000e-01) ; 2 uses
  %i.jy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jx, i32 1) ; 2 uses
  %i.jz = fcmp fast ogt <8 x float> %i.jy, %i.jx
  %i.ka = select <8 x i1> %i.jz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kb = fsub fast <8 x float> %i.jy, %i.ka      ; 2 uses
  %i.kc = fmul fast <8 x float> %i.kb, splat (float f0x3F317218)
  %i.kd = fsub fast <8 x float> %i.jv, %i.kc      ; 8 uses
  %i.ke = fmul fast <8 x float> %i.kd, %i.kd
  %i.kf = fmul fast <8 x float> %i.kd, splat (float f0x39506967)
  %i.kg = fadd fast <8 x float> %i.kf, splat (float f0x3AB743CE)
  %i.kh = fmul fast <8 x float> %i.kg, %i.kd
  %i.ki = fadd fast <8 x float> %i.kh, splat (float f0x3C088908)
  %i.kj = fmul fast <8 x float> %i.ki, %i.kd
  %i.kk = fadd fast <8 x float> %i.kj, splat (float f0x3D2AA9C1)
  %i.kl = fmul fast <8 x float> %i.kk, %i.kd
  %i.km = fadd fast <8 x float> %i.kl, splat (float f0x3E2AAAAA)
  %i.kn = fmul fast <8 x float> %i.km, %i.kd
  %i.ko = fadd fast <8 x float> %i.kn, splat (float 5.000000e-01)
  %i.kp = fmul fast <8 x float> %i.ke, %i.ko
  %i.kq = fadd fast <8 x float> %i.kd, splat (float 1.000000e+00)
  %i.kr = fadd fast <8 x float> %i.kq, %i.kp
  %i.ks = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kb)
  %i.kt = shl <8 x i32> %i.ks, splat (i32 23)
  %i.ku = add <8 x i32> %i.kt, splat (i32 1065353216)
  %i.kv = bitcast <8 x i32> %i.ku to <8 x float>
  %i.kw = fmul fast <8 x float> %i.kr, %i.kv
  %i.kx = fadd fast <8 x float> %i.kw, splat (float 1.000000e+00)
  %i.ky = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kx
  %i.kz = fneg fast <8 x float> %.04625.lcssa
  %i.la = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kz, <8 x float> splat (float f0x42B0C0A5))
  %i.lb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.la, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lc = fmul fast <8 x float> %i.lb, splat (float f0x3FB8AA3B)
  %i.ld = fadd fast <8 x float> %i.lc, splat (float 5.000000e-01) ; 2 uses
  %i.le = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ld, i32 1) ; 2 uses
  %i.lf = fcmp fast ogt <8 x float> %i.le, %i.ld
  %i.lg = select <8 x i1> %i.lf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lh = fsub fast <8 x float> %i.le, %i.lg      ; 2 uses
  %i.li = fmul fast <8 x float> %i.lh, splat (float f0x3F317218)
  %i.lj = fsub fast <8 x float> %i.lb, %i.li      ; 8 uses
  %i.lk = fmul fast <8 x float> %i.lj, %i.lj
  %i.ll = fmul fast <8 x float> %i.lj, splat (float f0x39506967)
  %i.lm = fadd fast <8 x float> %i.ll, splat (float f0x3AB743CE)
  %i.ln = fmul fast <8 x float> %i.lm, %i.lj
  %i.lo = fadd fast <8 x float> %i.ln, splat (float f0x3C088908)
  %i.lp = fmul fast <8 x float> %i.lo, %i.lj
  %i.lq = fadd fast <8 x float> %i.lp, splat (float f0x3D2AA9C1)
  %i.lr = fmul fast <8 x float> %i.lq, %i.lj
  %i.ls = fadd fast <8 x float> %i.lr, splat (float f0x3E2AAAAA)
  %i.lt = fmul fast <8 x float> %i.ls, %i.lj
  %i.lu = fadd fast <8 x float> %i.lt, splat (float 5.000000e-01)
  %i.lv = fmul fast <8 x float> %i.lk, %i.lu
  %i.lw = fadd fast <8 x float> %i.lj, splat (float 1.000000e+00)
  %i.lx = fadd fast <8 x float> %i.lw, %i.lv
  %i.ly = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh)
  %i.lz = shl <8 x i32> %i.ly, splat (i32 23)
  %i.ma = add <8 x i32> %i.lz, splat (i32 1065353216)
  %i.mb = bitcast <8 x i32> %i.ma to <8 x float>
  %i.mc = fmul fast <8 x float> %i.lx, %i.mb
  %i.md = fadd fast <8 x float> %i.mc, splat (float 1.000000e+00)
  %i.me = fdiv fast <8 x float> splat (float 1.000000e+00), %i.md
  %i.mf = fneg fast <8 x float> %.04624.lcssa
  %i.mg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mf, <8 x float> splat (float f0x42B0C0A5))
  %i.mh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mi = fmul fast <8 x float> %i.mh, splat (float f0x3FB8AA3B)
  %i.mj = fadd fast <8 x float> %i.mi, splat (float 5.000000e-01) ; 2 uses
  %i.mk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.mj, i32 1) ; 2 uses
  %i.ml = fcmp fast ogt <8 x float> %i.mk, %i.mj
  %i.mm = select <8 x i1> %i.ml, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mn = fsub fast <8 x float> %i.mk, %i.mm      ; 2 uses
  %i.mo = fmul fast <8 x float> %i.mn, splat (float f0x3F317218)
  %i.mp = fsub fast <8 x float> %i.mh, %i.mo      ; 8 uses
  %i.mq = fmul fast <8 x float> %i.mp, %i.mp
  %i.mr = fmul fast <8 x float> %i.mp, splat (float f0x39506967)
  %i.ms = fadd fast <8 x float> %i.mr, splat (float f0x3AB743CE)
  %i.mt = fmul fast <8 x float> %i.ms, %i.mp
  %i.mu = fadd fast <8 x float> %i.mt, splat (float f0x3C088908)
  %i.mv = fmul fast <8 x float> %i.mu, %i.mp
  %i.mw = fadd fast <8 x float> %i.mv, splat (float f0x3D2AA9C1)
  %i.mx = fmul fast <8 x float> %i.mw, %i.mp
  %i.my = fadd fast <8 x float> %i.mx, splat (float f0x3E2AAAAA)
  %i.mz = fmul fast <8 x float> %i.my, %i.mp
  %i.na = fadd fast <8 x float> %i.mz, splat (float 5.000000e-01)
  %i.nb = fmul fast <8 x float> %i.mq, %i.na
  %i.nc = fadd fast <8 x float> %i.mp, splat (float 1.000000e+00)
  %i.nd = fadd fast <8 x float> %i.nc, %i.nb
  %i.ne = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mn)
  %i.nf = shl <8 x i32> %i.ne, splat (i32 23)
  %i.ng = add <8 x i32> %i.nf, splat (i32 1065353216)
  %i.nh = bitcast <8 x i32> %i.ng to <8 x float>
  %i.ni = fmul fast <8 x float> %i.nd, %i.nh
  %i.nj = fadd fast <8 x float> %i.ni, splat (float 1.000000e+00)
  %i.nk = fdiv fast <8 x float> splat (float 1.000000e+00), %i.nj
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647: ; preds = %._crit_edge
  %i.nl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14632.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.nm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nl, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nn = fmul fast <8 x float> %i.nm, splat (float f0x3FB8AA3B)
  %i.no = fadd fast <8 x float> %i.nn, splat (float 5.000000e-01) ; 2 uses
  %i.np = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.no, i32 1) ; 2 uses
  %i.nq = fcmp fast ogt <8 x float> %i.np, %i.no
  %i.nr = select <8 x i1> %i.nq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ns = fsub fast <8 x float> %i.np, %i.nr      ; 2 uses
  %i.nt = fmul fast <8 x float> %i.ns, splat (float f0x3F317218)
  %i.nu = fsub fast <8 x float> %i.nm, %i.nt      ; 8 uses
  %i.nv = fmul fast <8 x float> %i.nu, %i.nu
  %i.nw = fmul fast <8 x float> %i.nu, splat (float f0x39506967)
  %i.nx = fadd fast <8 x float> %i.nw, splat (float f0x3AB743CE)
  %i.ny = fmul fast <8 x float> %i.nx, %i.nu
  %i.nz = fadd fast <8 x float> %i.ny, splat (float f0x3C088908)
  %i.oa = fmul fast <8 x float> %i.nz, %i.nu
  %i.ob = fadd fast <8 x float> %i.oa, splat (float f0x3D2AA9C1)
  %i.oc = fmul fast <8 x float> %i.ob, %i.nu
  %i.od = fadd fast <8 x float> %i.oc, splat (float f0x3E2AAAAA)
  %i.oe = fmul fast <8 x float> %i.od, %i.nu
  %i.of = fadd fast <8 x float> %i.oe, splat (float 5.000000e-01)
  %i.og = fmul fast <8 x float> %i.nv, %i.of
  %i.oh = fadd fast <8 x float> %i.nu, splat (float 1.000000e+00)
  %i.oi = fadd fast <8 x float> %i.oh, %i.og
  %i.oj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ns)
  %i.ok = shl <8 x i32> %i.oj, splat (i32 23)
  %i.ol = add <8 x i32> %i.ok, splat (i32 1065353216)
  %i.om = bitcast <8 x i32> %i.ol to <8 x float>
  %i.on = fmul fast <8 x float> %i.oi, %i.om
  %i.oo = fadd fast <8 x float> %i.on, splat (float 1.000000e+00) ; 2 uses
  %i.op = fcmp fast ole <8 x float> %i.oo, zeroinitializer
  %i.oq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.oo, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.or = bitcast <8 x float> %i.oq to <8 x i32>
  %i.os = bitcast <8 x float> %i.oq to <8 x i32>
  %i.ot = and <8 x i32> %i.os, splat (i32 -2139095041)
  %i.ou = or disjoint <8 x i32> %i.ot, splat (i32 1056964608)
  %i.ov = bitcast <8 x i32> %i.ou to <8 x float>  ; 3 uses
  %i.ow = lshr <8 x i32> %i.or, splat (i32 23)
  %i.ox = add nsw <8 x i32> %i.ow, splat (i32 -127)
  %i.oy = sitofp fast <8 x i32> %i.ox to <8 x float> ; 2 uses
  %i.oz = fadd fast <8 x float> %i.oy, splat (float 1.000000e+00)
  %i.pa = fcmp fast olt <8 x float> %i.ov, splat (float f0x3F3504F3) ; 2 uses
  %i.pb = select <8 x i1> %i.pa, <8 x float> %i.ov, <8 x float> zeroinitializer
  %i.pc = fadd fast <8 x float> %i.ov, splat (float -1.000000e+00)
  %i.pd = select fast <8 x i1> %i.pa, <8 x float> %i.oy, <8 x float> %i.oz
  %i.pe = fadd fast <8 x float> %i.pc, %i.pb      ; 12 uses
  %i.pf = fmul fast <8 x float> %i.pe, %i.pe
  %i.pg = fmul fast <8 x float> %i.pe, splat (float f0x3D9021BB)
  %i.ph = fadd fast <8 x float> %i.pg, splat (float f0xBDEBD1B8)
  %i.pi = fmul fast <8 x float> %i.ph, %i.pe
  %i.pj = fadd fast <8 x float> %i.pi, splat (float f0x3DEF251A)
  %i.pk = fmul fast <8 x float> %i.pj, %i.pe
  %i.pl = fadd fast <8 x float> %i.pk, splat (float f0xBDFE5D4F)
  %i.pm = fmul fast <8 x float> %i.pl, %i.pe
  %i.pn = fadd fast <8 x float> %i.pm, splat (float f0x3E11E9BF)
  %i.po = fmul fast <8 x float> %i.pn, %i.pe
  %i.pp = fadd fast <8 x float> %i.po, splat (float f0xBE2AAE50)
  %i.pq = fmul fast <8 x float> %i.pp, %i.pe
  %i.pr = fadd fast <8 x float> %i.pq, splat (float f0x3E4CCEAC)
  %i.ps = fmul fast <8 x float> %i.pr, %i.pe
  %i.pt = fadd fast <8 x float> %i.ps, splat (float f0xBE7FFFFC)
  %i.pu = fmul fast <8 x float> %i.pt, %i.pe
  %i.pv = fadd fast <8 x float> %i.pu, splat (float f0x3EAAAAAA)
  %i.pw = fmul fast <8 x float> %i.pv, %i.pe
  %reass.mul5435 = fmul fast <8 x float> %i.pd, splat (float f0x3F317218)
  %reass.add5457 = fadd fast <8 x float> %i.pw, splat (float -5.000000e-01)
  %reass.mul5458 = fmul fast <8 x float> %i.pf, %reass.add5457
  %i.px = fadd fast <8 x float> %reass.mul5435, %i.pe
  %i.py = fadd fast <8 x float> %i.px, %reass.mul5458
  %.neg5354 = fmul fast <8 x float> %i.py, splat (float -2.000000e+00)
  %i.pz = select fast <8 x i1> %i.op, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5354
  %i.qa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.pz, <8 x float> splat (float f0x42B0C0A5))
  %i.qb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qa, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qc = fmul fast <8 x float> %i.qb, splat (float f0x3FB8AA3B)
  %i.qd = fadd fast <8 x float> %i.qc, splat (float 5.000000e-01) ; 2 uses
  %i.qe = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.qd, i32 1) ; 2 uses
  %i.qf = fcmp fast ogt <8 x float> %i.qe, %i.qd
  %i.qg = select <8 x i1> %i.qf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.qh = fsub fast <8 x float> %i.qe, %i.qg      ; 2 uses
  %i.qi = fmul fast <8 x float> %i.qh, splat (float f0x3F317218)
  %i.qj = fsub fast <8 x float> %i.qb, %i.qi      ; 8 uses
  %i.qk = fmul fast <8 x float> %i.qj, %i.qj
  %i.ql = fmul fast <8 x float> %i.qj, splat (float f0x39506967)
  %i.qm = fadd fast <8 x float> %i.ql, splat (float f0x3AB743CE)
  %i.qn = fmul fast <8 x float> %i.qm, %i.qj
  %i.qo = fadd fast <8 x float> %i.qn, splat (float f0x3C088908)
  %i.qp = fmul fast <8 x float> %i.qo, %i.qj
  %i.qq = fadd fast <8 x float> %i.qp, splat (float f0x3D2AA9C1)
  %i.qr = fmul fast <8 x float> %i.qq, %i.qj
  %i.qs = fadd fast <8 x float> %i.qr, splat (float f0x3E2AAAAA)
  %i.qt = fmul fast <8 x float> %i.qs, %i.qj
  %i.qu = fadd fast <8 x float> %i.qt, splat (float 5.000000e-01)
  %i.qv = fmul fast <8 x float> %i.qk, %i.qu
  %i.qw = fadd fast <8 x float> %i.qj, splat (float 1.000000e+00)
  %i.qx = fadd fast <8 x float> %i.qw, %i.qv
  %i.qy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qh)
  %i.qz = shl <8 x i32> %i.qy, splat (i32 23)
  %i.ra = add <8 x i32> %i.qz, splat (i32 1065353216)
  %i.rb = bitcast <8 x i32> %i.ra to <8 x float>
  %i.rc = fmul fast <8 x float> %i.qx, %i.rb
  %i.rd = fadd fast <8 x float> %i.rc, splat (float 1.000000e+00)
  %i.re = fdiv fast <8 x float> splat (float 2.000000e+00), %i.rd
  %i.rf = fadd fast <8 x float> %i.re, splat (float -1.000000e+00)
  %i.rg = fmul fast <8 x float> %i.rf, %.14632.lcssa
  %i.rh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04630.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.ri = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rj = fmul fast <8 x float> %i.ri, splat (float f0x3FB8AA3B)
  %i.rk = fadd fast <8 x float> %i.rj, splat (float 5.000000e-01) ; 2 uses
  %i.rl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.rk, i32 1) ; 2 uses
  %i.rm = fcmp fast ogt <8 x float> %i.rl, %i.rk
  %i.rn = select <8 x i1> %i.rm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ro = fsub fast <8 x float> %i.rl, %i.rn      ; 2 uses
  %i.rp = fmul fast <8 x float> %i.ro, splat (float f0x3F317218)
  %i.rq = fsub fast <8 x float> %i.ri, %i.rp      ; 8 uses
  %i.rr = fmul fast <8 x float> %i.rq, %i.rq
  %i.rs = fmul fast <8 x float> %i.rq, splat (float f0x39506967)
  %i.rt = fadd fast <8 x float> %i.rs, splat (float f0x3AB743CE)
  %i.ru = fmul fast <8 x float> %i.rt, %i.rq
  %i.rv = fadd fast <8 x float> %i.ru, splat (float f0x3C088908)
  %i.rw = fmul fast <8 x float> %i.rv, %i.rq
  %i.rx = fadd fast <8 x float> %i.rw, splat (float f0x3D2AA9C1)
  %i.ry = fmul fast <8 x float> %i.rx, %i.rq
  %i.rz = fadd fast <8 x float> %i.ry, splat (float f0x3E2AAAAA)
  %i.sa = fmul fast <8 x float> %i.rz, %i.rq
  %i.sb = fadd fast <8 x float> %i.sa, splat (float 5.000000e-01)
  %i.sc = fmul fast <8 x float> %i.rr, %i.sb
  %i.sd = fadd fast <8 x float> %i.rq, splat (float 1.000000e+00)
  %i.se = fadd fast <8 x float> %i.sd, %i.sc
  %i.sf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ro)
  %i.sg = shl <8 x i32> %i.sf, splat (i32 23)
  %i.sh = add <8 x i32> %i.sg, splat (i32 1065353216)
  %i.si = bitcast <8 x i32> %i.sh to <8 x float>
  %i.sj = fmul fast <8 x float> %i.se, %i.si
  %i.sk = fadd fast <8 x float> %i.sj, splat (float 1.000000e+00) ; 2 uses
  %i.sl = fcmp fast ole <8 x float> %i.sk, zeroinitializer
  %i.sm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.sk, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.sn = bitcast <8 x float> %i.sm to <8 x i32>
  %i.so = bitcast <8 x float> %i.sm to <8 x i32>
  %i.sp = and <8 x i32> %i.so, splat (i32 -2139095041)
  %i.sq = or disjoint <8 x i32> %i.sp, splat (i32 1056964608)
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 3 uses
  %i.ss = lshr <8 x i32> %i.sn, splat (i32 23)
  %i.st = add nsw <8 x i32> %i.ss, splat (i32 -127)
  %i.su = sitofp fast <8 x i32> %i.st to <8 x float> ; 2 uses
  %i.sv = fadd fast <8 x float> %i.su, splat (float 1.000000e+00)
  %i.sw = fcmp fast olt <8 x float> %i.sr, splat (float f0x3F3504F3) ; 2 uses
  %i.sx = select <8 x i1> %i.sw, <8 x float> %i.sr, <8 x float> zeroinitializer
  %i.sy = fadd fast <8 x float> %i.sr, splat (float -1.000000e+00)
  %i.sz = select fast <8 x i1> %i.sw, <8 x float> %i.su, <8 x float> %i.sv
  %i.ta = fadd fast <8 x float> %i.sy, %i.sx      ; 12 uses
  %i.tb = fmul fast <8 x float> %i.ta, %i.ta
  %i.tc = fmul fast <8 x float> %i.ta, splat (float f0x3D9021BB)
  %i.td = fadd fast <8 x float> %i.tc, splat (float f0xBDEBD1B8)
  %i.te = fmul fast <8 x float> %i.td, %i.ta
  %i.tf = fadd fast <8 x float> %i.te, splat (float f0x3DEF251A)
  %i.tg = fmul fast <8 x float> %i.tf, %i.ta
  %i.th = fadd fast <8 x float> %i.tg, splat (float f0xBDFE5D4F)
  %i.ti = fmul fast <8 x float> %i.th, %i.ta
  %i.tj = fadd fast <8 x float> %i.ti, splat (float f0x3E11E9BF)
  %i.tk = fmul fast <8 x float> %i.tj, %i.ta
  %i.tl = fadd fast <8 x float> %i.tk, splat (float f0xBE2AAE50)
  %i.tm = fmul fast <8 x float> %i.tl, %i.ta
  %i.tn = fadd fast <8 x float> %i.tm, splat (float f0x3E4CCEAC)
  %i.to = fmul fast <8 x float> %i.tn, %i.ta
  %i.tp = fadd fast <8 x float> %i.to, splat (float f0xBE7FFFFC)
  %i.tq = fmul fast <8 x float> %i.tp, %i.ta
  %i.tr = fadd fast <8 x float> %i.tq, splat (float f0x3EAAAAAA)
  %i.ts = fmul fast <8 x float> %i.tr, %i.ta
  %reass.mul5438 = fmul fast <8 x float> %i.sz, splat (float f0x3F317218)
  %reass.add5459 = fadd fast <8 x float> %i.ts, splat (float -5.000000e-01)
  %reass.mul5460 = fmul fast <8 x float> %i.tb, %reass.add5459
  %i.tt = fadd fast <8 x float> %reass.mul5438, %i.ta
  %i.tu = fadd fast <8 x float> %i.tt, %reass.mul5460
  %.neg5355 = fmul fast <8 x float> %i.tu, splat (float -2.000000e+00)
  %i.tv = select fast <8 x i1> %i.sl, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5355
  %i.tw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tv, <8 x float> splat (float f0x42B0C0A5))
  %i.tx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ty = fmul fast <8 x float> %i.tx, splat (float f0x3FB8AA3B)
  %i.tz = fadd fast <8 x float> %i.ty, splat (float 5.000000e-01) ; 2 uses
  %i.ua = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.tz, i32 1) ; 2 uses
  %i.ub = fcmp fast ogt <8 x float> %i.ua, %i.tz
  %i.uc = select <8 x i1> %i.ub, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ud = fsub fast <8 x float> %i.ua, %i.uc      ; 2 uses
  %i.ue = fmul fast <8 x float> %i.ud, splat (float f0x3F317218)
  %i.uf = fsub fast <8 x float> %i.tx, %i.ue      ; 8 uses
  %i.ug = fmul fast <8 x float> %i.uf, %i.uf
  %i.uh = fmul fast <8 x float> %i.uf, splat (float f0x39506967)
  %i.ui = fadd fast <8 x float> %i.uh, splat (float f0x3AB743CE)
  %i.uj = fmul fast <8 x float> %i.ui, %i.uf
  %i.uk = fadd fast <8 x float> %i.uj, splat (float f0x3C088908)
  %i.ul = fmul fast <8 x float> %i.uk, %i.uf
  %i.um = fadd fast <8 x float> %i.ul, splat (float f0x3D2AA9C1)
  %i.un = fmul fast <8 x float> %i.um, %i.uf
  %i.uo = fadd fast <8 x float> %i.un, splat (float f0x3E2AAAAA)
  %i.up = fmul fast <8 x float> %i.uo, %i.uf
  %i.uq = fadd fast <8 x float> %i.up, splat (float 5.000000e-01)
  %i.ur = fmul fast <8 x float> %i.ug, %i.uq
  %i.us = fadd fast <8 x float> %i.uf, splat (float 1.000000e+00)
  %i.ut = fadd fast <8 x float> %i.us, %i.ur
  %i.uu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ud)
  %i.uv = shl <8 x i32> %i.uu, splat (i32 23)
  %i.uw = add <8 x i32> %i.uv, splat (i32 1065353216)
  %i.ux = bitcast <8 x i32> %i.uw to <8 x float>
  %i.uy = fmul fast <8 x float> %i.ut, %i.ux
  %i.uz = fadd fast <8 x float> %i.uy, splat (float 1.000000e+00)
  %i.va = fdiv fast <8 x float> splat (float 2.000000e+00), %i.uz
  %i.vb = fadd fast <8 x float> %i.va, splat (float -1.000000e+00)
  %i.vc = fmul fast <8 x float> %i.vb, %.04630.lcssa
  %i.vd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04629.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.ve = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vf = fmul fast <8 x float> %i.ve, splat (float f0x3FB8AA3B)
  %i.vg = fadd fast <8 x float> %i.vf, splat (float 5.000000e-01) ; 2 uses
  %i.vh = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vg, i32 1) ; 2 uses
  %i.vi = fcmp fast ogt <8 x float> %i.vh, %i.vg
  %i.vj = select <8 x i1> %i.vi, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vk = fsub fast <8 x float> %i.vh, %i.vj      ; 2 uses
  %i.vl = fmul fast <8 x float> %i.vk, splat (float f0x3F317218)
  %i.vm = fsub fast <8 x float> %i.ve, %i.vl      ; 8 uses
  %i.vn = fmul fast <8 x float> %i.vm, %i.vm
  %i.vo = fmul fast <8 x float> %i.vm, splat (float f0x39506967)
  %i.vp = fadd fast <8 x float> %i.vo, splat (float f0x3AB743CE)
  %i.vq = fmul fast <8 x float> %i.vp, %i.vm
  %i.vr = fadd fast <8 x float> %i.vq, splat (float f0x3C088908)
  %i.vs = fmul fast <8 x float> %i.vr, %i.vm
  %i.vt = fadd fast <8 x float> %i.vs, splat (float f0x3D2AA9C1)
  %i.vu = fmul fast <8 x float> %i.vt, %i.vm
  %i.vv = fadd fast <8 x float> %i.vu, splat (float f0x3E2AAAAA)
  %i.vw = fmul fast <8 x float> %i.vv, %i.vm
  %i.vx = fadd fast <8 x float> %i.vw, splat (float 5.000000e-01)
  %i.vy = fmul fast <8 x float> %i.vn, %i.vx
  %i.vz = fadd fast <8 x float> %i.vm, splat (float 1.000000e+00)
  %i.wa = fadd fast <8 x float> %i.vz, %i.vy
  %i.wb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vk)
  %i.wc = shl <8 x i32> %i.wb, splat (i32 23)
  %i.wd = add <8 x i32> %i.wc, splat (i32 1065353216)
  %i.we = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wf = fmul fast <8 x float> %i.wa, %i.we
  %i.wg = fadd fast <8 x float> %i.wf, splat (float 1.000000e+00) ; 2 uses
  %i.wh = fcmp fast ole <8 x float> %i.wg, zeroinitializer
  %i.wi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wg, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.wj = bitcast <8 x float> %i.wi to <8 x i32>
  %i.wk = bitcast <8 x float> %i.wi to <8 x i32>
  %i.wl = and <8 x i32> %i.wk, splat (i32 -2139095041)
  %i.wm = or disjoint <8 x i32> %i.wl, splat (i32 1056964608)
  %i.wn = bitcast <8 x i32> %i.wm to <8 x float>  ; 3 uses
  %i.wo = lshr <8 x i32> %i.wj, splat (i32 23)
  %i.wp = add nsw <8 x i32> %i.wo, splat (i32 -127)
  %i.wq = sitofp fast <8 x i32> %i.wp to <8 x float> ; 2 uses
  %i.wr = fadd fast <8 x float> %i.wq, splat (float 1.000000e+00)
  %i.ws = fcmp fast olt <8 x float> %i.wn, splat (float f0x3F3504F3) ; 2 uses
  %i.wt = select <8 x i1> %i.ws, <8 x float> %i.wn, <8 x float> zeroinitializer
  %i.wu = fadd fast <8 x float> %i.wn, splat (float -1.000000e+00)
  %i.wv = select fast <8 x i1> %i.ws, <8 x float> %i.wq, <8 x float> %i.wr
  %i.ww = fadd fast <8 x float> %i.wu, %i.wt      ; 12 uses
  %i.wx = fmul fast <8 x float> %i.ww, %i.ww
  %i.wy = fmul fast <8 x float> %i.ww, splat (float f0x3D9021BB)
  %i.wz = fadd fast <8 x float> %i.wy, splat (float f0xBDEBD1B8)
  %i.xa = fmul fast <8 x float> %i.wz, %i.ww
  %i.xb = fadd fast <8 x float> %i.xa, splat (float f0x3DEF251A)
  %i.xc = fmul fast <8 x float> %i.xb, %i.ww
  %i.xd = fadd fast <8 x float> %i.xc, splat (float f0xBDFE5D4F)
  %i.xe = fmul fast <8 x float> %i.xd, %i.ww
  %i.xf = fadd fast <8 x float> %i.xe, splat (float f0x3E11E9BF)
  %i.xg = fmul fast <8 x float> %i.xf, %i.ww
  %i.xh = fadd fast <8 x float> %i.xg, splat (float f0xBE2AAE50)
  %i.xi = fmul fast <8 x float> %i.xh, %i.ww
  %i.xj = fadd fast <8 x float> %i.xi, splat (float f0x3E4CCEAC)
  %i.xk = fmul fast <8 x float> %i.xj, %i.ww
  %i.xl = fadd fast <8 x float> %i.xk, splat (float f0xBE7FFFFC)
  %i.xm = fmul fast <8 x float> %i.xl, %i.ww
  %i.xn = fadd fast <8 x float> %i.xm, splat (float f0x3EAAAAAA)
  %i.xo = fmul fast <8 x float> %i.xn, %i.ww
  %reass.mul5441 = fmul fast <8 x float> %i.wv, splat (float f0x3F317218)
  %reass.add5461 = fadd fast <8 x float> %i.xo, splat (float -5.000000e-01)
  %reass.mul5462 = fmul fast <8 x float> %i.wx, %reass.add5461
  %i.xp = fadd fast <8 x float> %reass.mul5441, %i.ww
  %i.xq = fadd fast <8 x float> %i.xp, %reass.mul5462
  %.neg5356 = fmul fast <8 x float> %i.xq, splat (float -2.000000e+00)
  %i.xr = select fast <8 x i1> %i.wh, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5356
  %i.xs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xr, <8 x float> splat (float f0x42B0C0A5))
  %i.xt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xs, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xu = fmul fast <8 x float> %i.xt, splat (float f0x3FB8AA3B)
  %i.xv = fadd fast <8 x float> %i.xu, splat (float 5.000000e-01) ; 2 uses
  %i.xw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xv, i32 1) ; 2 uses
  %i.xx = fcmp fast ogt <8 x float> %i.xw, %i.xv
  %i.xy = select <8 x i1> %i.xx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xz = fsub fast <8 x float> %i.xw, %i.xy      ; 2 uses
  %i.ya = fmul fast <8 x float> %i.xz, splat (float f0x3F317218)
  %i.yb = fsub fast <8 x float> %i.xt, %i.ya      ; 8 uses
  %i.yc = fmul fast <8 x float> %i.yb, %i.yb
  %i.yd = fmul fast <8 x float> %i.yb, splat (float f0x39506967)
  %i.ye = fadd fast <8 x float> %i.yd, splat (float f0x3AB743CE)
  %i.yf = fmul fast <8 x float> %i.ye, %i.yb
  %i.yg = fadd fast <8 x float> %i.yf, splat (float f0x3C088908)
  %i.yh = fmul fast <8 x float> %i.yg, %i.yb
  %i.yi = fadd fast <8 x float> %i.yh, splat (float f0x3D2AA9C1)
  %i.yj = fmul fast <8 x float> %i.yi, %i.yb
  %i.yk = fadd fast <8 x float> %i.yj, splat (float f0x3E2AAAAA)
  %i.yl = fmul fast <8 x float> %i.yk, %i.yb
  %i.ym = fadd fast <8 x float> %i.yl, splat (float 5.000000e-01)
  %i.yn = fmul fast <8 x float> %i.yc, %i.ym
  %i.yo = fadd fast <8 x float> %i.yb, splat (float 1.000000e+00)
  %i.yp = fadd fast <8 x float> %i.yo, %i.yn
  %i.yq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xz)
  %i.yr = shl <8 x i32> %i.yq, splat (i32 23)
  %i.ys = add <8 x i32> %i.yr, splat (i32 1065353216)
  %i.yt = bitcast <8 x i32> %i.ys to <8 x float>
  %i.yu = fmul fast <8 x float> %i.yp, %i.yt
  %i.yv = fadd fast <8 x float> %i.yu, splat (float 1.000000e+00)
  %i.yw = fdiv fast <8 x float> splat (float 2.000000e+00), %i.yv
  %i.yx = fadd fast <8 x float> %i.yw, splat (float -1.000000e+00)
  %i.yy = fmul fast <8 x float> %i.yx, %.04629.lcssa
  %i.yz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04628.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.za = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zb = fmul fast <8 x float> %i.za, splat (float f0x3FB8AA3B)
  %i.zc = fadd fast <8 x float> %i.zb, splat (float 5.000000e-01) ; 2 uses
  %i.zd = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.zc, i32 1) ; 2 uses
  %i.ze = fcmp fast ogt <8 x float> %i.zd, %i.zc
  %i.zf = select <8 x i1> %i.ze, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.zg = fsub fast <8 x float> %i.zd, %i.zf      ; 2 uses
  %i.zh = fmul fast <8 x float> %i.zg, splat (float f0x3F317218)
  %i.zi = fsub fast <8 x float> %i.za, %i.zh      ; 8 uses
  %i.zj = fmul fast <8 x float> %i.zi, %i.zi
  %i.zk = fmul fast <8 x float> %i.zi, splat (float f0x39506967)
  %i.zl = fadd fast <8 x float> %i.zk, splat (float f0x3AB743CE)
  %i.zm = fmul fast <8 x float> %i.zl, %i.zi
  %i.zn = fadd fast <8 x float> %i.zm, splat (float f0x3C088908)
  %i.zo = fmul fast <8 x float> %i.zn, %i.zi
  %i.zp = fadd fast <8 x float> %i.zo, splat (float f0x3D2AA9C1)
  %i.zq = fmul fast <8 x float> %i.zp, %i.zi
  %i.zr = fadd fast <8 x float> %i.zq, splat (float f0x3E2AAAAA)
  %i.zs = fmul fast <8 x float> %i.zr, %i.zi
  %i.zt = fadd fast <8 x float> %i.zs, splat (float 5.000000e-01)
  %i.zu = fmul fast <8 x float> %i.zj, %i.zt
  %i.zv = fadd fast <8 x float> %i.zi, splat (float 1.000000e+00)
  %i.zw = fadd fast <8 x float> %i.zv, %i.zu
  %i.zx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zg)
  %i.zy = shl <8 x i32> %i.zx, splat (i32 23)
  %i.zz = add <8 x i32> %i.zy, splat (i32 1065353216)
  %i.aaa = bitcast <8 x i32> %i.zz to <8 x float>
  %i.aab = fmul fast <8 x float> %i.zw, %i.aaa
  %i.aac = fadd fast <8 x float> %i.aab, splat (float 1.000000e+00) ; 2 uses
  %i.aad = fcmp fast ole <8 x float> %i.aac, zeroinitializer
  %i.aae = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aac, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aaf = bitcast <8 x float> %i.aae to <8 x i32>
  %i.aag = bitcast <8 x float> %i.aae to <8 x i32>
  %i.aah = and <8 x i32> %i.aag, splat (i32 -2139095041)
  %i.aai = or disjoint <8 x i32> %i.aah, splat (i32 1056964608)
  %i.aaj = bitcast <8 x i32> %i.aai to <8 x float> ; 3 uses
  %i.aak = lshr <8 x i32> %i.aaf, splat (i32 23)
  %i.aal = add nsw <8 x i32> %i.aak, splat (i32 -127)
  %i.aam = sitofp fast <8 x i32> %i.aal to <8 x float> ; 2 uses
  %i.aan = fadd fast <8 x float> %i.aam, splat (float 1.000000e+00)
  %i.aao = fcmp fast olt <8 x float> %i.aaj, splat (float f0x3F3504F3) ; 2 uses
  %i.aap = select <8 x i1> %i.aao, <8 x float> %i.aaj, <8 x float> zeroinitializer
  %i.aaq = fadd fast <8 x float> %i.aaj, splat (float -1.000000e+00)
  %i.aar = select fast <8 x i1> %i.aao, <8 x float> %i.aam, <8 x float> %i.aan
  %i.aas = fadd fast <8 x float> %i.aaq, %i.aap   ; 12 uses
  %i.aat = fmul fast <8 x float> %i.aas, %i.aas
  %i.aau = fmul fast <8 x float> %i.aas, splat (float f0x3D9021BB)
  %i.aav = fadd fast <8 x float> %i.aau, splat (float f0xBDEBD1B8)
  %i.aaw = fmul fast <8 x float> %i.aav, %i.aas
  %i.aax = fadd fast <8 x float> %i.aaw, splat (float f0x3DEF251A)
  %i.aay = fmul fast <8 x float> %i.aax, %i.aas
  %i.aaz = fadd fast <8 x float> %i.aay, splat (float f0xBDFE5D4F)
  %i.aba = fmul fast <8 x float> %i.aaz, %i.aas
  %i.abb = fadd fast <8 x float> %i.aba, splat (float f0x3E11E9BF)
  %i.abc = fmul fast <8 x float> %i.abb, %i.aas
  %i.abd = fadd fast <8 x float> %i.abc, splat (float f0xBE2AAE50)
  %i.abe = fmul fast <8 x float> %i.abd, %i.aas
  %i.abf = fadd fast <8 x float> %i.abe, splat (float f0x3E4CCEAC)
  %i.abg = fmul fast <8 x float> %i.abf, %i.aas
  %i.abh = fadd fast <8 x float> %i.abg, splat (float f0xBE7FFFFC)
  %i.abi = fmul fast <8 x float> %i.abh, %i.aas
  %i.abj = fadd fast <8 x float> %i.abi, splat (float f0x3EAAAAAA)
  %i.abk = fmul fast <8 x float> %i.abj, %i.aas
  %reass.mul5444 = fmul fast <8 x float> %i.aar, splat (float f0x3F317218)
  %reass.add5463 = fadd fast <8 x float> %i.abk, splat (float -5.000000e-01)
  %reass.mul5464 = fmul fast <8 x float> %i.aat, %reass.add5463
  %i.abl = fadd fast <8 x float> %reass.mul5444, %i.aas
  %i.abm = fadd fast <8 x float> %i.abl, %reass.mul5464
  %.neg5357 = fmul fast <8 x float> %i.abm, splat (float -2.000000e+00)
  %i.abn = select fast <8 x i1> %i.aad, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5357
  %i.abo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abn, <8 x float> splat (float f0x42B0C0A5))
  %i.abp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.abq = fmul fast <8 x float> %i.abp, splat (float f0x3FB8AA3B)
  %i.abr = fadd fast <8 x float> %i.abq, splat (float 5.000000e-01) ; 2 uses
  %i.abs = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.abr, i32 1) ; 2 uses
  %i.abt = fcmp fast ogt <8 x float> %i.abs, %i.abr
  %i.abu = select <8 x i1> %i.abt, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.abv = fsub fast <8 x float> %i.abs, %i.abu   ; 2 uses
  %i.abw = fmul fast <8 x float> %i.abv, splat (float f0x3F317218)
  %i.abx = fsub fast <8 x float> %i.abp, %i.abw   ; 8 uses
  %i.aby = fmul fast <8 x float> %i.abx, %i.abx
  %i.abz = fmul fast <8 x float> %i.abx, splat (float f0x39506967)
  %i.aca = fadd fast <8 x float> %i.abz, splat (float f0x3AB743CE)
  %i.acb = fmul fast <8 x float> %i.aca, %i.abx
  %i.acc = fadd fast <8 x float> %i.acb, splat (float f0x3C088908)
  %i.acd = fmul fast <8 x float> %i.acc, %i.abx
  %i.ace = fadd fast <8 x float> %i.acd, splat (float f0x3D2AA9C1)
  %i.acf = fmul fast <8 x float> %i.ace, %i.abx
  %i.acg = fadd fast <8 x float> %i.acf, splat (float f0x3E2AAAAA)
  %i.ach = fmul fast <8 x float> %i.acg, %i.abx
  %i.aci = fadd fast <8 x float> %i.ach, splat (float 5.000000e-01)
  %i.acj = fmul fast <8 x float> %i.aby, %i.aci
  %i.ack = fadd fast <8 x float> %i.abx, splat (float 1.000000e+00)
  %i.acl = fadd fast <8 x float> %i.ack, %i.acj
  %i.acm = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abv)
  %i.acn = shl <8 x i32> %i.acm, splat (i32 23)
  %i.aco = add <8 x i32> %i.acn, splat (i32 1065353216)
  %i.acp = bitcast <8 x i32> %i.aco to <8 x float>
  %i.acq = fmul fast <8 x float> %i.acl, %i.acp
  %i.acr = fadd fast <8 x float> %i.acq, splat (float 1.000000e+00)
  %i.acs = fdiv fast <8 x float> splat (float 2.000000e+00), %i.acr
  %i.act = fadd fast <8 x float> %i.acs, splat (float -1.000000e+00)
  %i.acu = fmul fast <8 x float> %i.act, %.04628.lcssa
  %i.acv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04627.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.acw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acx = fmul fast <8 x float> %i.acw, splat (float f0x3FB8AA3B)
  %i.acy = fadd fast <8 x float> %i.acx, splat (float 5.000000e-01) ; 2 uses
  %i.acz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.acy, i32 1) ; 2 uses
  %i.ada = fcmp fast ogt <8 x float> %i.acz, %i.acy
  %i.adb = select <8 x i1> %i.ada, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adc = fsub fast <8 x float> %i.acz, %i.adb   ; 2 uses
  %i.add = fmul fast <8 x float> %i.adc, splat (float f0x3F317218)
  %i.ade = fsub fast <8 x float> %i.acw, %i.add   ; 8 uses
  %i.adf = fmul fast <8 x float> %i.ade, %i.ade
  %i.adg = fmul fast <8 x float> %i.ade, splat (float f0x39506967)
  %i.adh = fadd fast <8 x float> %i.adg, splat (float f0x3AB743CE)
  %i.adi = fmul fast <8 x float> %i.adh, %i.ade
  %i.adj = fadd fast <8 x float> %i.adi, splat (float f0x3C088908)
  %i.adk = fmul fast <8 x float> %i.adj, %i.ade
  %i.adl = fadd fast <8 x float> %i.adk, splat (float f0x3D2AA9C1)
  %i.adm = fmul fast <8 x float> %i.adl, %i.ade
  %i.adn = fadd fast <8 x float> %i.adm, splat (float f0x3E2AAAAA)
  %i.ado = fmul fast <8 x float> %i.adn, %i.ade
  %i.adp = fadd fast <8 x float> %i.ado, splat (float 5.000000e-01)
  %i.adq = fmul fast <8 x float> %i.adf, %i.adp
  %i.adr = fadd fast <8 x float> %i.ade, splat (float 1.000000e+00)
  %i.ads = fadd fast <8 x float> %i.adr, %i.adq
  %i.adt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adc)
  %i.adu = shl <8 x i32> %i.adt, splat (i32 23)
  %i.adv = add <8 x i32> %i.adu, splat (i32 1065353216)
  %i.adw = bitcast <8 x i32> %i.adv to <8 x float>
  %i.adx = fmul fast <8 x float> %i.ads, %i.adw
  %i.ady = fadd fast <8 x float> %i.adx, splat (float 1.000000e+00) ; 2 uses
  %i.adz = fcmp fast ole <8 x float> %i.ady, zeroinitializer
  %i.aea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ady, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aeb = bitcast <8 x float> %i.aea to <8 x i32>
  %i.aec = bitcast <8 x float> %i.aea to <8 x i32>
  %i.aed = and <8 x i32> %i.aec, splat (i32 -2139095041)
  %i.aee = or disjoint <8 x i32> %i.aed, splat (i32 1056964608)
  %i.aef = bitcast <8 x i32> %i.aee to <8 x float> ; 3 uses
  %i.aeg = lshr <8 x i32> %i.aeb, splat (i32 23)
  %i.aeh = add nsw <8 x i32> %i.aeg, splat (i32 -127)
  %i.aei = sitofp fast <8 x i32> %i.aeh to <8 x float> ; 2 uses
  %i.aej = fadd fast <8 x float> %i.aei, splat (float 1.000000e+00)
  %i.aek = fcmp fast olt <8 x float> %i.aef, splat (float f0x3F3504F3) ; 2 uses
  %i.ael = select <8 x i1> %i.aek, <8 x float> %i.aef, <8 x float> zeroinitializer
  %i.aem = fadd fast <8 x float> %i.aef, splat (float -1.000000e+00)
  %i.aen = select fast <8 x i1> %i.aek, <8 x float> %i.aei, <8 x float> %i.aej
  %i.aeo = fadd fast <8 x float> %i.aem, %i.ael   ; 12 uses
  %i.aep = fmul fast <8 x float> %i.aeo, %i.aeo
  %i.aeq = fmul fast <8 x float> %i.aeo, splat (float f0x3D9021BB)
  %i.aer = fadd fast <8 x float> %i.aeq, splat (float f0xBDEBD1B8)
  %i.aes = fmul fast <8 x float> %i.aer, %i.aeo
  %i.aet = fadd fast <8 x float> %i.aes, splat (float f0x3DEF251A)
  %i.aeu = fmul fast <8 x float> %i.aet, %i.aeo
  %i.aev = fadd fast <8 x float> %i.aeu, splat (float f0xBDFE5D4F)
  %i.aew = fmul fast <8 x float> %i.aev, %i.aeo
  %i.aex = fadd fast <8 x float> %i.aew, splat (float f0x3E11E9BF)
  %i.aey = fmul fast <8 x float> %i.aex, %i.aeo
  %i.aez = fadd fast <8 x float> %i.aey, splat (float f0xBE2AAE50)
  %i.afa = fmul fast <8 x float> %i.aez, %i.aeo
  %i.afb = fadd fast <8 x float> %i.afa, splat (float f0x3E4CCEAC)
  %i.afc = fmul fast <8 x float> %i.afb, %i.aeo
  %i.afd = fadd fast <8 x float> %i.afc, splat (float f0xBE7FFFFC)
  %i.afe = fmul fast <8 x float> %i.afd, %i.aeo
  %i.aff = fadd fast <8 x float> %i.afe, splat (float f0x3EAAAAAA)
  %i.afg = fmul fast <8 x float> %i.aff, %i.aeo
  %reass.mul5447 = fmul fast <8 x float> %i.aen, splat (float f0x3F317218)
  %reass.add5465 = fadd fast <8 x float> %i.afg, splat (float -5.000000e-01)
  %reass.mul5466 = fmul fast <8 x float> %i.aep, %reass.add5465
  %i.afh = fadd fast <8 x float> %reass.mul5447, %i.aeo
  %i.afi = fadd fast <8 x float> %i.afh, %reass.mul5466
  %.neg5358 = fmul fast <8 x float> %i.afi, splat (float -2.000000e+00)
  %i.afj = select fast <8 x i1> %i.adz, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5358
  %i.afk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afj, <8 x float> splat (float f0x42B0C0A5))
  %i.afl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afm = fmul fast <8 x float> %i.afl, splat (float f0x3FB8AA3B)
  %i.afn = fadd fast <8 x float> %i.afm, splat (float 5.000000e-01) ; 2 uses
  %i.afo = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.afn, i32 1) ; 2 uses
  %i.afp = fcmp fast ogt <8 x float> %i.afo, %i.afn
  %i.afq = select <8 x i1> %i.afp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afr = fsub fast <8 x float> %i.afo, %i.afq   ; 2 uses
  %i.afs = fmul fast <8 x float> %i.afr, splat (float f0x3F317218)
  %i.aft = fsub fast <8 x float> %i.afl, %i.afs   ; 8 uses
  %i.afu = fmul fast <8 x float> %i.aft, %i.aft
  %i.afv = fmul fast <8 x float> %i.aft, splat (float f0x39506967)
  %i.afw = fadd fast <8 x float> %i.afv, splat (float f0x3AB743CE)
  %i.afx = fmul fast <8 x float> %i.afw, %i.aft
  %i.afy = fadd fast <8 x float> %i.afx, splat (float f0x3C088908)
  %i.afz = fmul fast <8 x float> %i.afy, %i.aft
  %i.aga = fadd fast <8 x float> %i.afz, splat (float f0x3D2AA9C1)
  %i.agb = fmul fast <8 x float> %i.aga, %i.aft
  %i.agc = fadd fast <8 x float> %i.agb, splat (float f0x3E2AAAAA)
  %i.agd = fmul fast <8 x float> %i.agc, %i.aft
  %i.age = fadd fast <8 x float> %i.agd, splat (float 5.000000e-01)
  %i.agf = fmul fast <8 x float> %i.afu, %i.age
  %i.agg = fadd fast <8 x float> %i.aft, splat (float 1.000000e+00)
  %i.agh = fadd fast <8 x float> %i.agg, %i.agf
  %i.agi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afr)
  %i.agj = shl <8 x i32> %i.agi, splat (i32 23)
  %i.agk = add <8 x i32> %i.agj, splat (i32 1065353216)
  %i.agl = bitcast <8 x i32> %i.agk to <8 x float>
  %i.agm = fmul fast <8 x float> %i.agh, %i.agl
  %i.agn = fadd fast <8 x float> %i.agm, splat (float 1.000000e+00)
  %i.ago = fdiv fast <8 x float> splat (float 2.000000e+00), %i.agn
  %i.agp = fadd fast <8 x float> %i.ago, splat (float -1.000000e+00)
  %i.agq = fmul fast <8 x float> %i.agp, %.04627.lcssa
  %i.agr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04626.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.ags = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agt = fmul fast <8 x float> %i.ags, splat (float f0x3FB8AA3B)
  %i.agu = fadd fast <8 x float> %i.agt, splat (float 5.000000e-01) ; 2 uses
  %i.agv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agu, i32 1) ; 2 uses
  %i.agw = fcmp fast ogt <8 x float> %i.agv, %i.agu
  %i.agx = select <8 x i1> %i.agw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agy = fsub fast <8 x float> %i.agv, %i.agx   ; 2 uses
  %i.agz = fmul fast <8 x float> %i.agy, splat (float f0x3F317218)
  %i.aha = fsub fast <8 x float> %i.ags, %i.agz   ; 8 uses
  %i.ahb = fmul fast <8 x float> %i.aha, %i.aha
  %i.ahc = fmul fast <8 x float> %i.aha, splat (float f0x39506967)
  %i.ahd = fadd fast <8 x float> %i.ahc, splat (float f0x3AB743CE)
  %i.ahe = fmul fast <8 x float> %i.ahd, %i.aha
  %i.ahf = fadd fast <8 x float> %i.ahe, splat (float f0x3C088908)
  %i.ahg = fmul fast <8 x float> %i.ahf, %i.aha
  %i.ahh = fadd fast <8 x float> %i.ahg, splat (float f0x3D2AA9C1)
  %i.ahi = fmul fast <8 x float> %i.ahh, %i.aha
  %i.ahj = fadd fast <8 x float> %i.ahi, splat (float f0x3E2AAAAA)
  %i.ahk = fmul fast <8 x float> %i.ahj, %i.aha
  %i.ahl = fadd fast <8 x float> %i.ahk, splat (float 5.000000e-01)
  %i.ahm = fmul fast <8 x float> %i.ahb, %i.ahl
  %i.ahn = fadd fast <8 x float> %i.aha, splat (float 1.000000e+00)
  %i.aho = fadd fast <8 x float> %i.ahn, %i.ahm
  %i.ahp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agy)
  %i.ahq = shl <8 x i32> %i.ahp, splat (i32 23)
  %i.ahr = add <8 x i32> %i.ahq, splat (i32 1065353216)
  %i.ahs = bitcast <8 x i32> %i.ahr to <8 x float>
  %i.aht = fmul fast <8 x float> %i.aho, %i.ahs
  %i.ahu = fadd fast <8 x float> %i.aht, splat (float 1.000000e+00) ; 2 uses
  %i.ahv = fcmp fast ole <8 x float> %i.ahu, zeroinitializer
  %i.ahw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahu, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ahx = bitcast <8 x float> %i.ahw to <8 x i32>
  %i.ahy = bitcast <8 x float> %i.ahw to <8 x i32>
  %i.ahz = and <8 x i32> %i.ahy, splat (i32 -2139095041)
  %i.aia = or disjoint <8 x i32> %i.ahz, splat (i32 1056964608)
  %i.aib = bitcast <8 x i32> %i.aia to <8 x float> ; 3 uses
  %i.aic = lshr <8 x i32> %i.ahx, splat (i32 23)
  %i.aid = add nsw <8 x i32> %i.aic, splat (i32 -127)
  %i.aie = sitofp fast <8 x i32> %i.aid to <8 x float> ; 2 uses
  %i.aif = fadd fast <8 x float> %i.aie, splat (float 1.000000e+00)
  %i.aig = fcmp fast olt <8 x float> %i.aib, splat (float f0x3F3504F3) ; 2 uses
  %i.aih = select <8 x i1> %i.aig, <8 x float> %i.aib, <8 x float> zeroinitializer
  %i.aii = fadd fast <8 x float> %i.aib, splat (float -1.000000e+00)
  %i.aij = select fast <8 x i1> %i.aig, <8 x float> %i.aie, <8 x float> %i.aif
  %i.aik = fadd fast <8 x float> %i.aii, %i.aih   ; 12 uses
  %i.ail = fmul fast <8 x float> %i.aik, %i.aik
  %i.aim = fmul fast <8 x float> %i.aik, splat (float f0x3D9021BB)
  %i.ain = fadd fast <8 x float> %i.aim, splat (float f0xBDEBD1B8)
  %i.aio = fmul fast <8 x float> %i.ain, %i.aik
  %i.aip = fadd fast <8 x float> %i.aio, splat (float f0x3DEF251A)
  %i.aiq = fmul fast <8 x float> %i.aip, %i.aik
  %i.air = fadd fast <8 x float> %i.aiq, splat (float f0xBDFE5D4F)
  %i.ais = fmul fast <8 x float> %i.air, %i.aik
  %i.ait = fadd fast <8 x float> %i.ais, splat (float f0x3E11E9BF)
  %i.aiu = fmul fast <8 x float> %i.ait, %i.aik
  %i.aiv = fadd fast <8 x float> %i.aiu, splat (float f0xBE2AAE50)
  %i.aiw = fmul fast <8 x float> %i.aiv, %i.aik
  %i.aix = fadd fast <8 x float> %i.aiw, splat (float f0x3E4CCEAC)
  %i.aiy = fmul fast <8 x float> %i.aix, %i.aik
  %i.aiz = fadd fast <8 x float> %i.aiy, splat (float f0xBE7FFFFC)
  %i.aja = fmul fast <8 x float> %i.aiz, %i.aik
  %i.ajb = fadd fast <8 x float> %i.aja, splat (float f0x3EAAAAAA)
  %i.ajc = fmul fast <8 x float> %i.ajb, %i.aik
  %reass.mul5450 = fmul fast <8 x float> %i.aij, splat (float f0x3F317218)
  %reass.add5467 = fadd fast <8 x float> %i.ajc, splat (float -5.000000e-01)
  %reass.mul5468 = fmul fast <8 x float> %i.ail, %reass.add5467
  %i.ajd = fadd fast <8 x float> %reass.mul5450, %i.aik
  %i.aje = fadd fast <8 x float> %i.ajd, %reass.mul5468
  %.neg5359 = fmul fast <8 x float> %i.aje, splat (float -2.000000e+00)
  %i.ajf = select fast <8 x i1> %i.ahv, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5359
  %i.ajg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ajf, <8 x float> splat (float f0x42B0C0A5))
  %i.ajh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ajg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aji = fmul fast <8 x float> %i.ajh, splat (float f0x3FB8AA3B)
  %i.ajj = fadd fast <8 x float> %i.aji, splat (float 5.000000e-01) ; 2 uses
  %i.ajk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ajj, i32 1) ; 2 uses
  %i.ajl = fcmp fast ogt <8 x float> %i.ajk, %i.ajj
  %i.ajm = select <8 x i1> %i.ajl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajn = fsub fast <8 x float> %i.ajk, %i.ajm   ; 2 uses
  %i.ajo = fmul fast <8 x float> %i.ajn, splat (float f0x3F317218)
  %i.ajp = fsub fast <8 x float> %i.ajh, %i.ajo   ; 8 uses
  %i.ajq = fmul fast <8 x float> %i.ajp, %i.ajp
  %i.ajr = fmul fast <8 x float> %i.ajp, splat (float f0x39506967)
  %i.ajs = fadd fast <8 x float> %i.ajr, splat (float f0x3AB743CE)
  %i.ajt = fmul fast <8 x float> %i.ajs, %i.ajp
  %i.aju = fadd fast <8 x float> %i.ajt, splat (float f0x3C088908)
  %i.ajv = fmul fast <8 x float> %i.aju, %i.ajp
  %i.ajw = fadd fast <8 x float> %i.ajv, splat (float f0x3D2AA9C1)
  %i.ajx = fmul fast <8 x float> %i.ajw, %i.ajp
  %i.ajy = fadd fast <8 x float> %i.ajx, splat (float f0x3E2AAAAA)
  %i.ajz = fmul fast <8 x float> %i.ajy, %i.ajp
  %i.aka = fadd fast <8 x float> %i.ajz, splat (float 5.000000e-01)
  %i.akb = fmul fast <8 x float> %i.ajq, %i.aka
  %i.akc = fadd fast <8 x float> %i.ajp, splat (float 1.000000e+00)
  %i.akd = fadd fast <8 x float> %i.akc, %i.akb
  %i.ake = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ajn)
  %i.akf = shl <8 x i32> %i.ake, splat (i32 23)
  %i.akg = add <8 x i32> %i.akf, splat (i32 1065353216)
  %i.akh = bitcast <8 x i32> %i.akg to <8 x float>
  %i.aki = fmul fast <8 x float> %i.akd, %i.akh
  %i.akj = fadd fast <8 x float> %i.aki, splat (float 1.000000e+00)
  %i.akk = fdiv fast <8 x float> splat (float 2.000000e+00), %i.akj
  %i.akl = fadd fast <8 x float> %i.akk, splat (float -1.000000e+00)
  %i.akm = fmul fast <8 x float> %i.akl, %.04626.lcssa
  %i.akn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04625.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.ako = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.akn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akp = fmul fast <8 x float> %i.ako, splat (float f0x3FB8AA3B)
  %i.akq = fadd fast <8 x float> %i.akp, splat (float 5.000000e-01) ; 2 uses
  %i.akr = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.akq, i32 1) ; 2 uses
  %i.aks = fcmp fast ogt <8 x float> %i.akr, %i.akq
  %i.akt = select <8 x i1> %i.aks, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aku = fsub fast <8 x float> %i.akr, %i.akt   ; 2 uses
  %i.akv = fmul fast <8 x float> %i.aku, splat (float f0x3F317218)
  %i.akw = fsub fast <8 x float> %i.ako, %i.akv   ; 8 uses
  %i.akx = fmul fast <8 x float> %i.akw, %i.akw
  %i.aky = fmul fast <8 x float> %i.akw, splat (float f0x39506967)
  %i.akz = fadd fast <8 x float> %i.aky, splat (float f0x3AB743CE)
  %i.ala = fmul fast <8 x float> %i.akz, %i.akw
  %i.alb = fadd fast <8 x float> %i.ala, splat (float f0x3C088908)
  %i.alc = fmul fast <8 x float> %i.alb, %i.akw
  %i.ald = fadd fast <8 x float> %i.alc, splat (float f0x3D2AA9C1)
  %i.ale = fmul fast <8 x float> %i.ald, %i.akw
  %i.alf = fadd fast <8 x float> %i.ale, splat (float f0x3E2AAAAA)
  %i.alg = fmul fast <8 x float> %i.alf, %i.akw
  %i.alh = fadd fast <8 x float> %i.alg, splat (float 5.000000e-01)
  %i.ali = fmul fast <8 x float> %i.akx, %i.alh
  %i.alj = fadd fast <8 x float> %i.akw, splat (float 1.000000e+00)
  %i.alk = fadd fast <8 x float> %i.alj, %i.ali
  %i.all = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aku)
  %i.alm = shl <8 x i32> %i.all, splat (i32 23)
  %i.aln = add <8 x i32> %i.alm, splat (i32 1065353216)
  %i.alo = bitcast <8 x i32> %i.aln to <8 x float>
  %i.alp = fmul fast <8 x float> %i.alk, %i.alo
  %i.alq = fadd fast <8 x float> %i.alp, splat (float 1.000000e+00) ; 2 uses
  %i.alr = fcmp fast ole <8 x float> %i.alq, zeroinitializer
  %i.als = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.alq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.alt = bitcast <8 x float> %i.als to <8 x i32>
  %i.alu = bitcast <8 x float> %i.als to <8 x i32>
  %i.alv = and <8 x i32> %i.alu, splat (i32 -2139095041)
  %i.alw = or disjoint <8 x i32> %i.alv, splat (i32 1056964608)
  %i.alx = bitcast <8 x i32> %i.alw to <8 x float> ; 3 uses
  %i.aly = lshr <8 x i32> %i.alt, splat (i32 23)
  %i.alz = add nsw <8 x i32> %i.aly, splat (i32 -127)
  %i.ama = sitofp fast <8 x i32> %i.alz to <8 x float> ; 2 uses
  %i.amb = fadd fast <8 x float> %i.ama, splat (float 1.000000e+00)
  %i.amc = fcmp fast olt <8 x float> %i.alx, splat (float f0x3F3504F3) ; 2 uses
  %i.amd = select <8 x i1> %i.amc, <8 x float> %i.alx, <8 x float> zeroinitializer
  %i.ame = fadd fast <8 x float> %i.alx, splat (float -1.000000e+00)
  %i.amf = select fast <8 x i1> %i.amc, <8 x float> %i.ama, <8 x float> %i.amb
  %i.amg = fadd fast <8 x float> %i.ame, %i.amd   ; 12 uses
  %i.amh = fmul fast <8 x float> %i.amg, %i.amg
  %i.ami = fmul fast <8 x float> %i.amg, splat (float f0x3D9021BB)
  %i.amj = fadd fast <8 x float> %i.ami, splat (float f0xBDEBD1B8)
  %i.amk = fmul fast <8 x float> %i.amj, %i.amg
  %i.aml = fadd fast <8 x float> %i.amk, splat (float f0x3DEF251A)
  %i.amm = fmul fast <8 x float> %i.aml, %i.amg
  %i.amn = fadd fast <8 x float> %i.amm, splat (float f0xBDFE5D4F)
  %i.amo = fmul fast <8 x float> %i.amn, %i.amg
  %i.amp = fadd fast <8 x float> %i.amo, splat (float f0x3E11E9BF)
  %i.amq = fmul fast <8 x float> %i.amp, %i.amg
  %i.amr = fadd fast <8 x float> %i.amq, splat (float f0xBE2AAE50)
  %i.ams = fmul fast <8 x float> %i.amr, %i.amg
  %i.amt = fadd fast <8 x float> %i.ams, splat (float f0x3E4CCEAC)
  %i.amu = fmul fast <8 x float> %i.amt, %i.amg
  %i.amv = fadd fast <8 x float> %i.amu, splat (float f0xBE7FFFFC)
  %i.amw = fmul fast <8 x float> %i.amv, %i.amg
  %i.amx = fadd fast <8 x float> %i.amw, splat (float f0x3EAAAAAA)
  %i.amy = fmul fast <8 x float> %i.amx, %i.amg
  %reass.mul5453 = fmul fast <8 x float> %i.amf, splat (float f0x3F317218)
  %reass.add5469 = fadd fast <8 x float> %i.amy, splat (float -5.000000e-01)
  %reass.mul5470 = fmul fast <8 x float> %i.amh, %reass.add5469
  %i.amz = fadd fast <8 x float> %reass.mul5453, %i.amg
  %i.ana = fadd fast <8 x float> %i.amz, %reass.mul5470
  %.neg5360 = fmul fast <8 x float> %i.ana, splat (float -2.000000e+00)
  %i.anb = select fast <8 x i1> %i.alr, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5360
  %i.anc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.anb, <8 x float> splat (float f0x42B0C0A5))
  %i.and = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.anc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ane = fmul fast <8 x float> %i.and, splat (float f0x3FB8AA3B)
  %i.anf = fadd fast <8 x float> %i.ane, splat (float 5.000000e-01) ; 2 uses
  %i.ang = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.anf, i32 1) ; 2 uses
  %i.anh = fcmp fast ogt <8 x float> %i.ang, %i.anf
  %i.ani = select <8 x i1> %i.anh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.anj = fsub fast <8 x float> %i.ang, %i.ani   ; 2 uses
  %i.ank = fmul fast <8 x float> %i.anj, splat (float f0x3F317218)
  %i.anl = fsub fast <8 x float> %i.and, %i.ank   ; 8 uses
  %i.anm = fmul fast <8 x float> %i.anl, %i.anl
  %i.ann = fmul fast <8 x float> %i.anl, splat (float f0x39506967)
  %i.ano = fadd fast <8 x float> %i.ann, splat (float f0x3AB743CE)
  %i.anp = fmul fast <8 x float> %i.ano, %i.anl
  %i.anq = fadd fast <8 x float> %i.anp, splat (float f0x3C088908)
  %i.anr = fmul fast <8 x float> %i.anq, %i.anl
  %i.ans = fadd fast <8 x float> %i.anr, splat (float f0x3D2AA9C1)
  %i.ant = fmul fast <8 x float> %i.ans, %i.anl
  %i.anu = fadd fast <8 x float> %i.ant, splat (float f0x3E2AAAAA)
  %i.anv = fmul fast <8 x float> %i.anu, %i.anl
  %i.anw = fadd fast <8 x float> %i.anv, splat (float 5.000000e-01)
  %i.anx = fmul fast <8 x float> %i.anm, %i.anw
  %i.any = fadd fast <8 x float> %i.anl, splat (float 1.000000e+00)
  %i.anz = fadd fast <8 x float> %i.any, %i.anx
  %i.aoa = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.anj)
  %i.aob = shl <8 x i32> %i.aoa, splat (i32 23)
  %i.aoc = add <8 x i32> %i.aob, splat (i32 1065353216)
  %i.aod = bitcast <8 x i32> %i.aoc to <8 x float>
  %i.aoe = fmul fast <8 x float> %i.anz, %i.aod
  %i.aof = fadd fast <8 x float> %i.aoe, splat (float 1.000000e+00)
  %i.aog = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aof
  %i.aoh = fadd fast <8 x float> %i.aog, splat (float -1.000000e+00)
  %i.aoi = fmul fast <8 x float> %i.aoh, %.04625.lcssa
  %i.aoj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04624.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.aok = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aoj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aol = fmul fast <8 x float> %i.aok, splat (float f0x3FB8AA3B)
  %i.aom = fadd fast <8 x float> %i.aol, splat (float 5.000000e-01) ; 2 uses
  %i.aon = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aom, i32 1) ; 2 uses
  %i.aoo = fcmp fast ogt <8 x float> %i.aon, %i.aom
  %i.aop = select <8 x i1> %i.aoo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aoq = fsub fast <8 x float> %i.aon, %i.aop   ; 2 uses
  %i.aor = fmul fast <8 x float> %i.aoq, splat (float f0x3F317218)
  %i.aos = fsub fast <8 x float> %i.aok, %i.aor   ; 8 uses
  %i.aot = fmul fast <8 x float> %i.aos, %i.aos
  %i.aou = fmul fast <8 x float> %i.aos, splat (float f0x39506967)
  %i.aov = fadd fast <8 x float> %i.aou, splat (float f0x3AB743CE)
  %i.aow = fmul fast <8 x float> %i.aov, %i.aos
  %i.aox = fadd fast <8 x float> %i.aow, splat (float f0x3C088908)
  %i.aoy = fmul fast <8 x float> %i.aox, %i.aos
  %i.aoz = fadd fast <8 x float> %i.aoy, splat (float f0x3D2AA9C1)
  %i.apa = fmul fast <8 x float> %i.aoz, %i.aos
  %i.apb = fadd fast <8 x float> %i.apa, splat (float f0x3E2AAAAA)
  %i.apc = fmul fast <8 x float> %i.apb, %i.aos
  %i.apd = fadd fast <8 x float> %i.apc, splat (float 5.000000e-01)
  %i.ape = fmul fast <8 x float> %i.aot, %i.apd
  %i.apf = fadd fast <8 x float> %i.aos, splat (float 1.000000e+00)
  %i.apg = fadd fast <8 x float> %i.apf, %i.ape
  %i.aph = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aoq)
  %i.api = shl <8 x i32> %i.aph, splat (i32 23)
  %i.apj = add <8 x i32> %i.api, splat (i32 1065353216)
  %i.apk = bitcast <8 x i32> %i.apj to <8 x float>
  %i.apl = fmul fast <8 x float> %i.apg, %i.apk
  %i.apm = fadd fast <8 x float> %i.apl, splat (float 1.000000e+00) ; 2 uses
  %i.apn = fcmp fast ole <8 x float> %i.apm, zeroinitializer
  %i.apo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.apm, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.app = bitcast <8 x float> %i.apo to <8 x i32>
  %i.apq = bitcast <8 x float> %i.apo to <8 x i32>
  %i.apr = and <8 x i32> %i.apq, splat (i32 -2139095041)
  %i.aps = or disjoint <8 x i32> %i.apr, splat (i32 1056964608)
  %i.apt = bitcast <8 x i32> %i.aps to <8 x float> ; 3 uses
  %i.apu = lshr <8 x i32> %i.app, splat (i32 23)
  %i.apv = add nsw <8 x i32> %i.apu, splat (i32 -127)
  %i.apw = sitofp fast <8 x i32> %i.apv to <8 x float> ; 2 uses
  %i.apx = fadd fast <8 x float> %i.apw, splat (float 1.000000e+00)
  %i.apy = fcmp fast olt <8 x float> %i.apt, splat (float f0x3F3504F3) ; 2 uses
  %i.apz = select <8 x i1> %i.apy, <8 x float> %i.apt, <8 x float> zeroinitializer
  %i.aqa = fadd fast <8 x float> %i.apt, splat (float -1.000000e+00)
  %i.aqb = select fast <8 x i1> %i.apy, <8 x float> %i.apw, <8 x float> %i.apx
  %i.aqc = fadd fast <8 x float> %i.aqa, %i.apz   ; 12 uses
  %i.aqd = fmul fast <8 x float> %i.aqc, %i.aqc
  %i.aqe = fmul fast <8 x float> %i.aqc, splat (float f0x3D9021BB)
  %i.aqf = fadd fast <8 x float> %i.aqe, splat (float f0xBDEBD1B8)
  %i.aqg = fmul fast <8 x float> %i.aqf, %i.aqc
  %i.aqh = fadd fast <8 x float> %i.aqg, splat (float f0x3DEF251A)
  %i.aqi = fmul fast <8 x float> %i.aqh, %i.aqc
  %i.aqj = fadd fast <8 x float> %i.aqi, splat (float f0xBDFE5D4F)
  %i.aqk = fmul fast <8 x float> %i.aqj, %i.aqc
  %i.aql = fadd fast <8 x float> %i.aqk, splat (float f0x3E11E9BF)
  %i.aqm = fmul fast <8 x float> %i.aql, %i.aqc
  %i.aqn = fadd fast <8 x float> %i.aqm, splat (float f0xBE2AAE50)
  %i.aqo = fmul fast <8 x float> %i.aqn, %i.aqc
  %i.aqp = fadd fast <8 x float> %i.aqo, splat (float f0x3E4CCEAC)
  %i.aqq = fmul fast <8 x float> %i.aqp, %i.aqc
  %i.aqr = fadd fast <8 x float> %i.aqq, splat (float f0xBE7FFFFC)
  %i.aqs = fmul fast <8 x float> %i.aqr, %i.aqc
  %i.aqt = fadd fast <8 x float> %i.aqs, splat (float f0x3EAAAAAA)
  %i.aqu = fmul fast <8 x float> %i.aqt, %i.aqc
  %reass.mul5456 = fmul fast <8 x float> %i.aqb, splat (float f0x3F317218)
  %reass.add5471 = fadd fast <8 x float> %i.aqu, splat (float -5.000000e-01)
  %reass.mul5472 = fmul fast <8 x float> %i.aqd, %reass.add5471
  %i.aqv = fadd fast <8 x float> %reass.mul5456, %i.aqc
  %i.aqw = fadd fast <8 x float> %i.aqv, %reass.mul5472
  %.neg5361 = fmul fast <8 x float> %i.aqw, splat (float -2.000000e+00)
  %i.aqx = select fast <8 x i1> %i.apn, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5361
  %i.aqy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aqx, <8 x float> splat (float f0x42B0C0A5))
  %i.aqz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ara = fmul fast <8 x float> %i.aqz, splat (float f0x3FB8AA3B)
  %i.arb = fadd fast <8 x float> %i.ara, splat (float 5.000000e-01) ; 2 uses
  %i.arc = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.arb, i32 1) ; 2 uses
  %i.ard = fcmp fast ogt <8 x float> %i.arc, %i.arb
  %i.are = select <8 x i1> %i.ard, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.arf = fsub fast <8 x float> %i.arc, %i.are   ; 2 uses
  %i.arg = fmul fast <8 x float> %i.arf, splat (float f0x3F317218)
  %i.arh = fsub fast <8 x float> %i.aqz, %i.arg   ; 8 uses
  %i.ari = fmul fast <8 x float> %i.arh, %i.arh
  %i.arj = fmul fast <8 x float> %i.arh, splat (float f0x39506967)
  %i.ark = fadd fast <8 x float> %i.arj, splat (float f0x3AB743CE)
  %i.arl = fmul fast <8 x float> %i.ark, %i.arh
  %i.arm = fadd fast <8 x float> %i.arl, splat (float f0x3C088908)
  %i.arn = fmul fast <8 x float> %i.arm, %i.arh
  %i.aro = fadd fast <8 x float> %i.arn, splat (float f0x3D2AA9C1)
  %i.arp = fmul fast <8 x float> %i.aro, %i.arh
  %i.arq = fadd fast <8 x float> %i.arp, splat (float f0x3E2AAAAA)
  %i.arr = fmul fast <8 x float> %i.arq, %i.arh
  %i.ars = fadd fast <8 x float> %i.arr, splat (float 5.000000e-01)
  %i.art = fmul fast <8 x float> %i.ari, %i.ars
  %i.aru = fadd fast <8 x float> %i.arh, splat (float 1.000000e+00)
  %i.arv = fadd fast <8 x float> %i.aru, %i.art
  %i.arw = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.arf)
  %i.arx = shl <8 x i32> %i.arw, splat (i32 23)
  %i.ary = add <8 x i32> %i.arx, splat (i32 1065353216)
  %i.arz = bitcast <8 x i32> %i.ary to <8 x float>
  %i.asa = fmul fast <8 x float> %i.arv, %i.arz
  %i.asb = fadd fast <8 x float> %i.asa, splat (float 1.000000e+00)
  %i.asc = fdiv fast <8 x float> splat (float 2.000000e+00), %i.asb
  %i.asd = fadd fast <8 x float> %i.asc, splat (float -1.000000e+00)
  %i.ase = fmul fast <8 x float> %i.asd, %.04624.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650: ; preds = %._crit_edge
  %i.asf = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !27
  %i.ash = insertelement <8 x float> poison, float %i.asg, i64 0
  %i.asi = shufflevector <8 x float> %i.ash, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !27
  %i.asl = insertelement <8 x float> poison, float %i.ask, i64 0
  %i.asm = shufflevector <8 x float> %i.asl, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.asn = fmul fast <8 x float> %i.asi, %.14632.lcssa
  %i.aso = fadd fast <8 x float> %i.asn, %i.asm
  %i.asp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aso, <8 x float> zeroinitializer)
  %i.asq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.asp, <8 x float> splat (float 1.000000e+00))
  %i.asr = fmul fast <8 x float> %i.asq, %.14632.lcssa
  %i.ass = fmul fast <8 x float> %i.asi, %.04630.lcssa
  %i.ast = fadd fast <8 x float> %i.ass, %i.asm
  %i.asu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ast, <8 x float> zeroinitializer)
  %i.asv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.asu, <8 x float> splat (float 1.000000e+00))
  %i.asw = fmul fast <8 x float> %i.asv, %.04630.lcssa
  %i.asx = fmul fast <8 x float> %i.asi, %.04629.lcssa
  %i.asy = fadd fast <8 x float> %i.asx, %i.asm
  %i.asz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asy, <8 x float> zeroinitializer)
  %i.ata = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.asz, <8 x float> splat (float 1.000000e+00))
  %i.atb = fmul fast <8 x float> %i.ata, %.04629.lcssa
  %i.atc = fmul fast <8 x float> %i.asi, %.04628.lcssa
  %i.atd = fadd fast <8 x float> %i.atc, %i.asm
  %i.ate = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atd, <8 x float> zeroinitializer)
  %i.atf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ate, <8 x float> splat (float 1.000000e+00))
  %i.atg = fmul fast <8 x float> %i.atf, %.04628.lcssa
  %i.ath = fmul fast <8 x float> %i.asi, %.04627.lcssa
  %i.ati = fadd fast <8 x float> %i.ath, %i.asm
  %i.atj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ati, <8 x float> zeroinitializer)
  %i.atk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.atj, <8 x float> splat (float 1.000000e+00))
  %i.atl = fmul fast <8 x float> %i.atk, %.04627.lcssa
  %i.atm = fmul fast <8 x float> %i.asi, %.04626.lcssa
  %i.atn = fadd fast <8 x float> %i.atm, %i.asm
  %i.ato = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atn, <8 x float> zeroinitializer)
  %i.atp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ato, <8 x float> splat (float 1.000000e+00))
  %i.atq = fmul fast <8 x float> %i.atp, %.04626.lcssa
  %i.atr = fmul fast <8 x float> %i.asi, %.04625.lcssa
  %i.ats = fadd fast <8 x float> %i.atr, %i.asm
  %i.att = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ats, <8 x float> zeroinitializer)
  %i.atu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.att, <8 x float> splat (float 1.000000e+00))
  %i.atv = fmul fast <8 x float> %i.atu, %.04625.lcssa
  %i.atw = fmul fast <8 x float> %i.asi, %.04624.lcssa
  %i.atx = fadd fast <8 x float> %i.atw, %i.asm
  %i.aty = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atx, <8 x float> zeroinitializer)
  %i.atz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aty, <8 x float> splat (float 1.000000e+00))
  %i.aua = fmul fast <8 x float> %i.atz, %.04624.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.03875497 = phi i32 [ %i.awb, %.lr.ph ], [ 0, %bb.g ]
  %.03885496 = phi ptr [ %i.avz, %.lr.ph ], [ %i.as, %bb.g ] ; 9 uses
  %.03895495 = phi ptr [ %i.awa, %.lr.ph ], [ %i.al, %bb.g ] ; 2 uses
  %.046245494 = phi <8 x float> [ %i.avy, %.lr.ph ], [ %.04631, %bb.g ]
  %.046255493 = phi <8 x float> [ %i.avw, %.lr.ph ], [ %.04631, %bb.g ]
  %.046265492 = phi <8 x float> [ %i.avu, %.lr.ph ], [ %.04631, %bb.g ]
  %.046275491 = phi <8 x float> [ %i.avs, %.lr.ph ], [ %.04631, %bb.g ]
  %.046285490 = phi <8 x float> [ %i.avq, %.lr.ph ], [ %.04631, %bb.g ]
  %.046295489 = phi <8 x float> [ %i.avo, %.lr.ph ], [ %.04631, %bb.g ]
  %.046305488 = phi <8 x float> [ %i.avm, %.lr.ph ], [ %.04631, %bb.g ]
  %.146325487 = phi <8 x float> [ %i.avk, %.lr.ph ], [ %.04631, %bb.g ]
  %i.aub = load float, ptr %.03885496, align 1, !tbaa !23
  %i.auc = insertelement <8 x float> poison, float %i.aub, i64 0
  %i.aud = shufflevector <8 x float> %i.auc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aue = getelementptr inbounds nuw i8, ptr %.03885496, i64 4
  %i.auf = load float, ptr %i.aue, align 1, !tbaa !23
  %i.aug = insertelement <8 x float> poison, float %i.auf, i64 0
  %i.auh = shufflevector <8 x float> %i.aug, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aui = getelementptr inbounds nuw i8, ptr %.03885496, i64 8
  %i.auj = load float, ptr %i.aui, align 1, !tbaa !23
  %i.auk = insertelement <8 x float> poison, float %i.auj, i64 0
  %i.aul = shufflevector <8 x float> %i.auk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aum = getelementptr inbounds nuw i8, ptr %.03885496, i64 12
  %i.aun = load float, ptr %i.aum, align 1, !tbaa !23
  %i.auo = insertelement <8 x float> poison, float %i.aun, i64 0
  %i.aup = shufflevector <8 x float> %i.auo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auq = getelementptr inbounds nuw i8, ptr %.03885496, i64 16
  %i.aur = load float, ptr %i.auq, align 1, !tbaa !23
  %i.aus = insertelement <8 x float> poison, float %i.aur, i64 0
  %i.aut = shufflevector <8 x float> %i.aus, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auu = getelementptr inbounds nuw i8, ptr %.03885496, i64 20
  %i.auv = load float, ptr %i.auu, align 1, !tbaa !23
  %i.auw = insertelement <8 x float> poison, float %i.auv, i64 0
  %i.aux = shufflevector <8 x float> %i.auw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auy = getelementptr inbounds nuw i8, ptr %.03885496, i64 24
  %i.auz = load float, ptr %i.auy, align 1, !tbaa !23
  %i.ava = insertelement <8 x float> poison, float %i.auz, i64 0
  %i.avb = shufflevector <8 x float> %i.ava, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avc = getelementptr inbounds nuw i8, ptr %.03885496, i64 28
  %i.avd = load float, ptr %i.avc, align 1, !tbaa !23
  %i.ave = insertelement <8 x float> poison, float %i.avd, i64 0
  %i.avf = shufflevector <8 x float> %i.ave, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avg = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03895495)
  %i.avh = bitcast <16 x i8> %i.avg to <8 x half>
  %i.avi = fpext fast <8 x half> %i.avh to <8 x float> ; 8 uses
  %i.avj = fmul fast <8 x float> %i.aud, %i.avi
  %i.avk = fadd fast <8 x float> %i.avj, %.146325487 ; 2 uses
  %i.avl = fmul fast <8 x float> %i.auh, %i.avi
  %i.avm = fadd fast <8 x float> %i.avl, %.046305488 ; 2 uses
  %i.avn = fmul fast <8 x float> %i.aul, %i.avi
  %i.avo = fadd fast <8 x float> %i.avn, %.046295489 ; 2 uses
  %i.avp = fmul fast <8 x float> %i.aup, %i.avi
  %i.avq = fadd fast <8 x float> %i.avp, %.046285490 ; 2 uses
  %i.avr = fmul fast <8 x float> %i.aut, %i.avi
  %i.avs = fadd fast <8 x float> %i.avr, %.046275491 ; 2 uses
  %i.avt = fmul fast <8 x float> %i.aux, %i.avi
  %i.avu = fadd fast <8 x float> %i.avt, %.046265492 ; 2 uses
  %i.avv = fmul fast <8 x float> %i.avb, %i.avi
  %i.avw = fadd fast <8 x float> %i.avv, %.046255493 ; 2 uses
  %i.avx = fmul fast <8 x float> %i.avf, %i.avi
  %i.avy = fadd fast <8 x float> %i.avx, %.046245494 ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.03885496, i64 32
  %i.awa = getelementptr inbounds nuw i8, ptr %.03895495, i64 16
  %i.awb = add nuw nsw i32 %.03875497, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.awb, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478:   ; preds = %._crit_edge, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650
  %.0.i4734958 = phi <8 x float> [ %i.atv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.bf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.cm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.dm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.me, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.aoi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04625.lcssa, %._crit_edge ] ; 2 uses
  %.0.i485479948624956 = phi <8 x float> [ %i.atl, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.bd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.ce, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.di, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.js, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.agq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04627.lcssa, %._crit_edge ] ; 2 uses
  %.0.i49746924733479748644954 = phi <8 x float> [ %i.atb, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.bb, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.bw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.de, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.hg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.yy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04629.lcssa, %._crit_edge ] ; 2 uses
  %.0.i5094637465646904735479548664952 = phi <8 x float> [ %i.asr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.az, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.bo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.da, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.eu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.rg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.14632.lcssa, %._crit_edge ] ; 2 uses
  %.0.i503465846884737479348684950 = phi <8 x float> [ %i.asw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.ba, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.bs, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.dc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.ga, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.vc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04630.lcssa, %._crit_edge ] ; 2 uses
  %.0.i4914739479148704948 = phi <8 x float> [ %i.atg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.bc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.ca, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.dg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.im, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.acu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04628.lcssa, %._crit_edge ] ; 2 uses
  %.0.i47948724946 = phi <8 x float> [ %i.atq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.be, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.ci, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.dk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.ky, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.akm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04626.lcssa, %._crit_edge ] ; 2 uses
  %.0.i467 = phi nsz <8 x float> [ %i.aua, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4650 ], [ %i.bg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread ], [ %i.cq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4638 ], [ %i.do, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4641 ], [ %i.nk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4644 ], [ %i.ase, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit514.thread4647 ], [ %.04624.lcssa, %._crit_edge ] ; 2 uses
  %i.awc = shufflevector <8 x float> %.0.i5094637465646904735479548664952, <8 x float> %.0.i503465846884737479348684950, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awd = shufflevector <8 x float> %.0.i5094637465646904735479548664952, <8 x float> %.0.i503465846884737479348684950, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awe = shufflevector <8 x float> %.0.i49746924733479748644954, <8 x float> %.0.i4914739479148704948, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awf = shufflevector <8 x float> %.0.i49746924733479748644954, <8 x float> %.0.i4914739479148704948, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awg = shufflevector <8 x float> %.0.i485479948624956, <8 x float> %.0.i47948724946, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awh = shufflevector <8 x float> %.0.i485479948624956, <8 x float> %.0.i47948724946, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awi = shufflevector <8 x float> %.0.i4734958, <8 x float> %.0.i467, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.awj = shufflevector <8 x float> %.0.i4734958, <8 x float> %.0.i467, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.awk = shufflevector <8 x float> %i.awc, <8 x float> %i.awe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.awl = shufflevector <8 x float> %i.awc, <8 x float> %i.awe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.awm = shufflevector <8 x float> %i.awd, <8 x float> %i.awf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.awn = shufflevector <8 x float> %i.awd, <8 x float> %i.awf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.awo = shufflevector <8 x float> %i.awg, <8 x float> %i.awi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.awp = shufflevector <8 x float> %i.awg, <8 x float> %i.awi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.awq = shufflevector <8 x float> %i.awh, <8 x float> %i.awj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.awr = shufflevector <8 x float> %i.awh, <8 x float> %i.awj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aws = shufflevector <8 x float> %i.awk, <8 x float> %i.awo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.awt = shufflevector <8 x float> %i.awl, <8 x float> %i.awp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.awu = shufflevector <8 x float> %i.awm, <8 x float> %i.awq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.awv = shufflevector <8 x float> %i.awn, <8 x float> %i.awr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aww = shufflevector <8 x float> %i.awk, <8 x float> %i.awo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.awx = shufflevector <8 x float> %i.awl, <8 x float> %i.awp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.awy = shufflevector <8 x float> %i.awm, <8 x float> %i.awq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.awz = shufflevector <8 x float> %i.awn, <8 x float> %i.awr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.aws, ptr %.03915505, align 1, !tbaa !23
  %i.axa = getelementptr inbounds nuw i8, ptr %.03915505, i64 32
  store <8 x float> %i.awt, ptr %i.axa, align 1, !tbaa !23
  %i.axb = getelementptr inbounds nuw i8, ptr %.03915505, i64 64
  store <8 x float> %i.awu, ptr %i.axb, align 1, !tbaa !23
  %i.axc = getelementptr inbounds nuw i8, ptr %.03915505, i64 96
  store <8 x float> %i.awv, ptr %i.axc, align 1, !tbaa !23
  %i.axd = getelementptr inbounds nuw i8, ptr %.03915505, i64 128
  store <8 x float> %i.aww, ptr %i.axd, align 1, !tbaa !23
  %i.axe = getelementptr inbounds nuw i8, ptr %.03915505, i64 160
  store <8 x float> %i.awx, ptr %i.axe, align 1, !tbaa !23
  %i.axf = getelementptr inbounds nuw i8, ptr %.03915505, i64 192
  store <8 x float> %i.awy, ptr %i.axf, align 1, !tbaa !23
  %i.axg = getelementptr inbounds nuw i8, ptr %.03915505, i64 224
  store <8 x float> %i.awz, ptr %i.axg, align 1, !tbaa !23
  %i.axh = getelementptr inbounds nuw i8, ptr %.03915505, i64 256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.axi = load i32, ptr %6, align 4, !tbaa !9
  %i.axj = load i32, ptr %4, align 4, !tbaa !9
  %i.axk = sdiv i32 %i.axi, %i.axj
  %i.axl = sext i32 %i.axk to i64
  %i.axm = icmp slt i64 %indvars.iv.next, %i.axl
  br i1 %i.axm, label %.lr.ph5508, label %thread-pre-split.loopexit, !llvm.loop !51

thread-pre-split.loopexit:                        ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit478
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.c
  %i.axn = phi i32 [ %i.s, %bb.c ], [ %.pr.pre, %thread-pre-split.loopexit ] ; 2 uses
  %i.axo = icmp eq i32 %i.axn, 1
  br i1 %i.axo, label %bb.h, label %.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.axp = load i32, ptr %4, align 4, !tbaa !9    ; 2 uses
  %i.axq = icmp eq i32 %i.axp, 8
  br i1 %i.axq, label %bb.i, label %.thread5225.thread5899
end_hunk_2
begin_hunk_3_@_ZN4ncnnL27innerproduct_gemm_fp16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.bbx = fmul fast <8 x float> %i.bba, %i.bbq
  %i.bby = fadd fast <8 x float> %i.bbx, %.046115516 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.03795518, i64 32 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.03825517, i64 128 ; 2 uses
  %i.bcb = add nuw nsw i32 %.03765519, 8          ; 2 uses
  %i.bcc = or disjoint i32 %i.bcb, 7
  %i.bcd = icmp slt i32 %i.bcc, %i.ayr
  br i1 %i.bcd, label %.lr.ph5521, label %.preheader5481.loopexit, !llvm.loop !52

.preheader5480:                                   ; preds = %.lr.ph5541, %.preheader5481
  %.24623.lcssa = phi <8 x float> [ %.14622.lcssa, %.preheader5481 ], [ %i.bdx, %.lr.ph5541 ] ; 3 uses
  %.14620.lcssa = phi <8 x float> [ %.04619.lcssa, %.preheader5481 ], [ %i.bdz, %.lr.ph5541 ]
  %.14618.lcssa = phi <8 x float> [ %.04617.lcssa, %.preheader5481 ], [ %i.beb, %.lr.ph5541 ]
  %.14616.lcssa = phi <8 x float> [ %.04615.lcssa, %.preheader5481 ], [ %i.bed, %.lr.ph5541 ]
  %.1383.lcssa = phi ptr [ %.0382.lcssa, %.preheader5481 ], [ %i.bef, %.lr.ph5541 ] ; 3 uses
  %.1380.lcssa = phi ptr [ %.0379.lcssa, %.preheader5481 ], [ %i.bee, %.lr.ph5541 ] ; 3 uses
  %.1377.lcssa = phi i32 [ %.0376.lcssa, %.preheader5481 ], [ %i.beg, %.lr.ph5541 ] ; 5 uses
  %i.bce = icmp slt i32 %.1377.lcssa, %i.ayr
  br i1 %i.bce, label %.lr.ph5553.preheader, label %._crit_edge5554

.lr.ph5553.preheader:                             ; preds = %.preheader5480
  %i.bcf = sub i32 %i.ayr, %.1377.lcssa
  %.neg6112 = add i32 %.1377.lcssa, 1
  %xtraiter = and i32 %i.bcf, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph5553.prol.loopexit, label %.lr.ph5553.prol

.lr.ph5553.prol:                                  ; preds = %.lr.ph5553.preheader
  %i.bcg = load float, ptr %.1380.lcssa, align 4, !tbaa !27
  %i.bch = insertelement <8 x float> poison, float %i.bcg, i64 0
  %i.bci = shufflevector <8 x float> %i.bch, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcj = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.1383.lcssa)
  %i.bck = bitcast <16 x i8> %i.bcj to <8 x half>
  %i.bcl = fpext fast <8 x half> %i.bck to <8 x float>
  %i.bcm = fmul fast <8 x float> %i.bci, %i.bcl
  %i.bcn = fadd fast <8 x float> %i.bcm, %.24623.lcssa ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %.1380.lcssa, i64 4
  %i.bcp = getelementptr inbounds nuw i8, ptr %.1383.lcssa, i64 16
  %i.bcq = add nuw nsw i32 %.1377.lcssa, 1
  br label %.lr.ph5553.prol.loopexit

.lr.ph5553.prol.loopexit:                         ; preds = %.lr.ph5553.prol, %.lr.ph5553.preheader
  %.lcssa6062.unr = phi <8 x float> [ poison, %.lr.ph5553.preheader ], [ %i.bcn, %.lr.ph5553.prol ]
  %.23785552.unr = phi i32 [ %.1377.lcssa, %.lr.ph5553.preheader ], [ %i.bcq, %.lr.ph5553.prol ]
  %.23815551.unr = phi ptr [ %.1380.lcssa, %.lr.ph5553.preheader ], [ %i.bco, %.lr.ph5553.prol ]
  %.23845550.unr = phi ptr [ %.1383.lcssa, %.lr.ph5553.preheader ], [ %i.bcp, %.lr.ph5553.prol ]
  %.35549.unr = phi <8 x float> [ %.24623.lcssa, %.lr.ph5553.preheader ], [ %i.bcn, %.lr.ph5553.prol ]
  %i.bcr = icmp eq i32 %i.ayr, %.neg6112
  br i1 %i.bcr, label %._crit_edge5554, label %.lr.ph5553

.lr.ph5541:                                       ; preds = %.preheader5481, %.lr.ph5541
  %.13775540 = phi i32 [ %i.beg, %.lr.ph5541 ], [ %.0376.lcssa, %.preheader5481 ]
  %.13805539 = phi ptr [ %i.bee, %.lr.ph5541 ], [ %.0379.lcssa, %.preheader5481 ] ; 5 uses
  %.13835538 = phi ptr [ %i.bef, %.lr.ph5541 ], [ %.0382.lcssa, %.preheader5481 ] ; 5 uses
  %.146165537 = phi <8 x float> [ %i.bed, %.lr.ph5541 ], [ %.04615.lcssa, %.preheader5481 ]
  %.146185536 = phi <8 x float> [ %i.beb, %.lr.ph5541 ], [ %.04617.lcssa, %.preheader5481 ]
  %.146205535 = phi <8 x float> [ %i.bdz, %.lr.ph5541 ], [ %.04619.lcssa, %.preheader5481 ]
  %.246235534 = phi <8 x float> [ %i.bdx, %.lr.ph5541 ], [ %.14622.lcssa, %.preheader5481 ]
  %i.bcs = load float, ptr %.13805539, align 1, !tbaa !23
  %i.bct = insertelement <8 x float> poison, float %i.bcs, i64 0
  %i.bcu = shufflevector <8 x float> %i.bct, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcv = getelementptr inbounds nuw i8, ptr %.13805539, i64 4
  %i.bcw = load float, ptr %i.bcv, align 1, !tbaa !23
  %i.bcx = insertelement <8 x float> poison, float %i.bcw, i64 0
  %i.bcy = shufflevector <8 x float> %i.bcx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcz = getelementptr inbounds nuw i8, ptr %.13805539, i64 8
  %i.bda = load float, ptr %i.bcz, align 1, !tbaa !23
  %i.bdb = insertelement <8 x float> poison, float %i.bda, i64 0
  %i.bdc = shufflevector <8 x float> %i.bdb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdd = getelementptr inbounds nuw i8, ptr %.13805539, i64 12
  %i.bde = load float, ptr %i.bdd, align 1, !tbaa !23
  %i.bdf = insertelement <8 x float> poison, float %i.bde, i64 0
  %i.bdg = shufflevector <8 x float> %i.bdf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bdh = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.13835538)
  %i.bdi = bitcast <16 x i8> %i.bdh to <8 x half>
  %i.bdj = fpext fast <8 x half> %i.bdi to <8 x float>
  %i.bdk = getelementptr inbounds nuw i8, ptr %.13835538, i64 16
  %i.bdl = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bdk)
  %i.bdm = bitcast <16 x i8> %i.bdl to <8 x half>
  %i.bdn = fpext fast <8 x half> %i.bdm to <8 x float>
  %i.bdo = getelementptr inbounds nuw i8, ptr %.13835538, i64 32
  %i.bdp = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bdo)
  %i.bdq = bitcast <16 x i8> %i.bdp to <8 x half>
  %i.bdr = fpext fast <8 x half> %i.bdq to <8 x float>
  %i.bds = getelementptr inbounds nuw i8, ptr %.13835538, i64 48
  %i.bdt = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bds)
  %i.bdu = bitcast <16 x i8> %i.bdt to <8 x half>
  %i.bdv = fpext fast <8 x half> %i.bdu to <8 x float>
  %i.bdw = fmul fast <8 x float> %i.bcu, %i.bdj
  %i.bdx = fadd fast <8 x float> %i.bdw, %.246235534 ; 2 uses
  %i.bdy = fmul fast <8 x float> %i.bcy, %i.bdn
  %i.bdz = fadd fast <8 x float> %i.bdy, %.146205535 ; 2 uses
  %i.bea = fmul fast <8 x float> %i.bdc, %i.bdr
  %i.beb = fadd fast <8 x float> %i.bea, %.146185536 ; 2 uses
  %i.bec = fmul fast <8 x float> %i.bdg, %i.bdv
  %i.bed = fadd fast <8 x float> %i.bec, %.146165537 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %.13805539, i64 16 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %.13835538, i64 64 ; 2 uses
  %i.beg = add nuw nsw i32 %.13775540, 4          ; 3 uses
  %i.beh = or disjoint i32 %i.beg, 3
  %i.bei = icmp slt i32 %i.beh, %i.ayr
  br i1 %i.bei, label %.lr.ph5541, label %.preheader5480, !llvm.loop !53

.lr.ph5553:                                       ; preds = %.lr.ph5553.prol.loopexit, %.lr.ph5553
  %.23785552 = phi i32 [ %i.bfd, %.lr.ph5553 ], [ %.23785552.unr, %.lr.ph5553.prol.loopexit ]
  %.23815551 = phi ptr [ %i.bfb, %.lr.ph5553 ], [ %.23815551.unr, %.lr.ph5553.prol.loopexit ] ; 3 uses
  %.23845550 = phi ptr [ %i.bfc, %.lr.ph5553 ], [ %.23845550.unr, %.lr.ph5553.prol.loopexit ] ; 3 uses
  %.35549 = phi <8 x float> [ %i.bfa, %.lr.ph5553 ], [ %.35549.unr, %.lr.ph5553.prol.loopexit ]
  %i.bej = load float, ptr %.23815551, align 4, !tbaa !27
  %i.bek = insertelement <8 x float> poison, float %i.bej, i64 0
  %i.bel = shufflevector <8 x float> %i.bek, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bem = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.23845550)
  %i.ben = bitcast <16 x i8> %i.bem to <8 x half>
  %i.beo = fpext fast <8 x half> %i.ben to <8 x float>
  %i.bep = fmul fast <8 x float> %i.bel, %i.beo
  %i.beq = fadd fast <8 x float> %i.bep, %.35549
  %i.ber = getelementptr inbounds nuw i8, ptr %.23815551, i64 4
  %i.bes = getelementptr inbounds nuw i8, ptr %.23845550, i64 16
  %i.bet = load float, ptr %i.ber, align 4, !tbaa !27
  %i.beu = insertelement <8 x float> poison, float %i.bet, i64 0
  %i.bev = shufflevector <8 x float> %i.beu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bew = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bes)
  %i.bex = bitcast <16 x i8> %i.bew to <8 x half>
  %i.bey = fpext fast <8 x half> %i.bex to <8 x float>
  %i.bez = fmul fast <8 x float> %i.bev, %i.bey
  %i.bfa = fadd fast <8 x float> %i.bez, %i.beq   ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.23815551, i64 8
  %i.bfc = getelementptr inbounds nuw i8, ptr %.23845550, i64 32
  %i.bfd = add nuw nsw i32 %.23785552, 2          ; 2 uses
  %exitcond5804.not.1 = icmp eq i32 %i.bfd, %i.ayr
  br i1 %exitcond5804.not.1, label %._crit_edge5554, label %.lr.ph5553, !llvm.loop !54

._crit_edge5554:                                  ; preds = %.lr.ph5553.prol.loopexit, %.lr.ph5553, %.preheader5480
  %.3.lcssa = phi <8 x float> [ %.24623.lcssa, %.preheader5480 ], [ %.lcssa6062.unr, %.lr.ph5553.prol.loopexit ], [ %i.bfa, %.lr.ph5553 ]
  %i.bfe = fadd fast <8 x float> %.04613.lcssa, %.14620.lcssa
  %i.bff = fadd fast <8 x float> %i.bfe, %.14618.lcssa
  %i.bfg = fadd fast <8 x float> %i.bff, %.14616.lcssa
  %i.bfh = fadd fast <8 x float> %i.bfg, %.3.lcssa ; 10 uses
  %i.bfi = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.bfi, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466 [
    i32 1, label %bb.l
    i32 2, label %.noexc462
    i32 3, label %bb.m
    i32 4, label %.noexc463
    i32 5, label %.noexc464
    i32 6, label %.noexc465
  ]

bb.l:                                             ; preds = %._crit_edge5554
  %i.bfj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bfh, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

.noexc462:                                        ; preds = %._crit_edge5554
  %i.bfk = load ptr, ptr %12, align 8, !tbaa !17
  %i.bfl = load float, ptr %i.bfk, align 4, !tbaa !27
  %i.bfm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bfh)
  %i.bfn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bfh)
  %i.bfo = insertelement <8 x float> poison, float %i.bfl, i64 0
  %i.bfp = shufflevector <8 x float> %i.bfo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfq = fmul fast <8 x float> %i.bfp, %i.bfn
  %i.bfr = fadd fast <8 x float> %i.bfq, %i.bfm
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

bb.m:                                             ; preds = %._crit_edge5554
  %i.bfs = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !27
  %i.bfu = insertelement <8 x float> poison, float %i.bft, i64 0
  %i.bfv = shufflevector <8 x float> %i.bfu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %i.bfx = load float, ptr %i.bfw, align 4, !tbaa !27
  %i.bfy = insertelement <8 x float> poison, float %i.bfx, i64 0
  %i.bfz = shufflevector <8 x float> %i.bfy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bga = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bfh, <8 x float> nofpclass(nan inf) %i.bfv)
  %i.bgb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bga, <8 x float> nofpclass(nan inf) %i.bfz)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

.noexc463:                                        ; preds = %._crit_edge5554
  %i.bgc = fneg fast <8 x float> %i.bfh
  %i.bgd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bgc, <8 x float> splat (float f0x42B0C0A5))
  %i.bge = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bgd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bgf = fmul fast <8 x float> %i.bge, splat (float f0x3FB8AA3B)
  %i.bgg = fadd fast <8 x float> %i.bgf, splat (float 5.000000e-01) ; 2 uses
  %i.bgh = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bgg, i32 1) ; 2 uses
  %i.bgi = fcmp fast ogt <8 x float> %i.bgh, %i.bgg
  %i.bgj = select <8 x i1> %i.bgi, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bgk = fsub fast <8 x float> %i.bgh, %i.bgj   ; 2 uses
  %i.bgl = fmul fast <8 x float> %i.bgk, splat (float f0x3F317218)
  %i.bgm = fsub fast <8 x float> %i.bge, %i.bgl   ; 8 uses
  %i.bgn = fmul fast <8 x float> %i.bgm, %i.bgm
  %i.bgo = fmul fast <8 x float> %i.bgm, splat (float f0x39506967)
  %i.bgp = fadd fast <8 x float> %i.bgo, splat (float f0x3AB743CE)
  %i.bgq = fmul fast <8 x float> %i.bgp, %i.bgm
  %i.bgr = fadd fast <8 x float> %i.bgq, splat (float f0x3C088908)
  %i.bgs = fmul fast <8 x float> %i.bgr, %i.bgm
  %i.bgt = fadd fast <8 x float> %i.bgs, splat (float f0x3D2AA9C1)
  %i.bgu = fmul fast <8 x float> %i.bgt, %i.bgm
  %i.bgv = fadd fast <8 x float> %i.bgu, splat (float f0x3E2AAAAA)
  %i.bgw = fmul fast <8 x float> %i.bgv, %i.bgm
  %i.bgx = fadd fast <8 x float> %i.bgw, splat (float 5.000000e-01)
  %i.bgy = fmul fast <8 x float> %i.bgn, %i.bgx
  %i.bgz = fadd fast <8 x float> %i.bgm, splat (float 1.000000e+00)
  %i.bha = fadd fast <8 x float> %i.bgz, %i.bgy
  %i.bhb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bgk)
  %i.bhc = shl <8 x i32> %i.bhb, splat (i32 23)
  %i.bhd = add <8 x i32> %i.bhc, splat (i32 1065353216)
  %i.bhe = bitcast <8 x i32> %i.bhd to <8 x float>
  %i.bhf = fmul fast <8 x float> %i.bha, %i.bhe
  %i.bhg = fadd fast <8 x float> %i.bhf, splat (float 1.000000e+00)
  %i.bhh = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bhg
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

.noexc464:                                        ; preds = %._crit_edge5554
  %i.bhi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bfh, <8 x float> splat (float f0x42B0C0A5))
  %i.bhj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bhi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bhk = fmul fast <8 x float> %i.bhj, splat (float f0x3FB8AA3B)
  %i.bhl = fadd fast <8 x float> %i.bhk, splat (float 5.000000e-01) ; 2 uses
  %i.bhm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bhl, i32 1) ; 2 uses
  %i.bhn = fcmp fast ogt <8 x float> %i.bhm, %i.bhl
  %i.bho = select <8 x i1> %i.bhn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bhp = fsub fast <8 x float> %i.bhm, %i.bho   ; 2 uses
  %i.bhq = fmul fast <8 x float> %i.bhp, splat (float f0x3F317218)
  %i.bhr = fsub fast <8 x float> %i.bhj, %i.bhq   ; 8 uses
  %i.bhs = fmul fast <8 x float> %i.bhr, %i.bhr
  %i.bht = fmul fast <8 x float> %i.bhr, splat (float f0x39506967)
  %i.bhu = fadd fast <8 x float> %i.bht, splat (float f0x3AB743CE)
  %i.bhv = fmul fast <8 x float> %i.bhu, %i.bhr
  %i.bhw = fadd fast <8 x float> %i.bhv, splat (float f0x3C088908)
  %i.bhx = fmul fast <8 x float> %i.bhw, %i.bhr
  %i.bhy = fadd fast <8 x float> %i.bhx, splat (float f0x3D2AA9C1)
  %i.bhz = fmul fast <8 x float> %i.bhy, %i.bhr
  %i.bia = fadd fast <8 x float> %i.bhz, splat (float f0x3E2AAAAA)
  %i.bib = fmul fast <8 x float> %i.bia, %i.bhr
  %i.bic = fadd fast <8 x float> %i.bib, splat (float 5.000000e-01)
  %i.bid = fmul fast <8 x float> %i.bhs, %i.bic
  %i.bie = fadd fast <8 x float> %i.bhr, splat (float 1.000000e+00)
  %i.bif = fadd fast <8 x float> %i.bie, %i.bid
  %i.big = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bhp)
  %i.bih = shl <8 x i32> %i.big, splat (i32 23)
  %i.bii = add <8 x i32> %i.bih, splat (i32 1065353216)
  %i.bij = bitcast <8 x i32> %i.bii to <8 x float>
  %i.bik = fmul fast <8 x float> %i.bif, %i.bij
  %i.bil = fadd fast <8 x float> %i.bik, splat (float 1.000000e+00) ; 2 uses
  %i.bim = fcmp fast ole <8 x float> %i.bil, zeroinitializer
  %i.bin = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bil, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bio = bitcast <8 x float> %i.bin to <8 x i32>
  %i.bip = bitcast <8 x float> %i.bin to <8 x i32>
  %i.biq = and <8 x i32> %i.bip, splat (i32 -2139095041)
  %i.bir = or disjoint <8 x i32> %i.biq, splat (i32 1056964608)
  %i.bis = bitcast <8 x i32> %i.bir to <8 x float> ; 3 uses
  %i.bit = lshr <8 x i32> %i.bio, splat (i32 23)
  %i.biu = add nsw <8 x i32> %i.bit, splat (i32 -127)
  %i.biv = sitofp fast <8 x i32> %i.biu to <8 x float> ; 2 uses
  %i.biw = fadd fast <8 x float> %i.biv, splat (float 1.000000e+00)
  %i.bix = fcmp fast olt <8 x float> %i.bis, splat (float f0x3F3504F3) ; 2 uses
  %i.biy = select <8 x i1> %i.bix, <8 x float> %i.bis, <8 x float> zeroinitializer
  %i.biz = fadd fast <8 x float> %i.bis, splat (float -1.000000e+00)
  %i.bja = select fast <8 x i1> %i.bix, <8 x float> %i.biv, <8 x float> %i.biw
  %i.bjb = fadd fast <8 x float> %i.biz, %i.biy   ; 12 uses
  %i.bjc = fmul fast <8 x float> %i.bjb, %i.bjb
  %i.bjd = fmul fast <8 x float> %i.bjb, splat (float f0x3D9021BB)
  %i.bje = fadd fast <8 x float> %i.bjd, splat (float f0xBDEBD1B8)
  %i.bjf = fmul fast <8 x float> %i.bje, %i.bjb
  %i.bjg = fadd fast <8 x float> %i.bjf, splat (float f0x3DEF251A)
  %i.bjh = fmul fast <8 x float> %i.bjg, %i.bjb
  %i.bji = fadd fast <8 x float> %i.bjh, splat (float f0xBDFE5D4F)
  %i.bjj = fmul fast <8 x float> %i.bji, %i.bjb
  %i.bjk = fadd fast <8 x float> %i.bjj, splat (float f0x3E11E9BF)
  %i.bjl = fmul fast <8 x float> %i.bjk, %i.bjb
  %i.bjm = fadd fast <8 x float> %i.bjl, splat (float f0xBE2AAE50)
  %i.bjn = fmul fast <8 x float> %i.bjm, %i.bjb
  %i.bjo = fadd fast <8 x float> %i.bjn, splat (float f0x3E4CCEAC)
  %i.bjp = fmul fast <8 x float> %i.bjo, %i.bjb
  %i.bjq = fadd fast <8 x float> %i.bjp, splat (float f0xBE7FFFFC)
  %i.bjr = fmul fast <8 x float> %i.bjq, %i.bjb
  %i.bjs = fadd fast <8 x float> %i.bjr, splat (float f0x3EAAAAAA)
  %i.bjt = fmul fast <8 x float> %i.bjs, %i.bjb
  %reass.mul5431 = fmul fast <8 x float> %i.bja, splat (float f0x3F317218)
  %reass.add5432 = fadd fast <8 x float> %i.bjt, splat (float -5.000000e-01)
  %reass.mul5433 = fmul fast <8 x float> %i.bjc, %reass.add5432
  %i.bju = fadd fast <8 x float> %reass.mul5431, %i.bjb
  %i.bjv = fadd fast <8 x float> %i.bju, %reass.mul5433
  %.neg5353 = fmul fast <8 x float> %i.bjv, splat (float -2.000000e+00)
  %i.bjw = select fast <8 x i1> %i.bim, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5353
  %i.bjx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bjw, <8 x float> splat (float f0x42B0C0A5))
  %i.bjy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bjx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bjz = fmul fast <8 x float> %i.bjy, splat (float f0x3FB8AA3B)
  %i.bka = fadd fast <8 x float> %i.bjz, splat (float 5.000000e-01) ; 2 uses
  %i.bkb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bka, i32 1) ; 2 uses
  %i.bkc = fcmp fast ogt <8 x float> %i.bkb, %i.bka
  %i.bkd = select <8 x i1> %i.bkc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bke = fsub fast <8 x float> %i.bkb, %i.bkd   ; 2 uses
  %i.bkf = fmul fast <8 x float> %i.bke, splat (float f0x3F317218)
  %i.bkg = fsub fast <8 x float> %i.bjy, %i.bkf   ; 8 uses
  %i.bkh = fmul fast <8 x float> %i.bkg, %i.bkg
  %i.bki = fmul fast <8 x float> %i.bkg, splat (float f0x39506967)
  %i.bkj = fadd fast <8 x float> %i.bki, splat (float f0x3AB743CE)
  %i.bkk = fmul fast <8 x float> %i.bkj, %i.bkg
  %i.bkl = fadd fast <8 x float> %i.bkk, splat (float f0x3C088908)
  %i.bkm = fmul fast <8 x float> %i.bkl, %i.bkg
  %i.bkn = fadd fast <8 x float> %i.bkm, splat (float f0x3D2AA9C1)
  %i.bko = fmul fast <8 x float> %i.bkn, %i.bkg
  %i.bkp = fadd fast <8 x float> %i.bko, splat (float f0x3E2AAAAA)
  %i.bkq = fmul fast <8 x float> %i.bkp, %i.bkg
  %i.bkr = fadd fast <8 x float> %i.bkq, splat (float 5.000000e-01)
  %i.bks = fmul fast <8 x float> %i.bkh, %i.bkr
  %i.bkt = fadd fast <8 x float> %i.bkg, splat (float 1.000000e+00)
  %i.bku = fadd fast <8 x float> %i.bkt, %i.bks
  %i.bkv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bke)
  %i.bkw = shl <8 x i32> %i.bkv, splat (i32 23)
  %i.bkx = add <8 x i32> %i.bkw, splat (i32 1065353216)
  %i.bky = bitcast <8 x i32> %i.bkx to <8 x float>
  %i.bkz = fmul fast <8 x float> %i.bku, %i.bky
  %i.bla = fadd fast <8 x float> %i.bkz, splat (float 1.000000e+00)
  %i.blb = fdiv fast <8 x float> splat (float 2.000000e+00), %i.bla
  %i.blc = fadd fast <8 x float> %i.blb, splat (float -1.000000e+00)
  %i.bld = fmul fast <8 x float> %i.blc, %i.bfh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

.noexc465:                                        ; preds = %._crit_edge5554
  %i.ble = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.blf = load float, ptr %i.ble, align 4, !tbaa !27
  %i.blg = insertelement <8 x float> poison, float %i.blf, i64 0
  %i.blh = shufflevector <8 x float> %i.blg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ble, i64 4
  %i.blj = load float, ptr %i.bli, align 4, !tbaa !27
  %i.blk = insertelement <8 x float> poison, float %i.blj, i64 0
  %i.bll = shufflevector <8 x float> %i.blk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.blm = fmul fast <8 x float> %i.blh, %i.bfh
  %i.bln = fadd fast <8 x float> %i.blm, %i.bll
  %i.blo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bln, <8 x float> zeroinitializer)
  %i.blp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> splat (float 1.000000e+00))
  %i.blq = fmul fast <8 x float> %i.blp, %i.bfh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466:   ; preds = %.noexc465, %.noexc464, %.noexc463, %bb.m, %.noexc462, %bb.l, %._crit_edge5554
  %.0.i461 = phi nsz <8 x float> [ %i.blq, %.noexc465 ], [ %i.bfj, %bb.l ], [ %i.bfr, %.noexc462 ], [ %i.bgb, %bb.m ], [ %i.bhh, %.noexc463 ], [ %i.bld, %.noexc464 ], [ %i.bfh, %._crit_edge5554 ]
  store <8 x float> %.0.i461, ptr %.03865556, align 1, !tbaa !23
  %i.blr = getelementptr inbounds nuw i8, ptr %.03865556, i64 32
  %indvars.iv.next5806 = add nuw nsw i64 %indvars.iv5805, 1 ; 2 uses
  %i.bls = load i32, ptr %6, align 4, !tbaa !9
  %i.blt = load i32, ptr %4, align 4, !tbaa !9
  %i.blu = sdiv i32 %i.bls, %i.blt
  %i.blv = sext i32 %i.blu to i64
  %i.blw = icmp slt i64 %indvars.iv.next5806, %i.blv
  br i1 %i.blw, label %.lr.ph5559, label %.thread.loopexit, !llvm.loop !55

.thread.loopexit:                                 ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit466
  %.pr5322.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %thread-pre-split
  %.pr5322 = phi i32 [ %.pr5322.pre, %.thread.loopexit ], [ %i.axn, %thread-pre-split ] ; 2 uses
  %i.blx = icmp eq i32 %.pr5322, 4
  br i1 %i.blx, label %bb.n, label %thread-pre-split5127

bb.n:                                             ; preds = %.thread
  %i.bly = load i32, ptr %4, align 4, !tbaa !9    ; 2 uses
  %i.blz = icmp eq i32 %i.bly, 8
  br i1 %i.blz, label %bb.o, label %.thread5327

bb.o:                                             ; preds = %bb.n
  %i.bma = load i32, ptr %6, align 4, !tbaa !9
  %i.bmb = icmp sgt i32 %i.bma, 7
  br i1 %i.bmb, label %.lr.ph5577.preheader, label %thread-pre-split5328

.lr.ph5577.preheader:                             ; preds = %bb.o
  %i.bmc = load ptr, ptr %5, align 8, !tbaa !17
  %i.bmd = load i32, ptr %i.l, align 4, !tbaa !15
  %i.bme = sext i32 %i.bmd to i64
  %i.bmf = mul nsw i64 %indvars.iv5833, %i.bme
  %i.bmg = load i64, ptr %i.m, align 8, !tbaa !24
  %i.bmh = mul i64 %i.bmf, %i.bmg
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmc, i64 %i.bmh
  br label %.lr.ph5577

.lr.ph5577:                                       ; preds = %.lr.ph5577.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442
  %indvars.iv5809 = phi i64 [ 0, %.lr.ph5577.preheader ], [ %indvars.iv.next5810, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442 ] ; 3 uses
  %.03755574 = phi ptr [ %i.bmi, %.lr.ph5577.preheader ], [ %i.clp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442 ] ; 5 uses
  %i.bmj = load ptr, ptr %7, align 8, !tbaa !17
  %i.bmk = load i32, ptr %i.n, align 4, !tbaa !15
  %i.bml = sext i32 %i.bmk to i64
  %i.bmm = mul nsw i64 %indvars.iv5809, %i.bml
  %i.bmn = load i64, ptr %i.o, align 8, !tbaa !24
  %i.bmo = mul i64 %i.bmm, %i.bmn
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.bmo
  %i.bmq = load ptr, ptr %8, align 8, !tbaa !17
  %i.bmr = load i32, ptr %i.p, align 4, !tbaa !15
  %i.bms = sext i32 %i.bmr to i64
  %i.bmt = mul nsw i64 %indvars.iv5833, %i.bms
  %i.bmu = load i64, ptr %i.q, align 8, !tbaa !24
  %i.bmv = mul i64 %i.bmt, %i.bmu
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmq, i64 %i.bmv
  %i.bmx = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not407 = icmp eq ptr %i.bmx, null
  br i1 %.not407, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph5577
  %.idx5881 = shl nuw nsw i64 %indvars.iv5809, 5
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 %.idx5881
  %i.bmz = load <8 x float>, ptr %i.bmy, align 1, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph5577
  %.04609 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5577 ], [ %i.bmz, %bb.p ] ; 8 uses
  %i.bna = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.bnb = icmp sgt i32 %i.bna, 0
  br i1 %i.bnb, label %.lr.ph5568, label %._crit_edge5569

.lr.ph5568:                                       ; preds = %bb.q, %.lr.ph5568
  %.03715566 = phi i32 [ %i.boe, %.lr.ph5568 ], [ 0, %bb.q ]
  %.03725565 = phi ptr [ %i.boc, %.lr.ph5568 ], [ %i.bmw, %bb.q ] ; 5 uses
  %.03735564 = phi ptr [ %i.bod, %.lr.ph5568 ], [ %i.bmp, %bb.q ] ; 2 uses
  %.046065563 = phi <8 x float> [ %i.bob, %.lr.ph5568 ], [ %.04609, %bb.q ]
  %.046075562 = phi <8 x float> [ %i.bnz, %.lr.ph5568 ], [ %.04609, %bb.q ]
  %.046085561 = phi <8 x float> [ %i.bnx, %.lr.ph5568 ], [ %.04609, %bb.q ]
  %.146105560 = phi <8 x float> [ %i.bnv, %.lr.ph5568 ], [ %.04609, %bb.q ]
  %i.bnc = load float, ptr %.03725565, align 1, !tbaa !23
  %i.bnd = insertelement <8 x float> poison, float %i.bnc, i64 0
  %i.bne = shufflevector <8 x float> %i.bnd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnf = getelementptr inbounds nuw i8, ptr %.03725565, i64 4
  %i.bng = load float, ptr %i.bnf, align 1, !tbaa !23
  %i.bnh = insertelement <8 x float> poison, float %i.bng, i64 0
  %i.bni = shufflevector <8 x float> %i.bnh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnj = getelementptr inbounds nuw i8, ptr %.03725565, i64 8
  %i.bnk = load float, ptr %i.bnj, align 1, !tbaa !23
  %i.bnl = insertelement <8 x float> poison, float %i.bnk, i64 0
  %i.bnm = shufflevector <8 x float> %i.bnl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnn = getelementptr inbounds nuw i8, ptr %.03725565, i64 12
  %i.bno = load float, ptr %i.bnn, align 1, !tbaa !23
  %i.bnp = insertelement <8 x float> poison, float %i.bno, i64 0
  %i.bnq = shufflevector <8 x float> %i.bnp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnr = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03735564)
  %i.bns = bitcast <16 x i8> %i.bnr to <8 x half>
  %i.bnt = fpext fast <8 x half> %i.bns to <8 x float> ; 4 uses
  %i.bnu = fmul fast <8 x float> %i.bne, %i.bnt
  %i.bnv = fadd fast <8 x float> %i.bnu, %.146105560 ; 2 uses
  %i.bnw = fmul fast <8 x float> %i.bni, %i.bnt
  %i.bnx = fadd fast <8 x float> %i.bnw, %.046085561 ; 2 uses
  %i.bny = fmul fast <8 x float> %i.bnm, %i.bnt
  %i.bnz = fadd fast <8 x float> %i.bny, %.046075562 ; 2 uses
  %i.boa = fmul fast <8 x float> %i.bnq, %i.bnt
  %i.bob = fadd fast <8 x float> %i.boa, %.046065563 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %.03725565, i64 16
  %i.bod = getelementptr inbounds nuw i8, ptr %.03735564, i64 16
  %i.boe = add nuw nsw i32 %.03715566, 1          ; 2 uses
  %exitcond5808.not = icmp eq i32 %i.boe, %i.bna
  br i1 %exitcond5808.not, label %._crit_edge5569, label %.lr.ph5568, !llvm.loop !56

._crit_edge5569:                                  ; preds = %.lr.ph5568, %bb.q
  %.14610.lcssa = phi <8 x float> [ %.04609, %bb.q ], [ %i.bnv, %.lr.ph5568 ] ; 10 uses
  %.04608.lcssa = phi <8 x float> [ %.04609, %bb.q ], [ %i.bnx, %.lr.ph5568 ] ; 10 uses
  %.04607.lcssa = phi <8 x float> [ %.04609, %bb.q ], [ %i.bnz, %.lr.ph5568 ] ; 10 uses
  %.04606.lcssa = phi <8 x float> [ %.04609, %bb.q ], [ %i.bob, %.lr.ph5568 ] ; 10 uses
  %i.bof = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.bof, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread: ; preds = %._crit_edge5569
  %i.bog = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14610.lcssa, <8 x float> zeroinitializer)
  %i.boh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04608.lcssa, <8 x float> zeroinitializer)
  %i.boi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04607.lcssa, <8 x float> zeroinitializer)
  %i.boj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04606.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037: ; preds = %._crit_edge5569
  %i.bok = load ptr, ptr %12, align 8, !tbaa !17
  %i.bol = load float, ptr %i.bok, align 4, !tbaa !27
  %i.bom = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14610.lcssa)
  %i.bon = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14610.lcssa)
  %i.boo = insertelement <8 x float> poison, float %i.bol, i64 0
  %i.bop = shufflevector <8 x float> %i.boo, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.boq = fmul fast <8 x float> %i.bop, %i.bon
  %i.bor = fadd fast <8 x float> %i.boq, %i.bom
  %i.bos = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04608.lcssa)
  %i.bot = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04608.lcssa)
  %i.bou = fmul fast <8 x float> %i.bop, %i.bot
  %i.bov = fadd fast <8 x float> %i.bou, %i.bos
  %i.bow = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04607.lcssa)
  %i.box = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04607.lcssa)
  %i.boy = fmul fast <8 x float> %i.bop, %i.box
  %i.boz = fadd fast <8 x float> %i.boy, %i.bow
  %i.bpa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04606.lcssa)
  %i.bpb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.04606.lcssa)
  %i.bpc = fmul fast <8 x float> %i.bop, %i.bpb
  %i.bpd = fadd fast <8 x float> %i.bpc, %i.bpa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040: ; preds = %._crit_edge5569
  %i.bpe = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !27
  %i.bpg = insertelement <8 x float> poison, float %i.bpf, i64 0
  %i.bph = shufflevector <8 x float> %i.bpg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpe, i64 4
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !27
  %i.bpk = insertelement <8 x float> poison, float %i.bpj, i64 0
  %i.bpl = shufflevector <8 x float> %i.bpk, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bpm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14610.lcssa, <8 x float> nofpclass(nan inf) %i.bph)
  %i.bpn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bpm, <8 x float> nofpclass(nan inf) %i.bpl)
  %i.bpo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04608.lcssa, <8 x float> nofpclass(nan inf) %i.bph)
  %i.bpp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bpo, <8 x float> nofpclass(nan inf) %i.bpl)
  %i.bpq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04607.lcssa, <8 x float> nofpclass(nan inf) %i.bph)
  %i.bpr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bpq, <8 x float> nofpclass(nan inf) %i.bpl)
  %i.bps = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04606.lcssa, <8 x float> nofpclass(nan inf) %i.bph)
  %i.bpt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bps, <8 x float> nofpclass(nan inf) %i.bpl)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043: ; preds = %._crit_edge5569
  %i.bpu = fneg fast <8 x float> %.14610.lcssa
  %i.bpv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bpu, <8 x float> splat (float f0x42B0C0A5))
  %i.bpw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bpv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bpx = fmul fast <8 x float> %i.bpw, splat (float f0x3FB8AA3B)
  %i.bpy = fadd fast <8 x float> %i.bpx, splat (float 5.000000e-01) ; 2 uses
  %i.bpz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bpy, i32 1) ; 2 uses
  %i.bqa = fcmp fast ogt <8 x float> %i.bpz, %i.bpy
  %i.bqb = select <8 x i1> %i.bqa, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bqc = fsub fast <8 x float> %i.bpz, %i.bqb   ; 2 uses
  %i.bqd = fmul fast <8 x float> %i.bqc, splat (float f0x3F317218)
  %i.bqe = fsub fast <8 x float> %i.bpw, %i.bqd   ; 8 uses
  %i.bqf = fmul fast <8 x float> %i.bqe, %i.bqe
  %i.bqg = fmul fast <8 x float> %i.bqe, splat (float f0x39506967)
  %i.bqh = fadd fast <8 x float> %i.bqg, splat (float f0x3AB743CE)
  %i.bqi = fmul fast <8 x float> %i.bqh, %i.bqe
  %i.bqj = fadd fast <8 x float> %i.bqi, splat (float f0x3C088908)
  %i.bqk = fmul fast <8 x float> %i.bqj, %i.bqe
  %i.bql = fadd fast <8 x float> %i.bqk, splat (float f0x3D2AA9C1)
  %i.bqm = fmul fast <8 x float> %i.bql, %i.bqe
  %i.bqn = fadd fast <8 x float> %i.bqm, splat (float f0x3E2AAAAA)
  %i.bqo = fmul fast <8 x float> %i.bqn, %i.bqe
  %i.bqp = fadd fast <8 x float> %i.bqo, splat (float 5.000000e-01)
  %i.bqq = fmul fast <8 x float> %i.bqf, %i.bqp
  %i.bqr = fadd fast <8 x float> %i.bqe, splat (float 1.000000e+00)
  %i.bqs = fadd fast <8 x float> %i.bqr, %i.bqq
  %i.bqt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bqc)
  %i.bqu = shl <8 x i32> %i.bqt, splat (i32 23)
  %i.bqv = add <8 x i32> %i.bqu, splat (i32 1065353216)
  %i.bqw = bitcast <8 x i32> %i.bqv to <8 x float>
  %i.bqx = fmul fast <8 x float> %i.bqs, %i.bqw
  %i.bqy = fadd fast <8 x float> %i.bqx, splat (float 1.000000e+00)
  %i.bqz = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bqy
  %i.bra = fneg fast <8 x float> %.04608.lcssa
  %i.brb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bra, <8 x float> splat (float f0x42B0C0A5))
  %i.brc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.brb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.brd = fmul fast <8 x float> %i.brc, splat (float f0x3FB8AA3B)
  %i.bre = fadd fast <8 x float> %i.brd, splat (float 5.000000e-01) ; 2 uses
  %i.brf = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bre, i32 1) ; 2 uses
  %i.brg = fcmp fast ogt <8 x float> %i.brf, %i.bre
  %i.brh = select <8 x i1> %i.brg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bri = fsub fast <8 x float> %i.brf, %i.brh   ; 2 uses
  %i.brj = fmul fast <8 x float> %i.bri, splat (float f0x3F317218)
  %i.brk = fsub fast <8 x float> %i.brc, %i.brj   ; 8 uses
  %i.brl = fmul fast <8 x float> %i.brk, %i.brk
  %i.brm = fmul fast <8 x float> %i.brk, splat (float f0x39506967)
  %i.brn = fadd fast <8 x float> %i.brm, splat (float f0x3AB743CE)
  %i.bro = fmul fast <8 x float> %i.brn, %i.brk
  %i.brp = fadd fast <8 x float> %i.bro, splat (float f0x3C088908)
  %i.brq = fmul fast <8 x float> %i.brp, %i.brk
  %i.brr = fadd fast <8 x float> %i.brq, splat (float f0x3D2AA9C1)
  %i.brs = fmul fast <8 x float> %i.brr, %i.brk
  %i.brt = fadd fast <8 x float> %i.brs, splat (float f0x3E2AAAAA)
  %i.bru = fmul fast <8 x float> %i.brt, %i.brk
  %i.brv = fadd fast <8 x float> %i.bru, splat (float 5.000000e-01)
  %i.brw = fmul fast <8 x float> %i.brl, %i.brv
  %i.brx = fadd fast <8 x float> %i.brk, splat (float 1.000000e+00)
  %i.bry = fadd fast <8 x float> %i.brx, %i.brw
  %i.brz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bri)
  %i.bsa = shl <8 x i32> %i.brz, splat (i32 23)
  %i.bsb = add <8 x i32> %i.bsa, splat (i32 1065353216)
  %i.bsc = bitcast <8 x i32> %i.bsb to <8 x float>
  %i.bsd = fmul fast <8 x float> %i.bry, %i.bsc
  %i.bse = fadd fast <8 x float> %i.bsd, splat (float 1.000000e+00)
  %i.bsf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bse
  %i.bsg = fneg fast <8 x float> %.04607.lcssa
  %i.bsh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bsg, <8 x float> splat (float f0x42B0C0A5))
  %i.bsi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bsh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bsj = fmul fast <8 x float> %i.bsi, splat (float f0x3FB8AA3B)
  %i.bsk = fadd fast <8 x float> %i.bsj, splat (float 5.000000e-01) ; 2 uses
  %i.bsl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bsk, i32 1) ; 2 uses
  %i.bsm = fcmp fast ogt <8 x float> %i.bsl, %i.bsk
  %i.bsn = select <8 x i1> %i.bsm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bso = fsub fast <8 x float> %i.bsl, %i.bsn   ; 2 uses
  %i.bsp = fmul fast <8 x float> %i.bso, splat (float f0x3F317218)
  %i.bsq = fsub fast <8 x float> %i.bsi, %i.bsp   ; 8 uses
  %i.bsr = fmul fast <8 x float> %i.bsq, %i.bsq
  %i.bss = fmul fast <8 x float> %i.bsq, splat (float f0x39506967)
  %i.bst = fadd fast <8 x float> %i.bss, splat (float f0x3AB743CE)
  %i.bsu = fmul fast <8 x float> %i.bst, %i.bsq
  %i.bsv = fadd fast <8 x float> %i.bsu, splat (float f0x3C088908)
  %i.bsw = fmul fast <8 x float> %i.bsv, %i.bsq
  %i.bsx = fadd fast <8 x float> %i.bsw, splat (float f0x3D2AA9C1)
  %i.bsy = fmul fast <8 x float> %i.bsx, %i.bsq
  %i.bsz = fadd fast <8 x float> %i.bsy, splat (float f0x3E2AAAAA)
  %i.bta = fmul fast <8 x float> %i.bsz, %i.bsq
  %i.btb = fadd fast <8 x float> %i.bta, splat (float 5.000000e-01)
  %i.btc = fmul fast <8 x float> %i.bsr, %i.btb
  %i.btd = fadd fast <8 x float> %i.bsq, splat (float 1.000000e+00)
  %i.bte = fadd fast <8 x float> %i.btd, %i.btc
  %i.btf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bso)
  %i.btg = shl <8 x i32> %i.btf, splat (i32 23)
  %i.bth = add <8 x i32> %i.btg, splat (i32 1065353216)
  %i.bti = bitcast <8 x i32> %i.bth to <8 x float>
  %i.btj = fmul fast <8 x float> %i.bte, %i.bti
  %i.btk = fadd fast <8 x float> %i.btj, splat (float 1.000000e+00)
  %i.btl = fdiv fast <8 x float> splat (float 1.000000e+00), %i.btk
  %i.btm = fneg fast <8 x float> %.04606.lcssa
  %i.btn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.btm, <8 x float> splat (float f0x42B0C0A5))
  %i.bto = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.btn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.btp = fmul fast <8 x float> %i.bto, splat (float f0x3FB8AA3B)
  %i.btq = fadd fast <8 x float> %i.btp, splat (float 5.000000e-01) ; 2 uses
  %i.btr = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.btq, i32 1) ; 2 uses
  %i.bts = fcmp fast ogt <8 x float> %i.btr, %i.btq
  %i.btt = select <8 x i1> %i.bts, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.btu = fsub fast <8 x float> %i.btr, %i.btt   ; 2 uses
  %i.btv = fmul fast <8 x float> %i.btu, splat (float f0x3F317218)
  %i.btw = fsub fast <8 x float> %i.bto, %i.btv   ; 8 uses
  %i.btx = fmul fast <8 x float> %i.btw, %i.btw
  %i.bty = fmul fast <8 x float> %i.btw, splat (float f0x39506967)
  %i.btz = fadd fast <8 x float> %i.bty, splat (float f0x3AB743CE)
  %i.bua = fmul fast <8 x float> %i.btz, %i.btw
  %i.bub = fadd fast <8 x float> %i.bua, splat (float f0x3C088908)
  %i.buc = fmul fast <8 x float> %i.bub, %i.btw
  %i.bud = fadd fast <8 x float> %i.buc, splat (float f0x3D2AA9C1)
  %i.bue = fmul fast <8 x float> %i.bud, %i.btw
  %i.buf = fadd fast <8 x float> %i.bue, splat (float f0x3E2AAAAA)
  %i.bug = fmul fast <8 x float> %i.buf, %i.btw
  %i.buh = fadd fast <8 x float> %i.bug, splat (float 5.000000e-01)
  %i.bui = fmul fast <8 x float> %i.btx, %i.buh
  %i.buj = fadd fast <8 x float> %i.btw, splat (float 1.000000e+00)
  %i.buk = fadd fast <8 x float> %i.buj, %i.bui
  %i.bul = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.btu)
  %i.bum = shl <8 x i32> %i.bul, splat (i32 23)
  %i.bun = add <8 x i32> %i.bum, splat (i32 1065353216)
  %i.buo = bitcast <8 x i32> %i.bun to <8 x float>
  %i.bup = fmul fast <8 x float> %i.buk, %i.buo
  %i.buq = fadd fast <8 x float> %i.bup, splat (float 1.000000e+00)
  %i.bur = fdiv fast <8 x float> splat (float 1.000000e+00), %i.buq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046: ; preds = %._crit_edge5569
  %i.bus = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14610.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.but = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bus, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.buu = fmul fast <8 x float> %i.but, splat (float f0x3FB8AA3B)
  %i.buv = fadd fast <8 x float> %i.buu, splat (float 5.000000e-01) ; 2 uses
  %i.buw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.buv, i32 1) ; 2 uses
  %i.bux = fcmp fast ogt <8 x float> %i.buw, %i.buv
  %i.buy = select <8 x i1> %i.bux, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.buz = fsub fast <8 x float> %i.buw, %i.buy   ; 2 uses
  %i.bva = fmul fast <8 x float> %i.buz, splat (float f0x3F317218)
  %i.bvb = fsub fast <8 x float> %i.but, %i.bva   ; 8 uses
  %i.bvc = fmul fast <8 x float> %i.bvb, %i.bvb
  %i.bvd = fmul fast <8 x float> %i.bvb, splat (float f0x39506967)
  %i.bve = fadd fast <8 x float> %i.bvd, splat (float f0x3AB743CE)
  %i.bvf = fmul fast <8 x float> %i.bve, %i.bvb
  %i.bvg = fadd fast <8 x float> %i.bvf, splat (float f0x3C088908)
  %i.bvh = fmul fast <8 x float> %i.bvg, %i.bvb
  %i.bvi = fadd fast <8 x float> %i.bvh, splat (float f0x3D2AA9C1)
  %i.bvj = fmul fast <8 x float> %i.bvi, %i.bvb
  %i.bvk = fadd fast <8 x float> %i.bvj, splat (float f0x3E2AAAAA)
  %i.bvl = fmul fast <8 x float> %i.bvk, %i.bvb
  %i.bvm = fadd fast <8 x float> %i.bvl, splat (float 5.000000e-01)
  %i.bvn = fmul fast <8 x float> %i.bvc, %i.bvm
  %i.bvo = fadd fast <8 x float> %i.bvb, splat (float 1.000000e+00)
  %i.bvp = fadd fast <8 x float> %i.bvo, %i.bvn
  %i.bvq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.buz)
  %i.bvr = shl <8 x i32> %i.bvq, splat (i32 23)
  %i.bvs = add <8 x i32> %i.bvr, splat (i32 1065353216)
  %i.bvt = bitcast <8 x i32> %i.bvs to <8 x float>
  %i.bvu = fmul fast <8 x float> %i.bvp, %i.bvt
  %i.bvv = fadd fast <8 x float> %i.bvu, splat (float 1.000000e+00) ; 2 uses
  %i.bvw = fcmp fast ole <8 x float> %i.bvv, zeroinitializer
  %i.bvx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bvv, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bvy = bitcast <8 x float> %i.bvx to <8 x i32>
  %i.bvz = bitcast <8 x float> %i.bvx to <8 x i32>
  %i.bwa = and <8 x i32> %i.bvz, splat (i32 -2139095041)
  %i.bwb = or disjoint <8 x i32> %i.bwa, splat (i32 1056964608)
  %i.bwc = bitcast <8 x i32> %i.bwb to <8 x float> ; 3 uses
  %i.bwd = lshr <8 x i32> %i.bvy, splat (i32 23)
  %i.bwe = add nsw <8 x i32> %i.bwd, splat (i32 -127)
  %i.bwf = sitofp fast <8 x i32> %i.bwe to <8 x float> ; 2 uses
  %i.bwg = fadd fast <8 x float> %i.bwf, splat (float 1.000000e+00)
  %i.bwh = fcmp fast olt <8 x float> %i.bwc, splat (float f0x3F3504F3) ; 2 uses
  %i.bwi = select <8 x i1> %i.bwh, <8 x float> %i.bwc, <8 x float> zeroinitializer
  %i.bwj = fadd fast <8 x float> %i.bwc, splat (float -1.000000e+00)
  %i.bwk = select fast <8 x i1> %i.bwh, <8 x float> %i.bwf, <8 x float> %i.bwg
  %i.bwl = fadd fast <8 x float> %i.bwj, %i.bwi   ; 12 uses
  %i.bwm = fmul fast <8 x float> %i.bwl, %i.bwl
  %i.bwn = fmul fast <8 x float> %i.bwl, splat (float f0x3D9021BB)
  %i.bwo = fadd fast <8 x float> %i.bwn, splat (float f0xBDEBD1B8)
  %i.bwp = fmul fast <8 x float> %i.bwo, %i.bwl
  %i.bwq = fadd fast <8 x float> %i.bwp, splat (float f0x3DEF251A)
  %i.bwr = fmul fast <8 x float> %i.bwq, %i.bwl
  %i.bws = fadd fast <8 x float> %i.bwr, splat (float f0xBDFE5D4F)
  %i.bwt = fmul fast <8 x float> %i.bws, %i.bwl
  %i.bwu = fadd fast <8 x float> %i.bwt, splat (float f0x3E11E9BF)
  %i.bwv = fmul fast <8 x float> %i.bwu, %i.bwl
  %i.bww = fadd fast <8 x float> %i.bwv, splat (float f0xBE2AAE50)
  %i.bwx = fmul fast <8 x float> %i.bww, %i.bwl
  %i.bwy = fadd fast <8 x float> %i.bwx, splat (float f0x3E4CCEAC)
  %i.bwz = fmul fast <8 x float> %i.bwy, %i.bwl
  %i.bxa = fadd fast <8 x float> %i.bwz, splat (float f0xBE7FFFFC)
  %i.bxb = fmul fast <8 x float> %i.bxa, %i.bwl
  %i.bxc = fadd fast <8 x float> %i.bxb, splat (float f0x3EAAAAAA)
  %i.bxd = fmul fast <8 x float> %i.bxc, %i.bwl
  %reass.mul5412 = fmul fast <8 x float> %i.bwk, splat (float f0x3F317218)
  %reass.add5422 = fadd fast <8 x float> %i.bxd, splat (float -5.000000e-01)
  %reass.mul5423 = fmul fast <8 x float> %i.bwm, %reass.add5422
  %i.bxe = fadd fast <8 x float> %reass.mul5412, %i.bwl
  %i.bxf = fadd fast <8 x float> %i.bxe, %reass.mul5423
  %.neg5349 = fmul fast <8 x float> %i.bxf, splat (float -2.000000e+00)
  %i.bxg = select fast <8 x i1> %i.bvw, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5349
  %i.bxh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bxg, <8 x float> splat (float f0x42B0C0A5))
  %i.bxi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bxh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bxj = fmul fast <8 x float> %i.bxi, splat (float f0x3FB8AA3B)
  %i.bxk = fadd fast <8 x float> %i.bxj, splat (float 5.000000e-01) ; 2 uses
  %i.bxl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bxk, i32 1) ; 2 uses
  %i.bxm = fcmp fast ogt <8 x float> %i.bxl, %i.bxk
  %i.bxn = select <8 x i1> %i.bxm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bxo = fsub fast <8 x float> %i.bxl, %i.bxn   ; 2 uses
  %i.bxp = fmul fast <8 x float> %i.bxo, splat (float f0x3F317218)
  %i.bxq = fsub fast <8 x float> %i.bxi, %i.bxp   ; 8 uses
  %i.bxr = fmul fast <8 x float> %i.bxq, %i.bxq
  %i.bxs = fmul fast <8 x float> %i.bxq, splat (float f0x39506967)
  %i.bxt = fadd fast <8 x float> %i.bxs, splat (float f0x3AB743CE)
  %i.bxu = fmul fast <8 x float> %i.bxt, %i.bxq
  %i.bxv = fadd fast <8 x float> %i.bxu, splat (float f0x3C088908)
  %i.bxw = fmul fast <8 x float> %i.bxv, %i.bxq
  %i.bxx = fadd fast <8 x float> %i.bxw, splat (float f0x3D2AA9C1)
  %i.bxy = fmul fast <8 x float> %i.bxx, %i.bxq
  %i.bxz = fadd fast <8 x float> %i.bxy, splat (float f0x3E2AAAAA)
  %i.bya = fmul fast <8 x float> %i.bxz, %i.bxq
  %i.byb = fadd fast <8 x float> %i.bya, splat (float 5.000000e-01)
  %i.byc = fmul fast <8 x float> %i.bxr, %i.byb
  %i.byd = fadd fast <8 x float> %i.bxq, splat (float 1.000000e+00)
  %i.bye = fadd fast <8 x float> %i.byd, %i.byc
  %i.byf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bxo)
  %i.byg = shl <8 x i32> %i.byf, splat (i32 23)
  %i.byh = add <8 x i32> %i.byg, splat (i32 1065353216)
  %i.byi = bitcast <8 x i32> %i.byh to <8 x float>
  %i.byj = fmul fast <8 x float> %i.bye, %i.byi
  %i.byk = fadd fast <8 x float> %i.byj, splat (float 1.000000e+00)
  %i.byl = fdiv fast <8 x float> splat (float 2.000000e+00), %i.byk
  %i.bym = fadd fast <8 x float> %i.byl, splat (float -1.000000e+00)
  %i.byn = fmul fast <8 x float> %i.bym, %.14610.lcssa
  %i.byo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04608.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.byp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.byo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.byq = fmul fast <8 x float> %i.byp, splat (float f0x3FB8AA3B)
  %i.byr = fadd fast <8 x float> %i.byq, splat (float 5.000000e-01) ; 2 uses
  %i.bys = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.byr, i32 1) ; 2 uses
  %i.byt = fcmp fast ogt <8 x float> %i.bys, %i.byr
  %i.byu = select <8 x i1> %i.byt, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.byv = fsub fast <8 x float> %i.bys, %i.byu   ; 2 uses
  %i.byw = fmul fast <8 x float> %i.byv, splat (float f0x3F317218)
  %i.byx = fsub fast <8 x float> %i.byp, %i.byw   ; 8 uses
  %i.byy = fmul fast <8 x float> %i.byx, %i.byx
  %i.byz = fmul fast <8 x float> %i.byx, splat (float f0x39506967)
  %i.bza = fadd fast <8 x float> %i.byz, splat (float f0x3AB743CE)
  %i.bzb = fmul fast <8 x float> %i.bza, %i.byx
  %i.bzc = fadd fast <8 x float> %i.bzb, splat (float f0x3C088908)
  %i.bzd = fmul fast <8 x float> %i.bzc, %i.byx
  %i.bze = fadd fast <8 x float> %i.bzd, splat (float f0x3D2AA9C1)
  %i.bzf = fmul fast <8 x float> %i.bze, %i.byx
  %i.bzg = fadd fast <8 x float> %i.bzf, splat (float f0x3E2AAAAA)
  %i.bzh = fmul fast <8 x float> %i.bzg, %i.byx
  %i.bzi = fadd fast <8 x float> %i.bzh, splat (float 5.000000e-01)
  %i.bzj = fmul fast <8 x float> %i.byy, %i.bzi
  %i.bzk = fadd fast <8 x float> %i.byx, splat (float 1.000000e+00)
  %i.bzl = fadd fast <8 x float> %i.bzk, %i.bzj
  %i.bzm = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.byv)
  %i.bzn = shl <8 x i32> %i.bzm, splat (i32 23)
  %i.bzo = add <8 x i32> %i.bzn, splat (i32 1065353216)
  %i.bzp = bitcast <8 x i32> %i.bzo to <8 x float>
  %i.bzq = fmul fast <8 x float> %i.bzl, %i.bzp
  %i.bzr = fadd fast <8 x float> %i.bzq, splat (float 1.000000e+00) ; 2 uses
  %i.bzs = fcmp fast ole <8 x float> %i.bzr, zeroinitializer
  %i.bzt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bzr, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bzu = bitcast <8 x float> %i.bzt to <8 x i32>
  %i.bzv = bitcast <8 x float> %i.bzt to <8 x i32>
  %i.bzw = and <8 x i32> %i.bzv, splat (i32 -2139095041)
  %i.bzx = or disjoint <8 x i32> %i.bzw, splat (i32 1056964608)
  %i.bzy = bitcast <8 x i32> %i.bzx to <8 x float> ; 3 uses
  %i.bzz = lshr <8 x i32> %i.bzu, splat (i32 23)
  %i.caa = add nsw <8 x i32> %i.bzz, splat (i32 -127)
  %i.cab = sitofp fast <8 x i32> %i.caa to <8 x float> ; 2 uses
  %i.cac = fadd fast <8 x float> %i.cab, splat (float 1.000000e+00)
  %i.cad = fcmp fast olt <8 x float> %i.bzy, splat (float f0x3F3504F3) ; 2 uses
  %i.cae = select <8 x i1> %i.cad, <8 x float> %i.bzy, <8 x float> zeroinitializer
  %i.caf = fadd fast <8 x float> %i.bzy, splat (float -1.000000e+00)
  %i.cag = select fast <8 x i1> %i.cad, <8 x float> %i.cab, <8 x float> %i.cac
  %i.cah = fadd fast <8 x float> %i.caf, %i.cae   ; 12 uses
  %i.cai = fmul fast <8 x float> %i.cah, %i.cah
  %i.caj = fmul fast <8 x float> %i.cah, splat (float f0x3D9021BB)
  %i.cak = fadd fast <8 x float> %i.caj, splat (float f0xBDEBD1B8)
  %i.cal = fmul fast <8 x float> %i.cak, %i.cah
  %i.cam = fadd fast <8 x float> %i.cal, splat (float f0x3DEF251A)
  %i.can = fmul fast <8 x float> %i.cam, %i.cah
  %i.cao = fadd fast <8 x float> %i.can, splat (float f0xBDFE5D4F)
  %i.cap = fmul fast <8 x float> %i.cao, %i.cah
  %i.caq = fadd fast <8 x float> %i.cap, splat (float f0x3E11E9BF)
  %i.car = fmul fast <8 x float> %i.caq, %i.cah
  %i.cas = fadd fast <8 x float> %i.car, splat (float f0xBE2AAE50)
  %i.cat = fmul fast <8 x float> %i.cas, %i.cah
  %i.cau = fadd fast <8 x float> %i.cat, splat (float f0x3E4CCEAC)
  %i.cav = fmul fast <8 x float> %i.cau, %i.cah
  %i.caw = fadd fast <8 x float> %i.cav, splat (float f0xBE7FFFFC)
  %i.cax = fmul fast <8 x float> %i.caw, %i.cah
  %i.cay = fadd fast <8 x float> %i.cax, splat (float f0x3EAAAAAA)
  %i.caz = fmul fast <8 x float> %i.cay, %i.cah
  %reass.mul5415 = fmul fast <8 x float> %i.cag, splat (float f0x3F317218)
  %reass.add5424 = fadd fast <8 x float> %i.caz, splat (float -5.000000e-01)
  %reass.mul5425 = fmul fast <8 x float> %i.cai, %reass.add5424
  %i.cba = fadd fast <8 x float> %reass.mul5415, %i.cah
  %i.cbb = fadd fast <8 x float> %i.cba, %reass.mul5425
  %.neg5350 = fmul fast <8 x float> %i.cbb, splat (float -2.000000e+00)
  %i.cbc = select fast <8 x i1> %i.bzs, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5350
  %i.cbd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cbc, <8 x float> splat (float f0x42B0C0A5))
  %i.cbe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cbd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cbf = fmul fast <8 x float> %i.cbe, splat (float f0x3FB8AA3B)
  %i.cbg = fadd fast <8 x float> %i.cbf, splat (float 5.000000e-01) ; 2 uses
  %i.cbh = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cbg, i32 1) ; 2 uses
  %i.cbi = fcmp fast ogt <8 x float> %i.cbh, %i.cbg
  %i.cbj = select <8 x i1> %i.cbi, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cbk = fsub fast <8 x float> %i.cbh, %i.cbj   ; 2 uses
  %i.cbl = fmul fast <8 x float> %i.cbk, splat (float f0x3F317218)
  %i.cbm = fsub fast <8 x float> %i.cbe, %i.cbl   ; 8 uses
  %i.cbn = fmul fast <8 x float> %i.cbm, %i.cbm
  %i.cbo = fmul fast <8 x float> %i.cbm, splat (float f0x39506967)
  %i.cbp = fadd fast <8 x float> %i.cbo, splat (float f0x3AB743CE)
  %i.cbq = fmul fast <8 x float> %i.cbp, %i.cbm
  %i.cbr = fadd fast <8 x float> %i.cbq, splat (float f0x3C088908)
  %i.cbs = fmul fast <8 x float> %i.cbr, %i.cbm
  %i.cbt = fadd fast <8 x float> %i.cbs, splat (float f0x3D2AA9C1)
  %i.cbu = fmul fast <8 x float> %i.cbt, %i.cbm
  %i.cbv = fadd fast <8 x float> %i.cbu, splat (float f0x3E2AAAAA)
  %i.cbw = fmul fast <8 x float> %i.cbv, %i.cbm
  %i.cbx = fadd fast <8 x float> %i.cbw, splat (float 5.000000e-01)
  %i.cby = fmul fast <8 x float> %i.cbn, %i.cbx
  %i.cbz = fadd fast <8 x float> %i.cbm, splat (float 1.000000e+00)
  %i.cca = fadd fast <8 x float> %i.cbz, %i.cby
  %i.ccb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cbk)
  %i.ccc = shl <8 x i32> %i.ccb, splat (i32 23)
  %i.ccd = add <8 x i32> %i.ccc, splat (i32 1065353216)
  %i.cce = bitcast <8 x i32> %i.ccd to <8 x float>
  %i.ccf = fmul fast <8 x float> %i.cca, %i.cce
  %i.ccg = fadd fast <8 x float> %i.ccf, splat (float 1.000000e+00)
  %i.cch = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ccg
  %i.cci = fadd fast <8 x float> %i.cch, splat (float -1.000000e+00)
  %i.ccj = fmul fast <8 x float> %i.cci, %.04608.lcssa
  %i.cck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04607.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.ccl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cck, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ccm = fmul fast <8 x float> %i.ccl, splat (float f0x3FB8AA3B)
  %i.ccn = fadd fast <8 x float> %i.ccm, splat (float 5.000000e-01) ; 2 uses
  %i.cco = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ccn, i32 1) ; 2 uses
  %i.ccp = fcmp fast ogt <8 x float> %i.cco, %i.ccn
  %i.ccq = select <8 x i1> %i.ccp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ccr = fsub fast <8 x float> %i.cco, %i.ccq   ; 2 uses
  %i.ccs = fmul fast <8 x float> %i.ccr, splat (float f0x3F317218)
  %i.cct = fsub fast <8 x float> %i.ccl, %i.ccs   ; 8 uses
  %i.ccu = fmul fast <8 x float> %i.cct, %i.cct
  %i.ccv = fmul fast <8 x float> %i.cct, splat (float f0x39506967)
  %i.ccw = fadd fast <8 x float> %i.ccv, splat (float f0x3AB743CE)
  %i.ccx = fmul fast <8 x float> %i.ccw, %i.cct
  %i.ccy = fadd fast <8 x float> %i.ccx, splat (float f0x3C088908)
  %i.ccz = fmul fast <8 x float> %i.ccy, %i.cct
  %i.cda = fadd fast <8 x float> %i.ccz, splat (float f0x3D2AA9C1)
  %i.cdb = fmul fast <8 x float> %i.cda, %i.cct
  %i.cdc = fadd fast <8 x float> %i.cdb, splat (float f0x3E2AAAAA)
  %i.cdd = fmul fast <8 x float> %i.cdc, %i.cct
  %i.cde = fadd fast <8 x float> %i.cdd, splat (float 5.000000e-01)
  %i.cdf = fmul fast <8 x float> %i.ccu, %i.cde
  %i.cdg = fadd fast <8 x float> %i.cct, splat (float 1.000000e+00)
  %i.cdh = fadd fast <8 x float> %i.cdg, %i.cdf
  %i.cdi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ccr)
  %i.cdj = shl <8 x i32> %i.cdi, splat (i32 23)
  %i.cdk = add <8 x i32> %i.cdj, splat (i32 1065353216)
  %i.cdl = bitcast <8 x i32> %i.cdk to <8 x float>
  %i.cdm = fmul fast <8 x float> %i.cdh, %i.cdl
  %i.cdn = fadd fast <8 x float> %i.cdm, splat (float 1.000000e+00) ; 2 uses
  %i.cdo = fcmp fast ole <8 x float> %i.cdn, zeroinitializer
  %i.cdp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cdn, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.cdq = bitcast <8 x float> %i.cdp to <8 x i32>
  %i.cdr = bitcast <8 x float> %i.cdp to <8 x i32>
  %i.cds = and <8 x i32> %i.cdr, splat (i32 -2139095041)
  %i.cdt = or disjoint <8 x i32> %i.cds, splat (i32 1056964608)
  %i.cdu = bitcast <8 x i32> %i.cdt to <8 x float> ; 3 uses
  %i.cdv = lshr <8 x i32> %i.cdq, splat (i32 23)
  %i.cdw = add nsw <8 x i32> %i.cdv, splat (i32 -127)
  %i.cdx = sitofp fast <8 x i32> %i.cdw to <8 x float> ; 2 uses
  %i.cdy = fadd fast <8 x float> %i.cdx, splat (float 1.000000e+00)
  %i.cdz = fcmp fast olt <8 x float> %i.cdu, splat (float f0x3F3504F3) ; 2 uses
  %i.cea = select <8 x i1> %i.cdz, <8 x float> %i.cdu, <8 x float> zeroinitializer
  %i.ceb = fadd fast <8 x float> %i.cdu, splat (float -1.000000e+00)
  %i.cec = select fast <8 x i1> %i.cdz, <8 x float> %i.cdx, <8 x float> %i.cdy
  %i.ced = fadd fast <8 x float> %i.ceb, %i.cea   ; 12 uses
  %i.cee = fmul fast <8 x float> %i.ced, %i.ced
  %i.cef = fmul fast <8 x float> %i.ced, splat (float f0x3D9021BB)
  %i.ceg = fadd fast <8 x float> %i.cef, splat (float f0xBDEBD1B8)
  %i.ceh = fmul fast <8 x float> %i.ceg, %i.ced
  %i.cei = fadd fast <8 x float> %i.ceh, splat (float f0x3DEF251A)
  %i.cej = fmul fast <8 x float> %i.cei, %i.ced
  %i.cek = fadd fast <8 x float> %i.cej, splat (float f0xBDFE5D4F)
  %i.cel = fmul fast <8 x float> %i.cek, %i.ced
  %i.cem = fadd fast <8 x float> %i.cel, splat (float f0x3E11E9BF)
  %i.cen = fmul fast <8 x float> %i.cem, %i.ced
  %i.ceo = fadd fast <8 x float> %i.cen, splat (float f0xBE2AAE50)
  %i.cep = fmul fast <8 x float> %i.ceo, %i.ced
  %i.ceq = fadd fast <8 x float> %i.cep, splat (float f0x3E4CCEAC)
  %i.cer = fmul fast <8 x float> %i.ceq, %i.ced
  %i.ces = fadd fast <8 x float> %i.cer, splat (float f0xBE7FFFFC)
  %i.cet = fmul fast <8 x float> %i.ces, %i.ced
  %i.ceu = fadd fast <8 x float> %i.cet, splat (float f0x3EAAAAAA)
  %i.cev = fmul fast <8 x float> %i.ceu, %i.ced
  %reass.mul5418 = fmul fast <8 x float> %i.cec, splat (float f0x3F317218)
  %reass.add5426 = fadd fast <8 x float> %i.cev, splat (float -5.000000e-01)
  %reass.mul5427 = fmul fast <8 x float> %i.cee, %reass.add5426
  %i.cew = fadd fast <8 x float> %reass.mul5418, %i.ced
  %i.cex = fadd fast <8 x float> %i.cew, %reass.mul5427
  %.neg5351 = fmul fast <8 x float> %i.cex, splat (float -2.000000e+00)
  %i.cey = select fast <8 x i1> %i.cdo, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5351
  %i.cez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cey, <8 x float> splat (float f0x42B0C0A5))
  %i.cfa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cez, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cfb = fmul fast <8 x float> %i.cfa, splat (float f0x3FB8AA3B)
  %i.cfc = fadd fast <8 x float> %i.cfb, splat (float 5.000000e-01) ; 2 uses
  %i.cfd = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cfc, i32 1) ; 2 uses
  %i.cfe = fcmp fast ogt <8 x float> %i.cfd, %i.cfc
  %i.cff = select <8 x i1> %i.cfe, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cfg = fsub fast <8 x float> %i.cfd, %i.cff   ; 2 uses
  %i.cfh = fmul fast <8 x float> %i.cfg, splat (float f0x3F317218)
  %i.cfi = fsub fast <8 x float> %i.cfa, %i.cfh   ; 8 uses
  %i.cfj = fmul fast <8 x float> %i.cfi, %i.cfi
  %i.cfk = fmul fast <8 x float> %i.cfi, splat (float f0x39506967)
  %i.cfl = fadd fast <8 x float> %i.cfk, splat (float f0x3AB743CE)
  %i.cfm = fmul fast <8 x float> %i.cfl, %i.cfi
  %i.cfn = fadd fast <8 x float> %i.cfm, splat (float f0x3C088908)
  %i.cfo = fmul fast <8 x float> %i.cfn, %i.cfi
  %i.cfp = fadd fast <8 x float> %i.cfo, splat (float f0x3D2AA9C1)
  %i.cfq = fmul fast <8 x float> %i.cfp, %i.cfi
  %i.cfr = fadd fast <8 x float> %i.cfq, splat (float f0x3E2AAAAA)
  %i.cfs = fmul fast <8 x float> %i.cfr, %i.cfi
  %i.cft = fadd fast <8 x float> %i.cfs, splat (float 5.000000e-01)
  %i.cfu = fmul fast <8 x float> %i.cfj, %i.cft
  %i.cfv = fadd fast <8 x float> %i.cfi, splat (float 1.000000e+00)
  %i.cfw = fadd fast <8 x float> %i.cfv, %i.cfu
  %i.cfx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cfg)
  %i.cfy = shl <8 x i32> %i.cfx, splat (i32 23)
  %i.cfz = add <8 x i32> %i.cfy, splat (i32 1065353216)
  %i.cga = bitcast <8 x i32> %i.cfz to <8 x float>
  %i.cgb = fmul fast <8 x float> %i.cfw, %i.cga
  %i.cgc = fadd fast <8 x float> %i.cgb, splat (float 1.000000e+00)
  %i.cgd = fdiv fast <8 x float> splat (float 2.000000e+00), %i.cgc
  %i.cge = fadd fast <8 x float> %i.cgd, splat (float -1.000000e+00)
  %i.cgf = fmul fast <8 x float> %i.cge, %.04607.lcssa
  %i.cgg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.04606.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.cgh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cgg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cgi = fmul fast <8 x float> %i.cgh, splat (float f0x3FB8AA3B)
  %i.cgj = fadd fast <8 x float> %i.cgi, splat (float 5.000000e-01) ; 2 uses
  %i.cgk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cgj, i32 1) ; 2 uses
  %i.cgl = fcmp fast ogt <8 x float> %i.cgk, %i.cgj
  %i.cgm = select <8 x i1> %i.cgl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cgn = fsub fast <8 x float> %i.cgk, %i.cgm   ; 2 uses
  %i.cgo = fmul fast <8 x float> %i.cgn, splat (float f0x3F317218)
  %i.cgp = fsub fast <8 x float> %i.cgh, %i.cgo   ; 8 uses
  %i.cgq = fmul fast <8 x float> %i.cgp, %i.cgp
  %i.cgr = fmul fast <8 x float> %i.cgp, splat (float f0x39506967)
  %i.cgs = fadd fast <8 x float> %i.cgr, splat (float f0x3AB743CE)
  %i.cgt = fmul fast <8 x float> %i.cgs, %i.cgp
  %i.cgu = fadd fast <8 x float> %i.cgt, splat (float f0x3C088908)
  %i.cgv = fmul fast <8 x float> %i.cgu, %i.cgp
  %i.cgw = fadd fast <8 x float> %i.cgv, splat (float f0x3D2AA9C1)
  %i.cgx = fmul fast <8 x float> %i.cgw, %i.cgp
  %i.cgy = fadd fast <8 x float> %i.cgx, splat (float f0x3E2AAAAA)
  %i.cgz = fmul fast <8 x float> %i.cgy, %i.cgp
  %i.cha = fadd fast <8 x float> %i.cgz, splat (float 5.000000e-01)
  %i.chb = fmul fast <8 x float> %i.cgq, %i.cha
  %i.chc = fadd fast <8 x float> %i.cgp, splat (float 1.000000e+00)
  %i.chd = fadd fast <8 x float> %i.chc, %i.chb
  %i.che = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cgn)
  %i.chf = shl <8 x i32> %i.che, splat (i32 23)
  %i.chg = add <8 x i32> %i.chf, splat (i32 1065353216)
  %i.chh = bitcast <8 x i32> %i.chg to <8 x float>
  %i.chi = fmul fast <8 x float> %i.chd, %i.chh
  %i.chj = fadd fast <8 x float> %i.chi, splat (float 1.000000e+00) ; 2 uses
  %i.chk = fcmp fast ole <8 x float> %i.chj, zeroinitializer
  %i.chl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.chj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.chm = bitcast <8 x float> %i.chl to <8 x i32>
  %i.chn = bitcast <8 x float> %i.chl to <8 x i32>
  %i.cho = and <8 x i32> %i.chn, splat (i32 -2139095041)
  %i.chp = or disjoint <8 x i32> %i.cho, splat (i32 1056964608)
  %i.chq = bitcast <8 x i32> %i.chp to <8 x float> ; 3 uses
  %i.chr = lshr <8 x i32> %i.chm, splat (i32 23)
  %i.chs = add nsw <8 x i32> %i.chr, splat (i32 -127)
  %i.cht = sitofp fast <8 x i32> %i.chs to <8 x float> ; 2 uses
  %i.chu = fadd fast <8 x float> %i.cht, splat (float 1.000000e+00)
  %i.chv = fcmp fast olt <8 x float> %i.chq, splat (float f0x3F3504F3) ; 2 uses
  %i.chw = select <8 x i1> %i.chv, <8 x float> %i.chq, <8 x float> zeroinitializer
  %i.chx = fadd fast <8 x float> %i.chq, splat (float -1.000000e+00)
  %i.chy = select fast <8 x i1> %i.chv, <8 x float> %i.cht, <8 x float> %i.chu
  %i.chz = fadd fast <8 x float> %i.chx, %i.chw   ; 12 uses
  %i.cia = fmul fast <8 x float> %i.chz, %i.chz
  %i.cib = fmul fast <8 x float> %i.chz, splat (float f0x3D9021BB)
  %i.cic = fadd fast <8 x float> %i.cib, splat (float f0xBDEBD1B8)
  %i.cid = fmul fast <8 x float> %i.cic, %i.chz
  %i.cie = fadd fast <8 x float> %i.cid, splat (float f0x3DEF251A)
  %i.cif = fmul fast <8 x float> %i.cie, %i.chz
  %i.cig = fadd fast <8 x float> %i.cif, splat (float f0xBDFE5D4F)
  %i.cih = fmul fast <8 x float> %i.cig, %i.chz
  %i.cii = fadd fast <8 x float> %i.cih, splat (float f0x3E11E9BF)
  %i.cij = fmul fast <8 x float> %i.cii, %i.chz
  %i.cik = fadd fast <8 x float> %i.cij, splat (float f0xBE2AAE50)
  %i.cil = fmul fast <8 x float> %i.cik, %i.chz
  %i.cim = fadd fast <8 x float> %i.cil, splat (float f0x3E4CCEAC)
  %i.cin = fmul fast <8 x float> %i.cim, %i.chz
  %i.cio = fadd fast <8 x float> %i.cin, splat (float f0xBE7FFFFC)
  %i.cip = fmul fast <8 x float> %i.cio, %i.chz
  %i.ciq = fadd fast <8 x float> %i.cip, splat (float f0x3EAAAAAA)
  %i.cir = fmul fast <8 x float> %i.ciq, %i.chz
  %reass.mul5421 = fmul fast <8 x float> %i.chy, splat (float f0x3F317218)
  %reass.add5428 = fadd fast <8 x float> %i.cir, splat (float -5.000000e-01)
  %reass.mul5429 = fmul fast <8 x float> %i.cia, %reass.add5428
  %i.cis = fadd fast <8 x float> %reass.mul5421, %i.chz
  %i.cit = fadd fast <8 x float> %i.cis, %reass.mul5429
  %.neg5352 = fmul fast <8 x float> %i.cit, splat (float -2.000000e+00)
  %i.ciu = select fast <8 x i1> %i.chk, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5352
  %i.civ = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ciu, <8 x float> splat (float f0x42B0C0A5))
  %i.ciw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.civ, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cix = fmul fast <8 x float> %i.ciw, splat (float f0x3FB8AA3B)
  %i.ciy = fadd fast <8 x float> %i.cix, splat (float 5.000000e-01) ; 2 uses
  %i.ciz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ciy, i32 1) ; 2 uses
  %i.cja = fcmp fast ogt <8 x float> %i.ciz, %i.ciy
  %i.cjb = select <8 x i1> %i.cja, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cjc = fsub fast <8 x float> %i.ciz, %i.cjb   ; 2 uses
  %i.cjd = fmul fast <8 x float> %i.cjc, splat (float f0x3F317218)
  %i.cje = fsub fast <8 x float> %i.ciw, %i.cjd   ; 8 uses
  %i.cjf = fmul fast <8 x float> %i.cje, %i.cje
  %i.cjg = fmul fast <8 x float> %i.cje, splat (float f0x39506967)
  %i.cjh = fadd fast <8 x float> %i.cjg, splat (float f0x3AB743CE)
  %i.cji = fmul fast <8 x float> %i.cjh, %i.cje
  %i.cjj = fadd fast <8 x float> %i.cji, splat (float f0x3C088908)
  %i.cjk = fmul fast <8 x float> %i.cjj, %i.cje
  %i.cjl = fadd fast <8 x float> %i.cjk, splat (float f0x3D2AA9C1)
  %i.cjm = fmul fast <8 x float> %i.cjl, %i.cje
  %i.cjn = fadd fast <8 x float> %i.cjm, splat (float f0x3E2AAAAA)
  %i.cjo = fmul fast <8 x float> %i.cjn, %i.cje
  %i.cjp = fadd fast <8 x float> %i.cjo, splat (float 5.000000e-01)
  %i.cjq = fmul fast <8 x float> %i.cjf, %i.cjp
  %i.cjr = fadd fast <8 x float> %i.cje, splat (float 1.000000e+00)
  %i.cjs = fadd fast <8 x float> %i.cjr, %i.cjq
  %i.cjt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cjc)
  %i.cju = shl <8 x i32> %i.cjt, splat (i32 23)
  %i.cjv = add <8 x i32> %i.cju, splat (i32 1065353216)
  %i.cjw = bitcast <8 x i32> %i.cjv to <8 x float>
  %i.cjx = fmul fast <8 x float> %i.cjs, %i.cjw
  %i.cjy = fadd fast <8 x float> %i.cjx, splat (float 1.000000e+00)
  %i.cjz = fdiv fast <8 x float> splat (float 2.000000e+00), %i.cjy
  %i.cka = fadd fast <8 x float> %i.cjz, splat (float -1.000000e+00)
  %i.ckb = fmul fast <8 x float> %i.cka, %.04606.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049: ; preds = %._crit_edge5569
  %i.ckc = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ckd = load float, ptr %i.ckc, align 4, !tbaa !27
  %i.cke = insertelement <8 x float> poison, float %i.ckd, i64 0
  %i.ckf = shufflevector <8 x float> %i.cke, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckc, i64 4
  %i.ckh = load float, ptr %i.ckg, align 4, !tbaa !27
  %i.cki = insertelement <8 x float> poison, float %i.ckh, i64 0
  %i.ckj = shufflevector <8 x float> %i.cki, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ckk = fmul fast <8 x float> %i.ckf, %.14610.lcssa
  %i.ckl = fadd fast <8 x float> %i.ckk, %i.ckj
  %i.ckm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ckl, <8 x float> zeroinitializer)
  %i.ckn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ckm, <8 x float> splat (float 1.000000e+00))
  %i.cko = fmul fast <8 x float> %i.ckn, %.14610.lcssa
  %i.ckp = fmul fast <8 x float> %i.ckf, %.04608.lcssa
  %i.ckq = fadd fast <8 x float> %i.ckp, %i.ckj
  %i.ckr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ckq, <8 x float> zeroinitializer)
  %i.cks = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ckr, <8 x float> splat (float 1.000000e+00))
  %i.ckt = fmul fast <8 x float> %i.cks, %.04608.lcssa
  %i.cku = fmul fast <8 x float> %i.ckf, %.04607.lcssa
  %i.ckv = fadd fast <8 x float> %i.cku, %i.ckj
  %i.ckw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ckv, <8 x float> zeroinitializer)
  %i.ckx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ckw, <8 x float> splat (float 1.000000e+00))
  %i.cky = fmul fast <8 x float> %i.ckx, %.04607.lcssa
  %i.ckz = fmul fast <8 x float> %i.ckf, %.04606.lcssa
  %i.cla = fadd fast <8 x float> %i.ckz, %i.ckj
  %i.clb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cla, <8 x float> zeroinitializer)
  %i.clc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.clb, <8 x float> splat (float 1.000000e+00))
  %i.cld = fmul fast <8 x float> %i.clc, %.04606.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442:   ; preds = %._crit_edge5569, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread
  %.0.i4435091 = phi <8 x float> [ %i.cky, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049 ], [ %i.boi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread ], [ %i.boz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037 ], [ %i.bpr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040 ], [ %i.btl, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043 ], [ %i.cgf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046 ], [ %.04607.lcssa, %._crit_edge5569 ] ; 2 uses
  %.0.i455503650555089 = phi <8 x float> [ %i.cko, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049 ], [ %i.bog, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread ], [ %i.bor, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037 ], [ %i.bpn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040 ], [ %i.bqz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043 ], [ %i.byn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046 ], [ %.14610.lcssa, %._crit_edge5569 ] ; 2 uses
  %.0.i44950575087 = phi <8 x float> [ %i.ckt, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049 ], [ %i.boh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread ], [ %i.bov, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037 ], [ %i.bpp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040 ], [ %i.bsf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043 ], [ %i.ccj, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046 ], [ %.04608.lcssa, %._crit_edge5569 ] ; 2 uses
  %.0.i437 = phi nsz <8 x float> [ %i.cld, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5049 ], [ %i.boj, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread ], [ %i.bpd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5037 ], [ %i.bpt, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5040 ], [ %i.bur, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5043 ], [ %i.ckb, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit460.thread5046 ], [ %.04606.lcssa, %._crit_edge5569 ] ; 2 uses
  %i.cle = shufflevector <8 x float> %.0.i455503650555089, <8 x float> %.0.i44950575087, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.clf = shufflevector <8 x float> %.0.i455503650555089, <8 x float> %.0.i44950575087, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.clg = shufflevector <8 x float> %.0.i4435091, <8 x float> %.0.i437, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.clh = shufflevector <8 x float> %.0.i4435091, <8 x float> %.0.i437, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cli = shufflevector <8 x float> %i.cle, <8 x float> %i.clg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.clj = shufflevector <8 x float> %i.clf, <8 x float> %i.clh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.clk = shufflevector <8 x float> %i.cle, <8 x float> %i.clg, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.cll = shufflevector <8 x float> %i.clf, <8 x float> %i.clh, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.cli, ptr %.03755574, align 1, !tbaa !23
  %i.clm = getelementptr inbounds nuw i8, ptr %.03755574, i64 32
  store <8 x float> %i.clj, ptr %i.clm, align 1, !tbaa !23
  %i.cln = getelementptr inbounds nuw i8, ptr %.03755574, i64 64
  store <8 x float> %i.clk, ptr %i.cln, align 1, !tbaa !23
  %i.clo = getelementptr inbounds nuw i8, ptr %.03755574, i64 96
  store <8 x float> %i.cll, ptr %i.clo, align 1, !tbaa !23
  %i.clp = getelementptr inbounds nuw i8, ptr %.03755574, i64 128
  %indvars.iv.next5810 = add nuw nsw i64 %indvars.iv5809, 1 ; 2 uses
  %i.clq = load i32, ptr %6, align 4, !tbaa !9
  %i.clr = load i32, ptr %4, align 4, !tbaa !9
  %i.cls = sdiv i32 %i.clq, %i.clr
  %i.clt = sext i32 %i.cls to i64
  %i.clu = icmp slt i64 %indvars.iv.next5810, %i.clt
  br i1 %i.clu, label %.lr.ph5577, label %thread-pre-split5127.loopexit, !llvm.loop !57

thread-pre-split5127.loopexit:                    ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit442
  %.pr5128.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %thread-pre-split5127

thread-pre-split5127:                             ; preds = %thread-pre-split5127.loopexit, %.thread
  %i.clv = phi i32 [ %.pr5128.pre, %thread-pre-split5127.loopexit ], [ %.pr5322, %.thread ] ; 2 uses
  %i.clw = icmp eq i32 %i.clv, 8
  br i1 %i.clw, label %thread-pre-split5324, label %thread-pre-split5223

thread-pre-split5324:                             ; preds = %bb.e, %thread-pre-split5127
  %.pr5325 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread5323

.thread5323:                                      ; preds = %bb.d, %thread-pre-split5324
  %i.clx = phi i32 [ %.pr5325, %thread-pre-split5324 ], [ %i.u, %bb.d ]
  %i.cly = icmp eq i32 %i.clx, 1
  br i1 %i.cly, label %bb.r, label %.thread5129.thread

bb.r:                                             ; preds = %.thread5323
  %i.clz = load i32, ptr %6, align 4, !tbaa !9
  %i.cma = icmp sgt i32 %i.clz, 0
  br i1 %i.cma, label %.lr.ph5604.preheader, label %.thread5129.thread

.lr.ph5604.preheader:                             ; preds = %bb.r
  %i.cmb = load ptr, ptr %5, align 8, !tbaa !17
  %i.cmc = load i32, ptr %i.l, align 4, !tbaa !15
  %i.cmd = sext i32 %i.cmc to i64
  %i.cme = mul nsw i64 %indvars.iv5833, %i.cmd
  %i.cmf = load i64, ptr %i.m, align 8, !tbaa !24
  %i.cmg = mul i64 %i.cme, %i.cmf
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmb, i64 %i.cmg
  br label %.lr.ph5604

.lr.ph5604:                                       ; preds = %.lr.ph5604.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436
  %indvars.iv5812 = phi i64 [ 0, %.lr.ph5604.preheader ], [ %indvars.iv.next5813, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436 ] ; 3 uses
  %.03705601 = phi ptr [ %i.cmh, %.lr.ph5604.preheader ], [ %i.cvd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436 ] ; 2 uses
  %i.cmi = load ptr, ptr %7, align 8, !tbaa !17
  %i.cmj = load i32, ptr %i.n, align 4, !tbaa !15
  %i.cmk = sext i32 %i.cmj to i64
  %i.cml = mul nsw i64 %indvars.iv5812, %i.cmk
  %i.cmm = load i64, ptr %i.o, align 8, !tbaa !24
  %i.cmn = mul i64 %i.cml, %i.cmm
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmi, i64 %i.cmn ; 2 uses
  %i.cmp = load ptr, ptr %8, align 8, !tbaa !17
  %i.cmq = load i32, ptr %i.p, align 4, !tbaa !15
  %i.cmr = sext i32 %i.cmq to i64
  %i.cms = mul nsw i64 %indvars.iv5833, %i.cmr
  %i.cmt = load i64, ptr %i.q, align 8, !tbaa !24
  %i.cmu = mul i64 %i.cms, %i.cmt
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmp, i64 %i.cmu ; 2 uses
  %i.cmw = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not406 = icmp eq ptr %i.cmw, null
  br i1 %.not406, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph5604
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %indvars.iv5812
  %i.cmy = load float, ptr %i.cmx, align 4, !tbaa !27
  %i.cmz = insertelement <8 x float> poison, float %i.cmy, i64 0
  %i.cna = shufflevector <8 x float> %i.cmz, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph5604
  %.04603 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5604 ], [ %i.cna, %bb.s ] ; 2 uses
  %i.cnb = load i32, ptr %10, align 4, !tbaa !9   ; 4 uses
  %i.cnc = icmp sgt i32 %i.cnb, 3
  br i1 %i.cnc, label %.lr.ph5586, label %.preheader5479

.preheader5479.loopexit:                          ; preds = %.lr.ph5586
  %i.cnd = and i32 %i.cnb, 2147483644
  %i.cne = fadd fast <8 x float> %i.cnz, %i.cnx
  %i.cnf = fadd fast <8 x float> %i.cne, %i.cob
  br label %.preheader5479

.preheader5479:                                   ; preds = %.preheader5479.loopexit, %bb.t
  %.14604.lcssa = phi <8 x float> [ %.04603, %bb.t ], [ %i.cnv, %.preheader5479.loopexit ] ; 2 uses
  %.04601.lcssa = phi <8 x float> [ zeroinitializer, %bb.t ], [ %i.cnf, %.preheader5479.loopexit ]
  %.0367.lcssa = phi ptr [ %i.cmo, %bb.t ], [ %i.cod, %.preheader5479.loopexit ]
  %.0365.lcssa = phi ptr [ %i.cmv, %bb.t ], [ %i.coc, %.preheader5479.loopexit ]
  %.0363.lcssa = phi i32 [ 0, %bb.t ], [ %i.cnd, %.preheader5479.loopexit ] ; 2 uses
  %i.cng = icmp slt i32 %.0363.lcssa, %i.cnb
  br i1 %i.cng, label %.lr.ph5598, label %._crit_edge5599

.lr.ph5586:                                       ; preds = %bb.t, %.lr.ph5586
  %.03635584 = phi i32 [ %i.coe, %.lr.ph5586 ], [ 0, %bb.t ]
  %.03655583 = phi ptr [ %i.coc, %.lr.ph5586 ], [ %i.cmv, %bb.t ] ; 5 uses
  %.03675582 = phi ptr [ %i.cod, %.lr.ph5586 ], [ %i.cmo, %bb.t ] ; 2 uses
  %.046005581 = phi <8 x float> [ %i.cob, %.lr.ph5586 ], [ zeroinitializer, %bb.t ]
  %.046015580 = phi <8 x float> [ %i.cnz, %.lr.ph5586 ], [ zeroinitializer, %bb.t ]
  %.046025579 = phi <8 x float> [ %i.cnx, %.lr.ph5586 ], [ zeroinitializer, %bb.t ]
  %.146045578 = phi <8 x float> [ %i.cnv, %.lr.ph5586 ], [ %.04603, %bb.t ]
  %i.cnh = load <8 x float>, ptr %.03655583, align 1, !tbaa !23
  %i.cni = getelementptr inbounds nuw i8, ptr %.03655583, i64 32
  %i.cnj = load <8 x float>, ptr %i.cni, align 1, !tbaa !23
  %i.cnk = getelementptr inbounds nuw i8, ptr %.03655583, i64 64
  %i.cnl = load <8 x float>, ptr %i.cnk, align 1, !tbaa !23
  %i.cnm = getelementptr inbounds nuw i8, ptr %.03655583, i64 96
  %i.cnn = load <8 x float>, ptr %i.cnm, align 1, !tbaa !23
  %i.cno = load <4 x half>, ptr %.03675582, align 1, !tbaa !23
  %i.cnp = fpext fast <4 x half> %i.cno to <4 x float> ; 4 uses
  %i.cnq = shufflevector <4 x float> %i.cnp, <4 x float> poison, <8 x i32> zeroinitializer
  %i.cnr = shufflevector <4 x float> %i.cnp, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.cns = shufflevector <4 x float> %i.cnp, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.cnt = shufflevector <4 x float> %i.cnp, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cnu = fmul fast <8 x float> %i.cnq, %i.cnh
  %i.cnv = fadd fast <8 x float> %i.cnu, %.146045578 ; 2 uses
  %i.cnw = fmul fast <8 x float> %i.cnr, %i.cnj
  %i.cnx = fadd fast <8 x float> %i.cnw, %.046025579 ; 2 uses
  %i.cny = fmul fast <8 x float> %i.cns, %i.cnl
  %i.cnz = fadd fast <8 x float> %i.cny, %.046015580 ; 2 uses
  %i.coa = fmul fast <8 x float> %i.cnt, %i.cnn
  %i.cob = fadd fast <8 x float> %i.coa, %.046005581 ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %.03655583, i64 128 ; 2 uses
  %i.cod = getelementptr inbounds nuw i8, ptr %.03675582, i64 8 ; 2 uses
  %i.coe = add nuw nsw i32 %.03635584, 4          ; 2 uses
  %i.cof = or disjoint i32 %i.coe, 3
  %i.cog = icmp slt i32 %i.cof, %i.cnb
  br i1 %i.cog, label %.lr.ph5586, label %.preheader5479.loopexit, !llvm.loop !58

.lr.ph5598:                                       ; preds = %.preheader5479, %bb.u
  %.13645597 = phi i32 [ %i.coq, %bb.u ], [ %.0363.lcssa, %.preheader5479 ]
  %.13665596 = phi ptr [ %i.coo, %bb.u ], [ %.0365.lcssa, %.preheader5479 ] ; 2 uses
  %.13685595 = phi ptr [ %i.cop, %bb.u ], [ %.0367.lcssa, %.preheader5479 ] ; 2 uses
  %.246055594 = phi <8 x float> [ %i.con, %bb.u ], [ %.14604.lcssa, %.preheader5479 ]
  %i.coh = load <8 x float>, ptr %.13665596, align 1, !tbaa !23
  %i.coi = load i16, ptr %.13685595, align 2, !tbaa !31
  %i.coj = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.coi)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.lr.ph5598
  %i.cok = insertelement <8 x float> poison, float %i.coj, i64 0
  %i.col = shufflevector <8 x float> %i.cok, <8 x float> poison, <8 x i32> zeroinitializer
  %i.com = fmul fast <8 x float> %i.col, %i.coh
  %i.con = fadd fast <8 x float> %i.com, %.246055594 ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %.13665596, i64 32
  %i.cop = getelementptr inbounds nuw i8, ptr %.13685595, i64 2
  %i.coq = add nuw nsw i32 %.13645597, 1          ; 2 uses
  %i.cor = load i32, ptr %10, align 4, !tbaa !9
  %i.cos = icmp slt i32 %i.coq, %i.cor
  br i1 %i.cos, label %.lr.ph5598, label %._crit_edge5599, !llvm.loop !59

._crit_edge5599:                                  ; preds = %bb.u, %.preheader5479
  %.24605.lcssa = phi <8 x float> [ %.14604.lcssa, %.preheader5479 ], [ %i.con, %bb.u ]
  %i.cot = fadd fast <8 x float> %.04601.lcssa, %.24605.lcssa ; 10 uses
  %i.cou = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.cou, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436 [
    i32 1, label %bb.v
    i32 2, label %.noexc432
    i32 3, label %bb.w
    i32 4, label %.noexc433
    i32 5, label %.noexc434
    i32 6, label %.noexc435
  ]

bb.v:                                             ; preds = %._crit_edge5599
  %i.cov = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cot, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

.noexc432:                                        ; preds = %._crit_edge5599
  %i.cow = load ptr, ptr %12, align 8, !tbaa !17
  %i.cox = load float, ptr %i.cow, align 4, !tbaa !27
  %i.coy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.cot)
  %i.coz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.cot)
  %i.cpa = insertelement <8 x float> poison, float %i.cox, i64 0
  %i.cpb = shufflevector <8 x float> %i.cpa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cpc = fmul fast <8 x float> %i.cpb, %i.coz
  %i.cpd = fadd fast <8 x float> %i.cpc, %i.coy
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

bb.w:                                             ; preds = %._crit_edge5599
  %i.cpe = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.cpf = load float, ptr %i.cpe, align 4, !tbaa !27
  %i.cpg = insertelement <8 x float> poison, float %i.cpf, i64 0
  %i.cph = shufflevector <8 x float> %i.cpg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cpe, i64 4
  %i.cpj = load float, ptr %i.cpi, align 4, !tbaa !27
  %i.cpk = insertelement <8 x float> poison, float %i.cpj, i64 0
  %i.cpl = shufflevector <8 x float> %i.cpk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cpm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cot, <8 x float> nofpclass(nan inf) %i.cph)
  %i.cpn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cpm, <8 x float> nofpclass(nan inf) %i.cpl)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

.noexc433:                                        ; preds = %._crit_edge5599
  %i.cpo = fneg fast <8 x float> %i.cot
  %i.cpp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cpo, <8 x float> splat (float f0x42B0C0A5))
  %i.cpq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cpp, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cpr = fmul fast <8 x float> %i.cpq, splat (float f0x3FB8AA3B)
  %i.cps = fadd fast <8 x float> %i.cpr, splat (float 5.000000e-01) ; 2 uses
  %i.cpt = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cps, i32 1) ; 2 uses
  %i.cpu = fcmp fast ogt <8 x float> %i.cpt, %i.cps
  %i.cpv = select <8 x i1> %i.cpu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cpw = fsub fast <8 x float> %i.cpt, %i.cpv   ; 2 uses
  %i.cpx = fmul fast <8 x float> %i.cpw, splat (float f0x3F317218)
  %i.cpy = fsub fast <8 x float> %i.cpq, %i.cpx   ; 8 uses
  %i.cpz = fmul fast <8 x float> %i.cpy, %i.cpy
  %i.cqa = fmul fast <8 x float> %i.cpy, splat (float f0x39506967)
  %i.cqb = fadd fast <8 x float> %i.cqa, splat (float f0x3AB743CE)
  %i.cqc = fmul fast <8 x float> %i.cqb, %i.cpy
  %i.cqd = fadd fast <8 x float> %i.cqc, splat (float f0x3C088908)
  %i.cqe = fmul fast <8 x float> %i.cqd, %i.cpy
  %i.cqf = fadd fast <8 x float> %i.cqe, splat (float f0x3D2AA9C1)
  %i.cqg = fmul fast <8 x float> %i.cqf, %i.cpy
  %i.cqh = fadd fast <8 x float> %i.cqg, splat (float f0x3E2AAAAA)
  %i.cqi = fmul fast <8 x float> %i.cqh, %i.cpy
  %i.cqj = fadd fast <8 x float> %i.cqi, splat (float 5.000000e-01)
  %i.cqk = fmul fast <8 x float> %i.cpz, %i.cqj
  %i.cql = fadd fast <8 x float> %i.cpy, splat (float 1.000000e+00)
  %i.cqm = fadd fast <8 x float> %i.cql, %i.cqk
  %i.cqn = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cpw)
  %i.cqo = shl <8 x i32> %i.cqn, splat (i32 23)
  %i.cqp = add <8 x i32> %i.cqo, splat (i32 1065353216)
  %i.cqq = bitcast <8 x i32> %i.cqp to <8 x float>
  %i.cqr = fmul fast <8 x float> %i.cqm, %i.cqq
  %i.cqs = fadd fast <8 x float> %i.cqr, splat (float 1.000000e+00)
  %i.cqt = fdiv fast <8 x float> splat (float 1.000000e+00), %i.cqs
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

.noexc434:                                        ; preds = %._crit_edge5599
  %i.cqu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cot, <8 x float> splat (float f0x42B0C0A5))
  %i.cqv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cqu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cqw = fmul fast <8 x float> %i.cqv, splat (float f0x3FB8AA3B)
  %i.cqx = fadd fast <8 x float> %i.cqw, splat (float 5.000000e-01) ; 2 uses
  %i.cqy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cqx, i32 1) ; 2 uses
  %i.cqz = fcmp fast ogt <8 x float> %i.cqy, %i.cqx
  %i.cra = select <8 x i1> %i.cqz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.crb = fsub fast <8 x float> %i.cqy, %i.cra   ; 2 uses
  %i.crc = fmul fast <8 x float> %i.crb, splat (float f0x3F317218)
  %i.crd = fsub fast <8 x float> %i.cqv, %i.crc   ; 8 uses
  %i.cre = fmul fast <8 x float> %i.crd, %i.crd
  %i.crf = fmul fast <8 x float> %i.crd, splat (float f0x39506967)
  %i.crg = fadd fast <8 x float> %i.crf, splat (float f0x3AB743CE)
  %i.crh = fmul fast <8 x float> %i.crg, %i.crd
  %i.cri = fadd fast <8 x float> %i.crh, splat (float f0x3C088908)
  %i.crj = fmul fast <8 x float> %i.cri, %i.crd
  %i.crk = fadd fast <8 x float> %i.crj, splat (float f0x3D2AA9C1)
  %i.crl = fmul fast <8 x float> %i.crk, %i.crd
  %i.crm = fadd fast <8 x float> %i.crl, splat (float f0x3E2AAAAA)
  %i.crn = fmul fast <8 x float> %i.crm, %i.crd
  %i.cro = fadd fast <8 x float> %i.crn, splat (float 5.000000e-01)
  %i.crp = fmul fast <8 x float> %i.cre, %i.cro
  %i.crq = fadd fast <8 x float> %i.crd, splat (float 1.000000e+00)
  %i.crr = fadd fast <8 x float> %i.crq, %i.crp
  %i.crs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.crb)
  %i.crt = shl <8 x i32> %i.crs, splat (i32 23)
  %i.cru = add <8 x i32> %i.crt, splat (i32 1065353216)
  %i.crv = bitcast <8 x i32> %i.cru to <8 x float>
  %i.crw = fmul fast <8 x float> %i.crr, %i.crv
  %i.crx = fadd fast <8 x float> %i.crw, splat (float 1.000000e+00) ; 2 uses
  %i.cry = fcmp fast ole <8 x float> %i.crx, zeroinitializer
  %i.crz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.crx, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.csa = bitcast <8 x float> %i.crz to <8 x i32>
  %i.csb = bitcast <8 x float> %i.crz to <8 x i32>
  %i.csc = and <8 x i32> %i.csb, splat (i32 -2139095041)
  %i.csd = or disjoint <8 x i32> %i.csc, splat (i32 1056964608)
  %i.cse = bitcast <8 x i32> %i.csd to <8 x float> ; 3 uses
  %i.csf = lshr <8 x i32> %i.csa, splat (i32 23)
  %i.csg = add nsw <8 x i32> %i.csf, splat (i32 -127)
  %i.csh = sitofp fast <8 x i32> %i.csg to <8 x float> ; 2 uses
  %i.csi = fadd fast <8 x float> %i.csh, splat (float 1.000000e+00)
  %i.csj = fcmp fast olt <8 x float> %i.cse, splat (float f0x3F3504F3) ; 2 uses
  %i.csk = select <8 x i1> %i.csj, <8 x float> %i.cse, <8 x float> zeroinitializer
  %i.csl = fadd fast <8 x float> %i.cse, splat (float -1.000000e+00)
  %i.csm = select fast <8 x i1> %i.csj, <8 x float> %i.csh, <8 x float> %i.csi
  %i.csn = fadd fast <8 x float> %i.csl, %i.csk   ; 12 uses
  %i.cso = fmul fast <8 x float> %i.csn, %i.csn
  %i.csp = fmul fast <8 x float> %i.csn, splat (float f0x3D9021BB)
  %i.csq = fadd fast <8 x float> %i.csp, splat (float f0xBDEBD1B8)
  %i.csr = fmul fast <8 x float> %i.csq, %i.csn
  %i.css = fadd fast <8 x float> %i.csr, splat (float f0x3DEF251A)
  %i.cst = fmul fast <8 x float> %i.css, %i.csn
  %i.csu = fadd fast <8 x float> %i.cst, splat (float f0xBDFE5D4F)
  %i.csv = fmul fast <8 x float> %i.csu, %i.csn
  %i.csw = fadd fast <8 x float> %i.csv, splat (float f0x3E11E9BF)
  %i.csx = fmul fast <8 x float> %i.csw, %i.csn
  %i.csy = fadd fast <8 x float> %i.csx, splat (float f0xBE2AAE50)
  %i.csz = fmul fast <8 x float> %i.csy, %i.csn
  %i.cta = fadd fast <8 x float> %i.csz, splat (float f0x3E4CCEAC)
  %i.ctb = fmul fast <8 x float> %i.cta, %i.csn
  %i.ctc = fadd fast <8 x float> %i.ctb, splat (float f0xBE7FFFFC)
  %i.ctd = fmul fast <8 x float> %i.ctc, %i.csn
  %i.cte = fadd fast <8 x float> %i.ctd, splat (float f0x3EAAAAAA)
  %i.ctf = fmul fast <8 x float> %i.cte, %i.csn
  %reass.mul5408 = fmul fast <8 x float> %i.csm, splat (float f0x3F317218)
  %reass.add5409 = fadd fast <8 x float> %i.ctf, splat (float -5.000000e-01)
  %reass.mul5410 = fmul fast <8 x float> %i.cso, %reass.add5409
  %i.ctg = fadd fast <8 x float> %reass.mul5408, %i.csn
  %i.cth = fadd fast <8 x float> %i.ctg, %reass.mul5410
  %.neg5348 = fmul fast <8 x float> %i.cth, splat (float -2.000000e+00)
  %i.cti = select fast <8 x i1> %i.cry, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5348
  %i.ctj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cti, <8 x float> splat (float f0x42B0C0A5))
  %i.ctk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ctj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ctl = fmul fast <8 x float> %i.ctk, splat (float f0x3FB8AA3B)
  %i.ctm = fadd fast <8 x float> %i.ctl, splat (float 5.000000e-01) ; 2 uses
  %i.ctn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ctm, i32 1) ; 2 uses
  %i.cto = fcmp fast ogt <8 x float> %i.ctn, %i.ctm
  %i.ctp = select <8 x i1> %i.cto, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ctq = fsub fast <8 x float> %i.ctn, %i.ctp   ; 2 uses
  %i.ctr = fmul fast <8 x float> %i.ctq, splat (float f0x3F317218)
  %i.cts = fsub fast <8 x float> %i.ctk, %i.ctr   ; 8 uses
  %i.ctt = fmul fast <8 x float> %i.cts, %i.cts
  %i.ctu = fmul fast <8 x float> %i.cts, splat (float f0x39506967)
  %i.ctv = fadd fast <8 x float> %i.ctu, splat (float f0x3AB743CE)
  %i.ctw = fmul fast <8 x float> %i.ctv, %i.cts
  %i.ctx = fadd fast <8 x float> %i.ctw, splat (float f0x3C088908)
  %i.cty = fmul fast <8 x float> %i.ctx, %i.cts
  %i.ctz = fadd fast <8 x float> %i.cty, splat (float f0x3D2AA9C1)
  %i.cua = fmul fast <8 x float> %i.ctz, %i.cts
  %i.cub = fadd fast <8 x float> %i.cua, splat (float f0x3E2AAAAA)
  %i.cuc = fmul fast <8 x float> %i.cub, %i.cts
  %i.cud = fadd fast <8 x float> %i.cuc, splat (float 5.000000e-01)
  %i.cue = fmul fast <8 x float> %i.ctt, %i.cud
  %i.cuf = fadd fast <8 x float> %i.cts, splat (float 1.000000e+00)
  %i.cug = fadd fast <8 x float> %i.cuf, %i.cue
  %i.cuh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ctq)
  %i.cui = shl <8 x i32> %i.cuh, splat (i32 23)
  %i.cuj = add <8 x i32> %i.cui, splat (i32 1065353216)
  %i.cuk = bitcast <8 x i32> %i.cuj to <8 x float>
  %i.cul = fmul fast <8 x float> %i.cug, %i.cuk
  %i.cum = fadd fast <8 x float> %i.cul, splat (float 1.000000e+00)
  %i.cun = fdiv fast <8 x float> splat (float 2.000000e+00), %i.cum
  %i.cuo = fadd fast <8 x float> %i.cun, splat (float -1.000000e+00)
  %i.cup = fmul fast <8 x float> %i.cuo, %i.cot
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

.noexc435:                                        ; preds = %._crit_edge5599
  %i.cuq = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.cur = load float, ptr %i.cuq, align 4, !tbaa !27
  %i.cus = insertelement <8 x float> poison, float %i.cur, i64 0
  %i.cut = shufflevector <8 x float> %i.cus, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cuq, i64 4
  %i.cuv = load float, ptr %i.cuu, align 4, !tbaa !27
  %i.cuw = insertelement <8 x float> poison, float %i.cuv, i64 0
  %i.cux = shufflevector <8 x float> %i.cuw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cuy = fmul fast <8 x float> %i.cut, %i.cot
  %i.cuz = fadd fast <8 x float> %i.cuy, %i.cux
  %i.cva = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cuz, <8 x float> zeroinitializer)
  %i.cvb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cva, <8 x float> splat (float 1.000000e+00))
  %i.cvc = fmul fast <8 x float> %i.cvb, %i.cot
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436:   ; preds = %.noexc435, %.noexc434, %.noexc433, %bb.w, %.noexc432, %bb.v, %._crit_edge5599
  %.0.i431 = phi nsz <8 x float> [ %i.cvc, %.noexc435 ], [ %i.cov, %bb.v ], [ %i.cpd, %.noexc432 ], [ %i.cpn, %bb.w ], [ %i.cqt, %.noexc433 ], [ %i.cup, %.noexc434 ], [ %i.cot, %._crit_edge5599 ]
  store <8 x float> %.0.i431, ptr %.03705601, align 1, !tbaa !23
  %i.cvd = getelementptr inbounds nuw i8, ptr %.03705601, i64 32
  %indvars.iv.next5813 = add nuw nsw i64 %indvars.iv5812, 1 ; 2 uses
  %i.cve = load i32, ptr %6, align 4, !tbaa !9
  %i.cvf = sext i32 %i.cve to i64
  %i.cvg = icmp slt i64 %indvars.iv.next5813, %i.cvf
  br i1 %i.cvg, label %.lr.ph5604, label %.thread5129, !llvm.loop !60

.thread5129:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit436
  %.pr5326.pre = load i32, ptr %3, align 4, !tbaa !9 ; 2 uses
  %i.cvh = icmp eq i32 %.pr5326.pre, 8
  br i1 %i.cvh, label %.thread5129.thread, label %thread-pre-split5223

.thread5129.thread:                               ; preds = %.thread5323, %bb.r, %.thread5129
  %i.cvi = load i32, ptr %4, align 4, !tbaa !9
  %i.cvj = icmp eq i32 %i.cvi, 4
  br i1 %i.cvj, label %bb.x, label %.thread5321.thread5336

bb.x:                                             ; preds = %.thread5129.thread
  %i.cvk = load i32, ptr %6, align 4, !tbaa !9
  %i.cvl = icmp sgt i32 %i.cvk, 3
  br i1 %i.cvl, label %.lr.ph5622.preheader, label %.thread5321.thread5336

.lr.ph5622.preheader:                             ; preds = %bb.x
  %i.cvm = load ptr, ptr %5, align 8, !tbaa !17
  %i.cvn = load i32, ptr %i.l, align 4, !tbaa !15
  %i.cvo = sext i32 %i.cvn to i64
  %i.cvp = mul nsw i64 %indvars.iv5833, %i.cvo
  %i.cvq = load i64, ptr %i.m, align 8, !tbaa !24
  %i.cvr = mul i64 %i.cvp, %i.cvq
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvm, i64 %i.cvr
  br label %.lr.ph5622

.lr.ph5622:                                       ; preds = %.lr.ph5622.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %indvars.iv5816 = phi i64 [ 0, %.lr.ph5622.preheader ], [ %indvars.iv.next5817, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.03625619 = phi ptr [ %i.cvs, %.lr.ph5622.preheader ], [ %i.duu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 5 uses
  %i.cvt = load ptr, ptr %7, align 8, !tbaa !17
  %i.cvu = load i32, ptr %i.n, align 4, !tbaa !15
  %i.cvv = sext i32 %i.cvu to i64
  %i.cvw = mul nsw i64 %indvars.iv5816, %i.cvv
  %i.cvx = load i64, ptr %i.o, align 8, !tbaa !24
  %i.cvy = mul i64 %i.cvw, %i.cvx
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvt, i64 %i.cvy
  %i.cwa = load ptr, ptr %8, align 8, !tbaa !17
  %i.cwb = load i32, ptr %i.p, align 4, !tbaa !15
  %i.cwc = sext i32 %i.cwb to i64
  %i.cwd = mul nsw i64 %indvars.iv5833, %i.cwc
  %i.cwe = load i64, ptr %i.q, align 8, !tbaa !24
  %i.cwf = mul i64 %i.cwd, %i.cwe
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwa, i64 %i.cwf
  %i.cwh = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not405 = icmp eq ptr %i.cwh, null
  br i1 %.not405, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph5622
  %.idx5882 = shl nuw nsw i64 %indvars.iv5816, 4
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 %.idx5882 ; 4 uses
  %i.cwj = load float, ptr %i.cwi, align 4, !tbaa !27
  %i.cwk = insertelement <8 x float> poison, float %i.cwj, i64 0
  %i.cwl = shufflevector <8 x float> %i.cwk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwi, i64 4
  %i.cwn = load float, ptr %i.cwm, align 4, !tbaa !27
  %i.cwo = insertelement <8 x float> poison, float %i.cwn, i64 0
  %i.cwp = shufflevector <8 x float> %i.cwo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwi, i64 8
  %i.cwr = load float, ptr %i.cwq, align 4, !tbaa !27
  %i.cws = insertelement <8 x float> poison, float %i.cwr, i64 0
  %i.cwt = shufflevector <8 x float> %i.cws, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwi, i64 12
  %i.cwv = load float, ptr %i.cwu, align 4, !tbaa !27
  %i.cww = insertelement <8 x float> poison, float %i.cwv, i64 0
  %i.cwx = shufflevector <8 x float> %i.cww, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph5622
  %.04598 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5622 ], [ %i.cwl, %bb.y ] ; 2 uses
  %.04596 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5622 ], [ %i.cwp, %bb.y ] ; 2 uses
  %.04594 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5622 ], [ %i.cwt, %bb.y ] ; 2 uses
  %.04592 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph5622 ], [ %i.cwx, %bb.y ] ; 2 uses
  %i.cwy = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.cwz = icmp sgt i32 %i.cwy, 0
  br i1 %i.cwz, label %.lr.ph5613, label %._crit_edge5614

.lr.ph5613:                                       ; preds = %bb.z, %.lr.ph5613
  %.03585611 = phi i32 [ %i.cxr, %.lr.ph5613 ], [ 0, %bb.z ]
  %.03595610 = phi ptr [ %i.cxp, %.lr.ph5613 ], [ %i.cwg, %bb.z ] ; 2 uses
  %.03605609 = phi ptr [ %i.cxq, %.lr.ph5613 ], [ %i.cvz, %bb.z ] ; 2 uses
  %.145935608 = phi <8 x float> [ %i.cxo, %.lr.ph5613 ], [ %.04592, %bb.z ]
  %.145955607 = phi <8 x float> [ %i.cxm, %.lr.ph5613 ], [ %.04594, %bb.z ]
  %.145975606 = phi <8 x float> [ %i.cxk, %.lr.ph5613 ], [ %.04596, %bb.z ]
  %.145995605 = phi <8 x float> [ %i.cxi, %.lr.ph5613 ], [ %.04598, %bb.z ]
  %i.cxa = load <8 x float>, ptr %.03595610, align 1, !tbaa !23 ; 4 uses
  %i.cxb = load <4 x half>, ptr %.03605609, align 1, !tbaa !23
  %i.cxc = fpext fast <4 x half> %i.cxb to <4 x float> ; 4 uses
  %i.cxd = shufflevector <4 x float> %i.cxc, <4 x float> poison, <8 x i32> zeroinitializer
  %i.cxe = shufflevector <4 x float> %i.cxc, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.cxf = shufflevector <4 x float> %i.cxc, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.cxg = shufflevector <4 x float> %i.cxc, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cxh = fmul fast <8 x float> %i.cxd, %i.cxa
  %i.cxi = fadd fast <8 x float> %i.cxh, %.145995605 ; 2 uses
  %i.cxj = fmul fast <8 x float> %i.cxe, %i.cxa
  %i.cxk = fadd fast <8 x float> %i.cxj, %.145975606 ; 2 uses
  %i.cxl = fmul fast <8 x float> %i.cxf, %i.cxa
  %i.cxm = fadd fast <8 x float> %i.cxl, %.145955607 ; 2 uses
  %i.cxn = fmul fast <8 x float> %i.cxg, %i.cxa
  %i.cxo = fadd fast <8 x float> %i.cxn, %.145935608 ; 2 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %.03595610, i64 32
  %i.cxq = getelementptr inbounds nuw i8, ptr %.03605609, i64 8
  %i.cxr = add nuw nsw i32 %.03585611, 1          ; 2 uses
  %exitcond5815.not = icmp eq i32 %i.cxr, %i.cwy
  br i1 %exitcond5815.not, label %._crit_edge5614, label %.lr.ph5613, !llvm.loop !61

._crit_edge5614:                                  ; preds = %.lr.ph5613, %bb.z
  %.14599.lcssa = phi <8 x float> [ %.04598, %bb.z ], [ %i.cxi, %.lr.ph5613 ] ; 10 uses
  %.14597.lcssa = phi <8 x float> [ %.04596, %bb.z ], [ %i.cxk, %.lr.ph5613 ] ; 10 uses
  %.14595.lcssa = phi <8 x float> [ %.04594, %bb.z ], [ %i.cxm, %.lr.ph5613 ] ; 10 uses
  %.14593.lcssa = phi <8 x float> [ %.04592, %bb.z ], [ %i.cxo, %.lr.ph5613 ] ; 10 uses
  %i.cxs = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.cxs, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread: ; preds = %._crit_edge5614
  %i.cxt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14599.lcssa, <8 x float> zeroinitializer)
  %i.cxu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14597.lcssa, <8 x float> zeroinitializer)
  %i.cxv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14595.lcssa, <8 x float> zeroinitializer)
  %i.cxw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14593.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133: ; preds = %._crit_edge5614
  %i.cxx = load ptr, ptr %12, align 8, !tbaa !17
  %i.cxy = load float, ptr %i.cxx, align 4, !tbaa !27
  %i.cxz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14599.lcssa)
  %i.cya = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14599.lcssa)
  %i.cyb = insertelement <8 x float> poison, float %i.cxy, i64 0
  %i.cyc = shufflevector <8 x float> %i.cyb, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cyd = fmul fast <8 x float> %i.cyc, %i.cya
  %i.cye = fadd fast <8 x float> %i.cyd, %i.cxz
  %i.cyf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14597.lcssa)
  %i.cyg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14597.lcssa)
  %i.cyh = fmul fast <8 x float> %i.cyc, %i.cyg
  %i.cyi = fadd fast <8 x float> %i.cyh, %i.cyf
  %i.cyj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14595.lcssa)
  %i.cyk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14595.lcssa)
  %i.cyl = fmul fast <8 x float> %i.cyc, %i.cyk
  %i.cym = fadd fast <8 x float> %i.cyl, %i.cyj
  %i.cyn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14593.lcssa)
  %i.cyo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.14593.lcssa)
  %i.cyp = fmul fast <8 x float> %i.cyc, %i.cyo
  %i.cyq = fadd fast <8 x float> %i.cyp, %i.cyn
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136: ; preds = %._crit_edge5614
  %i.cyr = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.cys = load float, ptr %i.cyr, align 4, !tbaa !27
  %i.cyt = insertelement <8 x float> poison, float %i.cys, i64 0
  %i.cyu = shufflevector <8 x float> %i.cyt, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyr, i64 4
  %i.cyw = load float, ptr %i.cyv, align 4, !tbaa !27
  %i.cyx = insertelement <8 x float> poison, float %i.cyw, i64 0
  %i.cyy = shufflevector <8 x float> %i.cyx, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cyz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14599.lcssa, <8 x float> nofpclass(nan inf) %i.cyu)
  %i.cza = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cyz, <8 x float> nofpclass(nan inf) %i.cyy)
  %i.czb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14597.lcssa, <8 x float> nofpclass(nan inf) %i.cyu)
  %i.czc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.czb, <8 x float> nofpclass(nan inf) %i.cyy)
  %i.czd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14595.lcssa, <8 x float> nofpclass(nan inf) %i.cyu)
  %i.cze = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.czd, <8 x float> nofpclass(nan inf) %i.cyy)
  %i.czf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.14593.lcssa, <8 x float> nofpclass(nan inf) %i.cyu)
  %i.czg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.czf, <8 x float> nofpclass(nan inf) %i.cyy)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139: ; preds = %._crit_edge5614
  %i.czh = fneg fast <8 x float> %.14599.lcssa
  %i.czi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.czh, <8 x float> splat (float f0x42B0C0A5))
  %i.czj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.czi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.czk = fmul fast <8 x float> %i.czj, splat (float f0x3FB8AA3B)
  %i.czl = fadd fast <8 x float> %i.czk, splat (float 5.000000e-01) ; 2 uses
  %i.czm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.czl, i32 1) ; 2 uses
  %i.czn = fcmp fast ogt <8 x float> %i.czm, %i.czl
  %i.czo = select <8 x i1> %i.czn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.czp = fsub fast <8 x float> %i.czm, %i.czo   ; 2 uses
  %i.czq = fmul fast <8 x float> %i.czp, splat (float f0x3F317218)
  %i.czr = fsub fast <8 x float> %i.czj, %i.czq   ; 8 uses
  %i.czs = fmul fast <8 x float> %i.czr, %i.czr
  %i.czt = fmul fast <8 x float> %i.czr, splat (float f0x39506967)
  %i.czu = fadd fast <8 x float> %i.czt, splat (float f0x3AB743CE)
  %i.czv = fmul fast <8 x float> %i.czu, %i.czr
  %i.czw = fadd fast <8 x float> %i.czv, splat (float f0x3C088908)
  %i.czx = fmul fast <8 x float> %i.czw, %i.czr
  %i.czy = fadd fast <8 x float> %i.czx, splat (float f0x3D2AA9C1)
  %i.czz = fmul fast <8 x float> %i.czy, %i.czr
  %i.daa = fadd fast <8 x float> %i.czz, splat (float f0x3E2AAAAA)
  %i.dab = fmul fast <8 x float> %i.daa, %i.czr
  %i.dac = fadd fast <8 x float> %i.dab, splat (float 5.000000e-01)
  %i.dad = fmul fast <8 x float> %i.czs, %i.dac
  %i.dae = fadd fast <8 x float> %i.czr, splat (float 1.000000e+00)
  %i.daf = fadd fast <8 x float> %i.dae, %i.dad
  %i.dag = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.czp)
  %i.dah = shl <8 x i32> %i.dag, splat (i32 23)
  %i.dai = add <8 x i32> %i.dah, splat (i32 1065353216)
  %i.daj = bitcast <8 x i32> %i.dai to <8 x float>
  %i.dak = fmul fast <8 x float> %i.daf, %i.daj
  %i.dal = fadd fast <8 x float> %i.dak, splat (float 1.000000e+00)
  %i.dam = fdiv fast <8 x float> splat (float 1.000000e+00), %i.dal
  %i.dan = fneg fast <8 x float> %.14597.lcssa
  %i.dao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dan, <8 x float> splat (float f0x42B0C0A5))
  %i.dap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dao, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.daq = fmul fast <8 x float> %i.dap, splat (float f0x3FB8AA3B)
  %i.dar = fadd fast <8 x float> %i.daq, splat (float 5.000000e-01) ; 2 uses
  %i.das = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dar, i32 1) ; 2 uses
  %i.dat = fcmp fast ogt <8 x float> %i.das, %i.dar
  %i.dau = select <8 x i1> %i.dat, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dav = fsub fast <8 x float> %i.das, %i.dau   ; 2 uses
  %i.daw = fmul fast <8 x float> %i.dav, splat (float f0x3F317218)
  %i.dax = fsub fast <8 x float> %i.dap, %i.daw   ; 8 uses
  %i.day = fmul fast <8 x float> %i.dax, %i.dax
  %i.daz = fmul fast <8 x float> %i.dax, splat (float f0x39506967)
  %i.dba = fadd fast <8 x float> %i.daz, splat (float f0x3AB743CE)
  %i.dbb = fmul fast <8 x float> %i.dba, %i.dax
  %i.dbc = fadd fast <8 x float> %i.dbb, splat (float f0x3C088908)
  %i.dbd = fmul fast <8 x float> %i.dbc, %i.dax
  %i.dbe = fadd fast <8 x float> %i.dbd, splat (float f0x3D2AA9C1)
  %i.dbf = fmul fast <8 x float> %i.dbe, %i.dax
  %i.dbg = fadd fast <8 x float> %i.dbf, splat (float f0x3E2AAAAA)
  %i.dbh = fmul fast <8 x float> %i.dbg, %i.dax
  %i.dbi = fadd fast <8 x float> %i.dbh, splat (float 5.000000e-01)
  %i.dbj = fmul fast <8 x float> %i.day, %i.dbi
  %i.dbk = fadd fast <8 x float> %i.dax, splat (float 1.000000e+00)
  %i.dbl = fadd fast <8 x float> %i.dbk, %i.dbj
  %i.dbm = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dav)
  %i.dbn = shl <8 x i32> %i.dbm, splat (i32 23)
  %i.dbo = add <8 x i32> %i.dbn, splat (i32 1065353216)
  %i.dbp = bitcast <8 x i32> %i.dbo to <8 x float>
  %i.dbq = fmul fast <8 x float> %i.dbl, %i.dbp
  %i.dbr = fadd fast <8 x float> %i.dbq, splat (float 1.000000e+00)
  %i.dbs = fdiv fast <8 x float> splat (float 1.000000e+00), %i.dbr
  %i.dbt = fneg fast <8 x float> %.14595.lcssa
  %i.dbu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dbt, <8 x float> splat (float f0x42B0C0A5))
  %i.dbv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dbu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dbw = fmul fast <8 x float> %i.dbv, splat (float f0x3FB8AA3B)
  %i.dbx = fadd fast <8 x float> %i.dbw, splat (float 5.000000e-01) ; 2 uses
  %i.dby = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dbx, i32 1) ; 2 uses
  %i.dbz = fcmp fast ogt <8 x float> %i.dby, %i.dbx
  %i.dca = select <8 x i1> %i.dbz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dcb = fsub fast <8 x float> %i.dby, %i.dca   ; 2 uses
  %i.dcc = fmul fast <8 x float> %i.dcb, splat (float f0x3F317218)
  %i.dcd = fsub fast <8 x float> %i.dbv, %i.dcc   ; 8 uses
  %i.dce = fmul fast <8 x float> %i.dcd, %i.dcd
  %i.dcf = fmul fast <8 x float> %i.dcd, splat (float f0x39506967)
  %i.dcg = fadd fast <8 x float> %i.dcf, splat (float f0x3AB743CE)
  %i.dch = fmul fast <8 x float> %i.dcg, %i.dcd
  %i.dci = fadd fast <8 x float> %i.dch, splat (float f0x3C088908)
  %i.dcj = fmul fast <8 x float> %i.dci, %i.dcd
  %i.dck = fadd fast <8 x float> %i.dcj, splat (float f0x3D2AA9C1)
  %i.dcl = fmul fast <8 x float> %i.dck, %i.dcd
  %i.dcm = fadd fast <8 x float> %i.dcl, splat (float f0x3E2AAAAA)
  %i.dcn = fmul fast <8 x float> %i.dcm, %i.dcd
  %i.dco = fadd fast <8 x float> %i.dcn, splat (float 5.000000e-01)
  %i.dcp = fmul fast <8 x float> %i.dce, %i.dco
  %i.dcq = fadd fast <8 x float> %i.dcd, splat (float 1.000000e+00)
  %i.dcr = fadd fast <8 x float> %i.dcq, %i.dcp
  %i.dcs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dcb)
  %i.dct = shl <8 x i32> %i.dcs, splat (i32 23)
  %i.dcu = add <8 x i32> %i.dct, splat (i32 1065353216)
  %i.dcv = bitcast <8 x i32> %i.dcu to <8 x float>
  %i.dcw = fmul fast <8 x float> %i.dcr, %i.dcv
  %i.dcx = fadd fast <8 x float> %i.dcw, splat (float 1.000000e+00)
  %i.dcy = fdiv fast <8 x float> splat (float 1.000000e+00), %i.dcx
  %i.dcz = fneg fast <8 x float> %.14593.lcssa
  %i.dda = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dcz, <8 x float> splat (float f0x42B0C0A5))
  %i.ddb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dda, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ddc = fmul fast <8 x float> %i.ddb, splat (float f0x3FB8AA3B)
  %i.ddd = fadd fast <8 x float> %i.ddc, splat (float 5.000000e-01) ; 2 uses
  %i.dde = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ddd, i32 1) ; 2 uses
  %i.ddf = fcmp fast ogt <8 x float> %i.dde, %i.ddd
  %i.ddg = select <8 x i1> %i.ddf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ddh = fsub fast <8 x float> %i.dde, %i.ddg   ; 2 uses
  %i.ddi = fmul fast <8 x float> %i.ddh, splat (float f0x3F317218)
  %i.ddj = fsub fast <8 x float> %i.ddb, %i.ddi   ; 8 uses
  %i.ddk = fmul fast <8 x float> %i.ddj, %i.ddj
  %i.ddl = fmul fast <8 x float> %i.ddj, splat (float f0x39506967)
  %i.ddm = fadd fast <8 x float> %i.ddl, splat (float f0x3AB743CE)
  %i.ddn = fmul fast <8 x float> %i.ddm, %i.ddj
  %i.ddo = fadd fast <8 x float> %i.ddn, splat (float f0x3C088908)
  %i.ddp = fmul fast <8 x float> %i.ddo, %i.ddj
  %i.ddq = fadd fast <8 x float> %i.ddp, splat (float f0x3D2AA9C1)
  %i.ddr = fmul fast <8 x float> %i.ddq, %i.ddj
  %i.dds = fadd fast <8 x float> %i.ddr, splat (float f0x3E2AAAAA)
  %i.ddt = fmul fast <8 x float> %i.dds, %i.ddj
  %i.ddu = fadd fast <8 x float> %i.ddt, splat (float 5.000000e-01)
  %i.ddv = fmul fast <8 x float> %i.ddk, %i.ddu
  %i.ddw = fadd fast <8 x float> %i.ddj, splat (float 1.000000e+00)
  %i.ddx = fadd fast <8 x float> %i.ddw, %i.ddv
  %i.ddy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ddh)
  %i.ddz = shl <8 x i32> %i.ddy, splat (i32 23)
  %i.dea = add <8 x i32> %i.ddz, splat (i32 1065353216)
  %i.deb = bitcast <8 x i32> %i.dea to <8 x float>
  %i.dec = fmul fast <8 x float> %i.ddx, %i.deb
  %i.ded = fadd fast <8 x float> %i.dec, splat (float 1.000000e+00)
  %i.dee = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ded
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142: ; preds = %._crit_edge5614
  %i.def = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14599.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.deg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.def, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.deh = fmul fast <8 x float> %i.deg, splat (float f0x3FB8AA3B)
  %i.dei = fadd fast <8 x float> %i.deh, splat (float 5.000000e-01) ; 2 uses
  %i.dej = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dei, i32 1) ; 2 uses
  %i.dek = fcmp fast ogt <8 x float> %i.dej, %i.dei
  %i.del = select <8 x i1> %i.dek, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dem = fsub fast <8 x float> %i.dej, %i.del   ; 2 uses
  %i.den = fmul fast <8 x float> %i.dem, splat (float f0x3F317218)
  %i.deo = fsub fast <8 x float> %i.deg, %i.den   ; 8 uses
  %i.dep = fmul fast <8 x float> %i.deo, %i.deo
  %i.deq = fmul fast <8 x float> %i.deo, splat (float f0x39506967)
  %i.der = fadd fast <8 x float> %i.deq, splat (float f0x3AB743CE)
  %i.des = fmul fast <8 x float> %i.der, %i.deo
  %i.det = fadd fast <8 x float> %i.des, splat (float f0x3C088908)
  %i.deu = fmul fast <8 x float> %i.det, %i.deo
  %i.dev = fadd fast <8 x float> %i.deu, splat (float f0x3D2AA9C1)
  %i.dew = fmul fast <8 x float> %i.dev, %i.deo
  %i.dex = fadd fast <8 x float> %i.dew, splat (float f0x3E2AAAAA)
  %i.dey = fmul fast <8 x float> %i.dex, %i.deo
  %i.dez = fadd fast <8 x float> %i.dey, splat (float 5.000000e-01)
  %i.dfa = fmul fast <8 x float> %i.dep, %i.dez
  %i.dfb = fadd fast <8 x float> %i.deo, splat (float 1.000000e+00)
  %i.dfc = fadd fast <8 x float> %i.dfb, %i.dfa
  %i.dfd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dem)
  %i.dfe = shl <8 x i32> %i.dfd, splat (i32 23)
  %i.dff = add <8 x i32> %i.dfe, splat (i32 1065353216)
  %i.dfg = bitcast <8 x i32> %i.dff to <8 x float>
  %i.dfh = fmul fast <8 x float> %i.dfc, %i.dfg
  %i.dfi = fadd fast <8 x float> %i.dfh, splat (float 1.000000e+00) ; 2 uses
  %i.dfj = fcmp fast ole <8 x float> %i.dfi, zeroinitializer
  %i.dfk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dfi, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.dfl = bitcast <8 x float> %i.dfk to <8 x i32>
  %i.dfm = bitcast <8 x float> %i.dfk to <8 x i32>
  %i.dfn = and <8 x i32> %i.dfm, splat (i32 -2139095041)
  %i.dfo = or disjoint <8 x i32> %i.dfn, splat (i32 1056964608)
  %i.dfp = bitcast <8 x i32> %i.dfo to <8 x float> ; 3 uses
  %i.dfq = lshr <8 x i32> %i.dfl, splat (i32 23)
  %i.dfr = add nsw <8 x i32> %i.dfq, splat (i32 -127)
  %i.dfs = sitofp fast <8 x i32> %i.dfr to <8 x float> ; 2 uses
  %i.dft = fadd fast <8 x float> %i.dfs, splat (float 1.000000e+00)
  %i.dfu = fcmp fast olt <8 x float> %i.dfp, splat (float f0x3F3504F3) ; 2 uses
  %i.dfv = select <8 x i1> %i.dfu, <8 x float> %i.dfp, <8 x float> zeroinitializer
  %i.dfw = fadd fast <8 x float> %i.dfp, splat (float -1.000000e+00)
  %i.dfx = select fast <8 x i1> %i.dfu, <8 x float> %i.dfs, <8 x float> %i.dft
  %i.dfy = fadd fast <8 x float> %i.dfw, %i.dfv   ; 12 uses
  %i.dfz = fmul fast <8 x float> %i.dfy, %i.dfy
  %i.dga = fmul fast <8 x float> %i.dfy, splat (float f0x3D9021BB)
  %i.dgb = fadd fast <8 x float> %i.dga, splat (float f0xBDEBD1B8)
  %i.dgc = fmul fast <8 x float> %i.dgb, %i.dfy
  %i.dgd = fadd fast <8 x float> %i.dgc, splat (float f0x3DEF251A)
  %i.dge = fmul fast <8 x float> %i.dgd, %i.dfy
  %i.dgf = fadd fast <8 x float> %i.dge, splat (float f0xBDFE5D4F)
  %i.dgg = fmul fast <8 x float> %i.dgf, %i.dfy
  %i.dgh = fadd fast <8 x float> %i.dgg, splat (float f0x3E11E9BF)
  %i.dgi = fmul fast <8 x float> %i.dgh, %i.dfy
  %i.dgj = fadd fast <8 x float> %i.dgi, splat (float f0xBE2AAE50)
  %i.dgk = fmul fast <8 x float> %i.dgj, %i.dfy
  %i.dgl = fadd fast <8 x float> %i.dgk, splat (float f0x3E4CCEAC)
  %i.dgm = fmul fast <8 x float> %i.dgl, %i.dfy
  %i.dgn = fadd fast <8 x float> %i.dgm, splat (float f0xBE7FFFFC)
  %i.dgo = fmul fast <8 x float> %i.dgn, %i.dfy
  %i.dgp = fadd fast <8 x float> %i.dgo, splat (float f0x3EAAAAAA)
  %i.dgq = fmul fast <8 x float> %i.dgp, %i.dfy
  %reass.mul5389 = fmul fast <8 x float> %i.dfx, splat (float f0x3F317218)
  %reass.add5399 = fadd fast <8 x float> %i.dgq, splat (float -5.000000e-01)
  %reass.mul5400 = fmul fast <8 x float> %i.dfz, %reass.add5399
  %i.dgr = fadd fast <8 x float> %reass.mul5389, %i.dfy
  %i.dgs = fadd fast <8 x float> %i.dgr, %reass.mul5400
  %.neg5344 = fmul fast <8 x float> %i.dgs, splat (float -2.000000e+00)
  %i.dgt = select fast <8 x i1> %i.dfj, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5344
  %i.dgu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dgt, <8 x float> splat (float f0x42B0C0A5))
  %i.dgv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dgu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dgw = fmul fast <8 x float> %i.dgv, splat (float f0x3FB8AA3B)
  %i.dgx = fadd fast <8 x float> %i.dgw, splat (float 5.000000e-01) ; 2 uses
  %i.dgy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dgx, i32 1) ; 2 uses
  %i.dgz = fcmp fast ogt <8 x float> %i.dgy, %i.dgx
  %i.dha = select <8 x i1> %i.dgz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dhb = fsub fast <8 x float> %i.dgy, %i.dha   ; 2 uses
  %i.dhc = fmul fast <8 x float> %i.dhb, splat (float f0x3F317218)
  %i.dhd = fsub fast <8 x float> %i.dgv, %i.dhc   ; 8 uses
  %i.dhe = fmul fast <8 x float> %i.dhd, %i.dhd
  %i.dhf = fmul fast <8 x float> %i.dhd, splat (float f0x39506967)
  %i.dhg = fadd fast <8 x float> %i.dhf, splat (float f0x3AB743CE)
  %i.dhh = fmul fast <8 x float> %i.dhg, %i.dhd
  %i.dhi = fadd fast <8 x float> %i.dhh, splat (float f0x3C088908)
  %i.dhj = fmul fast <8 x float> %i.dhi, %i.dhd
  %i.dhk = fadd fast <8 x float> %i.dhj, splat (float f0x3D2AA9C1)
  %i.dhl = fmul fast <8 x float> %i.dhk, %i.dhd
  %i.dhm = fadd fast <8 x float> %i.dhl, splat (float f0x3E2AAAAA)
  %i.dhn = fmul fast <8 x float> %i.dhm, %i.dhd
  %i.dho = fadd fast <8 x float> %i.dhn, splat (float 5.000000e-01)
  %i.dhp = fmul fast <8 x float> %i.dhe, %i.dho
  %i.dhq = fadd fast <8 x float> %i.dhd, splat (float 1.000000e+00)
  %i.dhr = fadd fast <8 x float> %i.dhq, %i.dhp
  %i.dhs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dhb)
  %i.dht = shl <8 x i32> %i.dhs, splat (i32 23)
  %i.dhu = add <8 x i32> %i.dht, splat (i32 1065353216)
  %i.dhv = bitcast <8 x i32> %i.dhu to <8 x float>
  %i.dhw = fmul fast <8 x float> %i.dhr, %i.dhv
  %i.dhx = fadd fast <8 x float> %i.dhw, splat (float 1.000000e+00)
  %i.dhy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dhx
  %i.dhz = fadd fast <8 x float> %i.dhy, splat (float -1.000000e+00)
  %i.dia = fmul fast <8 x float> %i.dhz, %.14599.lcssa
  %i.dib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14597.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.dic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dib, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.did = fmul fast <8 x float> %i.dic, splat (float f0x3FB8AA3B)
  %i.die = fadd fast <8 x float> %i.did, splat (float 5.000000e-01) ; 2 uses
  %i.dif = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.die, i32 1) ; 2 uses
  %i.dig = fcmp fast ogt <8 x float> %i.dif, %i.die
  %i.dih = select <8 x i1> %i.dig, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dii = fsub fast <8 x float> %i.dif, %i.dih   ; 2 uses
  %i.dij = fmul fast <8 x float> %i.dii, splat (float f0x3F317218)
  %i.dik = fsub fast <8 x float> %i.dic, %i.dij   ; 8 uses
  %i.dil = fmul fast <8 x float> %i.dik, %i.dik
  %i.dim = fmul fast <8 x float> %i.dik, splat (float f0x39506967)
  %i.din = fadd fast <8 x float> %i.dim, splat (float f0x3AB743CE)
  %i.dio = fmul fast <8 x float> %i.din, %i.dik
  %i.dip = fadd fast <8 x float> %i.dio, splat (float f0x3C088908)
  %i.diq = fmul fast <8 x float> %i.dip, %i.dik
  %i.dir = fadd fast <8 x float> %i.diq, splat (float f0x3D2AA9C1)
  %i.dis = fmul fast <8 x float> %i.dir, %i.dik
  %i.dit = fadd fast <8 x float> %i.dis, splat (float f0x3E2AAAAA)
  %i.diu = fmul fast <8 x float> %i.dit, %i.dik
  %i.div = fadd fast <8 x float> %i.diu, splat (float 5.000000e-01)
  %i.diw = fmul fast <8 x float> %i.dil, %i.div
  %i.dix = fadd fast <8 x float> %i.dik, splat (float 1.000000e+00)
  %i.diy = fadd fast <8 x float> %i.dix, %i.diw
  %i.diz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dii)
  %i.dja = shl <8 x i32> %i.diz, splat (i32 23)
  %i.djb = add <8 x i32> %i.dja, splat (i32 1065353216)
  %i.djc = bitcast <8 x i32> %i.djb to <8 x float>
  %i.djd = fmul fast <8 x float> %i.diy, %i.djc
  %i.dje = fadd fast <8 x float> %i.djd, splat (float 1.000000e+00) ; 2 uses
  %i.djf = fcmp fast ole <8 x float> %i.dje, zeroinitializer
  %i.djg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dje, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.djh = bitcast <8 x float> %i.djg to <8 x i32>
  %i.dji = bitcast <8 x float> %i.djg to <8 x i32>
  %i.djj = and <8 x i32> %i.dji, splat (i32 -2139095041)
  %i.djk = or disjoint <8 x i32> %i.djj, splat (i32 1056964608)
  %i.djl = bitcast <8 x i32> %i.djk to <8 x float> ; 3 uses
  %i.djm = lshr <8 x i32> %i.djh, splat (i32 23)
  %i.djn = add nsw <8 x i32> %i.djm, splat (i32 -127)
  %i.djo = sitofp fast <8 x i32> %i.djn to <8 x float> ; 2 uses
  %i.djp = fadd fast <8 x float> %i.djo, splat (float 1.000000e+00)
  %i.djq = fcmp fast olt <8 x float> %i.djl, splat (float f0x3F3504F3) ; 2 uses
  %i.djr = select <8 x i1> %i.djq, <8 x float> %i.djl, <8 x float> zeroinitializer
  %i.djs = fadd fast <8 x float> %i.djl, splat (float -1.000000e+00)
  %i.djt = select fast <8 x i1> %i.djq, <8 x float> %i.djo, <8 x float> %i.djp
  %i.dju = fadd fast <8 x float> %i.djs, %i.djr   ; 12 uses
  %i.djv = fmul fast <8 x float> %i.dju, %i.dju
  %i.djw = fmul fast <8 x float> %i.dju, splat (float f0x3D9021BB)
  %i.djx = fadd fast <8 x float> %i.djw, splat (float f0xBDEBD1B8)
  %i.djy = fmul fast <8 x float> %i.djx, %i.dju
  %i.djz = fadd fast <8 x float> %i.djy, splat (float f0x3DEF251A)
  %i.dka = fmul fast <8 x float> %i.djz, %i.dju
  %i.dkb = fadd fast <8 x float> %i.dka, splat (float f0xBDFE5D4F)
  %i.dkc = fmul fast <8 x float> %i.dkb, %i.dju
  %i.dkd = fadd fast <8 x float> %i.dkc, splat (float f0x3E11E9BF)
  %i.dke = fmul fast <8 x float> %i.dkd, %i.dju
  %i.dkf = fadd fast <8 x float> %i.dke, splat (float f0xBE2AAE50)
  %i.dkg = fmul fast <8 x float> %i.dkf, %i.dju
  %i.dkh = fadd fast <8 x float> %i.dkg, splat (float f0x3E4CCEAC)
  %i.dki = fmul fast <8 x float> %i.dkh, %i.dju
  %i.dkj = fadd fast <8 x float> %i.dki, splat (float f0xBE7FFFFC)
  %i.dkk = fmul fast <8 x float> %i.dkj, %i.dju
  %i.dkl = fadd fast <8 x float> %i.dkk, splat (float f0x3EAAAAAA)
  %i.dkm = fmul fast <8 x float> %i.dkl, %i.dju
  %reass.mul5392 = fmul fast <8 x float> %i.djt, splat (float f0x3F317218)
  %reass.add5401 = fadd fast <8 x float> %i.dkm, splat (float -5.000000e-01)
  %reass.mul5402 = fmul fast <8 x float> %i.djv, %reass.add5401
  %i.dkn = fadd fast <8 x float> %reass.mul5392, %i.dju
  %i.dko = fadd fast <8 x float> %i.dkn, %reass.mul5402
  %.neg5345 = fmul fast <8 x float> %i.dko, splat (float -2.000000e+00)
  %i.dkp = select fast <8 x i1> %i.djf, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5345
  %i.dkq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dkp, <8 x float> splat (float f0x42B0C0A5))
  %i.dkr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dkq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dks = fmul fast <8 x float> %i.dkr, splat (float f0x3FB8AA3B)
  %i.dkt = fadd fast <8 x float> %i.dks, splat (float 5.000000e-01) ; 2 uses
  %i.dku = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dkt, i32 1) ; 2 uses
  %i.dkv = fcmp fast ogt <8 x float> %i.dku, %i.dkt
  %i.dkw = select <8 x i1> %i.dkv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dkx = fsub fast <8 x float> %i.dku, %i.dkw   ; 2 uses
  %i.dky = fmul fast <8 x float> %i.dkx, splat (float f0x3F317218)
  %i.dkz = fsub fast <8 x float> %i.dkr, %i.dky   ; 8 uses
  %i.dla = fmul fast <8 x float> %i.dkz, %i.dkz
  %i.dlb = fmul fast <8 x float> %i.dkz, splat (float f0x39506967)
  %i.dlc = fadd fast <8 x float> %i.dlb, splat (float f0x3AB743CE)
  %i.dld = fmul fast <8 x float> %i.dlc, %i.dkz
  %i.dle = fadd fast <8 x float> %i.dld, splat (float f0x3C088908)
  %i.dlf = fmul fast <8 x float> %i.dle, %i.dkz
  %i.dlg = fadd fast <8 x float> %i.dlf, splat (float f0x3D2AA9C1)
  %i.dlh = fmul fast <8 x float> %i.dlg, %i.dkz
  %i.dli = fadd fast <8 x float> %i.dlh, splat (float f0x3E2AAAAA)
  %i.dlj = fmul fast <8 x float> %i.dli, %i.dkz
  %i.dlk = fadd fast <8 x float> %i.dlj, splat (float 5.000000e-01)
  %i.dll = fmul fast <8 x float> %i.dla, %i.dlk
  %i.dlm = fadd fast <8 x float> %i.dkz, splat (float 1.000000e+00)
  %i.dln = fadd fast <8 x float> %i.dlm, %i.dll
  %i.dlo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dkx)
  %i.dlp = shl <8 x i32> %i.dlo, splat (i32 23)
  %i.dlq = add <8 x i32> %i.dlp, splat (i32 1065353216)
  %i.dlr = bitcast <8 x i32> %i.dlq to <8 x float>
  %i.dls = fmul fast <8 x float> %i.dln, %i.dlr
  %i.dlt = fadd fast <8 x float> %i.dls, splat (float 1.000000e+00)
  %i.dlu = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dlt
  %i.dlv = fadd fast <8 x float> %i.dlu, splat (float -1.000000e+00)
  %i.dlw = fmul fast <8 x float> %i.dlv, %.14597.lcssa
  %i.dlx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14595.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.dly = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dlx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dlz = fmul fast <8 x float> %i.dly, splat (float f0x3FB8AA3B)
  %i.dma = fadd fast <8 x float> %i.dlz, splat (float 5.000000e-01) ; 2 uses
  %i.dmb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dma, i32 1) ; 2 uses
  %i.dmc = fcmp fast ogt <8 x float> %i.dmb, %i.dma
  %i.dmd = select <8 x i1> %i.dmc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dme = fsub fast <8 x float> %i.dmb, %i.dmd   ; 2 uses
  %i.dmf = fmul fast <8 x float> %i.dme, splat (float f0x3F317218)
  %i.dmg = fsub fast <8 x float> %i.dly, %i.dmf   ; 8 uses
  %i.dmh = fmul fast <8 x float> %i.dmg, %i.dmg
  %i.dmi = fmul fast <8 x float> %i.dmg, splat (float f0x39506967)
  %i.dmj = fadd fast <8 x float> %i.dmi, splat (float f0x3AB743CE)
  %i.dmk = fmul fast <8 x float> %i.dmj, %i.dmg
  %i.dml = fadd fast <8 x float> %i.dmk, splat (float f0x3C088908)
  %i.dmm = fmul fast <8 x float> %i.dml, %i.dmg
  %i.dmn = fadd fast <8 x float> %i.dmm, splat (float f0x3D2AA9C1)
  %i.dmo = fmul fast <8 x float> %i.dmn, %i.dmg
  %i.dmp = fadd fast <8 x float> %i.dmo, splat (float f0x3E2AAAAA)
  %i.dmq = fmul fast <8 x float> %i.dmp, %i.dmg
  %i.dmr = fadd fast <8 x float> %i.dmq, splat (float 5.000000e-01)
  %i.dms = fmul fast <8 x float> %i.dmh, %i.dmr
  %i.dmt = fadd fast <8 x float> %i.dmg, splat (float 1.000000e+00)
  %i.dmu = fadd fast <8 x float> %i.dmt, %i.dms
  %i.dmv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dme)
  %i.dmw = shl <8 x i32> %i.dmv, splat (i32 23)
  %i.dmx = add <8 x i32> %i.dmw, splat (i32 1065353216)
  %i.dmy = bitcast <8 x i32> %i.dmx to <8 x float>
  %i.dmz = fmul fast <8 x float> %i.dmu, %i.dmy
  %i.dna = fadd fast <8 x float> %i.dmz, splat (float 1.000000e+00) ; 2 uses
  %i.dnb = fcmp fast ole <8 x float> %i.dna, zeroinitializer
  %i.dnc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dna, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.dnd = bitcast <8 x float> %i.dnc to <8 x i32>
  %i.dne = bitcast <8 x float> %i.dnc to <8 x i32>
  %i.dnf = and <8 x i32> %i.dne, splat (i32 -2139095041)
  %i.dng = or disjoint <8 x i32> %i.dnf, splat (i32 1056964608)
  %i.dnh = bitcast <8 x i32> %i.dng to <8 x float> ; 3 uses
  %i.dni = lshr <8 x i32> %i.dnd, splat (i32 23)
  %i.dnj = add nsw <8 x i32> %i.dni, splat (i32 -127)
  %i.dnk = sitofp fast <8 x i32> %i.dnj to <8 x float> ; 2 uses
  %i.dnl = fadd fast <8 x float> %i.dnk, splat (float 1.000000e+00)
  %i.dnm = fcmp fast olt <8 x float> %i.dnh, splat (float f0x3F3504F3) ; 2 uses
  %i.dnn = select <8 x i1> %i.dnm, <8 x float> %i.dnh, <8 x float> zeroinitializer
  %i.dno = fadd fast <8 x float> %i.dnh, splat (float -1.000000e+00)
  %i.dnp = select fast <8 x i1> %i.dnm, <8 x float> %i.dnk, <8 x float> %i.dnl
  %i.dnq = fadd fast <8 x float> %i.dno, %i.dnn   ; 12 uses
  %i.dnr = fmul fast <8 x float> %i.dnq, %i.dnq
  %i.dns = fmul fast <8 x float> %i.dnq, splat (float f0x3D9021BB)
  %i.dnt = fadd fast <8 x float> %i.dns, splat (float f0xBDEBD1B8)
  %i.dnu = fmul fast <8 x float> %i.dnt, %i.dnq
  %i.dnv = fadd fast <8 x float> %i.dnu, splat (float f0x3DEF251A)
  %i.dnw = fmul fast <8 x float> %i.dnv, %i.dnq
  %i.dnx = fadd fast <8 x float> %i.dnw, splat (float f0xBDFE5D4F)
  %i.dny = fmul fast <8 x float> %i.dnx, %i.dnq
  %i.dnz = fadd fast <8 x float> %i.dny, splat (float f0x3E11E9BF)
  %i.doa = fmul fast <8 x float> %i.dnz, %i.dnq
  %i.dob = fadd fast <8 x float> %i.doa, splat (float f0xBE2AAE50)
  %i.doc = fmul fast <8 x float> %i.dob, %i.dnq
  %i.dod = fadd fast <8 x float> %i.doc, splat (float f0x3E4CCEAC)
  %i.doe = fmul fast <8 x float> %i.dod, %i.dnq
  %i.dof = fadd fast <8 x float> %i.doe, splat (float f0xBE7FFFFC)
  %i.dog = fmul fast <8 x float> %i.dof, %i.dnq
  %i.doh = fadd fast <8 x float> %i.dog, splat (float f0x3EAAAAAA)
  %i.doi = fmul fast <8 x float> %i.doh, %i.dnq
  %reass.mul5395 = fmul fast <8 x float> %i.dnp, splat (float f0x3F317218)
  %reass.add5403 = fadd fast <8 x float> %i.doi, splat (float -5.000000e-01)
  %reass.mul5404 = fmul fast <8 x float> %i.dnr, %reass.add5403
  %i.doj = fadd fast <8 x float> %reass.mul5395, %i.dnq
  %i.dok = fadd fast <8 x float> %i.doj, %reass.mul5404
  %.neg5346 = fmul fast <8 x float> %i.dok, splat (float -2.000000e+00)
  %i.dol = select fast <8 x i1> %i.dnb, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5346
  %i.dom = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dol, <8 x float> splat (float f0x42B0C0A5))
  %i.don = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dom, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.doo = fmul fast <8 x float> %i.don, splat (float f0x3FB8AA3B)
  %i.dop = fadd fast <8 x float> %i.doo, splat (float 5.000000e-01) ; 2 uses
  %i.doq = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dop, i32 1) ; 2 uses
  %i.dor = fcmp fast ogt <8 x float> %i.doq, %i.dop
  %i.dos = select <8 x i1> %i.dor, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dot = fsub fast <8 x float> %i.doq, %i.dos   ; 2 uses
  %i.dou = fmul fast <8 x float> %i.dot, splat (float f0x3F317218)
  %i.dov = fsub fast <8 x float> %i.don, %i.dou   ; 8 uses
  %i.dow = fmul fast <8 x float> %i.dov, %i.dov
  %i.dox = fmul fast <8 x float> %i.dov, splat (float f0x39506967)
  %i.doy = fadd fast <8 x float> %i.dox, splat (float f0x3AB743CE)
  %i.doz = fmul fast <8 x float> %i.doy, %i.dov
  %i.dpa = fadd fast <8 x float> %i.doz, splat (float f0x3C088908)
  %i.dpb = fmul fast <8 x float> %i.dpa, %i.dov
  %i.dpc = fadd fast <8 x float> %i.dpb, splat (float f0x3D2AA9C1)
  %i.dpd = fmul fast <8 x float> %i.dpc, %i.dov
  %i.dpe = fadd fast <8 x float> %i.dpd, splat (float f0x3E2AAAAA)
  %i.dpf = fmul fast <8 x float> %i.dpe, %i.dov
  %i.dpg = fadd fast <8 x float> %i.dpf, splat (float 5.000000e-01)
  %i.dph = fmul fast <8 x float> %i.dow, %i.dpg
  %i.dpi = fadd fast <8 x float> %i.dov, splat (float 1.000000e+00)
  %i.dpj = fadd fast <8 x float> %i.dpi, %i.dph
  %i.dpk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dot)
  %i.dpl = shl <8 x i32> %i.dpk, splat (i32 23)
  %i.dpm = add <8 x i32> %i.dpl, splat (i32 1065353216)
  %i.dpn = bitcast <8 x i32> %i.dpm to <8 x float>
  %i.dpo = fmul fast <8 x float> %i.dpj, %i.dpn
  %i.dpp = fadd fast <8 x float> %i.dpo, splat (float 1.000000e+00)
  %i.dpq = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dpp
  %i.dpr = fadd fast <8 x float> %i.dpq, splat (float -1.000000e+00)
  %i.dps = fmul fast <8 x float> %i.dpr, %.14595.lcssa
  %i.dpt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.14593.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.dpu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dpt, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dpv = fmul fast <8 x float> %i.dpu, splat (float f0x3FB8AA3B)
  %i.dpw = fadd fast <8 x float> %i.dpv, splat (float 5.000000e-01) ; 2 uses
  %i.dpx = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dpw, i32 1) ; 2 uses
  %i.dpy = fcmp fast ogt <8 x float> %i.dpx, %i.dpw
  %i.dpz = select <8 x i1> %i.dpy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dqa = fsub fast <8 x float> %i.dpx, %i.dpz   ; 2 uses
  %i.dqb = fmul fast <8 x float> %i.dqa, splat (float f0x3F317218)
  %i.dqc = fsub fast <8 x float> %i.dpu, %i.dqb   ; 8 uses
  %i.dqd = fmul fast <8 x float> %i.dqc, %i.dqc
  %i.dqe = fmul fast <8 x float> %i.dqc, splat (float f0x39506967)
  %i.dqf = fadd fast <8 x float> %i.dqe, splat (float f0x3AB743CE)
  %i.dqg = fmul fast <8 x float> %i.dqf, %i.dqc
  %i.dqh = fadd fast <8 x float> %i.dqg, splat (float f0x3C088908)
  %i.dqi = fmul fast <8 x float> %i.dqh, %i.dqc
  %i.dqj = fadd fast <8 x float> %i.dqi, splat (float f0x3D2AA9C1)
  %i.dqk = fmul fast <8 x float> %i.dqj, %i.dqc
  %i.dql = fadd fast <8 x float> %i.dqk, splat (float f0x3E2AAAAA)
  %i.dqm = fmul fast <8 x float> %i.dql, %i.dqc
  %i.dqn = fadd fast <8 x float> %i.dqm, splat (float 5.000000e-01)
  %i.dqo = fmul fast <8 x float> %i.dqd, %i.dqn
  %i.dqp = fadd fast <8 x float> %i.dqc, splat (float 1.000000e+00)
  %i.dqq = fadd fast <8 x float> %i.dqp, %i.dqo
  %i.dqr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dqa)
  %i.dqs = shl <8 x i32> %i.dqr, splat (i32 23)
  %i.dqt = add <8 x i32> %i.dqs, splat (i32 1065353216)
  %i.dqu = bitcast <8 x i32> %i.dqt to <8 x float>
  %i.dqv = fmul fast <8 x float> %i.dqq, %i.dqu
  %i.dqw = fadd fast <8 x float> %i.dqv, splat (float 1.000000e+00) ; 2 uses
  %i.dqx = fcmp fast ole <8 x float> %i.dqw, zeroinitializer
  %i.dqy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dqw, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.dqz = bitcast <8 x float> %i.dqy to <8 x i32>
  %i.dra = bitcast <8 x float> %i.dqy to <8 x i32>
  %i.drb = and <8 x i32> %i.dra, splat (i32 -2139095041)
  %i.drc = or disjoint <8 x i32> %i.drb, splat (i32 1056964608)
  %i.drd = bitcast <8 x i32> %i.drc to <8 x float> ; 3 uses
  %i.dre = lshr <8 x i32> %i.dqz, splat (i32 23)
  %i.drf = add nsw <8 x i32> %i.dre, splat (i32 -127)
  %i.drg = sitofp fast <8 x i32> %i.drf to <8 x float> ; 2 uses
  %i.drh = fadd fast <8 x float> %i.drg, splat (float 1.000000e+00)
  %i.dri = fcmp fast olt <8 x float> %i.drd, splat (float f0x3F3504F3) ; 2 uses
  %i.drj = select <8 x i1> %i.dri, <8 x float> %i.drd, <8 x float> zeroinitializer
  %i.drk = fadd fast <8 x float> %i.drd, splat (float -1.000000e+00)
  %i.drl = select fast <8 x i1> %i.dri, <8 x float> %i.drg, <8 x float> %i.drh
  %i.drm = fadd fast <8 x float> %i.drk, %i.drj   ; 12 uses
  %i.drn = fmul fast <8 x float> %i.drm, %i.drm
  %i.dro = fmul fast <8 x float> %i.drm, splat (float f0x3D9021BB)
  %i.drp = fadd fast <8 x float> %i.dro, splat (float f0xBDEBD1B8)
  %i.drq = fmul fast <8 x float> %i.drp, %i.drm
  %i.drr = fadd fast <8 x float> %i.drq, splat (float f0x3DEF251A)
  %i.drs = fmul fast <8 x float> %i.drr, %i.drm
  %i.drt = fadd fast <8 x float> %i.drs, splat (float f0xBDFE5D4F)
  %i.dru = fmul fast <8 x float> %i.drt, %i.drm
  %i.drv = fadd fast <8 x float> %i.dru, splat (float f0x3E11E9BF)
  %i.drw = fmul fast <8 x float> %i.drv, %i.drm
  %i.drx = fadd fast <8 x float> %i.drw, splat (float f0xBE2AAE50)
  %i.dry = fmul fast <8 x float> %i.drx, %i.drm
  %i.drz = fadd fast <8 x float> %i.dry, splat (float f0x3E4CCEAC)
  %i.dsa = fmul fast <8 x float> %i.drz, %i.drm
  %i.dsb = fadd fast <8 x float> %i.dsa, splat (float f0xBE7FFFFC)
  %i.dsc = fmul fast <8 x float> %i.dsb, %i.drm
  %i.dsd = fadd fast <8 x float> %i.dsc, splat (float f0x3EAAAAAA)
  %i.dse = fmul fast <8 x float> %i.dsd, %i.drm
  %reass.mul5398 = fmul fast <8 x float> %i.drl, splat (float f0x3F317218)
  %reass.add5405 = fadd fast <8 x float> %i.dse, splat (float -5.000000e-01)
  %reass.mul5406 = fmul fast <8 x float> %i.drn, %reass.add5405
  %i.dsf = fadd fast <8 x float> %reass.mul5398, %i.drm
  %i.dsg = fadd fast <8 x float> %i.dsf, %reass.mul5406
  %.neg5347 = fmul fast <8 x float> %i.dsg, splat (float -2.000000e+00)
  %i.dsh = select fast <8 x i1> %i.dqx, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg5347
  %i.dsi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dsh, <8 x float> splat (float f0x42B0C0A5))
  %i.dsj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dsi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dsk = fmul fast <8 x float> %i.dsj, splat (float f0x3FB8AA3B)
  %i.dsl = fadd fast <8 x float> %i.dsk, splat (float 5.000000e-01) ; 2 uses
  %i.dsm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dsl, i32 1) ; 2 uses
  %i.dsn = fcmp fast ogt <8 x float> %i.dsm, %i.dsl
  %i.dso = select <8 x i1> %i.dsn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dsp = fsub fast <8 x float> %i.dsm, %i.dso   ; 2 uses
  %i.dsq = fmul fast <8 x float> %i.dsp, splat (float f0x3F317218)
  %i.dsr = fsub fast <8 x float> %i.dsj, %i.dsq   ; 8 uses
  %i.dss = fmul fast <8 x float> %i.dsr, %i.dsr
  %i.dst = fmul fast <8 x float> %i.dsr, splat (float f0x39506967)
  %i.dsu = fadd fast <8 x float> %i.dst, splat (float f0x3AB743CE)
  %i.dsv = fmul fast <8 x float> %i.dsu, %i.dsr
  %i.dsw = fadd fast <8 x float> %i.dsv, splat (float f0x3C088908)
  %i.dsx = fmul fast <8 x float> %i.dsw, %i.dsr
  %i.dsy = fadd fast <8 x float> %i.dsx, splat (float f0x3D2AA9C1)
  %i.dsz = fmul fast <8 x float> %i.dsy, %i.dsr
  %i.dta = fadd fast <8 x float> %i.dsz, splat (float f0x3E2AAAAA)
  %i.dtb = fmul fast <8 x float> %i.dta, %i.dsr
  %i.dtc = fadd fast <8 x float> %i.dtb, splat (float 5.000000e-01)
  %i.dtd = fmul fast <8 x float> %i.dss, %i.dtc
  %i.dte = fadd fast <8 x float> %i.dsr, splat (float 1.000000e+00)
  %i.dtf = fadd fast <8 x float> %i.dte, %i.dtd
  %i.dtg = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dsp)
  %i.dth = shl <8 x i32> %i.dtg, splat (i32 23)
  %i.dti = add <8 x i32> %i.dth, splat (i32 1065353216)
  %i.dtj = bitcast <8 x i32> %i.dti to <8 x float>
  %i.dtk = fmul fast <8 x float> %i.dtf, %i.dtj
  %i.dtl = fadd fast <8 x float> %i.dtk, splat (float 1.000000e+00)
  %i.dtm = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dtl
  %i.dtn = fadd fast <8 x float> %i.dtm, splat (float -1.000000e+00)
  %i.dto = fmul fast <8 x float> %i.dtn, %.14593.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145: ; preds = %._crit_edge5614
  %i.dtp = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.dtq = load float, ptr %i.dtp, align 4, !tbaa !27
  %i.dtr = insertelement <8 x float> poison, float %i.dtq, i64 0
  %i.dts = shufflevector <8 x float> %i.dtr, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dtt = getelementptr inbounds nuw i8, ptr %i.dtp, i64 4
  %i.dtu = load float, ptr %i.dtt, align 4, !tbaa !27
  %i.dtv = insertelement <8 x float> poison, float %i.dtu, i64 0
  %i.dtw = shufflevector <8 x float> %i.dtv, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dtx = fmul fast <8 x float> %i.dts, %.14599.lcssa
  %i.dty = fadd fast <8 x float> %i.dtx, %i.dtw
  %i.dtz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dty, <8 x float> zeroinitializer)
  %i.dua = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dtz, <8 x float> splat (float 1.000000e+00))
  %i.dub = fmul fast <8 x float> %i.dua, %.14599.lcssa
  %i.duc = fmul fast <8 x float> %i.dts, %.14597.lcssa
  %i.dud = fadd fast <8 x float> %i.duc, %i.dtw
  %i.due = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dud, <8 x float> zeroinitializer)
  %i.duf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.due, <8 x float> splat (float 1.000000e+00))
  %i.dug = fmul fast <8 x float> %i.duf, %.14597.lcssa
  %i.duh = fmul fast <8 x float> %i.dts, %.14595.lcssa
  %i.dui = fadd fast <8 x float> %i.duh, %i.dtw
  %i.duj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dui, <8 x float> zeroinitializer)
  %i.duk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.duj, <8 x float> splat (float 1.000000e+00))
  %i.dul = fmul fast <8 x float> %i.duk, %.14595.lcssa
  %i.dum = fmul fast <8 x float> %i.dts, %.14593.lcssa
  %i.dun = fadd fast <8 x float> %i.dum, %i.dtw
  %i.duo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dun, <8 x float> zeroinitializer)
  %i.dup = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.duo, <8 x float> splat (float 1.000000e+00))
  %i.duq = fmul fast <8 x float> %i.dup, %.14593.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge5614, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread
  %.0.i4135187 = phi <8 x float> [ %i.dul, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145 ], [ %i.cxv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread ], [ %i.cym, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133 ], [ %i.cze, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136 ], [ %i.dcy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139 ], [ %i.dps, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142 ], [ %.14595.lcssa, %._crit_edge5614 ]
  %.0.i425513251515185 = phi <8 x float> [ %i.dub, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145 ], [ %i.cxt, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread ], [ %i.cye, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133 ], [ %i.cza, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136 ], [ %i.dam, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139 ], [ %i.dia, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142 ], [ %.14599.lcssa, %._crit_edge5614 ]
  %.0.i41951535183 = phi <8 x float> [ %i.dug, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145 ], [ %i.cxu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread ], [ %i.cyi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133 ], [ %i.czc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136 ], [ %i.dbs, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139 ], [ %i.dlw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142 ], [ %.14597.lcssa, %._crit_edge5614 ]
  %.0.i = phi nsz <8 x float> [ %i.duq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5145 ], [ %i.cxw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread ], [ %i.cyq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5133 ], [ %i.czg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5136 ], [ %i.dee, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5139 ], [ %i.dto, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit430.thread5142 ], [ %.14593.lcssa, %._crit_edge5614 ]
  store <8 x float> %.0.i425513251515185, ptr %.03625619, align 1, !tbaa !23
  %i.dur = getelementptr inbounds nuw i8, ptr %.03625619, i64 32
  store <8 x float> %.0.i41951535183, ptr %i.dur, align 1, !tbaa !23
  %i.dus = getelementptr inbounds nuw i8, ptr %.03625619, i64 64
  store <8 x float> %.0.i4135187, ptr %i.dus, align 1, !tbaa !23
  %i.dut = getelementptr inbounds nuw i8, ptr %.03625619, i64 96
  store <8 x float> %.0.i, ptr %i.dut, align 1, !tbaa !23
  %i.duu = getelementptr inbounds nuw i8, ptr %.03625619, i64 128
  %indvars.iv.next5817 = add nuw nsw i64 %indvars.iv5816, 1 ; 2 uses
  %i.duv = load i32, ptr %6, align 4, !tbaa !9
  %i.duw = load i32, ptr %4, align 4, !tbaa !9
  %i.dux = sdiv i32 %i.duv, %i.duw
  %i.duy = sext i32 %i.dux to i64
  %i.duz = icmp slt i64 %indvars.iv.next5817, %i.duy
  br i1 %i.duz, label %.lr.ph5622, label %thread-pre-split5223.loopexit, !llvm.loop !62

thread-pre-split5223.loopexit:                    ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.pr5224.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %thread-pre-split5223

thread-pre-split5223:                             ; preds = %thread-pre-split5127, %thread-pre-split5223.loopexit, %.thread5129
  %i.dva = phi i32 [ %.pr5224.pre, %thread-pre-split5223.loopexit ], [ %.pr5326.pre, %.thread5129 ], [ %i.clv, %thread-pre-split5127 ] ; 2 uses
  %i.dvb = icmp eq i32 %i.dva, 4
  br i1 %i.dvb, label %thread-pre-split5328, label %.thread5225

thread-pre-split5328:                             ; preds = %bb.o, %thread-pre-split5223
  %.pr5329 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread5327

.thread5327:                                      ; preds = %bb.n, %thread-pre-split5328
  %i.dvc = phi i32 [ %.pr5329, %thread-pre-split5328 ], [ %i.bly, %bb.n ]
  %i.dvd = icmp eq i32 %i.dvc, 4
  br i1 %i.dvd, label %bb.aa, label %thread-pre-split5319.thread5901

bb.aa:                                            ; preds = %.thread5327
  %i.dve = load i32, ptr %6, align 4, !tbaa !9
  %i.dvf = icmp sgt i32 %i.dve, 3
  br i1 %i.dvf, label %.lr.ph5640.preheader, label %thread-pre-split5319.thread5901

.lr.ph5640.preheader:                             ; preds = %bb.aa
  %i.dvg = load ptr, ptr %5, align 8, !tbaa !17
  %i.dvh = load i32, ptr %i.l, align 4, !tbaa !15
  %i.dvi = sext i32 %i.dvh to i64
  %i.dvj = mul nsw i64 %indvars.iv5833, %i.dvi
  %i.dvk = load i64, ptr %i.m, align 8, !tbaa !24
  %i.dvl = mul i64 %i.dvj, %i.dvk
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dvg, i64 %i.dvl
  br label %.lr.ph5640

.lr.ph5640:                                       ; preds = %.lr.ph5640.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528
  %indvars.iv5820 = phi i64 [ 0, %.lr.ph5640.preheader ], [ %indvars.iv.next5821, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528 ] ; 3 uses
  %.03575637 = phi ptr [ %i.dvm, %.lr.ph5640.preheader ], [ %i.eva, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528 ] ; 5 uses
  %i.dvn = load ptr, ptr %7, align 8, !tbaa !17
  %i.dvo = load i32, ptr %i.n, align 4, !tbaa !15
  %i.dvp = sext i32 %i.dvo to i64
  %i.dvq = mul nsw i64 %indvars.iv5820, %i.dvp
  %i.dvr = load i64, ptr %i.o, align 8, !tbaa !24
  %i.dvs = mul i64 %i.dvq, %i.dvr
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvn, i64 %i.dvs
  %i.dvu = load ptr, ptr %8, align 8, !tbaa !17
  %i.dvv = load i32, ptr %i.p, align 4, !tbaa !15
  %i.dvw = sext i32 %i.dvv to i64
  %i.dvx = mul nsw i64 %indvars.iv5833, %i.dvw
  %i.dvy = load i64, ptr %i.q, align 8, !tbaa !24
  %i.dvz = mul i64 %i.dvx, %i.dvy
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvu, i64 %i.dvz
  %i.dwb = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not404 = icmp eq ptr %i.dwb, null
  br i1 %.not404, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph5640
  %.idx5883 = shl nuw nsw i64 %indvars.iv5820, 4
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dwb, i64 %.idx5883
  %i.dwd = load <4 x float>, ptr %i.dwc, align 1, !tbaa !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph5640
  %.04590 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph5640 ], [ %i.dwd, %bb.ab ] ; 8 uses
  %i.dwe = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.dwf = icmp sgt i32 %i.dwe, 0
  br i1 %i.dwf, label %.lr.ph5631, label %._crit_edge5632

.lr.ph5631:                                       ; preds = %bb.ac, %.lr.ph5631
  %.03535629 = phi i32 [ %i.dxh, %.lr.ph5631 ], [ 0, %bb.ac ]
  %.03545628 = phi ptr [ %i.dxf, %.lr.ph5631 ], [ %i.dwa, %bb.ac ] ; 5 uses
  %.03555627 = phi ptr [ %i.dxg, %.lr.ph5631 ], [ %i.dvt, %bb.ac ] ; 2 uses
  %.045875626 = phi <4 x float> [ %i.dxe, %.lr.ph5631 ], [ %.04590, %bb.ac ]
  %.045885625 = phi <4 x float> [ %i.dxc, %.lr.ph5631 ], [ %.04590, %bb.ac ]
  %.045895624 = phi <4 x float> [ %i.dxa, %.lr.ph5631 ], [ %.04590, %bb.ac ]
  %.145915623 = phi <4 x float> [ %i.dwy, %.lr.ph5631 ], [ %.04590, %bb.ac ]
  %i.dwg = load float, ptr %.03545628, align 4, !tbaa !27
  %i.dwh = insertelement <4 x float> poison, float %i.dwg, i64 0
  %i.dwi = shufflevector <4 x float> %i.dwh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwj = getelementptr inbounds nuw i8, ptr %.03545628, i64 4
  %i.dwk = load float, ptr %i.dwj, align 4, !tbaa !27
  %i.dwl = insertelement <4 x float> poison, float %i.dwk, i64 0
  %i.dwm = shufflevector <4 x float> %i.dwl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwn = getelementptr inbounds nuw i8, ptr %.03545628, i64 8
  %i.dwo = load float, ptr %i.dwn, align 4, !tbaa !27
  %i.dwp = insertelement <4 x float> poison, float %i.dwo, i64 0
  %i.dwq = shufflevector <4 x float> %i.dwp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwr = getelementptr inbounds nuw i8, ptr %.03545628, i64 12
  %i.dws = load float, ptr %i.dwr, align 4, !tbaa !27
  %i.dwt = insertelement <4 x float> poison, float %i.dws, i64 0
  %i.dwu = shufflevector <4 x float> %i.dwt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwv = load <4 x half>, ptr %.03555627, align 1, !tbaa !23
  %i.dww = fpext fast <4 x half> %i.dwv to <4 x float> ; 4 uses
  %i.dwx = fmul fast <4 x float> %i.dwi, %i.dww
  %i.dwy = fadd fast <4 x float> %i.dwx, %.145915623 ; 2 uses
  %i.dwz = fmul fast <4 x float> %i.dwm, %i.dww
  %i.dxa = fadd fast <4 x float> %i.dwz, %.045895624 ; 2 uses
  %i.dxb = fmul fast <4 x float> %i.dwq, %i.dww
  %i.dxc = fadd fast <4 x float> %i.dxb, %.045885625 ; 2 uses
  %i.dxd = fmul fast <4 x float> %i.dwu, %i.dww
  %i.dxe = fadd fast <4 x float> %i.dxd, %.045875626 ; 2 uses
  %i.dxf = getelementptr inbounds nuw i8, ptr %.03545628, i64 16
  %i.dxg = getelementptr inbounds nuw i8, ptr %.03555627, i64 8
  %i.dxh = add nuw nsw i32 %.03535629, 1          ; 2 uses
  %exitcond5819.not = icmp eq i32 %i.dxh, %i.dwe
  br i1 %exitcond5819.not, label %._crit_edge5632, label %.lr.ph5631, !llvm.loop !63

._crit_edge5632:                                  ; preds = %.lr.ph5631, %bb.ac
  %.14591.lcssa = phi <4 x float> [ %.04590, %bb.ac ], [ %i.dwy, %.lr.ph5631 ] ; 10 uses
  %.04589.lcssa = phi <4 x float> [ %.04590, %bb.ac ], [ %i.dxa, %.lr.ph5631 ] ; 10 uses
  %.04588.lcssa = phi <4 x float> [ %.04590, %bb.ac ], [ %i.dxc, %.lr.ph5631 ] ; 10 uses
  %.04587.lcssa = phi <4 x float> [ %.04590, %bb.ac ], [ %i.dxe, %.lr.ph5631 ] ; 10 uses
  %i.dxi = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.dxi, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread: ; preds = %._crit_edge5632
  %i.dxj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.14591.lcssa, <4 x float> zeroinitializer)
  %i.dxk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04589.lcssa, <4 x float> zeroinitializer)
  %i.dxl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04588.lcssa, <4 x float> zeroinitializer)
  %i.dxm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04587.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229: ; preds = %._crit_edge5632
  %i.dxn = load ptr, ptr %12, align 8, !tbaa !17
  %i.dxo = load float, ptr %i.dxn, align 4, !tbaa !27
  %i.dxp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.14591.lcssa)
  %i.dxq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.14591.lcssa)
  %i.dxr = insertelement <4 x float> poison, float %i.dxo, i64 0
  %i.dxs = shufflevector <4 x float> %i.dxr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dxt = fmul fast <4 x float> %i.dxs, %i.dxq
  %i.dxu = fadd fast <4 x float> %i.dxt, %i.dxp
  %i.dxv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04589.lcssa)
  %i.dxw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04589.lcssa)
  %i.dxx = fmul fast <4 x float> %i.dxs, %i.dxw
  %i.dxy = fadd fast <4 x float> %i.dxx, %i.dxv
  %i.dxz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04588.lcssa)
  %i.dya = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04588.lcssa)
  %i.dyb = fmul fast <4 x float> %i.dxs, %i.dya
  %i.dyc = fadd fast <4 x float> %i.dyb, %i.dxz
  %i.dyd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04587.lcssa)
  %i.dye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.04587.lcssa)
  %i.dyf = fmul fast <4 x float> %i.dxs, %i.dye
  %i.dyg = fadd fast <4 x float> %i.dyf, %i.dyd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232: ; preds = %._crit_edge5632
  %i.dyh = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.dyi = load float, ptr %i.dyh, align 4, !tbaa !27
  %i.dyj = insertelement <4 x float> poison, float %i.dyi, i64 0
  %i.dyk = shufflevector <4 x float> %i.dyj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyh, i64 4
  %i.dym = load float, ptr %i.dyl, align 4, !tbaa !27
  %i.dyn = insertelement <4 x float> poison, float %i.dym, i64 0
  %i.dyo = shufflevector <4 x float> %i.dyn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dyp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.14591.lcssa, <4 x float> nofpclass(nan inf) %i.dyk)
  %i.dyq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dyp, <4 x float> nofpclass(nan inf) %i.dyo)
  %i.dyr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04589.lcssa, <4 x float> nofpclass(nan inf) %i.dyk)
  %i.dys = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dyr, <4 x float> nofpclass(nan inf) %i.dyo)
  %i.dyt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04588.lcssa, <4 x float> nofpclass(nan inf) %i.dyk)
  %i.dyu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dyt, <4 x float> nofpclass(nan inf) %i.dyo)
  %i.dyv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.04587.lcssa, <4 x float> nofpclass(nan inf) %i.dyk)
  %i.dyw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dyv, <4 x float> nofpclass(nan inf) %i.dyo)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235: ; preds = %._crit_edge5632
  %i.dyx = fneg fast <4 x float> %.14591.lcssa
  %i.dyy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dyx, <4 x float> splat (float f0x42B0C0A5))
  %i.dyz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dyy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dza = fmul fast <4 x float> %i.dyz, splat (float f0x3FB8AA3B)
  %i.dzb = fadd fast <4 x float> %i.dza, splat (float 5.000000e-01) ; 2 uses
  %i.dzc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dzb)
  %i.dzd = sitofp fast <4 x i32> %i.dzc to <4 x float> ; 2 uses
  %i.dze = fcmp fast olt <4 x float> %i.dzb, %i.dzd
  %i.dzf = select <4 x i1> %i.dze, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dzg = fsub fast <4 x float> %i.dzd, %i.dzf   ; 2 uses
  %i.dzh = fmul fast <4 x float> %i.dzg, splat (float f0x3F317218)
  %i.dzi = fsub fast <4 x float> %i.dyz, %i.dzh   ; 8 uses
  %i.dzj = fmul fast <4 x float> %i.dzi, %i.dzi
  %i.dzk = fmul fast <4 x float> %i.dzi, splat (float f0x39506967)
  %i.dzl = fadd fast <4 x float> %i.dzk, splat (float f0x3AB743CE)
  %i.dzm = fmul fast <4 x float> %i.dzl, %i.dzi
  %i.dzn = fadd fast <4 x float> %i.dzm, splat (float f0x3C088908)
  %i.dzo = fmul fast <4 x float> %i.dzn, %i.dzi
  %i.dzp = fadd fast <4 x float> %i.dzo, splat (float f0x3D2AA9C1)
  %i.dzq = fmul fast <4 x float> %i.dzp, %i.dzi
  %i.dzr = fadd fast <4 x float> %i.dzq, splat (float f0x3E2AAAAA)
  %i.dzs = fmul fast <4 x float> %i.dzr, %i.dzi
  %i.dzt = fadd fast <4 x float> %i.dzs, splat (float 5.000000e-01)
  %i.dzu = fmul fast <4 x float> %i.dzj, %i.dzt
  %i.dzv = fadd fast <4 x float> %i.dzi, splat (float 1.000000e+00)
  %i.dzw = fadd fast <4 x float> %i.dzv, %i.dzu
  %i.dzx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dzg)
  %i.dzy = shl <4 x i32> %i.dzx, splat (i32 23)
  %i.dzz = add <4 x i32> %i.dzy, splat (i32 1065353216)
  %i.eaa = bitcast <4 x i32> %i.dzz to <4 x float>
  %i.eab = fmul fast <4 x float> %i.dzw, %i.eaa
  %i.eac = fadd fast <4 x float> %i.eab, splat (float 1.000000e+00)
  %i.ead = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eac
  %i.eae = fneg fast <4 x float> %.04589.lcssa
  %i.eaf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eae, <4 x float> splat (float f0x42B0C0A5))
  %i.eag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eaf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eah = fmul fast <4 x float> %i.eag, splat (float f0x3FB8AA3B)
  %i.eai = fadd fast <4 x float> %i.eah, splat (float 5.000000e-01) ; 2 uses
  %i.eaj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eai)
  %i.eak = sitofp fast <4 x i32> %i.eaj to <4 x float> ; 2 uses
  %i.eal = fcmp fast olt <4 x float> %i.eai, %i.eak
  %i.eam = select <4 x i1> %i.eal, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ean = fsub fast <4 x float> %i.eak, %i.eam   ; 2 uses
  %i.eao = fmul fast <4 x float> %i.ean, splat (float f0x3F317218)
  %i.eap = fsub fast <4 x float> %i.eag, %i.eao   ; 8 uses
  %i.eaq = fmul fast <4 x float> %i.eap, %i.eap
  %i.ear = fmul fast <4 x float> %i.eap, splat (float f0x39506967)
  %i.eas = fadd fast <4 x float> %i.ear, splat (float f0x3AB743CE)
  %i.eat = fmul fast <4 x float> %i.eas, %i.eap
  %i.eau = fadd fast <4 x float> %i.eat, splat (float f0x3C088908)
  %i.eav = fmul fast <4 x float> %i.eau, %i.eap
  %i.eaw = fadd fast <4 x float> %i.eav, splat (float f0x3D2AA9C1)
  %i.eax = fmul fast <4 x float> %i.eaw, %i.eap
  %i.eay = fadd fast <4 x float> %i.eax, splat (float f0x3E2AAAAA)
  %i.eaz = fmul fast <4 x float> %i.eay, %i.eap
  %i.eba = fadd fast <4 x float> %i.eaz, splat (float 5.000000e-01)
  %i.ebb = fmul fast <4 x float> %i.eaq, %i.eba
  %i.ebc = fadd fast <4 x float> %i.eap, splat (float 1.000000e+00)
  %i.ebd = fadd fast <4 x float> %i.ebc, %i.ebb
  %i.ebe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ean)
  %i.ebf = shl <4 x i32> %i.ebe, splat (i32 23)
  %i.ebg = add <4 x i32> %i.ebf, splat (i32 1065353216)
  %i.ebh = bitcast <4 x i32> %i.ebg to <4 x float>
  %i.ebi = fmul fast <4 x float> %i.ebd, %i.ebh
  %i.ebj = fadd fast <4 x float> %i.ebi, splat (float 1.000000e+00)
  %i.ebk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ebj
  %i.ebl = fneg fast <4 x float> %.04588.lcssa
  %i.ebm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ebl, <4 x float> splat (float f0x42B0C0A5))
  %i.ebn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ebm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ebo = fmul fast <4 x float> %i.ebn, splat (float f0x3FB8AA3B)
  %i.ebp = fadd fast <4 x float> %i.ebo, splat (float 5.000000e-01) ; 2 uses
  %i.ebq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ebp)
  %i.ebr = sitofp fast <4 x i32> %i.ebq to <4 x float> ; 2 uses
  %i.ebs = fcmp fast olt <4 x float> %i.ebp, %i.ebr
  %i.ebt = select <4 x i1> %i.ebs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ebu = fsub fast <4 x float> %i.ebr, %i.ebt   ; 2 uses
  %i.ebv = fmul fast <4 x float> %i.ebu, splat (float f0x3F317218)
  %i.ebw = fsub fast <4 x float> %i.ebn, %i.ebv   ; 8 uses
  %i.ebx = fmul fast <4 x float> %i.ebw, %i.ebw
  %i.eby = fmul fast <4 x float> %i.ebw, splat (float f0x39506967)
  %i.ebz = fadd fast <4 x float> %i.eby, splat (float f0x3AB743CE)
  %i.eca = fmul fast <4 x float> %i.ebz, %i.ebw
  %i.ecb = fadd fast <4 x float> %i.eca, splat (float f0x3C088908)
  %i.ecc = fmul fast <4 x float> %i.ecb, %i.ebw
  %i.ecd = fadd fast <4 x float> %i.ecc, splat (float f0x3D2AA9C1)
  %i.ece = fmul fast <4 x float> %i.ecd, %i.ebw
  %i.ecf = fadd fast <4 x float> %i.ece, splat (float f0x3E2AAAAA)
  %i.ecg = fmul fast <4 x float> %i.ecf, %i.ebw
  %i.ech = fadd fast <4 x float> %i.ecg, splat (float 5.000000e-01)
  %i.eci = fmul fast <4 x float> %i.ebx, %i.ech
  %i.ecj = fadd fast <4 x float> %i.ebw, splat (float 1.000000e+00)
  %i.eck = fadd fast <4 x float> %i.ecj, %i.eci
  %i.ecl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ebu)
  %i.ecm = shl <4 x i32> %i.ecl, splat (i32 23)
  %i.ecn = add <4 x i32> %i.ecm, splat (i32 1065353216)
  %i.eco = bitcast <4 x i32> %i.ecn to <4 x float>
  %i.ecp = fmul fast <4 x float> %i.eck, %i.eco
  %i.ecq = fadd fast <4 x float> %i.ecp, splat (float 1.000000e+00)
  %i.ecr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ecq
  %i.ecs = fneg fast <4 x float> %.04587.lcssa
  %i.ect = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ecs, <4 x float> splat (float f0x42B0C0A5))
  %i.ecu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ect, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ecv = fmul fast <4 x float> %i.ecu, splat (float f0x3FB8AA3B)
  %i.ecw = fadd fast <4 x float> %i.ecv, splat (float 5.000000e-01) ; 2 uses
  %i.ecx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ecw)
  %i.ecy = sitofp fast <4 x i32> %i.ecx to <4 x float> ; 2 uses
  %i.ecz = fcmp fast olt <4 x float> %i.ecw, %i.ecy
  %i.eda = select <4 x i1> %i.ecz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.edb = fsub fast <4 x float> %i.ecy, %i.eda   ; 2 uses
  %i.edc = fmul fast <4 x float> %i.edb, splat (float f0x3F317218)
  %i.edd = fsub fast <4 x float> %i.ecu, %i.edc   ; 8 uses
  %i.ede = fmul fast <4 x float> %i.edd, %i.edd
  %i.edf = fmul fast <4 x float> %i.edd, splat (float f0x39506967)
  %i.edg = fadd fast <4 x float> %i.edf, splat (float f0x3AB743CE)
  %i.edh = fmul fast <4 x float> %i.edg, %i.edd
  %i.edi = fadd fast <4 x float> %i.edh, splat (float f0x3C088908)
  %i.edj = fmul fast <4 x float> %i.edi, %i.edd
  %i.edk = fadd fast <4 x float> %i.edj, splat (float f0x3D2AA9C1)
  %i.edl = fmul fast <4 x float> %i.edk, %i.edd
  %i.edm = fadd fast <4 x float> %i.edl, splat (float f0x3E2AAAAA)
  %i.edn = fmul fast <4 x float> %i.edm, %i.edd
  %i.edo = fadd fast <4 x float> %i.edn, splat (float 5.000000e-01)
  %i.edp = fmul fast <4 x float> %i.ede, %i.edo
  %i.edq = fadd fast <4 x float> %i.edd, splat (float 1.000000e+00)
  %i.edr = fadd fast <4 x float> %i.edq, %i.edp
  %i.eds = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.edb)
  %i.edt = shl <4 x i32> %i.eds, splat (i32 23)
  %i.edu = add <4 x i32> %i.edt, splat (i32 1065353216)
  %i.edv = bitcast <4 x i32> %i.edu to <4 x float>
  %i.edw = fmul fast <4 x float> %i.edr, %i.edv
  %i.edx = fadd fast <4 x float> %i.edw, splat (float 1.000000e+00)
  %i.edy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.edx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238: ; preds = %._crit_edge5632
  %i.edz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.14591.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.eea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.edz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eeb = fmul fast <4 x float> %i.eea, splat (float f0x3FB8AA3B)
  %i.eec = fadd fast <4 x float> %i.eeb, splat (float 5.000000e-01) ; 2 uses
  %i.eed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eec)
  %i.eee = sitofp fast <4 x i32> %i.eed to <4 x float> ; 2 uses
  %i.eef = fcmp fast olt <4 x float> %i.eec, %i.eee
  %i.eeg = select <4 x i1> %i.eef, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eeh = fsub fast <4 x float> %i.eee, %i.eeg   ; 2 uses
  %i.eei = fmul fast <4 x float> %i.eeh, splat (float f0x3F317218)
  %i.eej = fsub fast <4 x float> %i.eea, %i.eei   ; 8 uses
  %i.eek = fmul fast <4 x float> %i.eej, %i.eej
  %i.eel = fmul fast <4 x float> %i.eej, splat (float f0x39506967)
  %i.eem = fadd fast <4 x float> %i.eel, splat (float f0x3AB743CE)
  %i.een = fmul fast <4 x float> %i.eem, %i.eej
  %i.eeo = fadd fast <4 x float> %i.een, splat (float f0x3C088908)
  %i.eep = fmul fast <4 x float> %i.eeo, %i.eej
  %i.eeq = fadd fast <4 x float> %i.eep, splat (float f0x3D2AA9C1)
  %i.eer = fmul fast <4 x float> %i.eeq, %i.eej
  %i.ees = fadd fast <4 x float> %i.eer, splat (float f0x3E2AAAAA)
  %i.eet = fmul fast <4 x float> %i.ees, %i.eej
  %i.eeu = fadd fast <4 x float> %i.eet, splat (float 5.000000e-01)
  %i.eev = fmul fast <4 x float> %i.eek, %i.eeu
  %i.eew = fadd fast <4 x float> %i.eej, splat (float 1.000000e+00)
  %i.eex = fadd fast <4 x float> %i.eew, %i.eev
  %i.eey = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eeh)
  %i.eez = shl <4 x i32> %i.eey, splat (i32 23)
  %i.efa = add <4 x i32> %i.eez, splat (i32 1065353216)
  %i.efb = bitcast <4 x i32> %i.efa to <4 x float>
  %i.efc = fmul fast <4 x float> %i.eex, %i.efb
  %i.efd = fadd fast <4 x float> %i.efc, splat (float 1.000000e+00) ; 2 uses
  %i.efe = fcmp fast ole <4 x float> %i.efd, zeroinitializer
  %i.eff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.efd, <4 x float> splat (float f0x00800000))
  %i.efg = bitcast <4 x float> %i.eff to <4 x i32> ; 2 uses
  %i.efh = lshr <4 x i32> %i.efg, splat (i32 23)
  %i.efi = and <4 x i32> %i.efg, splat (i32 -2139095041)
  %i.efj = or disjoint <4 x i32> %i.efi, splat (i32 1056964608)
  %i.efk = bitcast <4 x i32> %i.efj to <4 x float> ; 3 uses
  %i.efl = add nsw <4 x i32> %i.efh, splat (i32 -127)
  %i.efm = sitofp fast <4 x i32> %i.efl to <4 x float> ; 2 uses
  %i.efn = fadd fast <4 x float> %i.efm, splat (float 1.000000e+00)
  %i.efo = fcmp fast olt <4 x float> %i.efk, splat (float f0x3F3504F3) ; 2 uses
  %i.efp = select <4 x i1> %i.efo, <4 x float> %i.efk, <4 x float> zeroinitializer
  %i.efq = fadd fast <4 x float> %i.efk, splat (float -1.000000e+00)
  %i.efr = select fast <4 x i1> %i.efo, <4 x float> %i.efm, <4 x float> %i.efn
  %i.efs = fadd fast <4 x float> %i.efq, %i.efp   ; 12 uses
  %i.eft = fmul fast <4 x float> %i.efs, %i.efs
  %i.efu = fmul fast <4 x float> %i.efs, splat (float f0x3D9021BB)
  %i.efv = fadd fast <4 x float> %i.efu, splat (float f0xBDEBD1B8)
  %i.efw = fmul fast <4 x float> %i.efv, %i.efs
  %i.efx = fadd fast <4 x float> %i.efw, splat (float f0x3DEF251A)
  %i.efy = fmul fast <4 x float> %i.efx, %i.efs
  %i.efz = fadd fast <4 x float> %i.efy, splat (float f0xBDFE5D4F)
  %i.ega = fmul fast <4 x float> %i.efz, %i.efs
  %i.egb = fadd fast <4 x float> %i.ega, splat (float f0x3E11E9BF)
  %i.egc = fmul fast <4 x float> %i.egb, %i.efs
  %i.egd = fadd fast <4 x float> %i.egc, splat (float f0xBE2AAE50)
  %i.ege = fmul fast <4 x float> %i.egd, %i.efs
  %i.egf = fadd fast <4 x float> %i.ege, splat (float f0x3E4CCEAC)
  %i.egg = fmul fast <4 x float> %i.egf, %i.efs
  %i.egh = fadd fast <4 x float> %i.egg, splat (float f0xBE7FFFFC)
  %i.egi = fmul fast <4 x float> %i.egh, %i.efs
  %i.egj = fadd fast <4 x float> %i.egi, splat (float f0x3EAAAAAA)
  %i.egk = fmul fast <4 x float> %i.egj, %i.efs
  %reass.mul5370 = fmul fast <4 x float> %i.efr, splat (float f0x3F317218)
  %reass.add5380 = fadd fast <4 x float> %i.egk, splat (float -5.000000e-01)
  %reass.mul5381 = fmul fast <4 x float> %i.eft, %reass.add5380
  %i.egl = fadd fast <4 x float> %reass.mul5370, %i.efs
  %i.egm = fadd fast <4 x float> %i.egl, %reass.mul5381
  %.neg5340 = fmul fast <4 x float> %i.egm, splat (float -2.000000e+00)
  %i.egn = select fast <4 x i1> %i.efe, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg5340
  %i.ego = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.egn, <4 x float> splat (float f0x42B0C0A5))
  %i.egp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ego, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.egq = fmul fast <4 x float> %i.egp, splat (float f0x3FB8AA3B)
  %i.egr = fadd fast <4 x float> %i.egq, splat (float 5.000000e-01) ; 2 uses
  %i.egs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.egr)
  %i.egt = sitofp fast <4 x i32> %i.egs to <4 x float> ; 2 uses
  %i.egu = fcmp fast olt <4 x float> %i.egr, %i.egt
  %i.egv = select <4 x i1> %i.egu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.egw = fsub fast <4 x float> %i.egt, %i.egv   ; 2 uses
  %i.egx = fmul fast <4 x float> %i.egw, splat (float f0x3F317218)
  %i.egy = fsub fast <4 x float> %i.egp, %i.egx   ; 8 uses
  %i.egz = fmul fast <4 x float> %i.egy, %i.egy
  %i.eha = fmul fast <4 x float> %i.egy, splat (float f0x39506967)
  %i.ehb = fadd fast <4 x float> %i.eha, splat (float f0x3AB743CE)
  %i.ehc = fmul fast <4 x float> %i.ehb, %i.egy
  %i.ehd = fadd fast <4 x float> %i.ehc, splat (float f0x3C088908)
  %i.ehe = fmul fast <4 x float> %i.ehd, %i.egy
  %i.ehf = fadd fast <4 x float> %i.ehe, splat (float f0x3D2AA9C1)
  %i.ehg = fmul fast <4 x float> %i.ehf, %i.egy
  %i.ehh = fadd fast <4 x float> %i.ehg, splat (float f0x3E2AAAAA)
  %i.ehi = fmul fast <4 x float> %i.ehh, %i.egy
  %i.ehj = fadd fast <4 x float> %i.ehi, splat (float 5.000000e-01)
  %i.ehk = fmul fast <4 x float> %i.egz, %i.ehj
  %i.ehl = fadd fast <4 x float> %i.egy, splat (float 1.000000e+00)
  %i.ehm = fadd fast <4 x float> %i.ehl, %i.ehk
  %i.ehn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.egw)
  %i.eho = shl <4 x i32> %i.ehn, splat (i32 23)
  %i.ehp = add <4 x i32> %i.eho, splat (i32 1065353216)
  %i.ehq = bitcast <4 x i32> %i.ehp to <4 x float>
  %i.ehr = fmul fast <4 x float> %i.ehm, %i.ehq
  %i.ehs = fadd fast <4 x float> %i.ehr, splat (float 1.000000e+00)
  %i.eht = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ehs
  %i.ehu = fadd fast <4 x float> %i.eht, splat (float -1.000000e+00)
  %i.ehv = fmul fast <4 x float> %i.ehu, %.14591.lcssa
  %i.ehw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.04589.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.ehx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ehw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ehy = fmul fast <4 x float> %i.ehx, splat (float f0x3FB8AA3B)
  %i.ehz = fadd fast <4 x float> %i.ehy, splat (float 5.000000e-01) ; 2 uses
  %i.eia = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ehz)
  %i.eib = sitofp fast <4 x i32> %i.eia to <4 x float> ; 2 uses
  %i.eic = fcmp fast olt <4 x float> %i.ehz, %i.eib
  %i.eid = select <4 x i1> %i.eic, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eie = fsub fast <4 x float> %i.eib, %i.eid   ; 2 uses
  %i.eif = fmul fast <4 x float> %i.eie, splat (float f0x3F317218)
  %i.eig = fsub fast <4 x float> %i.ehx, %i.eif   ; 8 uses
  %i.eih = fmul fast <4 x float> %i.eig, %i.eig
  %i.eii = fmul fast <4 x float> %i.eig, splat (float f0x39506967)
  %i.eij = fadd fast <4 x float> %i.eii, splat (float f0x3AB743CE)
  %i.eik = fmul fast <4 x float> %i.eij, %i.eig
  %i.eil = fadd fast <4 x float> %i.eik, splat (float f0x3C088908)
  %i.eim = fmul fast <4 x float> %i.eil, %i.eig
  %i.ein = fadd fast <4 x float> %i.eim, splat (float f0x3D2AA9C1)
  %i.eio = fmul fast <4 x float> %i.ein, %i.eig
  %i.eip = fadd fast <4 x float> %i.eio, splat (float f0x3E2AAAAA)
  %i.eiq = fmul fast <4 x float> %i.eip, %i.eig
  %i.eir = fadd fast <4 x float> %i.eiq, splat (float 5.000000e-01)
  %i.eis = fmul fast <4 x float> %i.eih, %i.eir
  %i.eit = fadd fast <4 x float> %i.eig, splat (float 1.000000e+00)
  %i.eiu = fadd fast <4 x float> %i.eit, %i.eis
  %i.eiv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eie)
  %i.eiw = shl <4 x i32> %i.eiv, splat (i32 23)
  %i.eix = add <4 x i32> %i.eiw, splat (i32 1065353216)
  %i.eiy = bitcast <4 x i32> %i.eix to <4 x float>
  %i.eiz = fmul fast <4 x float> %i.eiu, %i.eiy
  %i.eja = fadd fast <4 x float> %i.eiz, splat (float 1.000000e+00) ; 2 uses
  %i.ejb = fcmp fast ole <4 x float> %i.eja, zeroinitializer
  %i.ejc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eja, <4 x float> splat (float f0x00800000))
  %i.ejd = bitcast <4 x float> %i.ejc to <4 x i32> ; 2 uses
  %i.eje = lshr <4 x i32> %i.ejd, splat (i32 23)
  %i.ejf = and <4 x i32> %i.ejd, splat (i32 -2139095041)
  %i.ejg = or disjoint <4 x i32> %i.ejf, splat (i32 1056964608)
  %i.ejh = bitcast <4 x i32> %i.ejg to <4 x float> ; 3 uses
  %i.eji = add nsw <4 x i32> %i.eje, splat (i32 -127)
  %i.ejj = sitofp fast <4 x i32> %i.eji to <4 x float> ; 2 uses
  %i.ejk = fadd fast <4 x float> %i.ejj, splat (float 1.000000e+00)
  %i.ejl = fcmp fast olt <4 x float> %i.ejh, splat (float f0x3F3504F3) ; 2 uses
  %i.ejm = select <4 x i1> %i.ejl, <4 x float> %i.ejh, <4 x float> zeroinitializer
  %i.ejn = fadd fast <4 x float> %i.ejh, splat (float -1.000000e+00)
  %i.ejo = select fast <4 x i1> %i.ejl, <4 x float> %i.ejj, <4 x float> %i.ejk
  %i.ejp = fadd fast <4 x float> %i.ejn, %i.ejm   ; 12 uses
  %i.ejq = fmul fast <4 x float> %i.ejp, %i.ejp
  %i.ejr = fmul fast <4 x float> %i.ejp, splat (float f0x3D9021BB)
  %i.ejs = fadd fast <4 x float> %i.ejr, splat (float f0xBDEBD1B8)
  %i.ejt = fmul fast <4 x float> %i.ejs, %i.ejp
  %i.eju = fadd fast <4 x float> %i.ejt, splat (float f0x3DEF251A)
  %i.ejv = fmul fast <4 x float> %i.eju, %i.ejp
  %i.ejw = fadd fast <4 x float> %i.ejv, splat (float f0xBDFE5D4F)
  %i.ejx = fmul fast <4 x float> %i.ejw, %i.ejp
  %i.ejy = fadd fast <4 x float> %i.ejx, splat (float f0x3E11E9BF)
  %i.ejz = fmul fast <4 x float> %i.ejy, %i.ejp
  %i.eka = fadd fast <4 x float> %i.ejz, splat (float f0xBE2AAE50)
  %i.ekb = fmul fast <4 x float> %i.eka, %i.ejp
  %i.ekc = fadd fast <4 x float> %i.ekb, splat (float f0x3E4CCEAC)
  %i.ekd = fmul fast <4 x float> %i.ekc, %i.ejp
  %i.eke = fadd fast <4 x float> %i.ekd, splat (float f0xBE7FFFFC)
  %i.ekf = fmul fast <4 x float> %i.eke, %i.ejp
  %i.ekg = fadd fast <4 x float> %i.ekf, splat (float f0x3EAAAAAA)
  %i.ekh = fmul fast <4 x float> %i.ekg, %i.ejp
  %reass.mul5373 = fmul fast <4 x float> %i.ejo, splat (float f0x3F317218)
  %reass.add5382 = fadd fast <4 x float> %i.ekh, splat (float -5.000000e-01)
  %reass.mul5383 = fmul fast <4 x float> %i.ejq, %reass.add5382
  %i.eki = fadd fast <4 x float> %reass.mul5373, %i.ejp
  %i.ekj = fadd fast <4 x float> %i.eki, %reass.mul5383
  %.neg5341 = fmul fast <4 x float> %i.ekj, splat (float -2.000000e+00)
  %i.ekk = select fast <4 x i1> %i.ejb, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg5341
  %i.ekl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ekk, <4 x float> splat (float f0x42B0C0A5))
  %i.ekm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ekl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ekn = fmul fast <4 x float> %i.ekm, splat (float f0x3FB8AA3B)
  %i.eko = fadd fast <4 x float> %i.ekn, splat (float 5.000000e-01) ; 2 uses
  %i.ekp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eko)
  %i.ekq = sitofp fast <4 x i32> %i.ekp to <4 x float> ; 2 uses
  %i.ekr = fcmp fast olt <4 x float> %i.eko, %i.ekq
  %i.eks = select <4 x i1> %i.ekr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ekt = fsub fast <4 x float> %i.ekq, %i.eks   ; 2 uses
  %i.eku = fmul fast <4 x float> %i.ekt, splat (float f0x3F317218)
  %i.ekv = fsub fast <4 x float> %i.ekm, %i.eku   ; 8 uses
  %i.ekw = fmul fast <4 x float> %i.ekv, %i.ekv
  %i.ekx = fmul fast <4 x float> %i.ekv, splat (float f0x39506967)
  %i.eky = fadd fast <4 x float> %i.ekx, splat (float f0x3AB743CE)
  %i.ekz = fmul fast <4 x float> %i.eky, %i.ekv
  %i.ela = fadd fast <4 x float> %i.ekz, splat (float f0x3C088908)
  %i.elb = fmul fast <4 x float> %i.ela, %i.ekv
  %i.elc = fadd fast <4 x float> %i.elb, splat (float f0x3D2AA9C1)
  %i.eld = fmul fast <4 x float> %i.elc, %i.ekv
  %i.ele = fadd fast <4 x float> %i.eld, splat (float f0x3E2AAAAA)
  %i.elf = fmul fast <4 x float> %i.ele, %i.ekv
  %i.elg = fadd fast <4 x float> %i.elf, splat (float 5.000000e-01)
  %i.elh = fmul fast <4 x float> %i.ekw, %i.elg
  %i.eli = fadd fast <4 x float> %i.ekv, splat (float 1.000000e+00)
  %i.elj = fadd fast <4 x float> %i.eli, %i.elh
  %i.elk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ekt)
  %i.ell = shl <4 x i32> %i.elk, splat (i32 23)
  %i.elm = add <4 x i32> %i.ell, splat (i32 1065353216)
  %i.eln = bitcast <4 x i32> %i.elm to <4 x float>
  %i.elo = fmul fast <4 x float> %i.elj, %i.eln
  %i.elp = fadd fast <4 x float> %i.elo, splat (float 1.000000e+00)
  %i.elq = fdiv fast <4 x float> splat (float 2.000000e+00), %i.elp
  %i.elr = fadd fast <4 x float> %i.elq, splat (float -1.000000e+00)
  %i.els = fmul fast <4 x float> %i.elr, %.04589.lcssa
  %i.elt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.04588.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.elu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.elt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.elv = fmul fast <4 x float> %i.elu, splat (float f0x3FB8AA3B)
  %i.elw = fadd fast <4 x float> %i.elv, splat (float 5.000000e-01) ; 2 uses
  %i.elx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.elw)
  %i.ely = sitofp fast <4 x i32> %i.elx to <4 x float> ; 2 uses
  %i.elz = fcmp fast olt <4 x float> %i.elw, %i.ely
  %i.ema = select <4 x i1> %i.elz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.emb = fsub fast <4 x float> %i.ely, %i.ema   ; 2 uses
  %i.emc = fmul fast <4 x float> %i.emb, splat (float f0x3F317218)
  %i.emd = fsub fast <4 x float> %i.elu, %i.emc   ; 8 uses
  %i.eme = fmul fast <4 x float> %i.emd, %i.emd
  %i.emf = fmul fast <4 x float> %i.emd, splat (float f0x39506967)
  %i.emg = fadd fast <4 x float> %i.emf, splat (float f0x3AB743CE)
  %i.emh = fmul fast <4 x float> %i.emg, %i.emd
  %i.emi = fadd fast <4 x float> %i.emh, splat (float f0x3C088908)
  %i.emj = fmul fast <4 x float> %i.emi, %i.emd
  %i.emk = fadd fast <4 x float> %i.emj, splat (float f0x3D2AA9C1)
  %i.eml = fmul fast <4 x float> %i.emk, %i.emd
  %i.emm = fadd fast <4 x float> %i.eml, splat (float f0x3E2AAAAA)
  %i.emn = fmul fast <4 x float> %i.emm, %i.emd
  %i.emo = fadd fast <4 x float> %i.emn, splat (float 5.000000e-01)
  %i.emp = fmul fast <4 x float> %i.eme, %i.emo
  %i.emq = fadd fast <4 x float> %i.emd, splat (float 1.000000e+00)
  %i.emr = fadd fast <4 x float> %i.emq, %i.emp
  %i.ems = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.emb)
  %i.emt = shl <4 x i32> %i.ems, splat (i32 23)
  %i.emu = add <4 x i32> %i.emt, splat (i32 1065353216)
  %i.emv = bitcast <4 x i32> %i.emu to <4 x float>
  %i.emw = fmul fast <4 x float> %i.emr, %i.emv
  %i.emx = fadd fast <4 x float> %i.emw, splat (float 1.000000e+00) ; 2 uses
  %i.emy = fcmp fast ole <4 x float> %i.emx, zeroinitializer
  %i.emz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.emx, <4 x float> splat (float f0x00800000))
  %i.ena = bitcast <4 x float> %i.emz to <4 x i32> ; 2 uses
  %i.enb = lshr <4 x i32> %i.ena, splat (i32 23)
  %i.enc = and <4 x i32> %i.ena, splat (i32 -2139095041)
  %i.end = or disjoint <4 x i32> %i.enc, splat (i32 1056964608)
  %i.ene = bitcast <4 x i32> %i.end to <4 x float> ; 3 uses
  %i.enf = add nsw <4 x i32> %i.enb, splat (i32 -127)
  %i.eng = sitofp fast <4 x i32> %i.enf to <4 x float> ; 2 uses
  %i.enh = fadd fast <4 x float> %i.eng, splat (float 1.000000e+00)
  %i.eni = fcmp fast olt <4 x float> %i.ene, splat (float f0x3F3504F3) ; 2 uses
  %i.enj = select <4 x i1> %i.eni, <4 x float> %i.ene, <4 x float> zeroinitializer
  %i.enk = fadd fast <4 x float> %i.ene, splat (float -1.000000e+00)
  %i.enl = select fast <4 x i1> %i.eni, <4 x float> %i.eng, <4 x float> %i.enh
  %i.enm = fadd fast <4 x float> %i.enk, %i.enj   ; 12 uses
  %i.enn = fmul fast <4 x float> %i.enm, %i.enm
  %i.eno = fmul fast <4 x float> %i.enm, splat (float f0x3D9021BB)
  %i.enp = fadd fast <4 x float> %i.eno, splat (float f0xBDEBD1B8)
  %i.enq = fmul fast <4 x float> %i.enp, %i.enm
  %i.enr = fadd fast <4 x float> %i.enq, splat (float f0x3DEF251A)
  %i.ens = fmul fast <4 x float> %i.enr, %i.enm
  %i.ent = fadd fast <4 x float> %i.ens, splat (float f0xBDFE5D4F)
  %i.enu = fmul fast <4 x float> %i.ent, %i.enm
  %i.env = fadd fast <4 x float> %i.enu, splat (float f0x3E11E9BF)
  %i.enw = fmul fast <4 x float> %i.env, %i.enm
  %i.enx = fadd fast <4 x float> %i.enw, splat (float f0xBE2AAE50)
  %i.eny = fmul fast <4 x float> %i.enx, %i.enm
  %i.enz = fadd fast <4 x float> %i.eny, splat (float f0x3E4CCEAC)
  %i.eoa = fmul fast <4 x float> %i.enz, %i.enm
  %i.eob = fadd fast <4 x float> %i.eoa, splat (float f0xBE7FFFFC)
  %i.eoc = fmul fast <4 x float> %i.eob, %i.enm
  %i.eod = fadd fast <4 x float> %i.eoc, splat (float f0x3EAAAAAA)
  %i.eoe = fmul fast <4 x float> %i.eod, %i.enm
  %reass.mul5376 = fmul fast <4 x float> %i.enl, splat (float f0x3F317218)
  %reass.add5384 = fadd fast <4 x float> %i.eoe, splat (float -5.000000e-01)
  %reass.mul5385 = fmul fast <4 x float> %i.enn, %reass.add5384
  %i.eof = fadd fast <4 x float> %reass.mul5376, %i.enm
  %i.eog = fadd fast <4 x float> %i.eof, %reass.mul5385
  %.neg5342 = fmul fast <4 x float> %i.eog, splat (float -2.000000e+00)
  %i.eoh = select fast <4 x i1> %i.emy, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg5342
  %i.eoi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoh, <4 x float> splat (float f0x42B0C0A5))
  %i.eoj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eoi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eok = fmul fast <4 x float> %i.eoj, splat (float f0x3FB8AA3B)
  %i.eol = fadd fast <4 x float> %i.eok, splat (float 5.000000e-01) ; 2 uses
  %i.eom = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eol)
  %i.eon = sitofp fast <4 x i32> %i.eom to <4 x float> ; 2 uses
  %i.eoo = fcmp fast olt <4 x float> %i.eol, %i.eon
  %i.eop = select <4 x i1> %i.eoo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eoq = fsub fast <4 x float> %i.eon, %i.eop   ; 2 uses
  %i.eor = fmul fast <4 x float> %i.eoq, splat (float f0x3F317218)
  %i.eos = fsub fast <4 x float> %i.eoj, %i.eor   ; 8 uses
  %i.eot = fmul fast <4 x float> %i.eos, %i.eos
  %i.eou = fmul fast <4 x float> %i.eos, splat (float f0x39506967)
  %i.eov = fadd fast <4 x float> %i.eou, splat (float f0x3AB743CE)
  %i.eow = fmul fast <4 x float> %i.eov, %i.eos
  %i.eox = fadd fast <4 x float> %i.eow, splat (float f0x3C088908)
  %i.eoy = fmul fast <4 x float> %i.eox, %i.eos
  %i.eoz = fadd fast <4 x float> %i.eoy, splat (float f0x3D2AA9C1)
  %i.epa = fmul fast <4 x float> %i.eoz, %i.eos
  %i.epb = fadd fast <4 x float> %i.epa, splat (float f0x3E2AAAAA)
  %i.epc = fmul fast <4 x float> %i.epb, %i.eos
  %i.epd = fadd fast <4 x float> %i.epc, splat (float 5.000000e-01)
  %i.epe = fmul fast <4 x float> %i.eot, %i.epd
  %i.epf = fadd fast <4 x float> %i.eos, splat (float 1.000000e+00)
  %i.epg = fadd fast <4 x float> %i.epf, %i.epe
  %i.eph = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eoq)
  %i.epi = shl <4 x i32> %i.eph, splat (i32 23)
  %i.epj = add <4 x i32> %i.epi, splat (i32 1065353216)
  %i.epk = bitcast <4 x i32> %i.epj to <4 x float>
  %i.epl = fmul fast <4 x float> %i.epg, %i.epk
  %i.epm = fadd fast <4 x float> %i.epl, splat (float 1.000000e+00)
  %i.epn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.epm
  %i.epo = fadd fast <4 x float> %i.epn, splat (float -1.000000e+00)
  %i.epp = fmul fast <4 x float> %i.epo, %.04588.lcssa
  %i.epq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.04587.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.epr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.epq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eps = fmul fast <4 x float> %i.epr, splat (float f0x3FB8AA3B)
  %i.ept = fadd fast <4 x float> %i.eps, splat (float 5.000000e-01) ; 2 uses
  %i.epu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ept)
  %i.epv = sitofp fast <4 x i32> %i.epu to <4 x float> ; 2 uses
  %i.epw = fcmp fast olt <4 x float> %i.ept, %i.epv
  %i.epx = select <4 x i1> %i.epw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.epy = fsub fast <4 x float> %i.epv, %i.epx   ; 2 uses
  %i.epz = fmul fast <4 x float> %i.epy, splat (float f0x3F317218)
  %i.eqa = fsub fast <4 x float> %i.epr, %i.epz   ; 8 uses
  %i.eqb = fmul fast <4 x float> %i.eqa, %i.eqa
  %i.eqc = fmul fast <4 x float> %i.eqa, splat (float f0x39506967)
  %i.eqd = fadd fast <4 x float> %i.eqc, splat (float f0x3AB743CE)
  %i.eqe = fmul fast <4 x float> %i.eqd, %i.eqa
  %i.eqf = fadd fast <4 x float> %i.eqe, splat (float f0x3C088908)
  %i.eqg = fmul fast <4 x float> %i.eqf, %i.eqa
  %i.eqh = fadd fast <4 x float> %i.eqg, splat (float f0x3D2AA9C1)
  %i.eqi = fmul fast <4 x float> %i.eqh, %i.eqa
  %i.eqj = fadd fast <4 x float> %i.eqi, splat (float f0x3E2AAAAA)
  %i.eqk = fmul fast <4 x float> %i.eqj, %i.eqa
  %i.eql = fadd fast <4 x float> %i.eqk, splat (float 5.000000e-01)
  %i.eqm = fmul fast <4 x float> %i.eqb, %i.eql
  %i.eqn = fadd fast <4 x float> %i.eqa, splat (float 1.000000e+00)
  %i.eqo = fadd fast <4 x float> %i.eqn, %i.eqm
  %i.eqp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.epy)
  %i.eqq = shl <4 x i32> %i.eqp, splat (i32 23)
  %i.eqr = add <4 x i32> %i.eqq, splat (i32 1065353216)
  %i.eqs = bitcast <4 x i32> %i.eqr to <4 x float>
  %i.eqt = fmul fast <4 x float> %i.eqo, %i.eqs
  %i.equ = fadd fast <4 x float> %i.eqt, splat (float 1.000000e+00) ; 2 uses
  %i.eqv = fcmp fast ole <4 x float> %i.equ, zeroinitializer
  %i.eqw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.equ, <4 x float> splat (float f0x00800000))
  %i.eqx = bitcast <4 x float> %i.eqw to <4 x i32> ; 2 uses
  %i.eqy = lshr <4 x i32> %i.eqx, splat (i32 23)
  %i.eqz = and <4 x i32> %i.eqx, splat (i32 -2139095041)
  %i.era = or disjoint <4 x i32> %i.eqz, splat (i32 1056964608)
  %i.erb = bitcast <4 x i32> %i.era to <4 x float> ; 3 uses
  %i.erc = add nsw <4 x i32> %i.eqy, splat (i32 -127)
  %i.erd = sitofp fast <4 x i32> %i.erc to <4 x float> ; 2 uses
  %i.ere = fadd fast <4 x float> %i.erd, splat (float 1.000000e+00)
  %i.erf = fcmp fast olt <4 x float> %i.erb, splat (float f0x3F3504F3) ; 2 uses
  %i.erg = select <4 x i1> %i.erf, <4 x float> %i.erb, <4 x float> zeroinitializer
  %i.erh = fadd fast <4 x float> %i.erb, splat (float -1.000000e+00)
  %i.eri = select fast <4 x i1> %i.erf, <4 x float> %i.erd, <4 x float> %i.ere
  %i.erj = fadd fast <4 x float> %i.erh, %i.erg   ; 12 uses
  %i.erk = fmul fast <4 x float> %i.erj, %i.erj
  %i.erl = fmul fast <4 x float> %i.erj, splat (float f0x3D9021BB)
  %i.erm = fadd fast <4 x float> %i.erl, splat (float f0xBDEBD1B8)
  %i.ern = fmul fast <4 x float> %i.erm, %i.erj
  %i.ero = fadd fast <4 x float> %i.ern, splat (float f0x3DEF251A)
  %i.erp = fmul fast <4 x float> %i.ero, %i.erj
  %i.erq = fadd fast <4 x float> %i.erp, splat (float f0xBDFE5D4F)
  %i.err = fmul fast <4 x float> %i.erq, %i.erj
  %i.ers = fadd fast <4 x float> %i.err, splat (float f0x3E11E9BF)
  %i.ert = fmul fast <4 x float> %i.ers, %i.erj
  %i.eru = fadd fast <4 x float> %i.ert, splat (float f0xBE2AAE50)
  %i.erv = fmul fast <4 x float> %i.eru, %i.erj
  %i.erw = fadd fast <4 x float> %i.erv, splat (float f0x3E4CCEAC)
  %i.erx = fmul fast <4 x float> %i.erw, %i.erj
  %i.ery = fadd fast <4 x float> %i.erx, splat (float f0xBE7FFFFC)
  %i.erz = fmul fast <4 x float> %i.ery, %i.erj
  %i.esa = fadd fast <4 x float> %i.erz, splat (float f0x3EAAAAAA)
  %i.esb = fmul fast <4 x float> %i.esa, %i.erj
  %reass.mul5379 = fmul fast <4 x float> %i.eri, splat (float f0x3F317218)
  %reass.add5386 = fadd fast <4 x float> %i.esb, splat (float -5.000000e-01)
  %reass.mul5387 = fmul fast <4 x float> %i.erk, %reass.add5386
  %i.esc = fadd fast <4 x float> %reass.mul5379, %i.erj
  %i.esd = fadd fast <4 x float> %i.esc, %reass.mul5387
  %.neg5343 = fmul fast <4 x float> %i.esd, splat (float -2.000000e+00)
  %i.ese = select fast <4 x i1> %i.eqv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg5343
  %i.esf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ese, <4 x float> splat (float f0x42B0C0A5))
  %i.esg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.esf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.esh = fmul fast <4 x float> %i.esg, splat (float f0x3FB8AA3B)
  %i.esi = fadd fast <4 x float> %i.esh, splat (float 5.000000e-01) ; 2 uses
  %i.esj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.esi)
  %i.esk = sitofp fast <4 x i32> %i.esj to <4 x float> ; 2 uses
  %i.esl = fcmp fast olt <4 x float> %i.esi, %i.esk
  %i.esm = select <4 x i1> %i.esl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.esn = fsub fast <4 x float> %i.esk, %i.esm   ; 2 uses
  %i.eso = fmul fast <4 x float> %i.esn, splat (float f0x3F317218)
  %i.esp = fsub fast <4 x float> %i.esg, %i.eso   ; 8 uses
  %i.esq = fmul fast <4 x float> %i.esp, %i.esp
  %i.esr = fmul fast <4 x float> %i.esp, splat (float f0x39506967)
  %i.ess = fadd fast <4 x float> %i.esr, splat (float f0x3AB743CE)
  %i.est = fmul fast <4 x float> %i.ess, %i.esp
  %i.esu = fadd fast <4 x float> %i.est, splat (float f0x3C088908)
  %i.esv = fmul fast <4 x float> %i.esu, %i.esp
  %i.esw = fadd fast <4 x float> %i.esv, splat (float f0x3D2AA9C1)
  %i.esx = fmul fast <4 x float> %i.esw, %i.esp
  %i.esy = fadd fast <4 x float> %i.esx, splat (float f0x3E2AAAAA)
  %i.esz = fmul fast <4 x float> %i.esy, %i.esp
  %i.eta = fadd fast <4 x float> %i.esz, splat (float 5.000000e-01)
  %i.etb = fmul fast <4 x float> %i.esq, %i.eta
  %i.etc = fadd fast <4 x float> %i.esp, splat (float 1.000000e+00)
  %i.etd = fadd fast <4 x float> %i.etc, %i.etb
  %i.ete = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.esn)
  %i.etf = shl <4 x i32> %i.ete, splat (i32 23)
  %i.etg = add <4 x i32> %i.etf, splat (i32 1065353216)
  %i.eth = bitcast <4 x i32> %i.etg to <4 x float>
  %i.eti = fmul fast <4 x float> %i.etd, %i.eth
  %i.etj = fadd fast <4 x float> %i.eti, splat (float 1.000000e+00)
  %i.etk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.etj
  %i.etl = fadd fast <4 x float> %i.etk, splat (float -1.000000e+00)
  %i.etm = fmul fast <4 x float> %i.etl, %.04587.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241: ; preds = %._crit_edge5632
  %i.etn = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.eto = load float, ptr %i.etn, align 4, !tbaa !27
  %i.etp = insertelement <4 x float> poison, float %i.eto, i64 0
  %i.etq = shufflevector <4 x float> %i.etp, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.etr = getelementptr inbounds nuw i8, ptr %i.etn, i64 4
  %i.ets = load float, ptr %i.etr, align 4, !tbaa !27
  %i.ett = insertelement <4 x float> poison, float %i.ets, i64 0
  %i.etu = shufflevector <4 x float> %i.ett, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.etv = fmul fast <4 x float> %i.etq, %.14591.lcssa
  %i.etw = fadd fast <4 x float> %i.etv, %i.etu
  %i.etx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.etw, <4 x float> zeroinitializer)
  %i.ety = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.etx, <4 x float> splat (float 1.000000e+00))
  %i.etz = fmul fast <4 x float> %i.ety, %.14591.lcssa
  %i.eua = fmul fast <4 x float> %i.etq, %.04589.lcssa
  %i.eub = fadd fast <4 x float> %i.eua, %i.etu
  %i.euc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eub, <4 x float> zeroinitializer)
  %i.eud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.euc, <4 x float> splat (float 1.000000e+00))
  %i.eue = fmul fast <4 x float> %i.eud, %.04589.lcssa
  %i.euf = fmul fast <4 x float> %i.etq, %.04588.lcssa
  %i.eug = fadd fast <4 x float> %i.euf, %i.etu
  %i.euh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eug, <4 x float> zeroinitializer)
  %i.eui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.euh, <4 x float> splat (float 1.000000e+00))
  %i.euj = fmul fast <4 x float> %i.eui, %.04588.lcssa
  %i.euk = fmul fast <4 x float> %i.etq, %.04587.lcssa
  %i.eul = fadd fast <4 x float> %i.euk, %i.etu
  %i.eum = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eul, <4 x float> zeroinitializer)
  %i.eun = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eum, <4 x float> splat (float 1.000000e+00))
  %i.euo = fmul fast <4 x float> %i.eun, %.04587.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528:   ; preds = %._crit_edge5632, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread
  %.0.i5295283 = phi <4 x float> [ %i.euj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241 ], [ %i.dxl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread ], [ %i.dyc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229 ], [ %i.dyu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232 ], [ %i.ecr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235 ], [ %i.epp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238 ], [ %.04588.lcssa, %._crit_edge5632 ] ; 2 uses
  %.0.i539522852475281 = phi <4 x float> [ %i.etz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241 ], [ %i.dxj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread ], [ %i.dxu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229 ], [ %i.dyq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232 ], [ %i.ead, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235 ], [ %i.ehv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238 ], [ %.14591.lcssa, %._crit_edge5632 ] ; 2 uses
  %.0.i53452495279 = phi <4 x float> [ %i.eue, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241 ], [ %i.dxk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread ], [ %i.dxy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229 ], [ %i.dys, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232 ], [ %i.ebk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235 ], [ %i.els, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238 ], [ %.04589.lcssa, %._crit_edge5632 ] ; 2 uses
  %.0.i524 = phi nsz <4 x float> [ %i.euo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5241 ], [ %i.dxm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread ], [ %i.dyg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5229 ], [ %i.dyw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5232 ], [ %i.edy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5235 ], [ %i.etm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit543.thread5238 ], [ %.04587.lcssa, %._crit_edge5632 ] ; 2 uses
  %i.eup = shufflevector <4 x float> %.0.i539522852475281, <4 x float> %.0.i53452495279, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.euq = shufflevector <4 x float> %.0.i5295283, <4 x float> %.0.i524, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eur = shufflevector <4 x float> %.0.i539522852475281, <4 x float> %.0.i53452495279, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eus = shufflevector <4 x float> %.0.i5295283, <4 x float> %.0.i524, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eut = shufflevector <4 x float> %i.eup, <4 x float> %i.euq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.euu = shufflevector <4 x float> %i.euq, <4 x float> %i.eup, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.euv = shufflevector <4 x float> %i.eur, <4 x float> %i.eus, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.euw = shufflevector <4 x float> %i.eus, <4 x float> %i.eur, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.eut, ptr %.03575637, align 1, !tbaa !23
  %i.eux = getelementptr inbounds nuw i8, ptr %.03575637, i64 16
  store <4 x float> %i.euu, ptr %i.eux, align 1, !tbaa !23
  %i.euy = getelementptr inbounds nuw i8, ptr %.03575637, i64 32
  store <4 x float> %i.euv, ptr %i.euy, align 1, !tbaa !23
  %i.euz = getelementptr inbounds nuw i8, ptr %.03575637, i64 48
  store <4 x float> %i.euw, ptr %i.euz, align 1, !tbaa !23
  %i.eva = getelementptr inbounds nuw i8, ptr %.03575637, i64 64
  %indvars.iv.next5821 = add nuw nsw i64 %indvars.iv5820, 1 ; 2 uses
  %i.evb = load i32, ptr %6, align 4, !tbaa !9
  %i.evc = load i32, ptr %4, align 4, !tbaa !9
  %i.evd = sdiv i32 %i.evb, %i.evc
  %i.eve = sext i32 %i.evd to i64
  %i.evf = icmp slt i64 %indvars.iv.next5821, %i.eve
  br i1 %i.evf, label %.lr.ph5640, label %.thread5225.loopexit, !llvm.loop !64

.thread5225.loopexit:                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit528
  %.pr5330.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %.thread5225

.thread5225:                                      ; preds = %.thread5225.loopexit, %thread-pre-split5223
  %.pr5330 = phi i32 [ %.pr5330.pre, %.thread5225.loopexit ], [ %i.dva, %thread-pre-split5223 ] ; 2 uses
  %i.evg = icmp eq i32 %.pr5330, 1
  br i1 %i.evg, label %.thread5225.thread5899thread-pre-split, label %thread-pre-split5319

.thread5225.thread5899thread-pre-split:           ; preds = %.thread5225
  %.pr = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread5225.thread5899

.thread5225.thread5899:                           ; preds = %.thread5225.thread5899thread-pre-split, %bb.h
  %i.evh = phi i32 [ %.pr, %.thread5225.thread5899thread-pre-split ], [ %i.axp, %bb.h ] ; 2 uses
  %i.evi = icmp eq i32 %i.evh, 4
  br i1 %i.evi, label %bb.ad, label %.thread5321.thread

bb.ad:                                            ; preds = %.thread5225.thread5899
  %i.evj = load i32, ptr %6, align 4, !tbaa !9
  %i.evk = icmp sgt i32 %i.evj, 3
  br i1 %i.evk, label %.lr.ph5668.preheader, label %thread-pre-split5333

.lr.ph5668.preheader:                             ; preds = %bb.ad
  %i.evl = load ptr, ptr %5, align 8, !tbaa !17
  %i.evm = load i32, ptr %i.l, align 4, !tbaa !15
  %i.evn = sext i32 %i.evm to i64
  %i.evo = mul nsw i64 %indvars.iv5833, %i.evn
  %i.evp = load i64, ptr %i.m, align 8, !tbaa !24
  %i.evq = mul i64 %i.evo, %i.evp
  %i.evr = getelementptr inbounds nuw i8, ptr %i.evl, i64 %i.evq
  br label %.lr.ph5668

.lr.ph5668:                                       ; preds = %.lr.ph5668.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523
  %indvars.iv5824 = phi i64 [ 0, %.lr.ph5668.preheader ], [ %indvars.iv.next5825, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523 ] ; 3 uses
  %.03515665 = phi ptr [ %i.evr, %.lr.ph5668.preheader ], [ %i.ffs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523 ] ; 2 uses
  %i.evs = load ptr, ptr %7, align 8, !tbaa !17
  %i.evt = load i32, ptr %i.n, align 4, !tbaa !15
  %i.evu = sext i32 %i.evt to i64
  %i.evv = mul nsw i64 %indvars.iv5824, %i.evu
  %i.evw = load i64, ptr %i.o, align 8, !tbaa !24
  %i.evx = mul i64 %i.evv, %i.evw
  %i.evy = getelementptr inbounds nuw i8, ptr %i.evs, i64 %i.evx ; 2 uses
  %i.evz = load ptr, ptr %8, align 8, !tbaa !17
  %i.ewa = load i32, ptr %i.p, align 4, !tbaa !15
  %i.ewb = sext i32 %i.ewa to i64
  %i.ewc = mul nsw i64 %indvars.iv5833, %i.ewb
  %i.ewd = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ewe = mul i64 %i.ewc, %i.ewd
  %i.ewf = getelementptr inbounds nuw i8, ptr %i.evz, i64 %i.ewe ; 2 uses
  %i.ewg = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not403 = icmp eq ptr %i.ewg, null
  br i1 %.not403, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph5668
  %.idx5884 = shl nuw nsw i64 %indvars.iv5824, 4
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.ewg, i64 %.idx5884
  %i.ewi = load <4 x float>, ptr %i.ewh, align 1, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph5668
  %.04584 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph5668 ], [ %i.ewi, %bb.ae ] ; 2 uses
  %i.ewj = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.ewk = icmp sgt i32 %i.ewj, 3
  br i1 %i.ewk, label %.lr.ph5649, label %.preheader5478

.preheader5478.loopexit:                          ; preds = %.lr.ph5649
  %i.ewl = and i32 %i.ewj, 2147483644
  %i.ewm = fadd fast <4 x float> %i.eyf, %i.eyd
  %i.ewn = fadd fast <4 x float> %i.ewm, %i.eyh
  br label %.preheader5478

.preheader5478:                                   ; preds = %.preheader5478.loopexit, %bb.af
  %.14585.lcssa = phi <4 x float> [ %.04584, %bb.af ], [ %i.eyb, %.preheader5478.loopexit ] ; 3 uses
  %.04582.lcssa = phi <4 x float> [ zeroinitializer, %bb.af ], [ %i.ewn, %.preheader5478.loopexit ]
  %.0348.lcssa = phi ptr [ %i.evy, %bb.af ], [ %i.eyj, %.preheader5478.loopexit ] ; 3 uses
  %.0346.lcssa = phi ptr [ %i.ewf, %bb.af ], [ %i.eyi, %.preheader5478.loopexit ] ; 3 uses
  %.0344.lcssa = phi i32 [ 0, %bb.af ], [ %i.ewl, %.preheader5478.loopexit ] ; 4 uses
  %i.ewo = icmp slt i32 %.0344.lcssa, %i.ewj
  br i1 %i.ewo, label %.lr.ph5662.preheader, label %._crit_edge5663

.lr.ph5662.preheader:                             ; preds = %.preheader5478
  %.neg6113 = or disjoint i32 %.0344.lcssa, 1
  %xtraiter6104 = and i32 %i.ewj, 1
  %lcmp.mod6105.not = icmp eq i32 %xtraiter6104, 0
  br i1 %lcmp.mod6105.not, label %.lr.ph5662.prol.loopexit, label %.lr.ph5662.prol

.lr.ph5662.prol:                                  ; preds = %.lr.ph5662.preheader
  %i.ewp = load float, ptr %.0346.lcssa, align 4, !tbaa !27
  %i.ewq = insertelement <4 x float> poison, float %i.ewp, i64 0
  %i.ewr = shufflevector <4 x float> %i.ewq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ews = load <4 x half>, ptr %.0348.lcssa, align 1, !tbaa !23
  %i.ewt = fpext fast <4 x half> %i.ews to <4 x float>
  %i.ewu = fmul fast <4 x float> %i.ewr, %i.ewt
  %i.ewv = fadd fast <4 x float> %i.ewu, %.14585.lcssa ; 2 uses
  %i.eww = getelementptr inbounds nuw i8, ptr %.0346.lcssa, i64 4
  %i.ewx = getelementptr inbounds nuw i8, ptr %.0348.lcssa, i64 8
  %i.ewy = or disjoint i32 %.0344.lcssa, 1
  br label %.lr.ph5662.prol.loopexit

.lr.ph5662.prol.loopexit:                         ; preds = %.lr.ph5662.prol, %.lr.ph5662.preheader
  %.lcssa6088.unr = phi <4 x float> [ poison, %.lr.ph5662.preheader ], [ %i.ewv, %.lr.ph5662.prol ]
  %.13455661.unr = phi i32 [ %.0344.lcssa, %.lr.ph5662.preheader ], [ %i.ewy, %.lr.ph5662.prol ]
  %.13475660.unr = phi ptr [ %.0346.lcssa, %.lr.ph5662.preheader ], [ %i.eww, %.lr.ph5662.prol ]
  %.13495659.unr = phi ptr [ %.0348.lcssa, %.lr.ph5662.preheader ], [ %i.ewx, %.lr.ph5662.prol ]
  %.245865658.unr = phi <4 x float> [ %.14585.lcssa, %.lr.ph5662.preheader ], [ %i.ewv, %.lr.ph5662.prol ]
  %i.ewz = icmp eq i32 %i.ewj, %.neg6113
  br i1 %i.ewz, label %._crit_edge5663, label %.lr.ph5662

.lr.ph5649:                                       ; preds = %bb.af, %.lr.ph5649
  %.03445647 = phi i32 [ %i.eyk, %.lr.ph5649 ], [ 0, %bb.af ]
  %.03465646 = phi ptr [ %i.eyi, %.lr.ph5649 ], [ %i.ewf, %bb.af ] ; 5 uses
  %.03485645 = phi ptr [ %i.eyj, %.lr.ph5649 ], [ %i.evy, %bb.af ] ; 5 uses
  %.045815644 = phi <4 x float> [ %i.eyh, %.lr.ph5649 ], [ zeroinitializer, %bb.af ]
  %.045825643 = phi <4 x float> [ %i.eyf, %.lr.ph5649 ], [ zeroinitializer, %bb.af ]
  %.045835642 = phi <4 x float> [ %i.eyd, %.lr.ph5649 ], [ zeroinitializer, %bb.af ]
  %.145855641 = phi <4 x float> [ %i.eyb, %.lr.ph5649 ], [ %.04584, %bb.af ]
  %i.exa = load float, ptr %.03465646, align 4, !tbaa !27
  %i.exb = insertelement <4 x float> poison, float %i.exa, i64 0
  %i.exc = shufflevector <4 x float> %i.exb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exd = getelementptr inbounds nuw i8, ptr %.03465646, i64 4
  %i.exe = load float, ptr %i.exd, align 4, !tbaa !27
  %i.exf = insertelement <4 x float> poison, float %i.exe, i64 0
  %i.exg = shufflevector <4 x float> %i.exf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exh = getelementptr inbounds nuw i8, ptr %.03465646, i64 8
  %i.exi = load float, ptr %i.exh, align 4, !tbaa !27
  %i.exj = insertelement <4 x float> poison, float %i.exi, i64 0
  %i.exk = shufflevector <4 x float> %i.exj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exl = getelementptr inbounds nuw i8, ptr %.03465646, i64 12
  %i.exm = load float, ptr %i.exl, align 4, !tbaa !27
  %i.exn = insertelement <4 x float> poison, float %i.exm, i64 0
  %i.exo = shufflevector <4 x float> %i.exn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exp = load <4 x half>, ptr %.03485645, align 1, !tbaa !23
  %i.exq = fpext fast <4 x half> %i.exp to <4 x float>
  %i.exr = getelementptr inbounds nuw i8, ptr %.03485645, i64 8
  %i.exs = load <4 x half>, ptr %i.exr, align 1, !tbaa !23
  %i.ext = fpext fast <4 x half> %i.exs to <4 x float>
  %i.exu = getelementptr inbounds nuw i8, ptr %.03485645, i64 16
  %i.exv = load <4 x half>, ptr %i.exu, align 1, !tbaa !23
  %i.exw = fpext fast <4 x half> %i.exv to <4 x float>
  %i.exx = getelementptr inbounds nuw i8, ptr %.03485645, i64 24
  %i.exy = load <4 x half>, ptr %i.exx, align 1, !tbaa !23
  %i.exz = fpext fast <4 x half> %i.exy to <4 x float>
  %i.eya = fmul fast <4 x float> %i.exc, %i.exq
  %i.eyb = fadd fast <4 x float> %i.eya, %.145855641 ; 2 uses
  %i.eyc = fmul fast <4 x float> %i.exg, %i.ext
  %i.eyd = fadd fast <4 x float> %i.eyc, %.045835642 ; 2 uses
  %i.eye = fmul fast <4 x float> %i.exk, %i.exw
  %i.eyf = fadd fast <4 x float> %i.eye, %.045825643 ; 2 uses
  %i.eyg = fmul fast <4 x float> %i.exo, %i.exz
  %i.eyh = fadd fast <4 x float> %i.eyg, %.045815644 ; 2 uses
  %i.eyi = getelementptr inbounds nuw i8, ptr %.03465646, i64 16 ; 2 uses
  %i.eyj = getelementptr inbounds nuw i8, ptr %.03485645, i64 32 ; 2 uses
  %i.eyk = add nuw nsw i32 %.03445647, 4          ; 2 uses
  %i.eyl = or disjoint i32 %i.eyk, 3
  %i.eym = icmp slt i32 %i.eyl, %i.ewj
  br i1 %i.eym, label %.lr.ph5649, label %.preheader5478.loopexit, !llvm.loop !65

.lr.ph5662:                                       ; preds = %.lr.ph5662.prol.loopexit, %.lr.ph5662
  %.13455661 = phi i32 [ %i.ezf, %.lr.ph5662 ], [ %.13455661.unr, %.lr.ph5662.prol.loopexit ]
  %.13475660 = phi ptr [ %i.ezd, %.lr.ph5662 ], [ %.13475660.unr, %.lr.ph5662.prol.loopexit ] ; 3 uses
  %.13495659 = phi ptr [ %i.eze, %.lr.ph5662 ], [ %.13495659.unr, %.lr.ph5662.prol.loopexit ] ; 3 uses
  %.245865658 = phi <4 x float> [ %i.ezc, %.lr.ph5662 ], [ %.245865658.unr, %.lr.ph5662.prol.loopexit ]
  %i.eyn = load float, ptr %.13475660, align 4, !tbaa !27
  %i.eyo = insertelement <4 x float> poison, float %i.eyn, i64 0
  %i.eyp = shufflevector <4 x float> %i.eyo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eyq = load <4 x half>, ptr %.13495659, align 1, !tbaa !23
  %i.eyr = fpext fast <4 x half> %i.eyq to <4 x float>
  %i.eys = fmul fast <4 x float> %i.eyp, %i.eyr
  %i.eyt = fadd fast <4 x float> %i.eys, %.245865658
  %i.eyu = getelementptr inbounds nuw i8, ptr %.13475660, i64 4
  %i.eyv = getelementptr inbounds nuw i8, ptr %.13495659, i64 8
  %i.eyw = load float, ptr %i.eyu, align 4, !tbaa !27
  %i.eyx = insertelement <4 x float> poison, float %i.eyw, i64 0
  %i.eyy = shufflevector <4 x float> %i.eyx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eyz = load <4 x half>, ptr %i.eyv, align 1, !tbaa !23
  %i.eza = fpext fast <4 x half> %i.eyz to <4 x float>
  %i.ezb = fmul fast <4 x float> %i.eyy, %i.eza
  %i.ezc = fadd fast <4 x float> %i.ezb, %i.eyt   ; 2 uses
  %i.ezd = getelementptr inbounds nuw i8, ptr %.13475660, i64 8
  %i.eze = getelementptr inbounds nuw i8, ptr %.13495659, i64 16
  %i.ezf = add nuw nsw i32 %.13455661, 2          ; 2 uses
  %exitcond5823.not.1 = icmp eq i32 %i.ezf, %i.ewj
  br i1 %exitcond5823.not.1, label %._crit_edge5663, label %.lr.ph5662, !llvm.loop !66

._crit_edge5663:                                  ; preds = %.lr.ph5662.prol.loopexit, %.lr.ph5662, %.preheader5478
  %.24586.lcssa = phi <4 x float> [ %.14585.lcssa, %.preheader5478 ], [ %.lcssa6088.unr, %.lr.ph5662.prol.loopexit ], [ %i.ezc, %.lr.ph5662 ]
  %i.ezg = fadd fast <4 x float> %.04582.lcssa, %.24586.lcssa ; 10 uses
  %i.ezh = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.ezh, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523 [
    i32 1, label %bb.ag
    i32 2, label %.noexc520
    i32 3, label %bb.ah
    i32 4, label %.noexc521
    i32 5, label %.noexc522
    i32 6, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge5663
  %i.ezi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ezg, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

.noexc520:                                        ; preds = %._crit_edge5663
  %i.ezj = load ptr, ptr %12, align 8, !tbaa !17
  %i.ezk = load float, ptr %i.ezj, align 4, !tbaa !27
  %i.ezl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ezg)
  %i.ezm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ezg)
  %i.ezn = insertelement <4 x float> poison, float %i.ezk, i64 0
  %i.ezo = shufflevector <4 x float> %i.ezn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ezp = fmul fast <4 x float> %i.ezo, %i.ezm
  %i.ezq = fadd fast <4 x float> %i.ezp, %i.ezl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

bb.ah:                                            ; preds = %._crit_edge5663
  %i.ezr = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ezs = load float, ptr %i.ezr, align 4, !tbaa !27
  %i.ezt = insertelement <4 x float> poison, float %i.ezs, i64 0
  %i.ezu = shufflevector <4 x float> %i.ezt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.ezr, i64 4
  %i.ezw = load float, ptr %i.ezv, align 4, !tbaa !27
  %i.ezx = insertelement <4 x float> poison, float %i.ezw, i64 0
  %i.ezy = shufflevector <4 x float> %i.ezx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ezz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ezg, <4 x float> nofpclass(nan inf) %i.ezu)
  %i.faa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ezz, <4 x float> nofpclass(nan inf) %i.ezy)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

.noexc521:                                        ; preds = %._crit_edge5663
  %i.fab = fneg fast <4 x float> %i.ezg
  %i.fac = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fab, <4 x float> splat (float f0x42B0C0A5))
  %i.fad = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fac, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fae = fmul fast <4 x float> %i.fad, splat (float f0x3FB8AA3B)
  %i.faf = fadd fast <4 x float> %i.fae, splat (float 5.000000e-01) ; 2 uses
  %i.fag = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.faf)
  %i.fah = sitofp fast <4 x i32> %i.fag to <4 x float> ; 2 uses
  %i.fai = fcmp fast olt <4 x float> %i.faf, %i.fah
  %i.faj = select <4 x i1> %i.fai, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fak = fsub fast <4 x float> %i.fah, %i.faj   ; 2 uses
  %i.fal = fmul fast <4 x float> %i.fak, splat (float f0x3F317218)
  %i.fam = fsub fast <4 x float> %i.fad, %i.fal   ; 8 uses
  %i.fan = fmul fast <4 x float> %i.fam, %i.fam
  %i.fao = fmul fast <4 x float> %i.fam, splat (float f0x39506967)
  %i.fap = fadd fast <4 x float> %i.fao, splat (float f0x3AB743CE)
  %i.faq = fmul fast <4 x float> %i.fap, %i.fam
  %i.far = fadd fast <4 x float> %i.faq, splat (float f0x3C088908)
  %i.fas = fmul fast <4 x float> %i.far, %i.fam
  %i.fat = fadd fast <4 x float> %i.fas, splat (float f0x3D2AA9C1)
  %i.fau = fmul fast <4 x float> %i.fat, %i.fam
  %i.fav = fadd fast <4 x float> %i.fau, splat (float f0x3E2AAAAA)
  %i.faw = fmul fast <4 x float> %i.fav, %i.fam
  %i.fax = fadd fast <4 x float> %i.faw, splat (float 5.000000e-01)
  %i.fay = fmul fast <4 x float> %i.fan, %i.fax
  %i.faz = fadd fast <4 x float> %i.fam, splat (float 1.000000e+00)
  %i.fba = fadd fast <4 x float> %i.faz, %i.fay
  %i.fbb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fak)
  %i.fbc = shl <4 x i32> %i.fbb, splat (i32 23)
  %i.fbd = add <4 x i32> %i.fbc, splat (i32 1065353216)
  %i.fbe = bitcast <4 x i32> %i.fbd to <4 x float>
  %i.fbf = fmul fast <4 x float> %i.fba, %i.fbe
  %i.fbg = fadd fast <4 x float> %i.fbf, splat (float 1.000000e+00)
  %i.fbh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fbg
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

.noexc522:                                        ; preds = %._crit_edge5663
  %i.fbi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ezg, <4 x float> splat (float f0x42B0C0A5))
  %i.fbj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fbi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fbk = fmul fast <4 x float> %i.fbj, splat (float f0x3FB8AA3B)
  %i.fbl = fadd fast <4 x float> %i.fbk, splat (float 5.000000e-01) ; 2 uses
  %i.fbm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fbl)
  %i.fbn = sitofp fast <4 x i32> %i.fbm to <4 x float> ; 2 uses
  %i.fbo = fcmp fast olt <4 x float> %i.fbl, %i.fbn
  %i.fbp = select <4 x i1> %i.fbo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fbq = fsub fast <4 x float> %i.fbn, %i.fbp   ; 2 uses
  %i.fbr = fmul fast <4 x float> %i.fbq, splat (float f0x3F317218)
  %i.fbs = fsub fast <4 x float> %i.fbj, %i.fbr   ; 8 uses
  %i.fbt = fmul fast <4 x float> %i.fbs, %i.fbs
  %i.fbu = fmul fast <4 x float> %i.fbs, splat (float f0x39506967)
  %i.fbv = fadd fast <4 x float> %i.fbu, splat (float f0x3AB743CE)
  %i.fbw = fmul fast <4 x float> %i.fbv, %i.fbs
  %i.fbx = fadd fast <4 x float> %i.fbw, splat (float f0x3C088908)
  %i.fby = fmul fast <4 x float> %i.fbx, %i.fbs
  %i.fbz = fadd fast <4 x float> %i.fby, splat (float f0x3D2AA9C1)
  %i.fca = fmul fast <4 x float> %i.fbz, %i.fbs
  %i.fcb = fadd fast <4 x float> %i.fca, splat (float f0x3E2AAAAA)
  %i.fcc = fmul fast <4 x float> %i.fcb, %i.fbs
  %i.fcd = fadd fast <4 x float> %i.fcc, splat (float 5.000000e-01)
  %i.fce = fmul fast <4 x float> %i.fbt, %i.fcd
  %i.fcf = fadd fast <4 x float> %i.fbs, splat (float 1.000000e+00)
  %i.fcg = fadd fast <4 x float> %i.fcf, %i.fce
  %i.fch = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fbq)
  %i.fci = shl <4 x i32> %i.fch, splat (i32 23)
  %i.fcj = add <4 x i32> %i.fci, splat (i32 1065353216)
  %i.fck = bitcast <4 x i32> %i.fcj to <4 x float>
  %i.fcl = fmul fast <4 x float> %i.fcg, %i.fck
  %i.fcm = fadd fast <4 x float> %i.fcl, splat (float 1.000000e+00) ; 2 uses
  %i.fcn = fcmp fast ole <4 x float> %i.fcm, zeroinitializer
  %i.fco = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fcm, <4 x float> splat (float f0x00800000))
  %i.fcp = bitcast <4 x float> %i.fco to <4 x i32> ; 2 uses
  %i.fcq = lshr <4 x i32> %i.fcp, splat (i32 23)
  %i.fcr = and <4 x i32> %i.fcp, splat (i32 -2139095041)
  %i.fcs = or disjoint <4 x i32> %i.fcr, splat (i32 1056964608)
  %i.fct = bitcast <4 x i32> %i.fcs to <4 x float> ; 3 uses
  %i.fcu = add nsw <4 x i32> %i.fcq, splat (i32 -127)
  %i.fcv = sitofp fast <4 x i32> %i.fcu to <4 x float> ; 2 uses
  %i.fcw = fadd fast <4 x float> %i.fcv, splat (float 1.000000e+00)
  %i.fcx = fcmp fast olt <4 x float> %i.fct, splat (float f0x3F3504F3) ; 2 uses
  %i.fcy = select <4 x i1> %i.fcx, <4 x float> %i.fct, <4 x float> zeroinitializer
  %i.fcz = fadd fast <4 x float> %i.fct, splat (float -1.000000e+00)
  %i.fda = select fast <4 x i1> %i.fcx, <4 x float> %i.fcv, <4 x float> %i.fcw
  %i.fdb = fadd fast <4 x float> %i.fcz, %i.fcy   ; 12 uses
  %i.fdc = fmul fast <4 x float> %i.fdb, %i.fdb
  %i.fdd = fmul fast <4 x float> %i.fdb, splat (float f0x3D9021BB)
  %i.fde = fadd fast <4 x float> %i.fdd, splat (float f0xBDEBD1B8)
  %i.fdf = fmul fast <4 x float> %i.fde, %i.fdb
  %i.fdg = fadd fast <4 x float> %i.fdf, splat (float f0x3DEF251A)
  %i.fdh = fmul fast <4 x float> %i.fdg, %i.fdb
  %i.fdi = fadd fast <4 x float> %i.fdh, splat (float f0xBDFE5D4F)
  %i.fdj = fmul fast <4 x float> %i.fdi, %i.fdb
  %i.fdk = fadd fast <4 x float> %i.fdj, splat (float f0x3E11E9BF)
  %i.fdl = fmul fast <4 x float> %i.fdk, %i.fdb
  %i.fdm = fadd fast <4 x float> %i.fdl, splat (float f0xBE2AAE50)
  %i.fdn = fmul fast <4 x float> %i.fdm, %i.fdb
  %i.fdo = fadd fast <4 x float> %i.fdn, splat (float f0x3E4CCEAC)
  %i.fdp = fmul fast <4 x float> %i.fdo, %i.fdb
  %i.fdq = fadd fast <4 x float> %i.fdp, splat (float f0xBE7FFFFC)
  %i.fdr = fmul fast <4 x float> %i.fdq, %i.fdb
  %i.fds = fadd fast <4 x float> %i.fdr, splat (float f0x3EAAAAAA)
  %i.fdt = fmul fast <4 x float> %i.fds, %i.fdb
  %reass.mul5366 = fmul fast <4 x float> %i.fda, splat (float f0x3F317218)
  %reass.add5367 = fadd fast <4 x float> %i.fdt, splat (float -5.000000e-01)
  %reass.mul5368 = fmul fast <4 x float> %i.fdc, %reass.add5367
  %i.fdu = fadd fast <4 x float> %reass.mul5366, %i.fdb
  %i.fdv = fadd fast <4 x float> %i.fdu, %reass.mul5368
  %.neg5339 = fmul fast <4 x float> %i.fdv, splat (float -2.000000e+00)
  %i.fdw = select fast <4 x i1> %i.fcn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg5339
  %i.fdx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fdw, <4 x float> splat (float f0x42B0C0A5))
  %i.fdy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fdx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fdz = fmul fast <4 x float> %i.fdy, splat (float f0x3FB8AA3B)
  %i.fea = fadd fast <4 x float> %i.fdz, splat (float 5.000000e-01) ; 2 uses
  %i.feb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fea)
  %i.fec = sitofp fast <4 x i32> %i.feb to <4 x float> ; 2 uses
  %i.fed = fcmp fast olt <4 x float> %i.fea, %i.fec
  %i.fee = select <4 x i1> %i.fed, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fef = fsub fast <4 x float> %i.fec, %i.fee   ; 2 uses
  %i.feg = fmul fast <4 x float> %i.fef, splat (float f0x3F317218)
  %i.feh = fsub fast <4 x float> %i.fdy, %i.feg   ; 8 uses
  %i.fei = fmul fast <4 x float> %i.feh, %i.feh
  %i.fej = fmul fast <4 x float> %i.feh, splat (float f0x39506967)
  %i.fek = fadd fast <4 x float> %i.fej, splat (float f0x3AB743CE)
  %i.fel = fmul fast <4 x float> %i.fek, %i.feh
  %i.fem = fadd fast <4 x float> %i.fel, splat (float f0x3C088908)
  %i.fen = fmul fast <4 x float> %i.fem, %i.feh
  %i.feo = fadd fast <4 x float> %i.fen, splat (float f0x3D2AA9C1)
  %i.fep = fmul fast <4 x float> %i.feo, %i.feh
  %i.feq = fadd fast <4 x float> %i.fep, splat (float f0x3E2AAAAA)
  %i.fer = fmul fast <4 x float> %i.feq, %i.feh
  %i.fes = fadd fast <4 x float> %i.fer, splat (float 5.000000e-01)
  %i.fet = fmul fast <4 x float> %i.fei, %i.fes
  %i.feu = fadd fast <4 x float> %i.feh, splat (float 1.000000e+00)
  %i.fev = fadd fast <4 x float> %i.feu, %i.fet
  %i.few = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fef)
  %i.fex = shl <4 x i32> %i.few, splat (i32 23)
  %i.fey = add <4 x i32> %i.fex, splat (i32 1065353216)
  %i.fez = bitcast <4 x i32> %i.fey to <4 x float>
  %i.ffa = fmul fast <4 x float> %i.fev, %i.fez
  %i.ffb = fadd fast <4 x float> %i.ffa, splat (float 1.000000e+00)
  %i.ffc = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ffb
  %i.ffd = fadd fast <4 x float> %i.ffc, splat (float -1.000000e+00)
  %i.ffe = fmul fast <4 x float> %i.ffd, %i.ezg
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

bb.ai:                                            ; preds = %._crit_edge5663
  %i.fff = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ffg = load float, ptr %i.fff, align 4, !tbaa !27
  %i.ffh = insertelement <4 x float> poison, float %i.ffg, i64 0
  %i.ffi = shufflevector <4 x float> %i.ffh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffj = getelementptr inbounds nuw i8, ptr %i.fff, i64 4
  %i.ffk = load float, ptr %i.ffj, align 4, !tbaa !27
  %i.ffl = insertelement <4 x float> poison, float %i.ffk, i64 0
  %i.ffm = shufflevector <4 x float> %i.ffl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ffn = fmul fast <4 x float> %i.ffi, %i.ezg
  %i.ffo = fadd fast <4 x float> %i.ffn, %i.ffm
  %i.ffp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ffo, <4 x float> zeroinitializer)
  %i.ffq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ffp, <4 x float> splat (float 1.000000e+00))
  %i.ffr = fmul fast <4 x float> %i.ffq, %i.ezg
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523:   ; preds = %bb.ai, %.noexc522, %.noexc521, %bb.ah, %.noexc520, %bb.ag, %._crit_edge5663
  %.0.i519 = phi nsz <4 x float> [ %i.ffr, %bb.ai ], [ %i.ezi, %bb.ag ], [ %i.ezq, %.noexc520 ], [ %i.faa, %bb.ah ], [ %i.fbh, %.noexc521 ], [ %i.ffe, %.noexc522 ], [ %i.ezg, %._crit_edge5663 ]
  store <4 x float> %.0.i519, ptr %.03515665, align 1, !tbaa !23
  %i.ffs = getelementptr inbounds nuw i8, ptr %.03515665, i64 16
  %indvars.iv.next5825 = add nuw nsw i64 %indvars.iv5824, 1 ; 2 uses
  %i.fft = load i32, ptr %6, align 4, !tbaa !9
  %i.ffu = load i32, ptr %4, align 4, !tbaa !9
  %i.ffv = sdiv i32 %i.fft, %i.ffu
  %i.ffw = sext i32 %i.ffv to i64
  %i.ffx = icmp slt i64 %indvars.iv.next5825, %i.ffw
  br i1 %i.ffx, label %.lr.ph5668, label %thread-pre-split5319.loopexit, !llvm.loop !67

thread-pre-split5319.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit523
  %.pr5320.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %thread-pre-split5319

thread-pre-split5319:                             ; preds = %thread-pre-split5319.loopexit, %.thread5225
  %i.ffy = phi i32 [ %.pr5320.pre, %thread-pre-split5319.loopexit ], [ %.pr5330, %.thread5225 ] ; 2 uses
  %i.ffz = icmp eq i32 %i.ffy, 4
  br i1 %i.ffz, label %thread-pre-split5319.thread5901, label %.thread5321

thread-pre-split5319.thread5901:                  ; preds = %.thread5327, %bb.aa, %thread-pre-split5319
  %i.fga = load i32, ptr %4, align 4, !tbaa !9
  %i.fgb = icmp eq i32 %i.fga, 1
  br i1 %i.fgb, label %bb.aj, label %.thread5321.thread5336

bb.aj:                                            ; preds = %thread-pre-split5319.thread5901
  %i.fgc = load i32, ptr %6, align 4, !tbaa !9
  %i.fgd = icmp sgt i32 %i.fgc, 0
  br i1 %i.fgd, label %.lr.ph5695.preheader, label %.thread5321.thread5336

.lr.ph5695.preheader:                             ; preds = %bb.aj
  %i.fge = load ptr, ptr %5, align 8, !tbaa !17
  %i.fgf = load i32, ptr %i.l, align 4, !tbaa !15
  %i.fgg = sext i32 %i.fgf to i64
  %i.fgh = mul nsw i64 %indvars.iv5833, %i.fgg
  %i.fgi = load i64, ptr %i.m, align 8, !tbaa !24
  %i.fgj = mul i64 %i.fgh, %i.fgi
  %i.fgk = getelementptr inbounds nuw i8, ptr %i.fge, i64 %i.fgj
  br label %.lr.ph5695

.lr.ph5695:                                       ; preds = %.lr.ph5695.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv5827 = phi i64 [ 0, %.lr.ph5695.preheader ], [ %indvars.iv.next5828, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.03435692 = phi ptr [ %i.fgk, %.lr.ph5695.preheader ], [ %i.fpi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.fgl = load ptr, ptr %7, align 8, !tbaa !17
  %i.fgm = load i32, ptr %i.n, align 4, !tbaa !15
  %i.fgn = sext i32 %i.fgm to i64
  %i.fgo = mul nsw i64 %indvars.iv5827, %i.fgn
  %i.fgp = load i64, ptr %i.o, align 8, !tbaa !24
  %i.fgq = mul i64 %i.fgo, %i.fgp
  %i.fgr = getelementptr inbounds nuw i8, ptr %i.fgl, i64 %i.fgq ; 2 uses
  %i.fgs = load ptr, ptr %8, align 8, !tbaa !17
  %i.fgt = load i32, ptr %i.p, align 4, !tbaa !15
  %i.fgu = sext i32 %i.fgt to i64
  %i.fgv = mul nsw i64 %indvars.iv5833, %i.fgu
  %i.fgw = load i64, ptr %i.q, align 8, !tbaa !24
  %i.fgx = mul i64 %i.fgv, %i.fgw
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgs, i64 %i.fgx ; 2 uses
  %i.fgz = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not402 = icmp eq ptr %i.fgz, null
  br i1 %.not402, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph5695
  %i.fha = getelementptr inbounds nuw [4 x i8], ptr %i.fgz, i64 %indvars.iv5827
  %i.fhb = load float, ptr %i.fha, align 4, !tbaa !27
  %i.fhc = insertelement <4 x float> poison, float %i.fhb, i64 0
  %i.fhd = shufflevector <4 x float> %i.fhc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph5695
  %.04578 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph5695 ], [ %i.fhd, %bb.ak ] ; 2 uses
  %i.fhe = load i32, ptr %10, align 4, !tbaa !9   ; 4 uses
  %i.fhf = icmp sgt i32 %i.fhe, 3
  br i1 %i.fhf, label %.lr.ph5677, label %.preheader5474

.preheader5474.loopexit:                          ; preds = %.lr.ph5677
  %i.fhg = and i32 %i.fhe, 2147483644
  %i.fhh = fadd fast <4 x float> %i.fic, %i.fia
  %i.fhi = fadd fast <4 x float> %i.fhh, %i.fie
  br label %.preheader5474

.preheader5474:                                   ; preds = %.preheader5474.loopexit, %bb.al
  %.14579.lcssa = phi <4 x float> [ %.04578, %bb.al ], [ %i.fhy, %.preheader5474.loopexit ] ; 2 uses
  %.04576.lcssa = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.fhi, %.preheader5474.loopexit ]
  %.0340.lcssa = phi ptr [ %i.fgr, %bb.al ], [ %i.fig, %.preheader5474.loopexit ]
  %.0338.lcssa = phi ptr [ %i.fgy, %bb.al ], [ %i.fif, %.preheader5474.loopexit ]
  %.0336.lcssa = phi i32 [ 0, %bb.al ], [ %i.fhg, %.preheader5474.loopexit ] ; 2 uses
  %i.fhj = icmp slt i32 %.0336.lcssa, %i.fhe
  br i1 %i.fhj, label %.lr.ph5689, label %._crit_edge5690

.lr.ph5677:                                       ; preds = %bb.al, %.lr.ph5677
  %.03365675 = phi i32 [ %i.fih, %.lr.ph5677 ], [ 0, %bb.al ]
  %.03385674 = phi ptr [ %i.fif, %.lr.ph5677 ], [ %i.fgy, %bb.al ] ; 5 uses
  %.03405673 = phi ptr [ %i.fig, %.lr.ph5677 ], [ %i.fgr, %bb.al ] ; 2 uses
  %.045755672 = phi <4 x float> [ %i.fie, %.lr.ph5677 ], [ zeroinitializer, %bb.al ]
  %.045765671 = phi <4 x float> [ %i.fic, %.lr.ph5677 ], [ zeroinitializer, %bb.al ]
  %.045775670 = phi <4 x float> [ %i.fia, %.lr.ph5677 ], [ zeroinitializer, %bb.al ]
  %.145795669 = phi <4 x float> [ %i.fhy, %.lr.ph5677 ], [ %.04578, %bb.al ]
  %i.fhk = load <4 x float>, ptr %.03385674, align 1, !tbaa !23
  %i.fhl = getelementptr inbounds nuw i8, ptr %.03385674, i64 16
  %i.fhm = load <4 x float>, ptr %i.fhl, align 1, !tbaa !23
  %i.fhn = getelementptr inbounds nuw i8, ptr %.03385674, i64 32
  %i.fho = load <4 x float>, ptr %i.fhn, align 1, !tbaa !23
  %i.fhp = getelementptr inbounds nuw i8, ptr %.03385674, i64 48
  %i.fhq = load <4 x float>, ptr %i.fhp, align 1, !tbaa !23
  %i.fhr = load <4 x half>, ptr %.03405673, align 1, !tbaa !23
  %i.fhs = fpext fast <4 x half> %i.fhr to <4 x float> ; 4 uses
  %i.fht = shufflevector <4 x float> %i.fhs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fhu = shufflevector <4 x float> %i.fhs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fhv = shufflevector <4 x float> %i.fhs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fhw = shufflevector <4 x float> %i.fhs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fhx = fmul fast <4 x float> %i.fht, %i.fhk
  %i.fhy = fadd fast <4 x float> %i.fhx, %.145795669 ; 2 uses
  %i.fhz = fmul fast <4 x float> %i.fhu, %i.fhm
  %i.fia = fadd fast <4 x float> %i.fhz, %.045775670 ; 2 uses
  %i.fib = fmul fast <4 x float> %i.fhv, %i.fho
  %i.fic = fadd fast <4 x float> %i.fib, %.045765671 ; 2 uses
  %i.fid = fmul fast <4 x float> %i.fhw, %i.fhq
  %i.fie = fadd fast <4 x float> %i.fid, %.045755672 ; 2 uses
  %i.fif = getelementptr inbounds nuw i8, ptr %.03385674, i64 64 ; 2 uses
  %i.fig = getelementptr inbounds nuw i8, ptr %.03405673, i64 8 ; 2 uses
  %i.fih = add nuw nsw i32 %.03365675, 4          ; 2 uses
  %i.fii = or disjoint i32 %i.fih, 3
  %i.fij = icmp slt i32 %i.fii, %i.fhe
  br i1 %i.fij, label %.lr.ph5677, label %.preheader5474.loopexit, !llvm.loop !68

.lr.ph5689:                                       ; preds = %.preheader5474, %bb.am
  %.13375688 = phi i32 [ %i.fit, %bb.am ], [ %.0336.lcssa, %.preheader5474 ]
  %.13395687 = phi ptr [ %i.fir, %bb.am ], [ %.0338.lcssa, %.preheader5474 ] ; 2 uses
  %.13415686 = phi ptr [ %i.fis, %bb.am ], [ %.0340.lcssa, %.preheader5474 ] ; 2 uses
  %.245805685 = phi <4 x float> [ %i.fiq, %bb.am ], [ %.14579.lcssa, %.preheader5474 ]
  %i.fik = load <4 x float>, ptr %.13395687, align 1, !tbaa !23
  %i.fil = load i16, ptr %.13415686, align 2, !tbaa !31
  %i.fim = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.fil)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit

bb.am:                                            ; preds = %.lr.ph5689
  %i.fin = insertelement <4 x float> poison, float %i.fim, i64 0
  %i.fio = shufflevector <4 x float> %i.fin, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fip = fmul fast <4 x float> %i.fio, %i.fik
  %i.fiq = fadd fast <4 x float> %i.fip, %.245805685 ; 2 uses
  %i.fir = getelementptr inbounds nuw i8, ptr %.13395687, i64 16
  %i.fis = getelementptr inbounds nuw i8, ptr %.13415686, i64 2
  %i.fit = add nuw nsw i32 %.13375688, 1          ; 2 uses
  %i.fiu = load i32, ptr %10, align 4, !tbaa !9
  %i.fiv = icmp slt i32 %i.fit, %i.fiu
  br i1 %i.fiv, label %.lr.ph5689, label %._crit_edge5690, !llvm.loop !69

._crit_edge5690:                                  ; preds = %bb.am, %.preheader5474
  %.24580.lcssa = phi <4 x float> [ %.14579.lcssa, %.preheader5474 ], [ %i.fiq, %bb.am ]
  %i.fiw = fadd fast <4 x float> %.04576.lcssa, %.24580.lcssa ; 10 uses
  %i.fix = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.fix, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.an
    i32 2, label %.noexc516
    i32 3, label %bb.ao
    i32 4, label %.noexc517
    i32 5, label %.noexc518
    i32 6, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge5690
  %i.fiy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fiw, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc516:                                        ; preds = %._crit_edge5690
  %i.fiz = load ptr, ptr %12, align 8, !tbaa !17
  %i.fja = load float, ptr %i.fiz, align 4, !tbaa !27
  %i.fjb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.fiw)
  %i.fjc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.fiw)
  %i.fjd = insertelement <4 x float> poison, float %i.fja, i64 0
  %i.fje = shufflevector <4 x float> %i.fjd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fjf = fmul fast <4 x float> %i.fje, %i.fjc
  %i.fjg = fadd fast <4 x float> %i.fjf, %i.fjb
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ao:                                            ; preds = %._crit_edge5690
  %i.fjh = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.fji = load float, ptr %i.fjh, align 4, !tbaa !27
  %i.fjj = insertelement <4 x float> poison, float %i.fji, i64 0
  %i.fjk = shufflevector <4 x float> %i.fjj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.fjh, i64 4
  %i.fjm = load float, ptr %i.fjl, align 4, !tbaa !27
  %i.fjn = insertelement <4 x float> poison, float %i.fjm, i64 0
  %i.fjo = shufflevector <4 x float> %i.fjn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fjp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fiw, <4 x float> nofpclass(nan inf) %i.fjk)
  %i.fjq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fjp, <4 x float> nofpclass(nan inf) %i.fjo)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc517:                                        ; preds = %._crit_edge5690
  %i.fjr = fneg fast <4 x float> %i.fiw
  %i.fjs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fjr, <4 x float> splat (float f0x42B0C0A5))
  %i.fjt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fjs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fju = fmul fast <4 x float> %i.fjt, splat (float f0x3FB8AA3B)
  %i.fjv = fadd fast <4 x float> %i.fju, splat (float 5.000000e-01) ; 2 uses
  %i.fjw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fjv)
  %i.fjx = sitofp fast <4 x i32> %i.fjw to <4 x float> ; 2 uses
  %i.fjy = fcmp fast olt <4 x float> %i.fjv, %i.fjx
  %i.fjz = select <4 x i1> %i.fjy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fka = fsub fast <4 x float> %i.fjx, %i.fjz   ; 2 uses
  %i.fkb = fmul fast <4 x float> %i.fka, splat (float f0x3F317218)
  %i.fkc = fsub fast <4 x float> %i.fjt, %i.fkb   ; 8 uses
  %i.fkd = fmul fast <4 x float> %i.fkc, %i.fkc
  %i.fke = fmul fast <4 x float> %i.fkc, splat (float f0x39506967)
  %i.fkf = fadd fast <4 x float> %i.fke, splat (float f0x3AB743CE)
  %i.fkg = fmul fast <4 x float> %i.fkf, %i.fkc
  %i.fkh = fadd fast <4 x float> %i.fkg, splat (float f0x3C088908)
  %i.fki = fmul fast <4 x float> %i.fkh, %i.fkc
  %i.fkj = fadd fast <4 x float> %i.fki, splat (float f0x3D2AA9C1)
  %i.fkk = fmul fast <4 x float> %i.fkj, %i.fkc
  %i.fkl = fadd fast <4 x float> %i.fkk, splat (float f0x3E2AAAAA)
  %i.fkm = fmul fast <4 x float> %i.fkl, %i.fkc
  %i.fkn = fadd fast <4 x float> %i.fkm, splat (float 5.000000e-01)
  %i.fko = fmul fast <4 x float> %i.fkd, %i.fkn
  %i.fkp = fadd fast <4 x float> %i.fkc, splat (float 1.000000e+00)
  %i.fkq = fadd fast <4 x float> %i.fkp, %i.fko
  %i.fkr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fka)
  %i.fks = shl <4 x i32> %i.fkr, splat (i32 23)
  %i.fkt = add <4 x i32> %i.fks, splat (i32 1065353216)
  %i.fku = bitcast <4 x i32> %i.fkt to <4 x float>
  %i.fkv = fmul fast <4 x float> %i.fkq, %i.fku
  %i.fkw = fadd fast <4 x float> %i.fkv, splat (float 1.000000e+00)
  %i.fkx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fkw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc518:                                        ; preds = %._crit_edge5690
  %i.fky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fiw, <4 x float> splat (float f0x42B0C0A5))
  %i.fkz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fky, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fla = fmul fast <4 x float> %i.fkz, splat (float f0x3FB8AA3B)
  %i.flb = fadd fast <4 x float> %i.fla, splat (float 5.000000e-01) ; 2 uses
  %i.flc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.flb)
  %i.fld = sitofp fast <4 x i32> %i.flc to <4 x float> ; 2 uses
  %i.fle = fcmp fast olt <4 x float> %i.flb, %i.fld
  %i.flf = select <4 x i1> %i.fle, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.flg = fsub fast <4 x float> %i.fld, %i.flf   ; 2 uses
  %i.flh = fmul fast <4 x float> %i.flg, splat (float f0x3F317218)
  %i.fli = fsub fast <4 x float> %i.fkz, %i.flh   ; 8 uses
  %i.flj = fmul fast <4 x float> %i.fli, %i.fli
  %i.flk = fmul fast <4 x float> %i.fli, splat (float f0x39506967)
  %i.fll = fadd fast <4 x float> %i.flk, splat (float f0x3AB743CE)
  %i.flm = fmul fast <4 x float> %i.fll, %i.fli
  %i.fln = fadd fast <4 x float> %i.flm, splat (float f0x3C088908)
  %i.flo = fmul fast <4 x float> %i.fln, %i.fli
  %i.flp = fadd fast <4 x float> %i.flo, splat (float f0x3D2AA9C1)
  %i.flq = fmul fast <4 x float> %i.flp, %i.fli
  %i.flr = fadd fast <4 x float> %i.flq, splat (float f0x3E2AAAAA)
  %i.fls = fmul fast <4 x float> %i.flr, %i.fli
  %i.flt = fadd fast <4 x float> %i.fls, splat (float 5.000000e-01)
  %i.flu = fmul fast <4 x float> %i.flj, %i.flt
  %i.flv = fadd fast <4 x float> %i.fli, splat (float 1.000000e+00)
  %i.flw = fadd fast <4 x float> %i.flv, %i.flu
  %i.flx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.flg)
  %i.fly = shl <4 x i32> %i.flx, splat (i32 23)
  %i.flz = add <4 x i32> %i.fly, splat (i32 1065353216)
  %i.fma = bitcast <4 x i32> %i.flz to <4 x float>
  %i.fmb = fmul fast <4 x float> %i.flw, %i.fma
  %i.fmc = fadd fast <4 x float> %i.fmb, splat (float 1.000000e+00) ; 2 uses
  %i.fmd = fcmp fast ole <4 x float> %i.fmc, zeroinitializer
  %i.fme = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmc, <4 x float> splat (float f0x00800000))
  %i.fmf = bitcast <4 x float> %i.fme to <4 x i32> ; 2 uses
  %i.fmg = lshr <4 x i32> %i.fmf, splat (i32 23)
  %i.fmh = and <4 x i32> %i.fmf, splat (i32 -2139095041)
  %i.fmi = or disjoint <4 x i32> %i.fmh, splat (i32 1056964608)
  %i.fmj = bitcast <4 x i32> %i.fmi to <4 x float> ; 3 uses
  %i.fmk = add nsw <4 x i32> %i.fmg, splat (i32 -127)
  %i.fml = sitofp fast <4 x i32> %i.fmk to <4 x float> ; 2 uses
  %i.fmm = fadd fast <4 x float> %i.fml, splat (float 1.000000e+00)
  %i.fmn = fcmp fast olt <4 x float> %i.fmj, splat (float f0x3F3504F3) ; 2 uses
  %i.fmo = select <4 x i1> %i.fmn, <4 x float> %i.fmj, <4 x float> zeroinitializer
  %i.fmp = fadd fast <4 x float> %i.fmj, splat (float -1.000000e+00)
  %i.fmq = select fast <4 x i1> %i.fmn, <4 x float> %i.fml, <4 x float> %i.fmm
  %i.fmr = fadd fast <4 x float> %i.fmp, %i.fmo   ; 12 uses
  %i.fms = fmul fast <4 x float> %i.fmr, %i.fmr
  %i.fmt = fmul fast <4 x float> %i.fmr, splat (float f0x3D9021BB)
  %i.fmu = fadd fast <4 x float> %i.fmt, splat (float f0xBDEBD1B8)
  %i.fmv = fmul fast <4 x float> %i.fmu, %i.fmr
  %i.fmw = fadd fast <4 x float> %i.fmv, splat (float f0x3DEF251A)
  %i.fmx = fmul fast <4 x float> %i.fmw, %i.fmr
  %i.fmy = fadd fast <4 x float> %i.fmx, splat (float f0xBDFE5D4F)
  %i.fmz = fmul fast <4 x float> %i.fmy, %i.fmr
  %i.fna = fadd fast <4 x float> %i.fmz, splat (float f0x3E11E9BF)
  %i.fnb = fmul fast <4 x float> %i.fna, %i.fmr
  %i.fnc = fadd fast <4 x float> %i.fnb, splat (float f0xBE2AAE50)
  %i.fnd = fmul fast <4 x float> %i.fnc, %i.fmr
  %i.fne = fadd fast <4 x float> %i.fnd, splat (float f0x3E4CCEAC)
  %i.fnf = fmul fast <4 x float> %i.fne, %i.fmr
  %i.fng = fadd fast <4 x float> %i.fnf, splat (float f0xBE7FFFFC)
  %i.fnh = fmul fast <4 x float> %i.fng, %i.fmr
  %i.fni = fadd fast <4 x float> %i.fnh, splat (float f0x3EAAAAAA)
  %i.fnj = fmul fast <4 x float> %i.fni, %i.fmr
  %reass.mul = fmul fast <4 x float> %i.fmq, splat (float f0x3F317218)
  %reass.add5363 = fadd fast <4 x float> %i.fnj, splat (float -5.000000e-01)
  %reass.mul5364 = fmul fast <4 x float> %i.fms, %reass.add5363
  %i.fnk = fadd fast <4 x float> %reass.mul, %i.fmr
  %i.fnl = fadd fast <4 x float> %i.fnk, %reass.mul5364
  %.neg = fmul fast <4 x float> %i.fnl, splat (float -2.000000e+00)
  %i.fnm = select fast <4 x i1> %i.fmd, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.fnn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fnm, <4 x float> splat (float f0x42B0C0A5))
  %i.fno = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fnn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fnp = fmul fast <4 x float> %i.fno, splat (float f0x3FB8AA3B)
  %i.fnq = fadd fast <4 x float> %i.fnp, splat (float 5.000000e-01) ; 2 uses
  %i.fnr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fnq)
  %i.fns = sitofp fast <4 x i32> %i.fnr to <4 x float> ; 2 uses
  %i.fnt = fcmp fast olt <4 x float> %i.fnq, %i.fns
  %i.fnu = select <4 x i1> %i.fnt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fnv = fsub fast <4 x float> %i.fns, %i.fnu   ; 2 uses
  %i.fnw = fmul fast <4 x float> %i.fnv, splat (float f0x3F317218)
  %i.fnx = fsub fast <4 x float> %i.fno, %i.fnw   ; 8 uses
  %i.fny = fmul fast <4 x float> %i.fnx, %i.fnx
  %i.fnz = fmul fast <4 x float> %i.fnx, splat (float f0x39506967)
  %i.foa = fadd fast <4 x float> %i.fnz, splat (float f0x3AB743CE)
  %i.fob = fmul fast <4 x float> %i.foa, %i.fnx
  %i.foc = fadd fast <4 x float> %i.fob, splat (float f0x3C088908)
  %i.fod = fmul fast <4 x float> %i.foc, %i.fnx
  %i.foe = fadd fast <4 x float> %i.fod, splat (float f0x3D2AA9C1)
  %i.fof = fmul fast <4 x float> %i.foe, %i.fnx
  %i.fog = fadd fast <4 x float> %i.fof, splat (float f0x3E2AAAAA)
  %i.foh = fmul fast <4 x float> %i.fog, %i.fnx
  %i.foi = fadd fast <4 x float> %i.foh, splat (float 5.000000e-01)
  %i.foj = fmul fast <4 x float> %i.fny, %i.foi
  %i.fok = fadd fast <4 x float> %i.fnx, splat (float 1.000000e+00)
  %i.fol = fadd fast <4 x float> %i.fok, %i.foj
  %i.fom = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fnv)
  %i.fon = shl <4 x i32> %i.fom, splat (i32 23)
  %i.foo = add <4 x i32> %i.fon, splat (i32 1065353216)
  %i.fop = bitcast <4 x i32> %i.foo to <4 x float>
  %i.foq = fmul fast <4 x float> %i.fol, %i.fop
  %i.for = fadd fast <4 x float> %i.foq, splat (float 1.000000e+00)
  %i.fos = fdiv fast <4 x float> splat (float 2.000000e+00), %i.for
  %i.fot = fadd fast <4 x float> %i.fos, splat (float -1.000000e+00)
  %i.fou = fmul fast <4 x float> %i.fot, %i.fiw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %._crit_edge5690
  %i.fov = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.fow = load float, ptr %i.fov, align 4, !tbaa !27
  %i.fox = insertelement <4 x float> poison, float %i.fow, i64 0
  %i.foy = shufflevector <4 x float> %i.fox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.foz = getelementptr inbounds nuw i8, ptr %i.fov, i64 4
  %i.fpa = load float, ptr %i.foz, align 4, !tbaa !27
  %i.fpb = insertelement <4 x float> poison, float %i.fpa, i64 0
  %i.fpc = shufflevector <4 x float> %i.fpb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fpd = fmul fast <4 x float> %i.foy, %i.fiw
  %i.fpe = fadd fast <4 x float> %i.fpd, %i.fpc
  %i.fpf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fpe, <4 x float> zeroinitializer)
  %i.fpg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fpf, <4 x float> splat (float 1.000000e+00))
  %i.fph = fmul fast <4 x float> %i.fpg, %i.fiw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.ap, %.noexc518, %.noexc517, %bb.ao, %.noexc516, %bb.an, %._crit_edge5690
  %.0.i515 = phi nsz <4 x float> [ %i.fph, %bb.ap ], [ %i.fiy, %bb.an ], [ %i.fjg, %.noexc516 ], [ %i.fjq, %bb.ao ], [ %i.fkx, %.noexc517 ], [ %i.fou, %.noexc518 ], [ %i.fiw, %._crit_edge5690 ]
  store <4 x float> %.0.i515, ptr %.03435692, align 1, !tbaa !23
  %i.fpi = getelementptr inbounds nuw i8, ptr %.03435692, i64 16
  %indvars.iv.next5828 = add nuw nsw i64 %indvars.iv5827, 1 ; 2 uses
  %i.fpj = load i32, ptr %6, align 4, !tbaa !9
  %i.fpk = sext i32 %i.fpj to i64
  %i.fpl = icmp slt i64 %indvars.iv.next5828, %i.fpk
  br i1 %i.fpl, label %.lr.ph5695, label %.thread5321.loopexit, !llvm.loop !70

.thread5321.loopexit:                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pr5332.pr.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %.thread5321

.thread5321:                                      ; preds = %.thread5321.loopexit, %thread-pre-split5319
  %.pr5332.pr = phi i32 [ %.pr5332.pr.pre, %.thread5321.loopexit ], [ %i.ffy, %thread-pre-split5319 ]
  %i.fpm = icmp eq i32 %.pr5332.pr, 1
  br i1 %i.fpm, label %thread-pre-split5333, label %.thread5321.thread5336

thread-pre-split5333:                             ; preds = %bb.ad, %.thread5321
  %.pr5334 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread5321.thread

.thread5321.thread:                               ; preds = %.thread5225.thread5899, %thread-pre-split5333
  %i.fpn = phi i32 [ %.pr5334, %thread-pre-split5333 ], [ %i.evh, %.thread5225.thread5899 ]
  %i.fpo = icmp eq i32 %i.fpn, 1
  br i1 %i.fpo, label %bb.aq, label %.thread5321.thread5336

bb.aq:                                            ; preds = %.thread5321.thread
  %i.fpp = load i32, ptr %6, align 4, !tbaa !9
  %i.fpq = icmp sgt i32 %i.fpp, 0
  br i1 %i.fpq, label %.lr.ph5726.preheader, label %.thread5321.thread5336

.lr.ph5726.preheader:                             ; preds = %bb.aq
  %i.fpr = load ptr, ptr %5, align 8, !tbaa !17
  %i.fps = load i32, ptr %i.l, align 4, !tbaa !15
  %i.fpt = sext i32 %i.fps to i64
  %i.fpu = mul nsw i64 %indvars.iv5833, %i.fpt
  %i.fpv = load i64, ptr %i.m, align 8, !tbaa !24
  %i.fpw = mul i64 %i.fpu, %i.fpv
  %i.fpx = getelementptr inbounds nuw i8, ptr %i.fpr, i64 %i.fpw
  br label %.lr.ph5726

.lr.ph5726:                                       ; preds = %.lr.ph5726.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv5830 = phi i64 [ 0, %.lr.ph5726.preheader ], [ %indvars.iv.next5831, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.03355723 = phi ptr [ %i.fpx, %.lr.ph5726.preheader ], [ %i.fue, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.fpy = load ptr, ptr %7, align 8, !tbaa !17
  %i.fpz = load i32, ptr %i.n, align 4, !tbaa !15
  %i.fqa = sext i32 %i.fpz to i64
  %i.fqb = mul nsw i64 %indvars.iv5830, %i.fqa
  %i.fqc = load i64, ptr %i.o, align 8, !tbaa !24
  %i.fqd = mul i64 %i.fqb, %i.fqc
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.fpy, i64 %i.fqd ; 3 uses
  %i.fqf = load ptr, ptr %8, align 8, !tbaa !17
  %i.fqg = load i32, ptr %i.p, align 4, !tbaa !15
  %i.fqh = sext i32 %i.fqg to i64
  %i.fqi = mul nsw i64 %indvars.iv5833, %i.fqh
  %i.fqj = load i64, ptr %i.q, align 8, !tbaa !24
  %i.fqk = mul i64 %i.fqi, %i.fqj
  %i.fql = getelementptr inbounds nuw i8, ptr %i.fqf, i64 %i.fqk ; 3 uses
  %i.fqm = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not401 = icmp eq ptr %i.fqm, null
  br i1 %.not401, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph5726
  %i.fqn = getelementptr inbounds nuw [4 x i8], ptr %i.fqm, i64 %indvars.iv5830
  %i.fqo = load float, ptr %i.fqn, align 4, !tbaa !27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph5726
  %.0326 = phi nsz float [ %i.fqo, %bb.ar ], [ 0.000000e+00, %.lr.ph5726 ] ; 2 uses
  %i.fqp = load i32, ptr %10, align 4, !tbaa !9   ; 6 uses
  %i.fqq = icmp sgt i32 %i.fqp, 7
  br i1 %i.fqq, label %.lr.ph5701.preheader, label %.preheader5473

.lr.ph5701.preheader:                             ; preds = %bb.as
  %i.fqr = add nsw i32 %i.fqp, -8                 ; 2 uses
  %i.fqs = lshr i32 %i.fqr, 3                     ; 2 uses
  %i.fqt = add nuw nsw i32 %i.fqs, 1              ; 2 uses
  %i.fqu = icmp eq i32 %i.fqs, 0
  br i1 %i.fqu, label %.lr.ph5701.epil.preheader, label %.lr.ph5701.preheader.new

.lr.ph5701.preheader.new:                         ; preds = %.lr.ph5701.preheader
  %unroll_iter = and i32 %i.fqt, 1073741822
  br label %.lr.ph5701

.preheader5473.loopexit.unr-lcssa:                ; preds = %.lr.ph5701
  %i.fqv = and i32 %i.fqr, 8
  %lcmp.mod6107.not.not = icmp eq i32 %i.fqv, 0
  br i1 %lcmp.mod6107.not.not, label %.lr.ph5701.epil.preheader, label %.preheader5473.loopexit

.lr.ph5701.epil.preheader:                        ; preds = %.preheader5473.loopexit.unr-lcssa, %.lr.ph5701.preheader
  %.03285698.epil.init = phi ptr [ %i.fql, %.lr.ph5701.preheader ], [ %i.frv, %.preheader5473.loopexit.unr-lcssa ] ; 2 uses
  %.03315697.epil.init = phi ptr [ %i.fqe, %.lr.ph5701.preheader ], [ %i.frw, %.preheader5473.loopexit.unr-lcssa ] ; 2 uses
  %.045745696.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph5701.preheader ], [ %i.fru, %.preheader5473.loopexit.unr-lcssa ]
  %lcmp.mod6111 = trunc i32 %i.fqt to i1
  call void @llvm.assume(i1 %lcmp.mod6111)
  %i.fqw = load <8 x float>, ptr %.03285698.epil.init, align 1, !tbaa !23
  %i.fqx = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03315697.epil.init)
  %i.fqy = bitcast <16 x i8> %i.fqx to <8 x half>
  %i.fqz = fpext fast <8 x half> %i.fqy to <8 x float>
  %i.fra = fmul fast <8 x float> %i.fqw, %i.fqz
  %i.frb = fadd fast <8 x float> %i.fra, %.045745696.epil.init
  %i.frc = getelementptr inbounds nuw i8, ptr %.03285698.epil.init, i64 32
  %i.frd = getelementptr inbounds nuw i8, ptr %.03315697.epil.init, i64 16
  br label %.preheader5473.loopexit

.preheader5473.loopexit:                          ; preds = %.preheader5473.loopexit.unr-lcssa, %.lr.ph5701.epil.preheader
  %.lcssa6098 = phi <8 x float> [ %i.fru, %.preheader5473.loopexit.unr-lcssa ], [ %i.frb, %.lr.ph5701.epil.preheader ]
  %.lcssa6097 = phi ptr [ %i.frv, %.preheader5473.loopexit.unr-lcssa ], [ %i.frc, %.lr.ph5701.epil.preheader ]
  %.lcssa6096 = phi ptr [ %i.frw, %.preheader5473.loopexit.unr-lcssa ], [ %i.frd, %.lr.ph5701.epil.preheader ]
  %i.fre = and i32 %i.fqp, 2147483640
  br label %.preheader5473

.preheader5473:                                   ; preds = %.preheader5473.loopexit, %bb.as
  %.04574.lcssa = phi <8 x float> [ zeroinitializer, %bb.as ], [ %.lcssa6098, %.preheader5473.loopexit ] ; 2 uses
  %.0331.lcssa = phi ptr [ %i.fqe, %bb.as ], [ %.lcssa6096, %.preheader5473.loopexit ] ; 2 uses
  %.0328.lcssa = phi ptr [ %i.fql, %bb.as ], [ %.lcssa6097, %.preheader5473.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.as ], [ %i.fre, %.preheader5473.loopexit ] ; 3 uses
  %i.frf = or disjoint i32 %.0.lcssa, 3
  %i.frg = icmp slt i32 %i.frf, %i.fqp
  br i1 %i.frg, label %.lr.ph5711, label %.preheader

.lr.ph5701:                                       ; preds = %.lr.ph5701, %.lr.ph5701.preheader.new
  %.03285698 = phi ptr [ %i.fql, %.lr.ph5701.preheader.new ], [ %i.frv, %.lr.ph5701 ] ; 3 uses
  %.03315697 = phi ptr [ %i.fqe, %.lr.ph5701.preheader.new ], [ %i.frw, %.lr.ph5701 ] ; 3 uses
  %.045745696 = phi <8 x float> [ zeroinitializer, %.lr.ph5701.preheader.new ], [ %i.fru, %.lr.ph5701 ]
  %niter = phi i32 [ 0, %.lr.ph5701.preheader.new ], [ %niter.next.1, %.lr.ph5701 ]
  %i.frh = load <8 x float>, ptr %.03285698, align 1, !tbaa !23
  %i.fri = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03315697)
  %i.frj = bitcast <16 x i8> %i.fri to <8 x half>
  %i.frk = fpext fast <8 x half> %i.frj to <8 x float>
  %i.frl = fmul fast <8 x float> %i.frh, %i.frk
  %i.frm = fadd fast <8 x float> %i.frl, %.045745696
  %i.frn = getelementptr inbounds nuw i8, ptr %.03285698, i64 32
  %i.fro = getelementptr inbounds nuw i8, ptr %.03315697, i64 16
  %i.frp = load <8 x float>, ptr %i.frn, align 1, !tbaa !23
  %i.frq = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.fro)
  %i.frr = bitcast <16 x i8> %i.frq to <8 x half>
  %i.frs = fpext fast <8 x half> %i.frr to <8 x float>
  %i.frt = fmul fast <8 x float> %i.frp, %i.frs
  %i.fru = fadd fast <8 x float> %i.frt, %i.frm   ; 3 uses
  %i.frv = getelementptr inbounds nuw i8, ptr %.03285698, i64 64 ; 3 uses
  %i.frw = getelementptr inbounds nuw i8, ptr %.03315697, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader5473.loopexit.unr-lcssa, label %.lr.ph5701, !llvm.loop !71

.preheader:                                       ; preds = %.lr.ph5711, %.preheader5473
  %.04573.lcssa = phi <4 x float> [ zeroinitializer, %.preheader5473 ], [ %i.fsc, %.lr.ph5711 ]
  %.1332.lcssa = phi ptr [ %.0331.lcssa, %.preheader5473 ], [ %i.fse, %.lr.ph5711 ]
  %.1329.lcssa = phi ptr [ %.0328.lcssa, %.preheader5473 ], [ %i.fsd, %.lr.ph5711 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader5473 ], [ %i.fsf, %.lr.ph5711 ] ; 2 uses
  %i.frx = icmp slt i32 %.1.lcssa, %i.fqp
  br i1 %i.frx, label %.lr.ph5720, label %._crit_edge5721

.lr.ph5711:                                       ; preds = %.preheader5473, %.lr.ph5711
  %.15710 = phi i32 [ %i.fsf, %.lr.ph5711 ], [ %.0.lcssa, %.preheader5473 ]
  %.13295709 = phi ptr [ %i.fsd, %.lr.ph5711 ], [ %.0328.lcssa, %.preheader5473 ] ; 2 uses
  %.13325708 = phi ptr [ %i.fse, %.lr.ph5711 ], [ %.0331.lcssa, %.preheader5473 ] ; 2 uses
  %.045735707 = phi <4 x float> [ %i.fsc, %.lr.ph5711 ], [ zeroinitializer, %.preheader5473 ]
  %i.fry = load <4 x float>, ptr %.13295709, align 1, !tbaa !23
  %i.frz = load <4 x half>, ptr %.13325708, align 1, !tbaa !23
  %i.fsa = fpext fast <4 x half> %i.frz to <4 x float>
  %i.fsb = fmul fast <4 x float> %i.fry, %i.fsa
  %i.fsc = fadd fast <4 x float> %i.fsb, %.045735707 ; 2 uses
  %i.fsd = getelementptr inbounds nuw i8, ptr %.13295709, i64 16 ; 2 uses
  %i.fse = getelementptr inbounds nuw i8, ptr %.13325708, i64 8 ; 2 uses
  %i.fsf = add nuw nsw i32 %.15710, 4             ; 3 uses
  %i.fsg = or disjoint i32 %i.fsf, 3
  %i.fsh = icmp slt i32 %i.fsg, %i.fqp
  br i1 %i.fsh, label %.lr.ph5711, label %.preheader, !llvm.loop !72

end_hunk_3
