Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn_x86_avx?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn11LRN_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph249.prol.loopexit, label %.lr.ph249.prol, !llvm.loop !103

.lr.ph249.prol.loopexit:                          ; preds = %.lr.ph249.prol, %.lr.ph249.preheader
  %.167248.unr = phi i32 [ %.167248.ph, %.lr.ph249.preheader ], [ %i.de, %.lr.ph249.prol ]
  %.169247.unr = phi ptr [ %.169247.ph, %.lr.ph249.preheader ], [ %i.dd, %.lr.ph249.prol ]
  %.171246.unr = phi ptr [ %.171246.ph, %.lr.ph249.preheader ], [ %i.dc, %.lr.ph249.prol ]
  %i.df = sub i32 %.167248.ph, %.lcssa
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %.loopexit, label %.lr.ph249

.lr.ph:                                           ; preds = %.noexc79, %.lr.ph
  %.066242 = phi i32 [ %i.dm, %.lr.ph ], [ 0, %.noexc79 ]
  %.068241 = phi ptr [ %i.dl, %.lr.ph ], [ %i.bm, %.noexc79 ] ; 3 uses
  %.070240 = phi ptr [ %i.dk, %.lr.ph ], [ %i.bg, %.noexc79 ] ; 2 uses
  %i.dh = load <8 x float>, ptr %.070240, align 1, !tbaa !54
  %i.di = load <8 x float>, ptr %.068241, align 1, !tbaa !54
  %i.dj = fadd fast <8 x float> %i.di, %i.dh
  store <8 x float> %i.dj, ptr %.068241, align 1, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %.070240, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.068241, i64 32 ; 2 uses
  %i.dm = add nuw nsw i32 %.066242, 8             ; 3 uses
  %i.dn = or disjoint i32 %i.dm, 7
  %i.do = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph, label %.preheader, !llvm.loop !104

.lr.ph249:                                        ; preds = %.lr.ph249.prol.loopexit, %.lr.ph249
  %.167248 = phi i32 [ %i.ek, %.lr.ph249 ], [ %.167248.unr, %.lr.ph249.prol.loopexit ]
  %.169247 = phi ptr [ %i.ej, %.lr.ph249 ], [ %.169247.unr, %.lr.ph249.prol.loopexit ] ; 6 uses
  %.171246 = phi ptr [ %i.ei, %.lr.ph249 ], [ %.171246.unr, %.lr.ph249.prol.loopexit ] ; 5 uses
  %i.dq = load float, ptr %.171246, align 4, !tbaa !46
  %i.dr = load float, ptr %.169247, align 4, !tbaa !46
  %i.ds = fadd fast float %i.dr, %i.dq
  store float %i.ds, ptr %.169247, align 4, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %.171246, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %.169247, i64 4 ; 2 uses
  %i.dv = load float, ptr %i.dt, align 4, !tbaa !46
  %i.dw = load float, ptr %i.du, align 4, !tbaa !46
  %i.dx = fadd fast float %i.dw, %i.dv
  store float %i.dx, ptr %i.du, align 4, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %.171246, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.169247, i64 8 ; 2 uses
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !46
  %i.eb = load float, ptr %i.dz, align 4, !tbaa !46
  %i.ec = fadd fast float %i.eb, %i.ea
  store float %i.ec, ptr %i.dz, align 4, !tbaa !46
  %i.ed = getelementptr inbounds nuw i8, ptr %.171246, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %.169247, i64 12 ; 2 uses
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !46
  %i.eg = load float, ptr %i.ee, align 4, !tbaa !46
  %i.eh = fadd fast float %i.eg, %i.ef
  store float %i.eh, ptr %i.ee, align 4, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %.171246, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.169247, i64 16
  %i.ek = add nuw nsw i32 %.167248, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ek, %.lcssa
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph249, !llvm.loop !105

.loopexit:                                        ; preds = %.lr.ph249.prol.loopexit, %.lr.ph249, %middle.block350, %vec.epilog.middle.block, %.preheader, %.lr.ph252, %bb.d
  %i.el = add nsw i32 %.072251, 1
  %i.em = load i32, ptr %i.l, align 4, !tbaa !48
  %i.en = sdiv i32 %i.em, 2
  %i.eo = add nsw i32 %i.en, %indvars279
  %.not73.not = icmp slt i32 %.072251, %i.eo
  br i1 %.not73.not, label %.lr.ph252, label %.noexc75, !llvm.loop !106

.preheader238:                                    ; preds = %.lr.ph256, %.noexc75
  %.063.lcssa = phi ptr [ %i.af, %.noexc75 ], [ %i.iw, %.lr.ph256 ] ; 8 uses
  %.061.lcssa = phi ptr [ %i.al, %.noexc75 ], [ %i.iv, %.lr.ph256 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.noexc75 ], [ %i.ix, %.lr.ph256 ] ; 6 uses
  %.lcssa239 = phi i32 [ %i.aw, %.noexc75 ], [ %i.iz, %.lr.ph256 ] ; 6 uses
  %i.ep = icmp slt i32 %.0.lcssa, %.lcssa239
  br i1 %i.ep, label %.lr.ph264.preheader, label %._crit_edge

.lr.ph264.preheader:                              ; preds = %.preheader238
  %i.eq = xor i32 %.0.lcssa, -1
  %i.er = add i32 %.lcssa239, %i.eq               ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.er, 7
  br i1 %min.iters.check, label %.lr.ph264.preheader366, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.preheader
  %scevgep = getelementptr i8, ptr %.063.lcssa, i64 4
  %i.eu = xor i32 %.0.lcssa, -1
  %i.ev = add i32 %.lcssa239, %i.eu
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 2                ; 2 uses
  %scevgep304 = getelementptr i8, ptr %scevgep, i64 %i.ex ; 3 uses
  %scevgep307 = getelementptr i8, ptr %.061.lcssa, i64 4
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ex
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep305.a
  %bound1 = icmp ult ptr %i.t, %scevgep304
  %found.conflict = and i1 %bound0, %bound1
  %bound0309 = icmp ult ptr %.063.lcssa, %scevgep306.a
  %bound1310 = icmp ult ptr %8, %scevgep304
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx = or i1 %found.conflict, %found.conflict311
  %bound0312 = icmp ult ptr %.063.lcssa, %scevgep308
  %bound1313 = icmp ult ptr %.061.lcssa, %scevgep304
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph264.preheader366, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 8589934584              ; 4 uses
  %i.ey = trunc i64 %n.vec to i32
  %i.ez = add i32 %.0.lcssa, %i.ey
  %i.fa = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.fb = getelementptr i8, ptr %.061.lcssa, i64 %i.fa
  %i.fc = getelementptr i8, ptr %.063.lcssa, i64 %i.fa
  %i.fd = load float, ptr %i.s, align 8, !tbaa !88, !alias.scope !107
  %broadcast.splatinsert320 = insertelement <8 x float> poison, float %i.fd, i64 0
  %broadcast.splat321 = shufflevector <8 x float> %broadcast.splatinsert320, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fe = load float, ptr %8, align 4, !tbaa !46, !alias.scope !110
  %broadcast.splatinsert318 = insertelement <8 x float> poison, float %i.fe, i64 0
  %broadcast.splat319 = shufflevector <8 x float> %broadcast.splatinsert318, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ff = load float, ptr %i.t, align 4, !tbaa !89, !alias.scope !107
  %.scalar = fneg fast float %i.ff
  %i.fg = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.061.lcssa, i64 %i.fi
  %next.gep316 = getelementptr i8, ptr %.063.lcssa, i64 %i.fi ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep316, align 4, !tbaa !46, !alias.scope !112, !noalias !114
  %wide.load317 = load <8 x float>, ptr %next.gep, align 4, !tbaa !46, !alias.scope !116
  %i.fj = fmul fast <8 x float> %wide.load317, %broadcast.splat319
  %i.fk = fadd fast <8 x float> %i.fj, %broadcast.splat321
  %i.fl = call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fk, <8 x float> %i.fh)
  %i.fm = fmul fast <8 x float> %i.fl, %wide.load
  store <8 x float> %i.fm, ptr %next.gep316, align 4, !tbaa !46, !alias.scope !112, !noalias !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph264.preheader366

.lr.ph264.preheader366:                           ; preds = %vector.memcheck, %.lr.ph264.preheader, %middle.block
  %.1263.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph264.preheader ], [ %i.ez, %middle.block ] ; 4 uses
  %.162262.ph = phi ptr [ %.061.lcssa, %vector.memcheck ], [ %.061.lcssa, %.lr.ph264.preheader ], [ %i.fb, %middle.block ] ; 3 uses
  %.164261.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph264.preheader ], [ %i.fc, %middle.block ] ; 4 uses
  %i.fo = sub i32 %.lcssa239, %.1263.ph
  %.neg378 = add i32 %.1263.ph, 1
  %xtraiter375 = and i32 %i.fo, 1
  %lcmp.mod376.not = icmp eq i32 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.lr.ph264.prol.loopexit, label %.lr.ph264.prol

.lr.ph264.prol:                                   ; preds = %.lr.ph264.preheader366
  %i.fp = load float, ptr %.164261.ph, align 4, !tbaa !46
  %i.fq = load float, ptr %i.s, align 8, !tbaa !88
  %i.fr = load float, ptr %8, align 4, !tbaa !46
  %i.fs = load float, ptr %.162262.ph, align 4, !tbaa !46
  %i.ft = fmul fast float %i.fs, %i.fr
  %i.fu = fadd fast float %i.ft, %i.fq
  %i.fv = load float, ptr %i.t, align 4, !tbaa !89
  %i.fw = fneg fast float %i.fv
  %i.fx = call fast float @llvm.pow.f32(float %i.fu, float %i.fw)
  %i.fy = fmul fast float %i.fx, %i.fp
  store float %i.fy, ptr %.164261.ph, align 4, !tbaa !46
  %i.fz = getelementptr inbounds nuw i8, ptr %.162262.ph, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.164261.ph, i64 4
  %i.gb = add nuw nsw i32 %.1263.ph, 1
  br label %.lr.ph264.prol.loopexit

.lr.ph264.prol.loopexit:                          ; preds = %.lr.ph264.prol, %.lr.ph264.preheader366
  %.1263.unr = phi i32 [ %.1263.ph, %.lr.ph264.preheader366 ], [ %i.gb, %.lr.ph264.prol ]
  %.162262.unr = phi ptr [ %.162262.ph, %.lr.ph264.preheader366 ], [ %i.fz, %.lr.ph264.prol ]
  %.164261.unr = phi ptr [ %.164261.ph, %.lr.ph264.preheader366 ], [ %i.ga, %.lr.ph264.prol ]
  %i.gc = icmp eq i32 %.lcssa239, %.neg378
  br i1 %i.gc, label %._crit_edge, label %.lr.ph264

.lr.ph256:                                        ; preds = %.noexc75, %.lr.ph256
  %.0255 = phi i32 [ %i.ix, %.lr.ph256 ], [ 0, %.noexc75 ]
  %.061254 = phi ptr [ %i.iv, %.lr.ph256 ], [ %i.al, %.noexc75 ] ; 2 uses
  %.063253 = phi ptr [ %i.iw, %.lr.ph256 ], [ %i.af, %.noexc75 ] ; 3 uses
  %i.gd = load <8 x float>, ptr %.063253, align 1, !tbaa !54
  %i.ge = load <8 x float>, ptr %.061254, align 1, !tbaa !54
  %i.gf = fmul fast <8 x float> %i.ge, %i.ar
  %i.gg = fadd fast <8 x float> %i.gf, %i.ao
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gi = bitcast <8 x float> %i.gh to <8 x i32>
  %i.gj = bitcast <8 x float> %i.gh to <8 x i32>
  %i.gk = and <8 x i32> %i.gj, splat (i32 -2139095041)
  %i.gl = or disjoint <8 x i32> %i.gk, splat (i32 1056964608)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 3 uses
  %i.gn = lshr <8 x i32> %i.gi, splat (i32 23)
  %i.go = add nsw <8 x i32> %i.gn, splat (i32 -127)
  %i.gp = sitofp fast <8 x i32> %i.go to <8 x float> ; 2 uses
  %i.gq = fadd fast <8 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = fcmp fast olt <8 x float> %i.gm, splat (float f0x3F3504F3) ; 2 uses
  %i.gs = select <8 x i1> %i.gr, <8 x float> %i.gm, <8 x float> zeroinitializer
  %i.gt = fadd fast <8 x float> %i.gm, splat (float -1.000000e+00)
  %i.gu = select fast <8 x i1> %i.gr, <8 x float> %i.gp, <8 x float> %i.gq
  %i.gv = fadd fast <8 x float> %i.gt, %i.gs      ; 12 uses
  %i.gw = fmul fast <8 x float> %i.gv, %i.gv      ; 2 uses
  %i.gx = fmul fast <8 x float> %i.gv, splat (float f0x3D9021BB)
  %i.gy = fadd fast <8 x float> %i.gx, splat (float f0xBDEBD1B8)
  %i.gz = fmul fast <8 x float> %i.gy, %i.gv
  %i.ha = fadd fast <8 x float> %i.gz, splat (float f0x3DEF251A)
  %i.hb = fmul fast <8 x float> %i.ha, %i.gv
  %i.hc = fadd fast <8 x float> %i.hb, splat (float f0xBDFE5D4F)
  %i.hd = fmul fast <8 x float> %i.hc, %i.gv
  %i.he = fadd fast <8 x float> %i.hd, splat (float f0x3E11E9BF)
  %i.hf = fmul fast <8 x float> %i.he, %i.gv
  %i.hg = fadd fast <8 x float> %i.hf, splat (float f0xBE2AAE50)
  %i.hh = fmul fast <8 x float> %i.hg, %i.gv
  %i.hi = fadd fast <8 x float> %i.hh, splat (float f0x3E4CCEAC)
  %i.hj = fmul fast <8 x float> %i.hi, %i.gv
  %i.hk = fadd fast <8 x float> %i.hj, splat (float f0xBE7FFFFC)
  %i.hl = fmul fast <8 x float> %i.hk, %i.gv
  %i.hm = fadd fast <8 x float> %i.hl, splat (float f0x3EAAAAAA)
  %i.hn = fmul fast <8 x float> %i.gw, %i.gv
  %reass.mul.a = fmul fast <8 x float> %i.hn, %i.hm
  %.neg235 = fmul fast <8 x float> %i.gw, splat (float -5.000000e-01)
  %reass.mul237 = fmul fast <8 x float> %i.gu, splat (float f0x3F317218)
  %9 = fadd fast <8 x float> %i.gv, %.neg235
  %i.ho = fadd fast <8 x float> %reass.mul.a, %9
  %i.hp = fadd fast <8 x float> %i.ho, %reass.mul237
  %i.hq = fmul fast <8 x float> %i.hp, %i.av
  %i.hr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> splat (float f0x42B0C0A5))
  %i.hs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ht = fmul fast <8 x float> %i.hs, splat (float f0x3FB8AA3B)
  %i.hu = fadd fast <8 x float> %i.ht, splat (float 5.000000e-01) ; 2 uses
  %i.hv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hu, i32 1) ; 2 uses
  %i.hw = fcmp fast ogt <8 x float> %i.hv, %i.hu
  %i.hx = select <8 x i1> %i.hw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hy = fsub fast <8 x float> %i.hv, %i.hx      ; 2 uses
  %i.hz = fmul fast <8 x float> %i.hy, splat (float f0x3F317218)
  %i.ia = fsub fast <8 x float> %i.hs, %i.hz      ; 8 uses
  %i.ib = fmul fast <8 x float> %i.ia, %i.ia
  %i.ic = fmul fast <8 x float> %i.ia, splat (float f0x39506967)
  %i.id = fadd fast <8 x float> %i.ic, splat (float f0x3AB743CE)
  %i.ie = fmul fast <8 x float> %i.id, %i.ia
  %i.if = fadd fast <8 x float> %i.ie, splat (float f0x3C088908)
  %i.ig = fmul fast <8 x float> %i.if, %i.ia
  %i.ih = fadd fast <8 x float> %i.ig, splat (float f0x3D2AA9C1)
  %i.ii = fmul fast <8 x float> %i.ih, %i.ia
  %i.ij = fadd fast <8 x float> %i.ii, splat (float f0x3E2AAAAA)
  %i.ik = fmul fast <8 x float> %i.ij, %i.ia
  %i.il = fadd fast <8 x float> %i.ik, splat (float 5.000000e-01)
  %i.im = fmul fast <8 x float> %i.ib, %i.il
  %i.in = fadd fast <8 x float> %i.ia, %i.im
  %i.io = fadd fast <8 x float> %i.in, splat (float 1.000000e+00)
  %i.ip = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hy)
  %i.iq = shl <8 x i32> %i.ip, splat (i32 23)
  %i.ir = add <8 x i32> %i.iq, splat (i32 1065353216)
  %i.is = bitcast <8 x i32> %i.ir to <8 x float>
  %i.it = fmul fast <8 x float> %i.gd, %i.is
  %i.iu = fmul fast <8 x float> %i.it, %i.io
  store <8 x float> %i.iu, ptr %.063253, align 1, !tbaa !54
  %i.iv = getelementptr inbounds nuw i8, ptr %.061254, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.063253, i64 32 ; 2 uses
  %i.ix = add nuw nsw i32 %.0255, 8               ; 3 uses
  %i.iy = or disjoint i32 %i.ix, 7
  %i.iz = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.ja = icmp slt i32 %i.iy, %i.iz
  br i1 %i.ja, label %.lr.ph256, label %.preheader238, !llvm.loop !118

.lr.ph264:                                        ; preds = %.lr.ph264.prol.loopexit, %.lr.ph264
  %.1263 = phi i32 [ %i.jz, %.lr.ph264 ], [ %.1263.unr, %.lr.ph264.prol.loopexit ]
  %.162262 = phi ptr [ %i.jx, %.lr.ph264 ], [ %.162262.unr, %.lr.ph264.prol.loopexit ] ; 3 uses
  %.164261 = phi ptr [ %i.jy, %.lr.ph264 ], [ %.164261.unr, %.lr.ph264.prol.loopexit ] ; 4 uses
  %i.jb = load float, ptr %.164261, align 4, !tbaa !46
  %i.jc = load float, ptr %i.s, align 8, !tbaa !88
  %i.jd = load float, ptr %8, align 4, !tbaa !46
  %i.je = load float, ptr %.162262, align 4, !tbaa !46
  %i.jf = fmul fast float %i.je, %i.jd
  %i.jg = fadd fast float %i.jf, %i.jc
  %i.jh = load float, ptr %i.t, align 4, !tbaa !89
  %i.ji = fneg fast float %i.jh
  %i.jj = call fast float @llvm.pow.f32(float %i.jg, float %i.ji)
  %i.jk = fmul fast float %i.jj, %i.jb
  store float %i.jk, ptr %.164261, align 4, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %.162262, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.164261, i64 4 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !46
  %i.jo = load float, ptr %i.s, align 8, !tbaa !88
  %i.jp = load float, ptr %8, align 4, !tbaa !46
  %i.jq = load float, ptr %i.jl, align 4, !tbaa !46
  %i.jr = fmul fast float %i.jq, %i.jp
  %i.js = fadd fast float %i.jr, %i.jo
  %i.jt = load float, ptr %i.t, align 4, !tbaa !89
  %i.ju = fneg fast float %i.jt
  %i.jv = call fast float @llvm.pow.f32(float %i.js, float %i.ju)
  %i.jw = fmul fast float %i.jv, %i.jn
  store float %i.jw, ptr %i.jm, align 4, !tbaa !46
  %i.jx = getelementptr inbounds nuw i8, ptr %.162262, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %.164261, i64 8
  %i.jz = add nuw nsw i32 %.1263, 2               ; 2 uses
  %exitcond278.not.1 = icmp eq i32 %i.jz, %.lcssa239
  br i1 %exitcond278.not.1, label %._crit_edge, label %.lr.ph264, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph264.prol.loopexit, %.lr.ph264, %middle.block, %.preheader238
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond280.not, label %._crit_edge269, label %bb.c

._crit_edge269:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge269, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11LRN_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !17
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !17
  %i.k = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !23, !noalias !120 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !120 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9, !noalias !123
  %i.s = load ptr, ptr %4, align 8, !tbaa !23, !noalias !123
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !123
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !123 ; 2 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = load i32, ptr %5, align 4, !tbaa !17     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 6 uses
  %i.ac = getelementptr i8, ptr %9, i64 220       ; 7 uses
  br i1 %i.z, label %.noexc45.lr.ph.split, label %._crit_edge.split

.noexc45.lr.ph.split:                             ; preds = %.noexc45.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !17    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc45.lr.ph.split.split, label %._crit_edge.split

.noexc45.lr.ph.split.split:                       ; preds = %.noexc45.lr.ph.split
  %i.ag = load i32, ptr %7, align 4, !tbaa !17    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc45.lr.ph.split.split.split.us, label %.noexc45.preheader

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph.split.split
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 9 uses
  %i.ak = mul i64 %i.n, %i.p
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.af, %i.an
  %i.ap = add nuw i64 %i.ao, %wide.trip.count
  %i.aq = shl i64 %i.ap, 2
  %i.ar = mul i64 %i.n, %i.p
  %scevgep126 = getelementptr i8, ptr %9, i64 228
  %i.as = getelementptr i8, ptr %i.l, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 %i.al
  %min.iters.check = icmp ult i32 %i.ad, 4
  %min.iters.check127 = icmp ult i32 %i.ad, 32
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec131 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec131, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45.lr.ph.split.split.split.us:              ; preds = %.noexc45.lr.ph.split.split
  %i.aw = load ptr, ptr %8, align 8, !tbaa !56    ; 5 uses
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter140 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.az = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %lcmp.mod143 = icmp ne i64 %xtraiter140, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.ax, %.noexc45.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc45.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge77.split.us.us.us ], [ 0, %.noexc45.us ] ; 2 uses
  %.04379.us.us = phi ptr [ %i.cw, %._crit_edge77.split.us.us.us ], [ %i.ba, %.noexc45.us ] ; 2 uses
  %i.bc = mul i64 %i.aa, %indvars.iv108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv103 ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.us.us.us.new
end_hunk_0
