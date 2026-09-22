Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_extract_patches:bb.a

bb.e:                                             ; preds = %.preheader27.us, %bb.f
  %i.en = phi float [ %i.eh, %.preheader27.us ], [ %i.fb, %bb.f ] ; 2 uses
  %.026339.us = phi i64 [ %., %.preheader27.us ], [ %i.fd, %bb.f ] ; 3 uses
  %.126638.us = phi i64 [ %.026540.us, %.preheader27.us ], [ %.2.us, %bb.f ] ; 2 uses
  %i.eo = phi <2 x float> [ %i.ei, %.preheader27.us ], [ %i.fc, %bb.f ] ; 2 uses
  %i.ep = uitofp reassoc nsz arcp contract afn i64 %.026339.us to float
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, 5.000000e-01
  %i.er = insertelement <2 x float> %i.em, float %i.eq, i64 0
  %i.es = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.er, ptr noundef nonnull %i.ac) #31
  %i.et = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.co ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ew = shufflevector <2 x float> %i.af, <2 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ex = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ev, %i.ew
  %i.ey = freeze <4 x i1> %i.ex
  %i.ez = bitcast <4 x i1> %i.ey to i4
  %i.fa = icmp eq i4 %i.ez, -1
  br i1 %i.fa, label %.preheader26.us, label %bb.f

bb.f:                                             ; preds = %.preheader26.us, %bb.e
  %i.fb = phi float [ %i.fk, %.preheader26.us ], [ %i.en, %bb.e ] ; 3 uses
  %.2.us = phi i64 [ %i.fl, %.preheader26.us ], [ %.126638.us, %bb.e ] ; 3 uses
  %i.fc = phi <2 x float> [ %i.fh, %.preheader26.us ], [ %i.eo, %bb.e ] ; 3 uses
  %i.fd = add i64 %.026339.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %i.eg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e

.preheader26.us:                                  ; preds = %bb.e
  %i.fe = add i64 %.026339.us, %i.el
  %.idx291.us = shl i64 %i.fe, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %.idx291.us ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 4, !tbaa !12
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.eo, %i.fg ; 2 uses
  store <2 x float> %i.fh, ptr %i.cz, align 4, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12
  %i.fk = fadd reassoc nsz arcp contract afn float %i.en, %i.fj ; 2 uses
  store float %i.fk, ptr %i.da, align 4, !tbaa !12
  %i.fl = add i64 %.126638.us, 1
  br label %bb.f

._crit_edge.us:                                   ; preds = %bb.f
  %i.fm = add i64 %.026441.us, 1                  ; 2 uses
  %exitcond92.not = icmp eq i64 %i.fm, %i.ef
  br i1 %exitcond92.not, label %.preheader28.loopexit, label %.preheader27.us

.preheader28.loopexit:                            ; preds = %._crit_edge.us
  %i.fn = uitofp reassoc nsz arcp contract afn i64 %.2.us to float
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.loopexit, %bb.d
  %i.fo = phi float [ 0.000000e+00, %bb.d ], [ %i.fb, %.preheader28.loopexit ]
  %.0265.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.fn, %.preheader28.loopexit ] ; 2 uses
  %i.fp = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.fc, %.preheader28.loopexit ]
  %i.fq = insertelement <2 x float> poison, float %.0265.lcssa, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fdiv reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fr ; 4 uses
  %i.ft = fdiv reassoc nsz arcp contract afn float %i.fo, %.0265.lcssa ; 2 uses
  %i.fu = load float, ptr %i.ah, align 4, !tbaa !12
  %i.fv = extractelement <2 x float> %i.fs, i64 0
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = load float, ptr %i.ai, align 4, !tbaa !12
  %i.fy = extractelement <2 x float> %i.fs, i64 1
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fx, %i.fy
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fw
  %i.gb = load float, ptr %i.aj, align 4, !tbaa !12
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.ft
  %i.gd = fadd reassoc nsz arcp contract afn float %i.ga, %i.gc
  %i.ge = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %2, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !12 ; 3 uses
  %i.gf = shufflevector <5 x float> %i.ge, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <5 x float> %i.ge, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.gh = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gh
  %i.gj = load <2 x float>, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <4 x float> %i.gf, <4 x float> %i.gk, <2 x i32> <i32 0, i32 4>
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.fs
  %i.gn = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gi
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <5 x float> %i.ge, <5 x float> %i.go, <2 x i32> <i32 2, i32 6>
  %i.gq = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gr
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gs
  store <2 x float> %i.gt, ptr %i.cz, align 4, !tbaa !12
  store float %i.gd, ptr %i.da, align 4, !tbaa !12
  %i.gu = add nuw i64 %.027245, 1                 ; 2 uses
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load i64, ptr %i.gw, align 16, !tbaa !101 ; 2 uses
  %i.gy = icmp ult i64 %i.gu, %i.gx
  br i1 %i.gy, label %bb.d, label %._crit_edge

.lr.ph50:                                         ; preds = %._crit_edge
  %i.gz = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci ; 2 uses
  %min.iters.check = icmp ult i64 %.lcssa30, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50
  %i.ha = shl i64 %.lcssa30, 4
  %i.hb = getelementptr i8, ptr %4, i64 %i.ha
  %scevgep = getelementptr i8, ptr %i.hb, i64 -4
  %scevgep169 = getelementptr i8, ptr %.lcssa31, i64 112
  %i.hc = mul i64 %.lcssa30, 48
  %i.hd = getelementptr i8, ptr %.lcssa31, i64 %i.hc
  %scevgep170 = getelementptr i8, ptr %i.hd, i64 76
  %bound0 = icmp ult ptr %4, %scevgep170
  %bound1 = icmp ult ptr %scevgep169, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.he = and i64 %.lcssa30, 7                    ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = select i1 %i.hf, i64 8, i64 %i.he
  %n.vec = sub i64 %.lcssa30, %i.hg               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.gz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.hh = shl <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %4, <8 x i64> %i.hh ; 4 uses
  %i.hi = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep173 = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, <8 x i64> %vec.ind ; 3 uses
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 112
  %wide.gep175 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 116
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %wide.masked.gather176 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %wide.gep177 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 120
  %wide.masked.gather178 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %i.hj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 2.000000e-03)
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, splat (float 8.620690e-03)
  %i.hl = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, splat (float f0x3E0D3DCB) ; 7 uses
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather178, splat (float 5.000000e-03)
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hj ; 5 uses
  %i.ho = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hn, splat (float f0x3E53DCB1)
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %i.hn, %i.hn
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %i.hp, %i.hn
  %i.hr = fmul reassoc nsz arcp contract afn <8 x float> %i.hn, splat (float f0x3E038026)
  %i.hs = fadd reassoc nsz arcp contract afn <8 x float> %i.hr, splat (float f0xBC911AA6)
  %i.ht = select reassoc nsz arcp contract afn <8 x i1> %i.ho, <8 x float> %i.hq, <8 x float> %i.hs
  %i.hu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hl, splat (float f0x3E53DCB1)
  %i.hv = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hl
  %i.hw = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.hl
  %i.hx = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, splat (float f0x3E038026)
  %i.hy = fadd reassoc nsz arcp contract afn <8 x float> %i.hx, splat (float f0xBC911AA6)
  %i.hz = select reassoc nsz arcp contract afn <8 x i1> %i.hu, <8 x float> %i.hw, <8 x float> %i.hy ; 2 uses
  %i.ia = fsub reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hm ; 5 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ia, splat (float f0x3E53DCB1)
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, %i.ia
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %i.ic, %i.ia
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, splat (float f0x3E038026)
  %i.if = fadd reassoc nsz arcp contract afn <8 x float> %i.ie, splat (float f0xBC911AA6)
  %i.ig = select reassoc nsz arcp contract afn <8 x i1> %i.ib, <8 x float> %i.id, <8 x float> %i.if
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.ht, splat (float 9.642000e-01) ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, splat (float f0x3F532CA5) ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.hi, align 4, !tbaa !12, !alias.scope !440, !noalias !439 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec180 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec179
  %i.il = fadd reassoc nsz arcp contract afn <8 x float> %i.ik, %i.ij
  %wide.gep182 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec180, %strided.vec180
  %i.in = fadd reassoc nsz arcp contract afn <8 x float> %i.il, %i.im
  %i.io = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.in)
  %i.ip = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.io, <8 x float> splat (float f0x37800000))
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.ih, %i.ih
  %i.ir = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, %i.hz
  %i.is = fadd reassoc nsz arcp contract afn <8 x float> %i.iq, %i.ir
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ii
  %i.iu = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %i.it
  %i.iv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.iu)
  %i.iw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.iv, <8 x float> splat (float f0x37800000))
  %i.ix = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ip, %broadcast.splat172 ; 3 uses
  %i.iy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.iw ; 3 uses
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %strided.vec
  %i.ja = fdiv reassoc nsz arcp contract afn <8 x float> %i.iz, %i.ix
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ja, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %strided.vec179
  %i.jc = fdiv reassoc nsz arcp contract afn <8 x float> %i.jb, %i.ix
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jc, <8 x ptr> align 4 %wide.gep181, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %strided.vec180
  %i.je = fdiv reassoc nsz arcp contract afn <8 x float> %i.jd, %i.ix
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.je, <8 x ptr> align 4 %wide.gep182, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !433

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph50
  %.025749.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph50 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025749 = phi i64 [ %i.jt, %scalar.ph ], [ %.025749.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx289 = shl i64 %.025749, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 %.idx289 ; 3 uses
  %i.jh = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, i64 %.025749 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 112
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 116
  %i.jk = load float, ptr %i.ji, align 4, !tbaa !12
  %6 = fmul reassoc nsz arcp contract afn float %i.jk, 8.620690e-03
  %7 = fadd reassoc nsz arcp contract afn float %6, f0x3E0D3DCB ; 6 uses
  %8 = fcmp reassoc nsz arcp contract afn ogt float %7, f0x3E53DCB1
  %i.jl = fmul reassoc nsz arcp contract afn float %7, %7
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, %7
  %i.jn = fmul reassoc nsz arcp contract afn float %7, f0x3E038026
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, f0xBC911AA6
  %9 = select reassoc nsz arcp contract afn i1 %8, float %i.jm, float %i.jo ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %11 = load float, ptr %10, align 4, !tbaa !12   ; 3 uses
  %12 = load <2 x float>, ptr %i.jg, align 4, !tbaa !12 ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %12, %12
  %foldExtExtBinop283 = fmul reassoc nsz arcp contract afn <2 x float> %12, %12
  %13 = fmul reassoc nsz arcp contract afn float %9, %9
  %shift = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop285 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop283
  %14 = extractelement <2 x float> %foldExtExtBinop285, i64 0
  %15 = fmul reassoc nsz arcp contract afn float %11, %11
  %16 = load <2 x float>, ptr %i.jj, align 4, !tbaa !12
  %17 = fmul reassoc nsz arcp contract afn <2 x float> %16, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %18 = insertelement <2 x float> poison, float %7, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = fadd reassoc nsz arcp contract afn <2 x float> %19, %17
  %21 = fsub reassoc nsz arcp contract afn <2 x float> %19, %17
  %22 = shufflevector <2 x float> %20, <2 x float> %21, <2 x i32> <i32 0, i32 3> ; 5 uses
  %23 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %22, splat (float f0x3E53DCB1)
  %24 = fmul reassoc nsz arcp contract afn <2 x float> %22, %22
  %25 = fmul reassoc nsz arcp contract afn <2 x float> %24, %22
  %26 = fmul reassoc nsz arcp contract afn <2 x float> %22, splat (float f0x3E038026)
  %27 = fadd reassoc nsz arcp contract afn <2 x float> %26, splat (float f0xBC911AA6)
  %28 = select <2 x i1> %23, <2 x float> %25, <2 x float> %27
  %29 = fmul reassoc nsz arcp contract afn <2 x float> %28, <float 9.642000e-01, float f0x3F532CA5> ; 2 uses
  %i.jp = fmul reassoc nsz arcp contract afn <2 x float> %29, %29 ; 2 uses
  %30 = extractelement <2 x float> %i.jp, i64 0
  %31 = fadd reassoc nsz arcp contract afn float %30, %13
  %32 = fadd reassoc nsz arcp contract afn float %14, %15
  %33 = extractelement <2 x float> %i.jp, i64 1
  %34 = fadd reassoc nsz arcp contract afn float %31, %33
  %35 = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %32)
  %36 = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %34)
  %37 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %35, float f0x37800000)
  %38 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %36, float f0x37800000)
  %39 = fmul reassoc nnan nsz arcp contract afn float %37, %i.cb ; 2 uses
  %40 = fmul reassoc nsz arcp contract afn float %i.gz, %38 ; 2 uses
  %41 = insertelement <2 x float> poison, float %40, i64 0
  %i.jq = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = fmul reassoc nsz arcp contract afn <2 x float> %i.jq, %12
  %42 = insertelement <2 x float> poison, float %39, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fdiv reassoc nsz arcp contract afn <2 x float> %i.jr, %43
  store <2 x float> %44, ptr %i.jg, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %40, %11
  %.reass.2 = fdiv reassoc nsz arcp contract afn float %i.js, %39
  store float %.reass.2, ptr %10, align 4, !tbaa !12
  %i.jt = add nuw i64 %.025749, 1                 ; 2 uses
  %exitcond95.not = icmp eq i64 %i.jt, %.lcssa30
  br i1 %exitcond95.not, label %.loopexit, label %scalar.ph, !llvm.loop !434

.loopexit:                                        ; preds = %scalar.ph, %._crit_edge
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.jv = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_exposure(ptr noundef %i.ju) #31
  %i.jw = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.jv) ; 2 uses
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.jy = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_black(ptr noundef %i.jx) #31 ; 6 uses
  %i.jz = load ptr, ptr %i.e, align 8, !tbaa !100 ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load i64, ptr %i.ka, align 16, !tbaa !101 ; 11 uses
  %.not80.not = icmp eq i64 %i.kb, 0              ; 2 uses
  br i1 %.not80.not, label %._crit_edge61.thread, label %.lr.ph60

._crit_edge61.thread:                             ; preds = %.loopexit
  %i.kc = uitofp reassoc nsz arcp contract afn nneg i64 %i.kb to float
  %i.kd = fmul reassoc nnan nsz arcp contract afn float %i.kc, 3.000000e+00 ; 3 uses
  %i.ke = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.kd
  %i.kf = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.kd
  br label %._crit_edge76

.lr.ph60:                                         ; preds = %.loopexit
  %i.kg = load float, ptr %3, align 4, !tbaa !12  ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !12 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !12 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.km = load float, ptr %i.kl, align 4, !tbaa !12 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !12 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !12 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !12 ; 3 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.jw, %i.cj ; 4 uses
  %min.iters.check184 = icmp ult i64 %i.kb, 9
  br i1 %min.iters.check184, label %.preheader24.preheader.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph60
  %i.ky = and i64 %i.kb, 7                        ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 0
  %i.la = select i1 %i.kz, i64 8, i64 %i.ky
  %n.vec186 = sub i64 %i.kb, %i.la                ; 2 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.kg, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %i.ki, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <8 x float> poison, float %i.kk, i64 0
  %broadcast.splat192 = shufflevector <8 x float> %broadcast.splatinsert191, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <8 x float> poison, float %i.km, i64 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %i.ko, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.kq, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.ks, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.ku, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <8 x float> poison, float %i.kw, i64 0
  %broadcast.splat204 = shufflevector <8 x float> %broadcast.splatinsert203, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <8 x float> poison, float %i.kx, i64 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert207 = insertelement <8 x float> poison, float %i.jy, i64 0
  %broadcast.splat208 = shufflevector <8 x float> %broadcast.splatinsert207, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.lb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.lc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.ld = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph185
  %index210 = phi i64 [ 0, %vector.ph185 ], [ %index.next224, %vector.body209 ] ; 2 uses
  %vec.ind211 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph185 ], [ %vec.ind.next225, %vector.body209 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.nu, %vector.body209 ]
  %vec.phi212 = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.nv, %vector.body209 ]
  %i.le = shl i64 %index210, 4
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 %i.le
  %wide.vec213 = load <32 x float>, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %strided.vec214 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec215 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec216 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %wide.gep217 = getelementptr inbounds nuw [48 x i8], ptr %i.jz, <8 x i64> %vec.ind211 ; 3 uses
  %wide.gep218 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 112
  %wide.gep219 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 116
  %wide.masked.gather220 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep219, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather221 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep222 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 120
  %wide.masked.gather223 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.lg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather220, splat (float 2.000000e-03)
  %i.lh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather221, splat (float 8.620690e-03)
  %i.li = fadd reassoc nsz arcp contract afn <8 x float> %i.lh, splat (float f0x3E0D3DCB) ; 7 uses
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather223, splat (float 5.000000e-03)
  %i.lk = fadd reassoc nsz arcp contract afn <8 x float> %i.li, %i.lg ; 5 uses
  %i.ll = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lk, splat (float f0x3E53DCB1)
  %i.lm = fmul reassoc nsz arcp contract afn <8 x float> %i.lk, %i.lk
  %i.ln = fmul reassoc nsz arcp contract afn <8 x float> %i.lm, %i.lk
  %i.lo = fmul reassoc nsz arcp contract afn <8 x float> %i.lk, splat (float f0x3E038026)
  %i.lp = fadd reassoc nsz arcp contract afn <8 x float> %i.lo, splat (float f0xBC911AA6)
  %i.lq = select reassoc nsz arcp contract afn <8 x i1> %i.ll, <8 x float> %i.ln, <8 x float> %i.lp
  %i.lr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.li, splat (float f0x3E53DCB1)
  %i.ls = fmul reassoc nsz arcp contract afn <8 x float> %i.li, %i.li
  %i.lt = fmul reassoc nsz arcp contract afn <8 x float> %i.ls, %i.li
  %i.lu = fmul reassoc nsz arcp contract afn <8 x float> %i.li, splat (float f0x3E038026)
  %i.lv = fadd reassoc nsz arcp contract afn <8 x float> %i.lu, splat (float f0xBC911AA6)
  %i.lw = select reassoc nsz arcp contract afn <8 x i1> %i.lr, <8 x float> %i.lt, <8 x float> %i.lv ; 3 uses
  %i.lx = fsub reassoc nsz arcp contract afn <8 x float> %i.li, %i.lj ; 5 uses
  %i.ly = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lx, splat (float f0x3E53DCB1)
  %i.lz = fmul reassoc nsz arcp contract afn <8 x float> %i.lx, %i.lx
  %i.ma = fmul reassoc nsz arcp contract afn <8 x float> %i.lz, %i.lx
  %i.mb = fmul reassoc nsz arcp contract afn <8 x float> %i.lx, splat (float f0x3E038026)
  %i.mc = fadd reassoc nsz arcp contract afn <8 x float> %i.mb, splat (float f0xBC911AA6)
  %i.md = select reassoc nsz arcp contract afn <8 x i1> %i.ly, <8 x float> %i.ma, <8 x float> %i.mc
  %i.me = fmul reassoc nsz arcp contract afn <8 x float> %i.lq, splat (float 9.642000e-01) ; 3 uses
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %i.md, splat (float f0x3F532CA5) ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat188, %strided.vec214
  %i.mh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %strided.vec215
  %i.mi = fadd reassoc nsz arcp contract afn <8 x float> %i.mh, %i.mg
  %i.mj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %strided.vec216
  %i.mk = fadd reassoc nsz arcp contract afn <8 x float> %i.mi, %i.mj
  %i.ml = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %strided.vec214
  %i.mm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %strided.vec215
  %i.mn = fadd reassoc nsz arcp contract afn <8 x float> %i.mm, %i.ml
  %i.mo = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %strided.vec216
  %i.mp = fadd reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mo
  %i.mq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %strided.vec214
  %i.mr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %strided.vec215
  %i.ms = fadd reassoc nsz arcp contract afn <8 x float> %i.mr, %i.mq
  %i.mt = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %strided.vec216
  %i.mu = fadd reassoc nsz arcp contract afn <8 x float> %i.ms, %i.mt
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %i.me, %broadcast.splat188
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %i.lw
  %i.mx = fadd reassoc nsz arcp contract afn <8 x float> %i.mv, %i.mw
  %i.my = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %i.mf
  %i.mz = fadd reassoc nsz arcp contract afn <8 x float> %i.mx, %i.my
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %i.me
  %i.nb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %i.lw
  %i.nc = fadd reassoc nsz arcp contract afn <8 x float> %i.nb, %i.na
  %i.nd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %i.mf
  %i.ne = fadd reassoc nsz arcp contract afn <8 x float> %i.nc, %i.nd
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %i.me
  %i.ng = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %i.lw
  %i.nh = fadd reassoc nsz arcp contract afn <8 x float> %i.ng, %i.nf
  %i.ni = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %i.mf
  %i.nj = fadd reassoc nsz arcp contract afn <8 x float> %i.nh, %i.ni
  %i.nk = fmul reassoc nsz arcp contract afn <8 x float> %i.mk, %i.lb
  %i.nl = fadd reassoc nsz arcp contract afn <8 x float> %i.nk, %broadcast.splat208
  %i.nm = fmul reassoc nsz arcp contract afn <8 x float> %i.mp, %i.lc
  %i.nn = fadd reassoc nsz arcp contract afn <8 x float> %i.nm, %broadcast.splat208
  %i.no = fmul reassoc nsz arcp contract afn <8 x float> %i.mu, %i.ld
  %i.np = fadd reassoc nsz arcp contract afn <8 x float> %i.no, %broadcast.splat208
  %i.nq = fadd reassoc nsz arcp contract afn <8 x float> %i.nl, %vec.phi
  %i.nr = fadd reassoc nsz arcp contract afn <8 x float> %i.mz, %vec.phi212
  %i.ns = fadd reassoc nsz arcp contract afn <8 x float> %i.nn, %i.nq
  %i.nt = fadd reassoc nsz arcp contract afn <8 x float> %i.ne, %i.nr
  %i.nu = fadd reassoc nsz arcp contract afn <8 x float> %i.np, %i.ns ; 2 uses
  %i.nv = fadd reassoc nsz arcp contract afn <8 x float> %i.nj, %i.nt ; 2 uses
  %index.next224 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next225 = add nuw <8 x i64> %vec.ind211, splat (i64 8)
  %i.nw = icmp eq i64 %index.next224, %n.vec186
  br i1 %i.nw, label %middle.block226, label %vector.body209, !llvm.loop !435

middle.block226:                                  ; preds = %vector.body209
  %i.nx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nu)
  %i.ny = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nv)
  br label %.preheader24.preheader.preheader

.preheader24.preheader.preheader:                 ; preds = %.lr.ph60, %middle.block226
  %.025058.ph = phi i64 [ 0, %.lr.ph60 ], [ %n.vec186, %middle.block226 ]
  %.025157.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.nx, %middle.block226 ]
  %.025356.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.ny, %middle.block226 ]
  %i.nz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kx
  %i.oa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kx
  %i.ob = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kx
  br label %.preheader24.preheader

.lr.ph75:                                         ; preds = %.preheader24.preheader
  %i.oc = uitofp reassoc nsz arcp contract afn i64 %i.kb to float
  %i.od = fmul reassoc nnan nsz arcp contract afn float %i.oc, 3.000000e+00 ; 3 uses
  %i.oe = fdiv reassoc nsz arcp contract afn float %i.wc, %i.od ; 8 uses
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oh = load float, ptr %i.og, align 4, !tbaa !12 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !12 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.op = fdiv reassoc nsz arcp contract afn float %i.wb, %i.od ; 3 uses
  %i.oq = load <2 x float>, ptr %3, align 4, !tbaa !12 ; 4 uses
  %i.or = load float, ptr %i.of, align 4, !tbaa !12
  %i.os = load <2 x float>, ptr %i.oi, align 4, !tbaa !12 ; 4 uses
end_hunk_0
begin_hunk_1_@_update_RGB_slider_stop:bb.a
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cl
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.da = load float, ptr %i.cz, align 8, !tbaa !12
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ce
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !12
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.ch
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !12
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cl
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %dt_ioppr_rgb_matrix_to_xyz.exit.i

bb.f:                                             ; preds = %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.dm = load float, ptr %i.bs, align 4, !tbaa !12
  %i.dn = extractelement <4 x float> %i.m, i64 0  ; 3 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dp = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dq = fmul reassoc nsz arcp contract afn float %i.n, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.do
  %i.ds = load float, ptr %i.dl, align 4, !tbaa !12
  %i.dt = extractelement <4 x float> %i.m, i64 2  ; 3 uses
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.ds
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 900
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dn
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 916
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.n
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 932
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.dt
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ec, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, %i.dn
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.n
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.dt
  %i.er = fadd reassoc nsz arcp contract afn float %i.en, %i.eq
  br label %dt_ioppr_rgb_matrix_to_xyz.exit.i

dt_ioppr_rgb_matrix_to_xyz.exit.i:                ; preds = %bb.f, %bb.e
  %.sroa.14.0.i = phi nsz float [ %i.er, %bb.f ], [ %i.dj, %bb.e ] ; 3 uses
  %.sroa.8.0.i = phi nsz float [ %i.eg, %bb.f ], [ %i.cy, %bb.e ] ; 3 uses
  %.sroa.0.0.i = phi nsz float [ %i.dv, %bb.f ], [ %i.cn, %bb.e ] ; 3 uses
  %i.es = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x404F639A
  %i.et = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0x3FC4C0F4
  %i.eu = fsub reassoc nsz arcp contract afn float %i.es, %i.et
  %i.ev = fmul reassoc nsz arcp contract afn float %.sroa.14.0.i, f0xBEFF3F82
  %i.ew = fadd reassoc nsz arcp contract afn float %i.eu, %i.ev ; 2 uses
  %i.ex = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x3F7821D1
  %i.ey = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0x3FF0211F
  %i.ez = fsub reassoc nsz arcp contract afn float %i.ey, %i.ex
  %i.fa = fmul reassoc nsz arcp contract afn float %.sroa.14.0.i, 4.155600e-02
  %i.fb = fadd reassoc nsz arcp contract afn float %i.ez, %i.fa ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, 5.564340e-02
  %i.fd = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i, f0x3E50EC2A
  %i.fe = fsub reassoc nsz arcp contract afn float %i.fc, %i.fd
  %i.ff = fmul reassoc nsz arcp contract afn float %.sroa.14.0.i, f0x3F875328
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fe, %i.ff ; 2 uses
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ew, float %i.fb)
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fh, float %i.fg) ; 3 uses
  %i.fj = fdiv reassoc nsz arcp contract afn float %i.ew, %i.fi
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fj, float 0.000000e+00)
  %i.fl = fdiv reassoc nsz arcp contract afn float %i.fb, %i.fi
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fl, float 0.000000e+00)
  %i.fn = fdiv reassoc nsz arcp contract afn float %i.fg, %i.fi
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fn, float 0.000000e+00)
  br label %_convert_GUI_colors.exit

_convert_GUI_colors.exit:                         ; preds = %bb.c, %convert_any_LMS_to_XYZ.exit, %dt_ioppr_rgb_matrix_to_xyz.exit.i
  %.sroa.11.0 = phi nsz float [ %i.br, %convert_any_LMS_to_XYZ.exit ], [ %i.fo, %dt_ioppr_rgb_matrix_to_xyz.exit.i ], [ 5.000000e-01, %bb.c ]
  %.sroa.7.0 = phi nsz float [ %i.bp, %convert_any_LMS_to_XYZ.exit ], [ %i.fm, %dt_ioppr_rgb_matrix_to_xyz.exit.i ], [ 5.000000e-01, %bb.c ]
  %.sroa.0.0 = phi nsz float [ %i.bn, %convert_any_LMS_to_XYZ.exit ], [ %i.fk, %dt_ioppr_rgb_matrix_to_xyz.exit.i ], [ 5.000000e-01, %bb.c ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %2, float noundef %3, float noundef %.sroa.0.0, float noundef %.sroa.7.0, float noundef %.sroa.11.0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret void
}

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #5

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #5

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_conf_set_bool(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_label_set_markup(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_paint(ptr noundef) local_unnamed_addr #5

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #5

declare void @dt_dev_reprocess_preview(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x ptr> @llvm.masked.load.v3p0.p0(ptr captures(none), <3 x i1>, <3 x ptr>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind willreturn memory(none) }
attributes #34 = { nounwind willreturn memory(read) }

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
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!18 = !{!"dt_action_t", !8, i64 0, !16, i64 8, !16, i64 16, !13, i64 24, !17, i64 32, !17, i64 40}
!19 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!20 = !{!"dt_iop_module_so_t", !18, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !19, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!21 = !{!"dt_iop_channelmixer_rgb_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 48, !7, i64 64, !7, i64 80, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !8, i64 156}
!22 = !{!21, !8, i64 156}
!23 = !{!21, !8, i64 132}
!24 = !{!21, !8, i64 152}
!25 = !{!21, !8, i64 96}
!26 = !{!21, !8, i64 100}
!27 = !{!21, !8, i64 104}
!28 = !{!21, !8, i64 116}
!29 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!30 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!31 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!32 = !{!"dt_dev_histogram_collection_params_t", !31, i64 0, !8, i64 8}
!33 = !{!"p1 int", !13, i64 0}
!34 = !{!"long", !7, i64 0}
!35 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !34, i64 8, !8, i64 16, !8, i64 20}
!36 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!37 = !{!"short", !7, i64 0}
!38 = !{!"", !37, i64 0, !37, i64 2}
!39 = !{!"", !8, i64 0, !7, i64 16}
!40 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !38, i64 48, !39, i64 64, !7, i64 96, !8, i64 112}
!41 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!42 = !{!"p1 float", !13, i64 0}
!43 = !{!"dt_dev_distorted_mask_cache_t", !42, i64 0, !36, i64 8, !34, i64 32, !34, i64 40}
!44 = !{!"dt_dev_pixelpipe_iop_t", !29, i64 0, !30, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !32, i64 40, !33, i64 56, !35, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !34, i64 120, !8, i64 128, !8, i64 132, !36, i64 136, !36, i64 156, !36, i64 176, !36, i64 196, !8, i64 216, !8, i64 220, !40, i64 224, !40, i64 352, !7, i64 480, !8, i64 516, !41, i64 520, !43, i64 528, !43, i64 576}
!45 = !{!44, !13, i64 16}
!46 = !{!44, !30, i64 8}
!47 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!48 = !{!"dt_pthread_mutex_t", !7, i64 0}
!49 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!50 = !{!"", !41, i64 0, !41, i64 8}
!51 = !{!"", !29, i64 0, !8, i64 8}
!52 = !{!"", !50, i64 0, !51, i64 16}
!53 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!54 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!55 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!56 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !19, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !33, i64 608, !35, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !47, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !48, i64 712, !13, i64 752, !13, i64 760, !49, i64 768, !49, i64 776, !13, i64 784, !52, i64 792, !53, i64 824, !53, i64 832, !53, i64 840, !53, i64 848, !53, i64 856, !53, i64 864, !53, i64 872, !8, i64 880, !53, i64 888, !53, i64 896, !53, i64 904, !54, i64 912, !54, i64 920, !53, i64 928, !53, i64 936, !8, i64 944, !55, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !53, i64 1096, !13, i64 1104, !8, i64 1112}
!57 = !{!56, !13, i64 704}
!58 = !{!"any p2 pointer", !13, i64 0}
!59 = !{!"p1 long", !13, i64 0}
!60 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!61 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !34, i64 8, !34, i64 16, !58, i64 24, !59, i64 32, !60, i64 40, !59, i64 48, !33, i64 56, !33, i64 64, !34, i64 72, !8, i64 80, !34, i64 88, !34, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!62 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!63 = !{!"p1 _ZTS6_GList", !13, i64 0}
!64 = !{!"dt_dev_detail_mask_t", !36, i64 0, !34, i64 24, !42, i64 32}
!65 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!66 = !{!"double", !7, i64 0}
!67 = !{!"dt_image_geoloc_t", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!69 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!70 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !34, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !34, i64 1448, !34, i64 1456, !34, i64 1464, !34, i64 1472, !8, i64 1480, !40, i64 1488, !7, i64 1616, !16, i64 1656, !8, i64 1664, !8, i64 1668, !65, i64 1672, !67, i64 1680, !68, i64 1704, !37, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !63, i64 1856, !69, i64 1864, !8, i64 1872, !8, i64 1876}
!71 = !{!"dt_dev_pixelpipe_t", !61, i64 0, !8, i64 120, !34, i64 128, !42, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !40, i64 176, !62, i64 304, !62, i64 312, !62, i64 320, !62, i64 328, !63, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !16, i64 360, !34, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !34, i64 416, !48, i64 424, !48, i64 464, !48, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !64, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !70, i64 656, !8, i64 2544, !16, i64 2552, !8, i64 2560, !63, i64 2568, !63, i64 2576, !63, i64 2584, !8, i64 2592, !42, i64 2600, !34, i64 2608, !7, i64 2616, !7, i64 2632}
!72 = !{!71, !8, i64 644}
!73 = !{!56, !47, i64 664}
!74 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!75 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!76 = !{!"dt_dev_proxy_exposure_t", !29, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!77 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!78 = !{!"", !77, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!79 = !{!"", !77, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!80 = !{!"", !76, i64 0, !29, i64 40, !78, i64 48, !79, i64 120}
!81 = !{!"dt_dev_chroma_t", !29, i64 0, !29, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!82 = !{!"", !29, i64 0, !29, i64 8, !13, i64 16}
!83 = !{!"", !53, i64 0, !53, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!84 = !{!"", !53, i64 0, !53, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!85 = !{!"", !53, i64 0, !53, i64 8}
!86 = !{!"", !53, i64 0, !8, i64 8}
!87 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!88 = !{!"dt_dev_viewport_t", !53, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !30, i64 80, !53, i64 88, !47, i64 96}
!89 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !66, i64 24, !66, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !66, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !29, i64 88, !30, i64 96, !70, i64 112, !8, i64 2000, !8, i64 2004, !48, i64 2008, !8, i64 2048, !63, i64 2056, !8, i64 2064, !29, i64 2072, !8, i64 2080, !63, i64 2088, !63, i64 2096, !8, i64 2104, !63, i64 2112, !63, i64 2120, !33, i64 2128, !33, i64 2136, !8, i64 2144, !8, i64 2148, !63, i64 2152, !74, i64 2160, !75, i64 2168, !63, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !29, i64 2208, !8, i64 2216, !80, i64 2224, !81, i64 2384, !82, i64 2496, !83, i64 2520, !84, i64 2560, !85, i64 2592, !86, i64 2608, !87, i64 2624, !53, i64 2664, !53, i64 2672, !88, i64 2680, !88, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !63, i64 2904, !8, i64 2912, !47, i64 2920}
!90 = !{!89, !8, i64 0}
!91 = !{!"p1 _ZTS12_GtkNotebook", !13, i64 0}
!92 = !{!"point_t", !11, i64 0, !11, i64 4}
!93 = !{!"p1 _ZTS18dt_color_checker_t", !13, i64 0}
!94 = !{!"p1 _ZTS7_GtkBox", !13, i64 0}
!95 = !{!"_gui_collapsible_section_t", !94, i64 0, !16, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !94, i64 40, !17, i64 48}
!96 = !{!"dt_iop_channelmixer_rgb_gui_data_t", !91, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !53, i64 184, !53, i64 192, !53, i64 200, !53, i64 208, !53, i64 216, !53, i64 224, !53, i64 232, !53, i64 240, !53, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !7, i64 304, !7, i64 312, !7, i64 328, !7, i64 360, !92, i64 392, !7, i64 400, !8, i64 416, !8, i64 420, !92, i64 424, !92, i64 432, !93, i64 440, !8, i64 448, !11, i64 452, !7, i64 456, !7, i64 492, !8, i64 528, !8, i64 532, !8, i64 536, !8, i64 540, !8, i64 544, !7, i64 576, !8, i64 640, !53, i64 648, !53, i64 656, !53, i64 664, !53, i64 672, !53, i64 680, !53, i64 688, !53, i64 696, !42, i64 704, !16, i64 712, !95, i64 720, !95, i64 776, !53, i64 832, !53, i64 840, !53, i64 848, !53, i64 856, !53, i64 864, !53, i64 872, !53, i64 880, !53, i64 888, !53, i64 896, !53, i64 904, !7, i64 912, !11, i64 928, !11, i64 932}
!97 = !{!96, !8, i64 528}
!98 = !{!"dt_iop_channelmixer_rbg_data_t", !7, i64 0, !7, i64 64, !7, i64 80, !7, i64 96, !7, i64 112, !11, i64 128, !11, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152}
!99 = !{!98, !8, i64 144}
!100 = !{!96, !93, i64 440}
!101 = !{!34, !34, i64 0}
!102 = !{!96, !42, i64 704}
!103 = !{!7, !7, i64 0}
!104 = !{!96, !8, i64 448}
!105 = !{!66, !66, i64 0}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!96, !8, i64 536}
!109 = !{!96, !16, i64 712}
!110 = !{!98, !8, i64 148}
!111 = !{!81, !8, i64 96}
!112 = !{!98, !11, i64 128}
!113 = !{!98, !11, i64 132}
!114 = !{!98, !8, i64 140}
!115 = !{!98, !8, i64 136}
!116 = !{!98, !8, i64 152}
!117 = !{!96, !8, i64 532}
!118 = !{!56, !13, i64 680}
!119 = !{!81, !29, i64 8}
!120 = !{!56, !8, i64 672}
!121 = !{!96, !8, i64 544}
!122 = !{!21, !8, i64 120}
!123 = !{!"dt_codepath_t", !8, i64 0}
!124 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!125 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!126 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!127 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!128 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!129 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!130 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!131 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!132 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!133 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!134 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!135 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!136 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!137 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!138 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!139 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!140 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!141 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!142 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!143 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!144 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!145 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!146 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!147 = !{!"_Bool", !7, i64 0}
!148 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!149 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!150 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!151 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!152 = !{!"", !146, i64 0, !48, i64 8, !7, i64 48, !147, i64 96, !147, i64 97, !148, i64 104, !149, i64 112, !150, i64 120, !151, i64 128, !151, i64 136, !151, i64 144}
!153 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!154 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
end_hunk_1
