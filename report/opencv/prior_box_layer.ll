Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/prior_box_layer?download=true
inline.NumInlined: 1235
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn17PriorBoxLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 363
  %i.bg = sitofp <2 x i32> %i.ax to <2 x float>   ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br i1 %.not209, label %._crit_edge178.split, label %.preheader148.lr.ph.split

.preheader148.lr.ph.split:                        ; preds = %.preheader148.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !66 ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %.not210 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not210, label %._crit_edge178.split, label %.preheader148.lr.ph.split.split.us

.preheader148.lr.ph.split.split.us:               ; preds = %.preheader148.lr.ph.split
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 4 uses
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 8 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = ashr exact i64 %i.bw, 2                 ; 8 uses
  %.not211 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not211, label %._crit_edge178.split, label %.preheader148.lr.ph.split.split.us.split.us

.preheader148.lr.ph.split.split.us.split.us:      ; preds = %.preheader148.lr.ph.split.split.us
  %i.by = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 7 uses
  %i.bz = load i8, ptr %i.bf, align 1, !tbaa !57, !range !78, !noundef !79
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = shl i64 %i.bw, 2                        ; 2 uses
  %scevgep308 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %scevgep309 = getelementptr i8, ptr %i.by, i64 %i.bw ; 2 uses
  br i1 %i.ca, label %.preheader148.us.us.us.preheader, label %.preheader148.us.us.preheader

.preheader148.us.us.preheader:                    ; preds = %.preheader148.lr.ph.split.split.us.split.us
  %min.iters.check = icmp ult i64 %i.bx, 4
  %n.vec = and i64 %i.bx, -4                      ; 4 uses
  %i.cc = shl i64 %n.vec, 4
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br label %.preheader148.us.us

.preheader148.us.us.us.preheader:                 ; preds = %.preheader148.lr.ph.split.split.us.split.us
  %min.iters.check322 = icmp ult i64 %i.bx, 4
  %n.vec324 = and i64 %i.bx, -4                   ; 4 uses
  %i.cd = shl i64 %n.vec324, 4
  %broadcast.splat338 = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat340 = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n353 = icmp eq i64 %i.bx, %n.vec324
  br label %.preheader148.us.us.us

.preheader148.us.us.us:                           ; preds = %.preheader148.us.us.us.preheader, %._crit_edge.split.us.split.us.split.us.us.us.us
  %.076177.us.us.us = phi i64 [ %i.ec, %._crit_edge.split.us.split.us.split.us.us.us.us ], [ 0, %.preheader148.us.us.us.preheader ] ; 2 uses
  %.077176.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.split.us.us.us.us ], [ %i.au, %.preheader148.us.us.us.preheader ]
  %i.ce = uitofp i64 %.076177.us.us.us to float   ; 2 uses
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 1
  br label %.preheader147.us.us.us.us.us.us

.preheader147.us.us.us.us.us.us:                  ; preds = %._crit_edge154.split.us.split.us.us.us.us.us.us.us, %.preheader148.us.us.us
  %.075164.us.us.us.us.us.us = phi i64 [ 0, %.preheader148.us.us.us ], [ %i.eb, %._crit_edge154.split.us.split.us.us.us.us.us.us.us ] ; 2 uses
  %.178163.us.us.us.us.us.us = phi ptr [ %.077176.us.us.us, %.preheader148.us.us.us ], [ %.lcssa, %._crit_edge154.split.us.split.us.us.us.us.us.us.us ]
  %i.cg = uitofp i64 %.075164.us.us.us.us.us.us to float ; 2 uses
  %broadcast.splatinsert333 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat334 = shufflevector <4 x float> %broadcast.splatinsert333, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> %i.cf, float %i.cg, i64 0
  br label %.lr.ph.us.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us.us:                   ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us, %.preheader147.us.us.us.us.us.us
  %.074152.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader147.us.us.us.us.us.us ], [ %i.ea, %._crit_edge.split.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.279151.us.us.us.us.us.us.us.us = phi ptr [ %.178163.us.us.us.us.us.us, %.preheader147.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.split.us.us.us.us.us.us.us.us.us ] ; 8 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.074152.us.us.us.us.us.us.us.us
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !67 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.074152.us.us.us.us.us.us.us.us
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !67 ; 3 uses
  %i.cm = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = fneg <2 x float> %i.cn                  ; 3 uses
  br i1 %min.iters.check322, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph.us.us.us.us.us.us.us.us
  %scevgep306 = getelementptr i8, ptr %.279151.us.us.us.us.us.us.us.us, i64 %i.cb ; 3 uses
  %bound0310 = icmp ult ptr %.279151.us.us.us.us.us.us.us.us, %i.bs
  %bound1311 = icmp ult ptr %i.bt, %scevgep306
  %found.conflict312 = and i1 %bound0310, %bound1311
  %bound0313 = icmp ult ptr %.279151.us.us.us.us.us.us.us.us, %scevgep308
  %bound1314 = icmp ult ptr %i.bc, %scevgep306
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx316 = or i1 %found.conflict312, %found.conflict315
  %bound0317 = icmp ult ptr %.279151.us.us.us.us.us.us.us.us, %scevgep309
  %bound1318 = icmp ult ptr %i.by, %scevgep306
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx316, %found.conflict319
  br i1 %conflict.rdx320, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck305
  %i.cp = getelementptr i8, ptr %.279151.us.us.us.us.us.us.us.us, i64 %i.cd ; 2 uses
  %i.cq = load float, ptr %i.bc, align 8, !tbaa !71, !alias.scope !170
  %broadcast.splatinsert345 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat346 = shufflevector <4 x float> %broadcast.splatinsert345, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = load float, ptr %i.be, align 4, !tbaa !70, !alias.scope !170
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.cr, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.cj, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat330 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat332 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph323
  %index342 = phi i64 [ 0, %vector.ph323 ], [ %index.next351, %vector.body341 ] ; 4 uses
  %i.cs = shl i64 %index342, 4
  %next.gep343 = getelementptr i8, ptr %.279151.us.us.us.us.us.us.us.us, i64 %i.cs
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index342
  %wide.load344 = load <4 x float>, ptr %i.ct, align 4, !tbaa !67, !alias.scope !171
  %i.cu = fadd <4 x float> %wide.load344, %broadcast.splat334
  %i.cv = fmul <4 x float> %i.cu, %broadcast.splat346 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index342
  %wide.load347 = load <4 x float>, ptr %i.cw, align 4, !tbaa !67, !alias.scope !172
  %i.cx = fadd <4 x float> %wide.load347, %broadcast.splat336
  %i.cy = fmul <4 x float> %i.cx, %broadcast.splat349 ; 2 uses
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.da = fdiv <4 x float> %i.cz, %broadcast.splat338
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat332, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cy)
  %i.dc = fdiv <4 x float> %i.db, %broadcast.splat340
  %i.dd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.de = fdiv <4 x float> %i.dd, %broadcast.splat338
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cy)
  %i.dg = fdiv <4 x float> %i.df, %broadcast.splat340
  %i.dh = shufflevector <4 x float> %i.da, <4 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec350 = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec350, ptr %next.gep343, align 4, !tbaa !67, !alias.scope !173, !noalias !174
  %index.next351 = add nuw i64 %index342, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next351, %n.vec324
  br i1 %i.dj, label %middle.block352, label %vector.body341, !llvm.loop !145

middle.block352:                                  ; preds = %vector.body341
  br i1 %cmp.n353, label %._crit_edge.split.us.us.us.us.us.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader: ; preds = %vector.memcheck305, %.lr.ph.us.us.us.us.us.us.us.us, %middle.block352
  %indvars.iv227.ph = phi i64 [ 0, %vector.memcheck305 ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us ], [ %n.vec324, %middle.block352 ]
  %.380149.us.us.us.us.us.us.us.us.us.ph = phi ptr [ %.279151.us.us.us.us.us.us.us.us, %vector.memcheck305 ], [ %.279151.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us ], [ %i.cp, %middle.block352 ]
  %i.dk = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float %i.cj, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.cl, i64 3
  br label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us: ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ], [ %indvars.iv227.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader ] ; 3 uses
  %.380149.us.us.us.us.us.us.us.us.us = phi ptr [ %i.dz, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ], [ %.380149.us.us.us.us.us.us.us.us.us.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv227
  %i.do = load float, ptr %i.dn, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv227
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !67
  %i.dr = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dq, i64 1
  %i.dt = fadd <2 x float> %i.ds, %i.ch
  %i.du = load <2 x float>, ptr %i.bc, align 8, !tbaa !67
  %i.dv = fmul <2 x float> %i.dt, %i.du
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dw)
  %i.dy = fdiv <4 x float> %i.dx, %i.bi
  store <4 x float> %i.dy, ptr %.380149.us.us.us.us.us.us.us.us.us, align 4, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %.380149.us.us.us.us.us.us.us.us.us, i64 16 ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %i.bx
  br i1 %exitcond231.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us, !llvm.loop !146

._crit_edge.split.us.us.us.us.us.us.us.us.us:     ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us, %middle.block352
  %.lcssa = phi ptr [ %i.cp, %middle.block352 ], [ %i.dz, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ea = add nuw i64 %.074152.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %i.ea, %i.bq
  br i1 %exitcond233.not, label %._crit_edge154.split.us.split.us.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us.us.us, !llvm.loop !147

._crit_edge154.split.us.split.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us
  %i.eb = add nuw i64 %.075164.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.eb, %i.ay
  br i1 %exitcond234.not, label %._crit_edge.split.us.split.us.split.us.us.us.us, label %.preheader147.us.us.us.us.us.us, !llvm.loop !148

._crit_edge.split.us.split.us.split.us.us.us.us:  ; preds = %._crit_edge154.split.us.split.us.us.us.us.us.us.us
  %i.ec = add nuw i64 %.076177.us.us.us, 1        ; 2 uses
  %exitcond235.not = icmp eq i64 %i.ec, %i.av
  br i1 %exitcond235.not, label %._crit_edge178.split, label %.preheader148.us.us.us, !llvm.loop !149

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge.split.us.split.us.split.us186.us
  %.076177.us.us = phi i64 [ %i.fx, %._crit_edge.split.us.split.us.split.us186.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %.077176.us.us = phi ptr [ %.lcssa278, %._crit_edge.split.us.split.us.split.us186.us ], [ %i.au, %.preheader148.us.us.preheader ]
  %i.ed = uitofp i64 %.076177.us.us to float      ; 2 uses
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %i.ed, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 1
  br label %.preheader147.us.us.us183.us

.preheader147.us.us.us183.us:                     ; preds = %.preheader148.us.us, %._crit_edge154.split.us.split.us171.us.us.us
  %.075164.us.us.us184.us = phi i64 [ 0, %.preheader148.us.us ], [ %i.fw, %._crit_edge154.split.us.split.us171.us.us.us ] ; 2 uses
  %.178163.us.us.us185.us = phi ptr [ %.077176.us.us, %.preheader148.us.us ], [ %.lcssa278, %._crit_edge154.split.us.split.us171.us.us.us ]
  %i.ef = uitofp i64 %.075164.us.us.us184.us to float ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> %i.ee, float %i.ef, i64 0
  br label %.lr.ph.us.us168.us.us.us

.lr.ph.us.us168.us.us.us:                         ; preds = %._crit_edge.split.us159.us.us.us.us, %.preheader147.us.us.us183.us
  %.074152.us.us169.us.us.us = phi i64 [ 0, %.preheader147.us.us.us183.us ], [ %i.fv, %._crit_edge.split.us159.us.us.us.us ] ; 3 uses
  %.279151.us.us170.us.us.us = phi ptr [ %.178163.us.us.us185.us, %.preheader147.us.us.us183.us ], [ %.lcssa278, %._crit_edge.split.us159.us.us.us.us ] ; 8 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.074152.us.us169.us.us.us
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !67 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.074152.us.us169.us.us.us
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !67 ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1 ; 2 uses
  %i.en = fneg <2 x float> %i.em                  ; 2 uses
  br i1 %min.iters.check, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us168.us.us.us
  %scevgep = getelementptr i8, ptr %.279151.us.us170.us.us.us, i64 %i.cb ; 3 uses
  %bound0 = icmp ult ptr %.279151.us.us170.us.us.us, %i.bs
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0282 = icmp ult ptr %.279151.us.us170.us.us.us, %scevgep308
  %bound1283 = icmp ult ptr %i.bc, %scevgep
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx = or i1 %found.conflict, %found.conflict284
  %bound0285 = icmp ult ptr %.279151.us.us170.us.us.us, %scevgep309
  %bound1286 = icmp ult ptr %i.by, %scevgep
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx, %found.conflict287
  br i1 %conflict.rdx288, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eo = getelementptr i8, ptr %.279151.us.us170.us.us.us, i64 %i.cc ; 2 uses
  %i.ep = load float, ptr %i.bc, align 8, !tbaa !71, !alias.scope !175
  %broadcast.splatinsert299 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat300 = shufflevector <4 x float> %broadcast.splatinsert299, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = load float, ptr %i.be, align 4, !tbaa !70, !alias.scope !175
  %broadcast.splatinsert302 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat303 = shufflevector <4 x float> %broadcast.splatinsert302, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.es = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert289, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.et = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.279151.us.us170.us.us.us, i64 %i.et
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index
  %wide.load = load <4 x float>, ptr %i.eu, align 4, !tbaa !67, !alias.scope !176
  %i.ev = fadd <4 x float> %wide.load, %broadcast.splat296
  %i.ew = fmul <4 x float> %i.ev, %broadcast.splat300 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index
  %wide.load301 = load <4 x float>, ptr %i.ex, align 4, !tbaa !67, !alias.scope !177
  %i.ey = fadd <4 x float> %wide.load301, %broadcast.splat298
  %i.ez = fmul <4 x float> %i.ey, %broadcast.splat303 ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ew, <4 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.er, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fa)
  %i.fc = shufflevector <4 x float> %i.ew, <4 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.es, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fc)
  %i.fe = fadd <8 x float> %i.fd, splat (float -1.000000e+00)
  %interleaved.vec = shufflevector <8 x float> %i.fb, <8 x float> %i.fe, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !67, !alias.scope !178, !noalias !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us159.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader: ; preds = %vector.memcheck, %.lr.ph.us.us168.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.us168.us.us.us ], [ %n.vec, %middle.block ]
  %.380149.us158.us.us.us.us.ph = phi ptr [ %.279151.us.us170.us.us.us, %vector.memcheck ], [ %.279151.us.us170.us.us.us, %.lr.ph.us.us168.us.us.us ], [ %i.eo, %middle.block ]
  %i.fg = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float poison, float -1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us: ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us ], [ %indvars.iv.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader ] ; 3 uses
  %.380149.us158.us.us.us.us = phi ptr [ %i.fu, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us ], [ %.380149.us158.us.us.us.us.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !67
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !67
  %i.fm = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fl, i64 1
  %i.fo = fadd <2 x float> %i.fn, %i.eg
  %i.fp = load <2 x float>, ptr %i.bc, align 8, !tbaa !67
  %i.fq = fmul <2 x float> %i.fo, %i.fp           ; 2 uses
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> splat (float 5.000000e-01), <2 x float> %i.fq)
  %i.fs = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ft = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+00>, <4 x float> %i.fs)
  store <4 x float> %i.ft, ptr %.380149.us158.us.us.us.us, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %.380149.us158.us.us.us.us, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge.split.us159.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us, !llvm.loop !156

._crit_edge.split.us159.us.us.us.us:              ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us, %middle.block
  %.lcssa278 = phi ptr [ %i.eo, %middle.block ], [ %i.fu, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us156.us.us.us.us ] ; 3 uses
  %i.fv = add nuw i64 %.074152.us.us169.us.us.us, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %i.fv, %i.bq
  br i1 %exitcond224.not, label %._crit_edge154.split.us.split.us171.us.us.us, label %.lr.ph.us.us168.us.us.us, !llvm.loop !147

._crit_edge154.split.us.split.us171.us.us.us:     ; preds = %._crit_edge.split.us159.us.us.us.us
  %i.fw = add nuw i64 %.075164.us.us.us184.us, 1  ; 2 uses
  %exitcond225.not = icmp eq i64 %i.fw, %i.ay
  br i1 %exitcond225.not, label %._crit_edge.split.us.split.us.split.us186.us, label %.preheader147.us.us.us183.us, !llvm.loop !148

._crit_edge.split.us.split.us.split.us186.us:     ; preds = %._crit_edge154.split.us.split.us171.us.us.us
  %i.fx = add nuw i64 %.076177.us.us, 1           ; 2 uses
  %exitcond226.not = icmp eq i64 %i.fx, %i.av
  br i1 %exitcond226.not, label %._crit_edge178.split, label %.preheader148.us.us, !llvm.loop !149

._crit_edge178.split:                             ; preds = %._crit_edge.split.us.split.us.split.us186.us, %._crit_edge.split.us.split.us.split.us.us.us.us, %.preheader148.lr.ph.split.split.us, %.preheader148.lr.ph.split, %.preheader148.lr.ph, %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !56, !range !78, !noundef !79
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.aa, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit

bb.y:                                             ; preds = %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.u
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %._crit_edge178.split
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !69
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = shl i32 %i.ag, 2
  %.tr = mul i32 %i.gg, %i.ai
  %i.gh = mul i32 %.tr, %i.gf                     ; 3 uses
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  %.not212 = icmp eq i32 %i.gh, 0
  br i1 %.not212, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %min.iters.check357 = icmp ult i32 %i.gh, 8
  br i1 %min.iters.check357, label %.lr.ph.preheader405, label %vector.ph358

vector.ph358:                                     ; preds = %.lr.ph.preheader
  %n.vec359 = and i64 %i.gi, -8                   ; 3 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next364, %vector.body360 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index361 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %wide.load362 = load <4 x float>, ptr %i.gj, align 4, !tbaa !67 ; 2 uses
  %wide.load363 = load <4 x float>, ptr %i.gk, align 4, !tbaa !67 ; 2 uses
  %i.gl = fcmp olt <4 x float> %wide.load362, zeroinitializer
  %i.gm = fcmp olt <4 x float> %wide.load363, zeroinitializer
  %i.gn = select <4 x i1> %i.gl, <4 x float> zeroinitializer, <4 x float> %wide.load362 ; 2 uses
  %i.go = select <4 x i1> %i.gm, <4 x float> zeroinitializer, <4 x float> %wide.load363 ; 2 uses
  %i.gp = fcmp ogt <4 x float> %i.gn, splat (float 1.000000e+00)
  %i.gq = fcmp ogt <4 x float> %i.go, splat (float 1.000000e+00)
  %i.gr = select <4 x i1> %i.gp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gn
  %i.gs = select <4 x i1> %i.gq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.go
  store <4 x float> %i.gr, ptr %i.gj, align 4, !tbaa !67
  store <4 x float> %i.gs, ptr %i.gk, align 4, !tbaa !67
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.gt, label %middle.block365, label %vector.body360, !llvm.loop !157

middle.block365:                                  ; preds = %vector.body360
  %cmp.n366 = icmp eq i64 %n.vec359, %i.gi
  br i1 %cmp.n366, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader405

.lr.ph.preheader405:                              ; preds = %.lr.ph.preheader, %middle.block365
  %.059193.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec359, %middle.block365 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader405, %.lr.ph
  %.059193 = phi i64 [ %i.gy, %.lr.ph ], [ %.059193.ph, %.lr.ph.preheader405 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.059193 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !67 ; 2 uses
  %i.gw = fcmp olt float %i.gv, 0.000000e+00
  %.sroa.speculated140 = select i1 %i.gw, float 0.000000e+00, float %i.gv ; 2 uses
  %i.gx = fcmp ogt float %.sroa.speculated140, 1.000000e+00
  %.sroa.speculated = select i1 %i.gx, float 1.000000e+00, float %.sroa.speculated140
  store float %.sroa.speculated, ptr %i.gu, align 4, !tbaa !67
  %i.gy = add nuw i64 %.059193, 1                 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.gy, %i.gi
  br i1 %exitcond237.not, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph, !llvm.loop !158

_ZN2cv3Mat3ptrIfEEPT_ii.exit:                     ; preds = %.lr.ph, %middle.block365, %bb.aa, %._crit_edge178.split
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !87
  %i.hb = icmp slt i32 %i.ha, 2
  %.pn143.in.v = select i1 %i.hb, i64 128, i64 136
end_hunk_0
