Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/prior_box_layer?download=true
inline.NumInlined: 1235
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn17PriorBoxLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %bound0343 = icmp ult ptr %.279151.us.us.us.us.us.us.us.us, %scevgep330
  %bound1344 = icmp ult ptr %i.bx, %i.co
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  br i1 %conflict.rdx346, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck335
  %i.cp = getelementptr i8, ptr %.279151.us.us.us.us.us.us.us.us, i64 %i.cc ; 2 uses
  %i.cq = load <1 x float>, ptr %i.bb, align 8
  %broadcast.splat370 = shufflevector <1 x float> %i.cq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = load <1 x float>, ptr %i.bd, align 4
  %broadcast.splat373 = shufflevector <1 x float> %i.cr, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert349 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat350 = shufflevector <4 x float> %broadcast.splatinsert349, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat352 = shufflevector <4 x float> %broadcast.splatinsert351, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat354 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat356 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph347
  %index366 = phi i64 [ 0, %vector.ph347 ], [ %index.next375, %vector.body365 ] ; 4 uses
  %i.cs = shl i64 %index366, 4
  %next.gep367 = getelementptr i8, ptr %.279151.us.us.us.us.us.us.us.us, i64 %i.cs
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index366
  %wide.load368 = load <4 x float>, ptr %i.ct, align 4, !tbaa !67, !alias.scope !170
  %i.cu = fadd <4 x float> %wide.load368, %broadcast.splat358
  %i.cv = fmul <4 x float> %i.cu, %broadcast.splat370 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index366
  %wide.load371 = load <4 x float>, ptr %i.cw, align 4, !tbaa !67, !alias.scope !171
  %i.cx = fadd <4 x float> %wide.load371, %broadcast.splat360
  %i.cy = fmul <4 x float> %i.cx, %broadcast.splat373 ; 2 uses
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat354, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.da = fdiv <4 x float> %i.cz, %broadcast.splat362
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat356, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cy)
  %i.dc = fdiv <4 x float> %i.db, %broadcast.splat364
  %i.dd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat350, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.de = fdiv <4 x float> %i.dd, %broadcast.splat362
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat352, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cy)
  %i.dg = fdiv <4 x float> %i.df, %broadcast.splat364
  %i.dh = shufflevector <4 x float> %i.da, <4 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec374 = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec374, ptr %next.gep367, align 4, !tbaa !67, !alias.scope !172, !noalias !173
  %index.next375 = add nuw i64 %index366, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next375, %n.vec348
  br i1 %i.dj, label %middle.block376, label %vector.body365, !llvm.loop !145

middle.block376:                                  ; preds = %vector.body365
  br i1 %cmp.n377, label %._crit_edge.split.us.us.us.us.us.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader: ; preds = %vector.memcheck335, %.lr.ph.us.us.us.us.us.us.us.us, %middle.block376
  %indvars.iv227.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us ], [ %n.vec348, %middle.block376 ]
  %.380149.us.us.us.us.us.us.us.us.us.ph = phi ptr [ %.279151.us.us.us.us.us.us.us.us, %vector.memcheck335 ], [ %.279151.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us ], [ %i.cp, %middle.block376 ]
  %i.dk = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float %i.ci, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.ck, i64 3
  br label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us: ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ], [ %indvars.iv227.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader ] ; 3 uses
  %.380149.us.us.us.us.us.us.us.us.us = phi ptr [ %i.dz, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ], [ %.380149.us.us.us.us.us.us.us.us.us.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv227
  %i.do = load float, ptr %i.dn, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv227
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !67
  %i.dr = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dq, i64 1
  %i.dt = fadd <2 x float> %i.ds, %i.cg
  %i.du = load <2 x float>, ptr %i.bb, align 8, !tbaa !67
  %i.dv = fmul <2 x float> %i.dt, %i.du
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dw)
  %i.dy = fdiv <4 x float> %i.dx, %i.bh
  store <4 x float> %i.dy, ptr %.380149.us.us.us.us.us.us.us.us.us, align 4, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %.380149.us.us.us.us.us.us.us.us.us, i64 16 ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %i.bw
  br i1 %exitcond231.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us, !llvm.loop !146

._crit_edge.split.us.us.us.us.us.us.us.us.us:     ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us, %middle.block376
  %.lcssa = phi ptr [ %i.cp, %middle.block376 ], [ %i.dz, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ea = add nuw i64 %.074152.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %i.ea, %i.bp
  br i1 %exitcond233.not, label %._crit_edge154.split.us.split.us.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us.us.us, !llvm.loop !147

._crit_edge154.split.us.split.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us
  %i.eb = add nuw i64 %.075164.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.eb, %i.ax
  br i1 %exitcond234.not, label %._crit_edge.split.us.split.us.split.us.us.us.us, label %.preheader147.us.us.us.us.us.us, !llvm.loop !148

._crit_edge.split.us.split.us.split.us.us.us.us:  ; preds = %._crit_edge154.split.us.split.us.us.us.us.us.us.us
  %i.ec = add nuw i64 %.076177.us.us.us, 1        ; 2 uses
  %exitcond235.not = icmp eq i64 %i.ec, %i.au
  br i1 %exitcond235.not, label %._crit_edge178.split, label %.preheader148.us.us.us, !llvm.loop !149

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge.split.us.split.us.split.us187.us
  %.076177.us.us = phi i64 [ %i.fz, %._crit_edge.split.us.split.us.split.us187.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %.077176.us.us = phi ptr [ %.lcssa278, %._crit_edge.split.us.split.us.split.us187.us ], [ %i.at, %.preheader148.us.us.preheader ]
  %i.ed = uitofp i64 %.076177.us.us to float      ; 2 uses
  %broadcast.splatinsert306 = insertelement <4 x float> poison, float %i.ed, i64 0
  %broadcast.splat307 = shufflevector <4 x float> %broadcast.splatinsert306, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 1
  br label %.preheader147.us.us.us184.us

.preheader147.us.us.us184.us:                     ; preds = %._crit_edge154.split.us.split.us172.us.us.us, %.preheader148.us.us
  %.075164.us.us.us185.us = phi i64 [ 0, %.preheader148.us.us ], [ %i.fy, %._crit_edge154.split.us.split.us172.us.us.us ] ; 2 uses
  %.178163.us.us.us186.us = phi ptr [ %.077176.us.us, %.preheader148.us.us ], [ %.lcssa278, %._crit_edge154.split.us.split.us172.us.us.us ]
  %i.ef = uitofp i64 %.075164.us.us.us185.us to float ; 2 uses
  %broadcast.splatinsert304 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat305 = shufflevector <4 x float> %broadcast.splatinsert304, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> %i.ee, float %i.ef, i64 0
  br label %.lr.ph.us.us169.us.us.us

.lr.ph.us.us169.us.us.us:                         ; preds = %._crit_edge.split.us160.us.us.us.us, %.preheader147.us.us.us184.us
  %.074152.us.us170.us.us.us = phi i64 [ 0, %.preheader147.us.us.us184.us ], [ %i.fx, %._crit_edge.split.us160.us.us.us.us ] ; 3 uses
  %.279151.us.us171.us.us.us = phi ptr [ %.178163.us.us.us186.us, %.preheader147.us.us.us184.us ], [ %.lcssa278, %._crit_edge.split.us160.us.us.us.us ] ; 8 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.074152.us.us170.us.us.us
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !67 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.074152.us.us170.us.us.us
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !67 ; 3 uses
  %i.el = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1
  %i.en = fneg <2 x float> %i.em                  ; 2 uses
  br i1 %min.iters.check, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us169.us.us.us
  %i.eo = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.ca ; 3 uses
  %bound0 = icmp ult ptr %.279151.us.us171.us.us.us, %i.br
  %bound1 = icmp ult ptr %i.bs, %i.eo
  %found.conflict = and i1 %bound0, %bound1
  %bound0291 = icmp ult ptr %.279151.us.us171.us.us.us, %scevgep331
  %bound1292 = icmp ult ptr %i.bb, %i.eo
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx = or i1 %found.conflict, %found.conflict293
  %bound0294 = icmp ult ptr %.279151.us.us171.us.us.us, %scevgep330
  %bound1295 = icmp ult ptr %i.bx, %i.eo
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx, %found.conflict296
  br i1 %conflict.rdx297, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ep = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.cb ; 2 uses
  %i.eq = load <1 x float>, ptr %i.bb, align 8
  %broadcast.splat309 = shufflevector <1 x float> %i.eq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.er = load <1 x float>, ptr %i.bd, align 4
  %broadcast.splat312 = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splatinsert298 = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.es = shufflevector <2 x float> %i.en, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.et = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert298, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.eu
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index
  %wide.load = load <4 x float>, ptr %i.ev, align 4, !tbaa !67, !alias.scope !174
  %i.ew = fadd <4 x float> %wide.load, %broadcast.splat305
  %i.ex = fmul <4 x float> %i.ew, %broadcast.splat309 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index
  %wide.load310 = load <4 x float>, ptr %i.ey, align 4, !tbaa !67, !alias.scope !175
  %i.ez = fadd <4 x float> %wide.load310, %broadcast.splat307
  %i.fa = fmul <4 x float> %i.ez, %broadcast.splat312 ; 2 uses
  %i.fb = shufflevector <4 x float> %i.ex, <4 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.es, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fb)
  %i.fd = shufflevector <4 x float> %i.ex, <4 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fe = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.et, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fd)
  %i.ff = fadd <8 x float> %i.fe, splat (float -1.000000e+00)
  %interleaved.vec = shufflevector <8 x float> %i.fc, <8 x float> %i.ff, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !67, !alias.scope !176, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us160.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader: ; preds = %vector.memcheck, %.lr.ph.us.us169.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.us169.us.us.us ], [ %n.vec, %middle.block ]
  %.380149.us159.us.us.us.us.ph = phi ptr [ %.279151.us.us171.us.us.us, %vector.memcheck ], [ %.279151.us.us171.us.us.us, %.lr.ph.us.us169.us.us.us ], [ %i.ep, %middle.block ]
  %i.fh = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.ei, i64 2
  %i.fj = insertelement <4 x float> %i.fi, float %i.ek, i64 3
  br label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us: ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ], [ %indvars.iv.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader ] ; 3 uses
  %.380149.us159.us.us.us.us = phi ptr [ %i.fw, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ], [ %.380149.us159.us.us.us.us.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !67
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !67
  %i.fo = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fn, i64 1
  %i.fq = fadd <2 x float> %i.fp, %i.eg
  %i.fr = load <2 x float>, ptr %i.bb, align 8, !tbaa !67
  %i.fs = fmul <2 x float> %i.fq, %i.fr
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ft) ; 2 uses
  %i.fv = fadd <4 x float> %i.fu, <float poison, float poison, float -1.000000e+00, float -1.000000e+00>
  %18 = shufflevector <4 x float> %i.fu, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %18, ptr %.380149.us159.us.us.us.us, align 4, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %.380149.us159.us.us.us.us, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %._crit_edge.split.us160.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us, !llvm.loop !156

._crit_edge.split.us160.us.us.us.us:              ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us, %middle.block
  %.lcssa278 = phi ptr [ %i.ep, %middle.block ], [ %i.fw, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ] ; 3 uses
  %i.fx = add nuw i64 %.074152.us.us170.us.us.us, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %i.fx, %i.bp
  br i1 %exitcond224.not, label %._crit_edge154.split.us.split.us172.us.us.us, label %.lr.ph.us.us169.us.us.us, !llvm.loop !147

._crit_edge154.split.us.split.us172.us.us.us:     ; preds = %._crit_edge.split.us160.us.us.us.us
  %i.fy = add nuw i64 %.075164.us.us.us185.us, 1  ; 2 uses
  %exitcond225.not = icmp eq i64 %i.fy, %i.ax
  br i1 %exitcond225.not, label %._crit_edge.split.us.split.us.split.us187.us, label %.preheader147.us.us.us184.us, !llvm.loop !148

._crit_edge.split.us.split.us.split.us187.us:     ; preds = %._crit_edge154.split.us.split.us172.us.us.us
  %i.fz = add nuw i64 %.076177.us.us, 1           ; 2 uses
  %exitcond226.not = icmp eq i64 %i.fz, %i.au
  br i1 %exitcond226.not, label %._crit_edge178.split, label %.preheader148.us.us, !llvm.loop !149

._crit_edge178.split:                             ; preds = %._crit_edge.split.us.split.us.split.us187.us, %._crit_edge.split.us.split.us.split.us.us.us.us, %.preheader148.lr.ph.split.split.us, %.preheader148.lr.ph.split, %.preheader148.lr.ph, %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !56, !range !76, !noundef !77
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.x, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit

.body118:                                         ; preds = %bb.h, %bb.g, %bb.p, %bb.t
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %._crit_edge178.split
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !69
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = shl i32 %i.af, 2
  %.tr = mul i32 %i.gh, %i.ah
  %i.gi = mul i32 %.tr, %i.gg                     ; 3 uses
  %i.gj = sext i32 %i.gi to i64                   ; 3 uses
  %.not212 = icmp eq i32 %i.gi, 0
  br i1 %.not212, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %min.iters.check381 = icmp ult i32 %i.gi, 8
  br i1 %min.iters.check381, label %.lr.ph.preheader435, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.preheader
  %n.vec383 = and i64 %i.gj, -8                   ; 3 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index385 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %wide.load386 = load <4 x float>, ptr %i.gk, align 4, !tbaa !67 ; 2 uses
  %wide.load387 = load <4 x float>, ptr %i.gl, align 4, !tbaa !67 ; 2 uses
  %i.gm = fcmp olt <4 x float> %wide.load386, zeroinitializer
  %i.gn = fcmp olt <4 x float> %wide.load387, zeroinitializer
  %i.go = select <4 x i1> %i.gm, <4 x float> zeroinitializer, <4 x float> %wide.load386 ; 2 uses
  %i.gp = select <4 x i1> %i.gn, <4 x float> zeroinitializer, <4 x float> %wide.load387 ; 2 uses
  %i.gq = fcmp ogt <4 x float> %i.go, splat (float 1.000000e+00)
  %i.gr = fcmp ogt <4 x float> %i.gp, splat (float 1.000000e+00)
  %i.gs = select <4 x i1> %i.gq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.go
  %i.gt = select <4 x i1> %i.gr, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gp
  store <4 x float> %i.gs, ptr %i.gk, align 4, !tbaa !67
  store <4 x float> %i.gt, ptr %i.gl, align 4, !tbaa !67
  %index.next388 = add nuw i64 %index385, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.gu, label %middle.block389, label %vector.body384, !llvm.loop !157

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %n.vec383, %i.gj
  br i1 %cmp.n390, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader435

.lr.ph.preheader435:                              ; preds = %.lr.ph.preheader, %middle.block389
  %.059193.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec383, %middle.block389 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader435, %.lr.ph
  %.059193 = phi i64 [ %i.gz, %.lr.ph ], [ %.059193.ph, %.lr.ph.preheader435 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.059193 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !67 ; 2 uses
  %i.gx = fcmp olt float %i.gw, 0.000000e+00
  %.sroa.speculated140 = select i1 %i.gx, float 0.000000e+00, float %i.gw ; 2 uses
  %i.gy = fcmp ogt float %.sroa.speculated140, 1.000000e+00
  %.sroa.speculated = select i1 %i.gy, float 1.000000e+00, float %.sroa.speculated140
  store float %.sroa.speculated, ptr %i.gv, align 4, !tbaa !67
  %i.gz = add nuw i64 %.059193, 1                 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.gz, %i.gj
  br i1 %exitcond237.not, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph, !llvm.loop !158

_ZN2cv3Mat3ptrIfEEPT_ii.exit:                     ; preds = %.lr.ph, %middle.block389, %bb.x, %._crit_edge178.split
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !85
  %i.hc = icmp slt i32 %i.hb, 2
  %.pn143.in.v = select i1 %i.hc, i64 128, i64 136
  %.pn143.in = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pn143.in.v
  %.pn143 = load i64, ptr %.pn143.in, align 8, !tbaa !18 ; 5 uses
  %.0.i = getelementptr i8, ptr %i.at, i64 %.pn143 ; 16 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !65
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !66 ; 10 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp eq i64 %i.hj, 4
  br i1 %i.hk, label %bb.y, label %.preheader146

.preheader146:                                    ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit
  br i1 %.not208, label %.loopexit, label %.preheader145.lr.ph

.preheader145.lr.ph:                              ; preds = %.preheader146
  %i.hl = sext i32 %i.af to i64
  %.not214 = icmp eq i32 %i.af, 0
  br i1 %.not214, label %.loopexit, label %.preheader145.lr.ph.split

.preheader145.lr.ph.split:                        ; preds = %.preheader145.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !69 ; 9 uses
  %.not215 = icmp eq i64 %i.hn, 0
  br i1 %.not215, label %.loopexit, label %.preheader145.us.preheader

.preheader145.us.preheader:                       ; preds = %.preheader145.lr.ph.split
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 12 ; 4 uses
  %i.hr = add i64 %i.hn, -1                       ; 2 uses
  %i.hs = getelementptr i8, ptr %i.at, i64 %.pn143
  %scevgep392 = getelementptr i8, ptr %i.hs, i64 4
  %i.ht = getelementptr i8, ptr %i.at, i64 %.pn143
  %scevgep394 = getelementptr i8, ptr %i.ht, i64 8
  %i.hu = getelementptr i8, ptr %i.at, i64 %.pn143
  %scevgep396 = getelementptr i8, ptr %i.hu, i64 12
  %scevgep407 = getelementptr i8, ptr %i.hg, i64 16
  %i.hv = shl i64 %i.hn, 4
  %i.hw = getelementptr i8, ptr %i.at, i64 %.pn143
  %scevgep408 = getelementptr i8, ptr %i.hw, i64 %i.hv
  %min.iters.check410 = icmp ult i64 %i.hn, 18
  %mul.result = shl i64 %i.hr, 4                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.hr, 1152921504606846975
  %n.vec416 = and i64 %i.hn, 2305843009213693948  ; 4 uses
  %i.hx = shl nuw nsw i64 %n.vec416, 2
  %cmp.n431 = icmp eq i64 %i.hn, %n.vec416
  %xtraiter = and i64 %i.hn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader145.us

.preheader145.us:                                 ; preds = %.preheader145.us.preheader, %._crit_edge201.split.us.us
  %.057205.us = phi i64 [ %i.kj, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  %.058204.us = phi i64 [ %indvars.iv.next242.3.lcssa, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  br label %.preheader144.us.us

.preheader144.us.us:                              ; preds = %._crit_edge.us.us, %.preheader145.us
  %.056200.us.us = phi i64 [ 0, %.preheader145.us ], [ %i.ki, %._crit_edge.us.us ]
  %.1199.us.us = phi i64 [ %.058204.us, %.preheader145.us ], [ %indvars.iv.next242.3.lcssa, %._crit_edge.us.us ] ; 7 uses
  br i1 %min.iters.check410, label %.preheader.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader144.us.us
  %i.hy = shl i64 %.1199.us.us, 2                 ; 3 uses
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %i.hy ; 2 uses
  %i.hz = getelementptr i8, ptr %scevgep393, i64 %mul.result
  %i.ia = icmp ult ptr %i.hz, %scevgep393
  %scevgep395 = getelementptr i8, ptr %scevgep394, i64 %i.hy ; 2 uses
  %i.ib = getelementptr i8, ptr %scevgep395, i64 %mul.result
  %i.ic = icmp ult ptr %i.ib, %scevgep395
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.hy ; 2 uses
  %i.id = getelementptr i8, ptr %scevgep397, i64 %mul.result
  %i.ie = icmp ult ptr %i.id, %scevgep397
  %i.if = or i1 %i.ie, %mul.overflow
  %i.ig = or i1 %i.ic, %i.ia
  %i.ih = or i1 %i.ig, %i.if
  br i1 %i.ih, label %.preheader.us.us.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %vector.scevcheck
  %i.ii = shl i64 %.1199.us.us, 2                 ; 2 uses
  %i.ij = getelementptr i8, ptr %.0.i, i64 %i.ii
  %i.ik = getelementptr i8, ptr %scevgep408, i64 %i.ii
  %bound0412 = icmp ult ptr %i.ij, %scevgep407
  %bound1413 = icmp ult ptr %i.hg, %i.ik
  %found.conflict414 = and i1 %bound0412, %bound1413
  br i1 %found.conflict414, label %.preheader.us.us.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck411
  %i.il = add i64 %.1199.us.us, %i.hx             ; 2 uses
  %i.im = load float, ptr %i.hg, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert419 = insertelement <2 x float> poison, float %i.im, i64 0
  %i.in = load float, ptr %i.ho, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert421 = insertelement <2 x float> poison, float %i.in, i64 0
  %i.io = load float, ptr %i.hp, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert423 = insertelement <2 x float> poison, float %i.io, i64 0
  %i.ip = load float, ptr %i.hq, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert425 = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.iq = shufflevector <2 x float> %broadcast.splatinsert419, <2 x float> %broadcast.splatinsert421, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ir = shufflevector <2 x float> %broadcast.splatinsert423, <2 x float> %broadcast.splatinsert425, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %interleaved.vec427 = shufflevector <4 x float> %i.iq, <4 x float> %i.ir, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7> ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
end_hunk_0
