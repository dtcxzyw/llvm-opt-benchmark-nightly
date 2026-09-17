Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_extract_patches:bb.a
  %.126638.us = phi i64 [ %.026540.us, %.preheader27.us ], [ %.2.us, %bb.f ] ; 2 uses
  %i.em = phi <2 x float> [ %i.eg, %.preheader27.us ], [ %i.ey, %bb.f ] ; 2 uses
  %i.en = uitofp reassoc nsz arcp contract afn i64 %.026339.us to float
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, 5.000000e-01
  %i.ep = insertelement <2 x float> %i.ek, float %i.eo, i64 0
  %i.eq = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.ep, ptr noundef nonnull %i.ac) #31
  %i.er = fsub reassoc nsz arcp contract afn <2 x float> %i.eq, %i.cm ; 2 uses
  %i.es = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.er, %i.ae
  %i.et = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.er, %i.af
  %i.eu = and <2 x i1> %i.es, %i.et               ; 2 uses
  %i.ev = extractelement <2 x i1> %i.eu, i64 0
  %i.ew = extractelement <2 x i1> %i.eu, i64 1
  %or.cond295.us = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond295.us, label %.preheader26.us, label %bb.f

bb.f:                                             ; preds = %.preheader26.us, %bb.e
  %i.ex = phi float [ %i.fg, %.preheader26.us ], [ %i.el, %bb.e ] ; 3 uses
  %.2.us = phi i64 [ %i.fh, %.preheader26.us ], [ %.126638.us, %bb.e ] ; 3 uses
  %i.ey = phi <2 x float> [ %i.fd, %.preheader26.us ], [ %i.em, %bb.e ] ; 3 uses
  %i.ez = add i64 %.026339.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %i.ee
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e

.preheader26.us:                                  ; preds = %bb.e
  %i.fa = add i64 %.026339.us, %i.ej
  %.idx291.us = shl i64 %i.fa, 4
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx291.us ; 2 uses
  %i.fc = load <2 x float>, ptr %i.fb, align 4, !tbaa !12
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.em, %i.fc ; 2 uses
  store <2 x float> %i.fd, ptr %i.cx, align 4, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12
  %i.fg = fadd reassoc nsz arcp contract afn float %i.el, %i.ff ; 2 uses
  store float %i.fg, ptr %i.cy, align 4, !tbaa !12
  %i.fh = add i64 %.126638.us, 1
  br label %bb.f

._crit_edge.us:                                   ; preds = %bb.f
  %i.fi = add i64 %.026441.us, 1                  ; 2 uses
  %exitcond92.not = icmp eq i64 %i.fi, %i.ed
  br i1 %exitcond92.not, label %.preheader28.loopexit, label %.preheader27.us

.preheader28.loopexit:                            ; preds = %._crit_edge.us
  %i.fj = uitofp reassoc nsz arcp contract afn i64 %.2.us to float
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.loopexit, %bb.d
  %i.fk = phi float [ 0.000000e+00, %bb.d ], [ %i.ex, %.preheader28.loopexit ]
  %.0265.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.fj, %.preheader28.loopexit ] ; 2 uses
  %i.fl = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.ey, %.preheader28.loopexit ]
  %i.fm = insertelement <2 x float> poison, float %.0265.lcssa, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fdiv reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fn ; 4 uses
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fk, %.0265.lcssa ; 2 uses
  %i.fq = load float, ptr %i.ah, align 4, !tbaa !12
  %i.fr = extractelement <2 x float> %i.fo, i64 0
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fq, %i.fr
  %i.ft = load float, ptr %i.ai, align 4, !tbaa !12
  %i.fu = extractelement <2 x float> %i.fo, i64 1
  %i.fv = fmul reassoc nsz arcp contract afn float %i.ft, %i.fu
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %i.fs
  %i.fx = load float, ptr %i.aj, align 4, !tbaa !12
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fp
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fw, %i.fy
  %i.ga = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %2, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !12 ; 3 uses
  %i.gb = shufflevector <5 x float> %i.ga, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <5 x float> %i.ga, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.gd = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gd
  %i.gf = load <2 x float>, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gb, <4 x float> %i.gg, <2 x i32> <i32 0, i32 4>
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.fo
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.ge
  %i.gk = shufflevector <2 x float> %i.gf, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <5 x float> %i.ga, <5 x float> %i.gk, <2 x i32> <i32 2, i32 6>
  %i.gm = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gn
  %i.gp = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, %i.go
  store <2 x float> %i.gp, ptr %i.cx, align 4, !tbaa !12
  store float %i.fz, ptr %i.cy, align 4, !tbaa !12
  %i.gq = add nuw i64 %.027245, 1                 ; 2 uses
  %i.gr = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %i.gt = load i64, ptr %i.gs, align 16, !tbaa !101 ; 2 uses
  %i.gu = icmp ult i64 %i.gq, %i.gt
  br i1 %i.gu, label %bb.d, label %._crit_edge

.lr.ph50:                                         ; preds = %._crit_edge
  %i.gv = fmul reassoc nsz arcp contract afn float %i.ch, %i.cg ; 2 uses
  %min.iters.check = icmp ult i64 %.lcssa30, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50
  %i.gw = shl i64 %.lcssa30, 4
  %i.gx = getelementptr i8, ptr %4, i64 %i.gw
  %scevgep = getelementptr i8, ptr %i.gx, i64 -4
  %scevgep169 = getelementptr i8, ptr %.lcssa31, i64 112
  %i.gy = mul i64 %.lcssa30, 48
  %i.gz = getelementptr i8, ptr %.lcssa31, i64 %i.gy
  %scevgep170 = getelementptr i8, ptr %i.gz, i64 76
  %bound0 = icmp ult ptr %4, %scevgep170
  %bound1 = icmp ult ptr %scevgep169, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ha = and i64 %.lcssa30, 7                    ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  %i.hc = select i1 %i.hb, i64 8, i64 %i.ha
  %n.vec = sub i64 %.lcssa30, %i.hc               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.gv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.hd = shl <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %4, <8 x i64> %i.hd ; 4 uses
  %i.he = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep173 = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, <8 x i64> %vec.ind ; 3 uses
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 112
  %wide.gep175 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 116
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %wide.masked.gather176 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %wide.gep177 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 120
  %wide.masked.gather178 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !439
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 2.000000e-03)
  %i.hg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, splat (float 8.620690e-03)
  %i.hh = fadd reassoc nsz arcp contract afn <8 x float> %i.hg, splat (float f0x3E0D3DCB) ; 7 uses
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather178, splat (float 5.000000e-03)
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, %i.hf ; 5 uses
  %i.hk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hj, splat (float f0x3E53DCB1)
  %i.hl = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.hj
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hj
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, splat (float f0x3E038026)
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, splat (float f0xBC911AA6)
  %i.hp = select reassoc nsz arcp contract afn <8 x i1> %i.hk, <8 x float> %i.hm, <8 x float> %i.ho
  %i.hq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hh, splat (float f0x3E53DCB1)
  %i.hr = fmul reassoc nsz arcp contract afn <8 x float> %i.hh, %i.hh
  %i.hs = fmul reassoc nsz arcp contract afn <8 x float> %i.hr, %i.hh
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.hh, splat (float f0x3E038026)
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.ht, splat (float f0xBC911AA6)
  %i.hv = select reassoc nsz arcp contract afn <8 x i1> %i.hq, <8 x float> %i.hs, <8 x float> %i.hu ; 2 uses
  %i.hw = fsub reassoc nsz arcp contract afn <8 x float> %i.hh, %i.hi ; 5 uses
  %i.hx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hw, splat (float f0x3E53DCB1)
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.hw
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.hw
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, splat (float f0x3E038026)
  %i.ib = fadd reassoc nsz arcp contract afn <8 x float> %i.ia, splat (float f0xBC911AA6)
  %i.ic = select reassoc nsz arcp contract afn <8 x i1> %i.hx, <8 x float> %i.hz, <8 x float> %i.ib
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %i.hp, splat (float 9.642000e-01) ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %i.ic, splat (float f0x3F532CA5) ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.he, align 4, !tbaa !12, !alias.scope !440, !noalias !439 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec180 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec179
  %i.ih = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %i.if
  %wide.gep182 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec180, %strided.vec180
  %i.ij = fadd reassoc nsz arcp contract afn <8 x float> %i.ih, %i.ii
  %i.ik = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ij)
  %i.il = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ik, <8 x float> splat (float f0x37800000))
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.id
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.hv
  %i.io = fadd reassoc nsz arcp contract afn <8 x float> %i.im, %i.in
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %i.ie, %i.ie
  %i.iq = fadd reassoc nsz arcp contract afn <8 x float> %i.io, %i.ip
  %i.ir = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.iq)
  %i.is = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ir, <8 x float> splat (float f0x37800000))
  %i.it = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.il, %broadcast.splat172 ; 3 uses
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.is ; 3 uses
  %i.iv = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %strided.vec
  %i.iw = fdiv reassoc nsz arcp contract afn <8 x float> %i.iv, %i.it
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iw, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %strided.vec179
  %i.iy = fdiv reassoc nsz arcp contract afn <8 x float> %i.ix, %i.it
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iy, <8 x ptr> align 4 %wide.gep181, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %strided.vec180
  %i.ja = fdiv reassoc nsz arcp contract afn <8 x float> %i.iz, %i.it
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ja, <8 x ptr> align 4 %wide.gep182, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !440, !noalias !439
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !433

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph50
  %.025749.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph50 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025749 = phi i64 [ %i.jz, %scalar.ph ], [ %.025749.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx289 = shl i64 %.025749, 4
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 %.idx289 ; 3 uses
  %i.jd = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, i64 %.025749 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 116
  %i.jg = load float, ptr %i.je, align 4, !tbaa !12
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, 8.620690e-03
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, f0x3E0D3DCB ; 6 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %i.ji, f0x3E53DCB1
  %i.jk = fmul reassoc nsz arcp contract afn float %i.ji, %i.ji
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.ji
  %i.jm = fmul reassoc nsz arcp contract afn float %i.ji, f0x3E038026
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, f0xBC911AA6
  %i.jo = select reassoc nsz arcp contract afn i1 %i.jj, float %i.jl, float %i.jn ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %7 = load float, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.jp = load <2 x float>, ptr %i.jc, align 4, !tbaa !12 ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.jp, %i.jp
  %i.jq = fmul reassoc nsz arcp contract afn <2 x float> %i.jp, %i.jp
  %8 = fmul reassoc nsz arcp contract afn float %i.jo, %i.jo
  %shift = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jr = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.jq
  %9 = extractelement <2 x float> %i.jr, i64 0
  %10 = fmul reassoc nsz arcp contract afn float %7, %7
  %11 = load <2 x float>, ptr %i.jf, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn <2 x float> %11, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %12 = insertelement <2 x float> poison, float %i.ji, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = fadd reassoc nsz arcp contract afn <2 x float> %13, %i.js
  %14 = fsub reassoc nsz arcp contract afn <2 x float> %13, %i.js
  %15 = shufflevector <2 x float> %i.jt, <2 x float> %14, <2 x i32> <i32 0, i32 3> ; 5 uses
  %16 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %15, splat (float f0x3E53DCB1)
  %17 = fmul reassoc nsz arcp contract afn <2 x float> %15, %15
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %17, %15
  %19 = fmul reassoc nsz arcp contract afn <2 x float> %15, splat (float f0x3E038026)
  %20 = fadd reassoc nsz arcp contract afn <2 x float> %19, splat (float f0xBC911AA6)
  %21 = select <2 x i1> %16, <2 x float> %18, <2 x float> %20
  %22 = fmul reassoc nsz arcp contract afn <2 x float> %21, <float 9.642000e-01, float f0x3F532CA5> ; 2 uses
  %23 = fmul reassoc nsz arcp contract afn <2 x float> %22, %22 ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0
  %25 = fadd reassoc nsz arcp contract afn float %24, %8
  %26 = fadd reassoc nsz arcp contract afn float %9, %10
  %27 = extractelement <2 x float> %23, i64 1
  %i.ju = fadd reassoc nsz arcp contract afn float %25, %27
  %i.jv = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %26)
  %28 = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ju)
  %29 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jv, float f0x37800000)
  %30 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %28, float f0x37800000)
  %i.jw = fmul reassoc nnan nsz arcp contract afn float %29, %i.bz ; 2 uses
  %i.jx = fmul reassoc nsz arcp contract afn float %i.gv, %30 ; 2 uses
  %31 = insertelement <2 x float> poison, float %i.jx, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul reassoc nsz arcp contract afn <2 x float> %32, %i.jp
  %34 = insertelement <2 x float> poison, float %i.jw, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fdiv reassoc nsz arcp contract afn <2 x float> %33, %35
  store <2 x float> %36, ptr %i.jc, align 4, !tbaa !12
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %7
  %.reass.2 = fdiv reassoc nsz arcp contract afn float %i.jy, %i.jw
  store float %.reass.2, ptr %6, align 4, !tbaa !12
  %i.jz = add nuw i64 %.025749, 1                 ; 2 uses
  %exitcond95.not = icmp eq i64 %i.jz, %.lcssa30
  br i1 %exitcond95.not, label %.loopexit, label %scalar.ph, !llvm.loop !434

.loopexit:                                        ; preds = %scalar.ph, %._crit_edge
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.kb = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_exposure(ptr noundef %i.ka) #31
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.kb) ; 2 uses
  %i.kd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.ke = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_black(ptr noundef %i.kd) #31 ; 6 uses
  %i.kf = load ptr, ptr %i.e, align 8, !tbaa !100 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load i64, ptr %i.kg, align 16, !tbaa !101 ; 11 uses
  %.not80 = icmp eq i64 %i.kh, 0
  br i1 %.not80, label %._crit_edge61.thread, label %.lr.ph60

._crit_edge61.thread:                             ; preds = %.loopexit
  %i.ki = uitofp reassoc nsz arcp contract afn nneg i64 %i.kh to float
  %i.kj = fmul reassoc nnan nsz arcp contract afn float %i.ki, 3.000000e+00 ; 3 uses
  %i.kk = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.kj
  %i.kl = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.kj
  br label %._crit_edge76

.lr.ph60:                                         ; preds = %.loopexit
  %i.km = load float, ptr %3, align 4, !tbaa !12  ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !12 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !12 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !12 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !12 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !12 ; 3 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.kc, %i.ch ; 4 uses
  %min.iters.check184 = icmp ult i64 %i.kh, 9
  br i1 %min.iters.check184, label %.preheader24.preheader.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph60
  %i.le = and i64 %i.kh, 7                        ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = select i1 %i.lf, i64 8, i64 %i.le
  %n.vec186 = sub i64 %i.kh, %i.lg                ; 2 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.km, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %i.ko, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <8 x float> poison, float %i.kq, i64 0
  %broadcast.splat192 = shufflevector <8 x float> %broadcast.splatinsert191, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <8 x float> poison, float %i.ks, i64 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %i.ku, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.kw, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.ky, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.la, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <8 x float> poison, float %i.lc, i64 0
  %broadcast.splat204 = shufflevector <8 x float> %broadcast.splatinsert203, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <8 x float> poison, float %i.ld, i64 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert207 = insertelement <8 x float> poison, float %i.ke, i64 0
  %broadcast.splat208 = shufflevector <8 x float> %broadcast.splatinsert207, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.lh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.li = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.lj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph185
  %index210 = phi i64 [ 0, %vector.ph185 ], [ %index.next224, %vector.body209 ] ; 2 uses
  %vec.ind211 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph185 ], [ %vec.ind.next225, %vector.body209 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.oa, %vector.body209 ]
  %vec.phi212 = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.ob, %vector.body209 ]
  %i.lk = shl i64 %index210, 4
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 %i.lk
  %wide.vec213 = load <32 x float>, ptr %i.ll, align 4, !tbaa !12 ; 3 uses
  %strided.vec214 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec215 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec216 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %wide.gep217 = getelementptr inbounds nuw [48 x i8], ptr %i.kf, <8 x i64> %vec.ind211 ; 3 uses
  %wide.gep218 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 112
  %wide.gep219 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 116
  %wide.masked.gather220 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep219, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather221 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep222 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 120
  %wide.masked.gather223 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.lm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather220, splat (float 2.000000e-03)
  %i.ln = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather221, splat (float 8.620690e-03)
  %i.lo = fadd reassoc nsz arcp contract afn <8 x float> %i.ln, splat (float f0x3E0D3DCB) ; 7 uses
  %i.lp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather223, splat (float 5.000000e-03)
  %i.lq = fadd reassoc nsz arcp contract afn <8 x float> %i.lo, %i.lm ; 5 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lq, splat (float f0x3E53DCB1)
  %i.ls = fmul reassoc nsz arcp contract afn <8 x float> %i.lq, %i.lq
  %i.lt = fmul reassoc nsz arcp contract afn <8 x float> %i.ls, %i.lq
  %i.lu = fmul reassoc nsz arcp contract afn <8 x float> %i.lq, splat (float f0x3E038026)
  %i.lv = fadd reassoc nsz arcp contract afn <8 x float> %i.lu, splat (float f0xBC911AA6)
  %i.lw = select reassoc nsz arcp contract afn <8 x i1> %i.lr, <8 x float> %i.lt, <8 x float> %i.lv
  %i.lx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lo, splat (float f0x3E53DCB1)
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %i.lo, %i.lo
  %i.lz = fmul reassoc nsz arcp contract afn <8 x float> %i.ly, %i.lo
  %i.ma = fmul reassoc nsz arcp contract afn <8 x float> %i.lo, splat (float f0x3E038026)
  %i.mb = fadd reassoc nsz arcp contract afn <8 x float> %i.ma, splat (float f0xBC911AA6)
  %i.mc = select reassoc nsz arcp contract afn <8 x i1> %i.lx, <8 x float> %i.lz, <8 x float> %i.mb ; 3 uses
  %i.md = fsub reassoc nsz arcp contract afn <8 x float> %i.lo, %i.lp ; 5 uses
  %i.me = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.md, splat (float f0x3E53DCB1)
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %i.md, %i.md
  %i.mg = fmul reassoc nsz arcp contract afn <8 x float> %i.mf, %i.md
  %i.mh = fmul reassoc nsz arcp contract afn <8 x float> %i.md, splat (float f0x3E038026)
  %i.mi = fadd reassoc nsz arcp contract afn <8 x float> %i.mh, splat (float f0xBC911AA6)
  %i.mj = select reassoc nsz arcp contract afn <8 x i1> %i.me, <8 x float> %i.mg, <8 x float> %i.mi
  %i.mk = fmul reassoc nsz arcp contract afn <8 x float> %i.lw, splat (float 9.642000e-01) ; 3 uses
  %i.ml = fmul reassoc nsz arcp contract afn <8 x float> %i.mj, splat (float f0x3F532CA5) ; 3 uses
  %i.mm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat188, %strided.vec214
  %i.mn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %strided.vec215
  %i.mo = fadd reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mm
  %i.mp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %strided.vec216
  %i.mq = fadd reassoc nsz arcp contract afn <8 x float> %i.mo, %i.mp
  %i.mr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %strided.vec214
  %i.ms = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %strided.vec215
  %i.mt = fadd reassoc nsz arcp contract afn <8 x float> %i.ms, %i.mr
  %i.mu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %strided.vec216
  %i.mv = fadd reassoc nsz arcp contract afn <8 x float> %i.mt, %i.mu
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %strided.vec214
  %i.mx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %strided.vec215
  %i.my = fadd reassoc nsz arcp contract afn <8 x float> %i.mx, %i.mw
  %i.mz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %strided.vec216
  %i.na = fadd reassoc nsz arcp contract afn <8 x float> %i.my, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn <8 x float> %i.mk, %broadcast.splat188
  %i.nc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %i.mc
  %i.nd = fadd reassoc nsz arcp contract afn <8 x float> %i.nb, %i.nc
  %i.ne = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %i.ml
  %i.nf = fadd reassoc nsz arcp contract afn <8 x float> %i.nd, %i.ne
  %i.ng = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %i.mk
  %i.nh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %i.mc
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %i.nh, %i.ng
  %i.nj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %i.ml
  %i.nk = fadd reassoc nsz arcp contract afn <8 x float> %i.ni, %i.nj
  %i.nl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %i.mk
  %i.nm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %i.mc
  %i.nn = fadd reassoc nsz arcp contract afn <8 x float> %i.nm, %i.nl
  %i.no = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %i.ml
  %i.np = fadd reassoc nsz arcp contract afn <8 x float> %i.nn, %i.no
  %i.nq = fmul reassoc nsz arcp contract afn <8 x float> %i.mq, %i.lh
  %i.nr = fadd reassoc nsz arcp contract afn <8 x float> %i.nq, %broadcast.splat208
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %i.mv, %i.li
  %i.nt = fadd reassoc nsz arcp contract afn <8 x float> %i.ns, %broadcast.splat208
  %i.nu = fmul reassoc nsz arcp contract afn <8 x float> %i.na, %i.lj
  %i.nv = fadd reassoc nsz arcp contract afn <8 x float> %i.nu, %broadcast.splat208
  %i.nw = fadd reassoc nsz arcp contract afn <8 x float> %i.nr, %vec.phi
  %i.nx = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, %vec.phi212
  %i.ny = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %i.nw
  %i.nz = fadd reassoc nsz arcp contract afn <8 x float> %i.nk, %i.nx
  %i.oa = fadd reassoc nsz arcp contract afn <8 x float> %i.nv, %i.ny ; 2 uses
  %i.ob = fadd reassoc nsz arcp contract afn <8 x float> %i.np, %i.nz ; 2 uses
  %index.next224 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next225 = add nuw <8 x i64> %vec.ind211, splat (i64 8)
  %i.oc = icmp eq i64 %index.next224, %n.vec186
  br i1 %i.oc, label %middle.block226, label %vector.body209, !llvm.loop !435

middle.block226:                                  ; preds = %vector.body209
  %i.od = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oa)
  %i.oe = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ob)
  br label %.preheader24.preheader.preheader

.preheader24.preheader.preheader:                 ; preds = %.lr.ph60, %middle.block226
  %.025058.ph = phi i64 [ 0, %.lr.ph60 ], [ %n.vec186, %middle.block226 ]
  %.025157.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.od, %middle.block226 ]
  %.025356.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.oe, %middle.block226 ]
  %i.of = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ld
  %i.og = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ld
  %i.oh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ld
  br label %.preheader24.preheader

.lr.ph75:                                         ; preds = %.preheader24.preheader
  %i.oi = uitofp reassoc nsz arcp contract afn i64 %i.kh to float
  %i.oj = fmul reassoc nnan nsz arcp contract afn float %i.oi, 3.000000e+00 ; 3 uses
  %i.ok = fdiv reassoc nsz arcp contract afn float %i.wi, %i.oj ; 8 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.on = load float, ptr %i.om, align 4, !tbaa !12 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.or = load float, ptr %i.oq, align 4, !tbaa !12 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ov = fdiv reassoc nsz arcp contract afn float %i.wh, %i.oj ; 3 uses
  %i.ow = load <2 x float>, ptr %3, align 4, !tbaa !12 ; 4 uses
  %i.ox = load float, ptr %i.ol, align 4, !tbaa !12
  %i.oy = load <2 x float>, ptr %i.oo, align 4, !tbaa !12 ; 4 uses
end_hunk_0
