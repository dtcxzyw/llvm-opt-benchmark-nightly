Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/prior_box_layer?download=true
inline.NumInlined: 1235
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn17PriorBoxLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
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
  %i.bz = load i8, ptr %i.bf, align 1, !tbaa !57, !range !76, !noundef !77
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
  %i.cq = load <1 x float>, ptr %i.bc, align 8
  %broadcast.splat346 = shufflevector <1 x float> %i.cq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = load <1 x float>, ptr %i.be, align 4
  %broadcast.splat349 = shufflevector <1 x float> %i.cr, <1 x float> poison, <4 x i32> zeroinitializer
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
  %wide.load344 = load <4 x float>, ptr %i.ct, align 4, !tbaa !67, !alias.scope !170
  %i.cu = fadd <4 x float> %wide.load344, %broadcast.splat334
  %i.cv = fmul <4 x float> %i.cu, %broadcast.splat346 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index342
  %wide.load347 = load <4 x float>, ptr %i.cw, align 4, !tbaa !67, !alias.scope !171
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
  store <16 x float> %interleaved.vec350, ptr %next.gep343, align 4, !tbaa !67, !alias.scope !172, !noalias !173
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

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge.split.us.split.us.split.us187.us
  %.076177.us.us = phi i64 [ %i.ft, %._crit_edge.split.us.split.us.split.us187.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %.077176.us.us = phi ptr [ %.lcssa278, %._crit_edge.split.us.split.us.split.us187.us ], [ %i.au, %.preheader148.us.us.preheader ]
  %i.ed = uitofp i64 %.076177.us.us to float      ; 2 uses
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %i.ed, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 1
  br label %.preheader147.us.us.us184.us

.preheader147.us.us.us184.us:                     ; preds = %._crit_edge154.split.us.split.us172.us.us.us, %.preheader148.us.us
  %.075164.us.us.us185.us = phi i64 [ 0, %.preheader148.us.us ], [ %i.fs, %._crit_edge154.split.us.split.us172.us.us.us ] ; 2 uses
  %.178163.us.us.us186.us = phi ptr [ %.077176.us.us, %.preheader148.us.us ], [ %.lcssa278, %._crit_edge154.split.us.split.us172.us.us.us ]
  %i.ef = uitofp i64 %.075164.us.us.us185.us to float ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> %i.ee, float %i.ef, i64 0
  br label %.lr.ph.us.us169.us.us.us

.lr.ph.us.us169.us.us.us:                         ; preds = %._crit_edge.split.us160.us.us.us.us, %.preheader147.us.us.us184.us
  %.074152.us.us170.us.us.us = phi i64 [ 0, %.preheader147.us.us.us184.us ], [ %i.fr, %._crit_edge.split.us160.us.us.us.us ] ; 3 uses
  %.279151.us.us171.us.us.us = phi ptr [ %.178163.us.us.us186.us, %.preheader147.us.us.us184.us ], [ %.lcssa278, %._crit_edge.split.us160.us.us.us.us ] ; 8 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.074152.us.us170.us.us.us
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !67 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.074152.us.us170.us.us.us
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !67 ; 3 uses
  %i.el = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1
  %i.en = fneg <2 x float> %i.em                  ; 2 uses
  br i1 %min.iters.check, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us169.us.us.us
  %scevgep = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.cb ; 3 uses
  %bound0 = icmp ult ptr %.279151.us.us171.us.us.us, %i.bs
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0282 = icmp ult ptr %.279151.us.us171.us.us.us, %scevgep308
  %bound1283 = icmp ult ptr %i.bc, %scevgep
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx = or i1 %found.conflict, %found.conflict284
  %bound0285 = icmp ult ptr %.279151.us.us171.us.us.us, %scevgep309
  %bound1286 = icmp ult ptr %i.by, %scevgep
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx, %found.conflict287
  br i1 %conflict.rdx288, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eo = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.cc ; 2 uses
  %i.ep = load <1 x float>, ptr %i.bc, align 8
  %broadcast.splat300 = shufflevector <1 x float> %i.ep, <1 x float> poison, <4 x i32> zeroinitializer
  %i.eq = load <1 x float>, ptr %i.be, align 4
  %broadcast.splat303 = shufflevector <1 x float> %i.eq, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.es = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert289, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.et = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.279151.us.us171.us.us.us, i64 %i.et
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index
  %wide.load = load <4 x float>, ptr %i.eu, align 4, !tbaa !67, !alias.scope !174
  %i.ev = fadd <4 x float> %wide.load, %broadcast.splat296
  %i.ew = fmul <4 x float> %i.ev, %broadcast.splat300 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index
  %wide.load301 = load <4 x float>, ptr %i.ex, align 4, !tbaa !67, !alias.scope !175
  %i.ey = fadd <4 x float> %wide.load301, %broadcast.splat298
  %i.ez = fmul <4 x float> %i.ey, %broadcast.splat303 ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ew, <4 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.er, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fa)
  %i.fc = shufflevector <4 x float> %i.ew, <4 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.es, <8 x float> splat (float 5.000000e-01), <8 x float> %i.fc)
  %i.fe = fadd <8 x float> %i.fd, splat (float -1.000000e+00)
  %interleaved.vec = shufflevector <8 x float> %i.fb, <8 x float> %i.fe, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !67, !alias.scope !176, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us160.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader: ; preds = %vector.memcheck, %.lr.ph.us.us169.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.us169.us.us.us ], [ %n.vec, %middle.block ]
  %.380149.us159.us.us.us.us.ph = phi ptr [ %.279151.us.us171.us.us.us, %vector.memcheck ], [ %.279151.us.us171.us.us.us, %.lr.ph.us.us169.us.us.us ], [ %i.eo, %middle.block ]
  %i.fg = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = insertelement <4 x float> %i.fg, float %i.ei, i64 2
  %19 = insertelement <4 x float> %18, float %i.ek, i64 3
  br label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us

_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us: ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ], [ %indvars.iv.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader ] ; 3 uses
  %.380149.us159.us.us.us.us = phi ptr [ %i.fq, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ], [ %.380149.us159.us.us.us.us.ph, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !67
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !67
  %i.fl = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fk, i64 1
  %i.fn = fadd <2 x float> %i.fm, %i.eg
  %i.fo = load <2 x float>, ptr %i.bc, align 8, !tbaa !67
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %20 = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %21 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> splat (float 5.000000e-01), <4 x float> %20)
  %22 = fadd <4 x float> %21, <float -0.000000e+00, float -0.000000e+00, float -1.000000e+00, float -1.000000e+00>
  store <4 x float> %22, ptr %.380149.us159.us.us.us.us, align 4, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %.380149.us159.us.us.us.us, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge.split.us160.us.us.us.us, label %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us, !llvm.loop !156

._crit_edge.split.us160.us.us.us.us:              ; preds = %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us, %middle.block
  %.lcssa278 = phi ptr [ %i.eo, %middle.block ], [ %i.fq, %_ZN2cv3dnn17PriorBoxLayerImpl8addPriorEffffffbPf.exit.us157.us.us.us.us ] ; 3 uses
  %i.fr = add nuw i64 %.074152.us.us170.us.us.us, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %i.fr, %i.bq
  br i1 %exitcond224.not, label %._crit_edge154.split.us.split.us172.us.us.us, label %.lr.ph.us.us169.us.us.us, !llvm.loop !147

._crit_edge154.split.us.split.us172.us.us.us:     ; preds = %._crit_edge.split.us160.us.us.us.us
  %i.fs = add nuw i64 %.075164.us.us.us185.us, 1  ; 2 uses
  %exitcond225.not = icmp eq i64 %i.fs, %i.ay
  br i1 %exitcond225.not, label %._crit_edge.split.us.split.us.split.us187.us, label %.preheader147.us.us.us184.us, !llvm.loop !148

._crit_edge.split.us.split.us.split.us187.us:     ; preds = %._crit_edge154.split.us.split.us172.us.us.us
  %i.ft = add nuw i64 %.076177.us.us, 1           ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ft, %i.av
  br i1 %exitcond226.not, label %._crit_edge178.split, label %.preheader148.us.us, !llvm.loop !149

._crit_edge178.split:                             ; preds = %._crit_edge.split.us.split.us.split.us187.us, %._crit_edge.split.us.split.us.split.us.us.us.us, %.preheader148.lr.ph.split.split.us, %.preheader148.lr.ph.split, %.preheader148.lr.ph, %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !56, !range !76, !noundef !77
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.aa, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit

bb.y:                                             ; preds = %bb.q
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.u
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %._crit_edge178.split
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !69
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = shl i32 %i.ag, 2
  %.tr = mul i32 %i.gc, %i.ai
  %i.gd = mul i32 %.tr, %i.gb                     ; 3 uses
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %.not212 = icmp eq i32 %i.gd, 0
  br i1 %.not212, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %min.iters.check357 = icmp ult i32 %i.gd, 8
  br i1 %min.iters.check357, label %.lr.ph.preheader405, label %vector.ph358

vector.ph358:                                     ; preds = %.lr.ph.preheader
  %n.vec359 = and i64 %i.ge, -8                   ; 3 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next364, %vector.body360 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index361 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load362 = load <4 x float>, ptr %i.gf, align 4, !tbaa !67 ; 2 uses
  %wide.load363 = load <4 x float>, ptr %i.gg, align 4, !tbaa !67 ; 2 uses
  %i.gh = fcmp olt <4 x float> %wide.load362, zeroinitializer
  %i.gi = fcmp olt <4 x float> %wide.load363, zeroinitializer
  %i.gj = select <4 x i1> %i.gh, <4 x float> zeroinitializer, <4 x float> %wide.load362 ; 2 uses
  %i.gk = select <4 x i1> %i.gi, <4 x float> zeroinitializer, <4 x float> %wide.load363 ; 2 uses
  %i.gl = fcmp ogt <4 x float> %i.gj, splat (float 1.000000e+00)
  %i.gm = fcmp ogt <4 x float> %i.gk, splat (float 1.000000e+00)
  %i.gn = select <4 x i1> %i.gl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gj
  %i.go = select <4 x i1> %i.gm, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gk
  store <4 x float> %i.gn, ptr %i.gf, align 4, !tbaa !67
  store <4 x float> %i.go, ptr %i.gg, align 4, !tbaa !67
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.gp, label %middle.block365, label %vector.body360, !llvm.loop !157

middle.block365:                                  ; preds = %vector.body360
  %cmp.n366 = icmp eq i64 %n.vec359, %i.ge
  br i1 %cmp.n366, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader405

.lr.ph.preheader405:                              ; preds = %.lr.ph.preheader, %middle.block365
  %.059193.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec359, %middle.block365 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader405, %.lr.ph
  %.059193 = phi i64 [ %i.gu, %.lr.ph ], [ %.059193.ph, %.lr.ph.preheader405 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.059193 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !67 ; 2 uses
  %i.gs = fcmp olt float %i.gr, 0.000000e+00
  %.sroa.speculated140 = select i1 %i.gs, float 0.000000e+00, float %i.gr ; 2 uses
  %i.gt = fcmp ogt float %.sroa.speculated140, 1.000000e+00
  %.sroa.speculated = select i1 %i.gt, float 1.000000e+00, float %.sroa.speculated140
  store float %.sroa.speculated, ptr %i.gq, align 4, !tbaa !67
  %i.gu = add nuw i64 %.059193, 1                 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.gu, %i.ge
  br i1 %exitcond237.not, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph, !llvm.loop !158

_ZN2cv3Mat3ptrIfEEPT_ii.exit:                     ; preds = %.lr.ph, %middle.block365, %bb.aa, %._crit_edge178.split
  %i.gv = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !85
  %i.gx = icmp slt i32 %i.gw, 2
  %.pn143.in.v = select i1 %i.gx, i64 128, i64 136
  %.pn143.in = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pn143.in.v
  %.pn143 = load i64, ptr %.pn143.in, align 8, !tbaa !18 ; 6 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %i.au, i64 %.pn143 ; 15 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !65
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !66 ; 10 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp eq i64 %i.he, 4
  br i1 %i.hf, label %bb.ab, label %.preheader146

.preheader146:                                    ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit
  br i1 %.not208, label %.loopexit, label %.preheader145.lr.ph

.preheader145.lr.ph:                              ; preds = %.preheader146
  %i.hg = sext i32 %i.ag to i64
  %.not214 = icmp eq i32 %i.ag, 0
  br i1 %.not214, label %.loopexit, label %.preheader145.lr.ph.split

.preheader145.lr.ph.split:                        ; preds = %.preheader145.lr.ph
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !69 ; 9 uses
  %.not215 = icmp eq i64 %i.hi, 0
  br i1 %.not215, label %.loopexit, label %.preheader145.us.preheader

.preheader145.us.preheader:                       ; preds = %.preheader145.lr.ph.split
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 4 uses
  %i.hm = add i64 %i.hi, -1                       ; 2 uses
  %i.hn = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep368 = getelementptr i8, ptr %i.hn, i64 4
  %i.ho = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep370 = getelementptr i8, ptr %i.ho, i64 8
  %i.hp = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep372 = getelementptr i8, ptr %i.hp, i64 12
  %scevgep375 = getelementptr i8, ptr %i.au, i64 %.pn143
  %i.hq = shl i64 %i.hi, 4
  %i.hr = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep377 = getelementptr i8, ptr %i.hr, i64 %i.hq
  %scevgep379 = getelementptr i8, ptr %i.hb, i64 16
  %min.iters.check384 = icmp ult i64 %i.hi, 18
  %mul.result = shl i64 %i.hm, 4                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.hm, 1152921504606846975
  %n.vec386 = and i64 %i.hi, 2305843009213693948  ; 4 uses
  %i.hs = shl nuw nsw i64 %n.vec386, 2
  %cmp.n401 = icmp eq i64 %i.hi, %n.vec386
  %xtraiter = and i64 %i.hi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader145.us

.preheader145.us:                                 ; preds = %.preheader145.us.preheader, %._crit_edge201.split.us.us
  %.057205.us = phi i64 [ %i.kc, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  %.058204.us = phi i64 [ %indvars.iv.next242.3.lcssa, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  br label %.preheader144.us.us

.preheader144.us.us:                              ; preds = %._crit_edge.us.us, %.preheader145.us
  %.056200.us.us = phi i64 [ 0, %.preheader145.us ], [ %i.kb, %._crit_edge.us.us ]
  %.1199.us.us = phi i64 [ %.058204.us, %.preheader145.us ], [ %indvars.iv.next242.3.lcssa, %._crit_edge.us.us ] ; 7 uses
  br i1 %min.iters.check384, label %.preheader.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader144.us.us
  %i.ht = shl i64 %.1199.us.us, 2                 ; 3 uses
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %scevgep369, i64 %mul.result
  %i.hv = icmp ult ptr %i.hu, %scevgep369
  %scevgep371 = getelementptr i8, ptr %scevgep370, i64 %i.ht ; 2 uses
  %i.hw = getelementptr i8, ptr %scevgep371, i64 %mul.result
  %i.hx = icmp ult ptr %i.hw, %scevgep371
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.ht ; 2 uses
  %i.hy = getelementptr i8, ptr %scevgep373, i64 %mul.result
  %i.hz = icmp ult ptr %i.hy, %scevgep373
  %i.ia = or i1 %i.hz, %mul.overflow
  %i.ib = or i1 %i.hx, %i.hv
  %i.ic = or i1 %i.ib, %i.ia
  br i1 %i.ic, label %.preheader.us.us.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %vector.scevcheck
  %i.id = shl i64 %.1199.us.us, 2                 ; 2 uses
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.id
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.id
  %bound0380 = icmp ult ptr %scevgep376, %scevgep379
  %bound1381 = icmp ult ptr %i.hb, %scevgep378
  %found.conflict382 = and i1 %bound0380, %bound1381
  br i1 %found.conflict382, label %.preheader.us.us.preheader, label %vector.ph385

vector.ph385:                                     ; preds = %vector.memcheck374
  %i.ie = add i64 %.1199.us.us, %i.hs             ; 2 uses
  %i.if = load float, ptr %i.hb, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert389 = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ig = load float, ptr %i.hj, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert391 = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ih = load float, ptr %i.hk, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert393 = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ii = load float, ptr %i.hl, align 4, !tbaa !67, !alias.scope !178
  %broadcast.splatinsert395 = insertelement <2 x float> poison, float %i.ii, i64 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv8MatShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit114, %bb.ag
  store ptr %i.bx, ptr %0, align 8, !tbaa !97
  store ptr %.0.lcssa.i.i.i.i.i111, ptr %i.c, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw [52 x i8], ptr %i.bx, i64 %i.bs
  store ptr %i.db, ptr %i.a, align 8, !tbaa !230
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit117
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit68: ; preds = %bb.v, %bb.ad, %bb.z
  %eh.lpad-body97.sink = phi { ptr, i32 } [ %i.cm, %bb.z ], [ %i.ce, %bb.v ], [ %i.cv, %bb.ad ]
  %i.dd = extractvalue { ptr, i32 } %eh.lpad-body97.sink, 0
  %i.de = tail call ptr @__cxa_begin_catch(ptr %i.dd) #24 ; 0 uses
  %.not.i116 = icmp eq ptr %i.bx, null
  br i1 %.not.i116, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit117, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit68
  %i.df = mul nuw nsw i64 %i.bs, 52
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.df) #26
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit117

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit117: ; preds = %bb.ai, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit68
  invoke void @__cxa_rethrow() #23
          to label %bb.am unwind label %bb.ah

bb.aj:                                            ; preds = %_ZSt4fillIPN2cv8MatShapeES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void

bb.ak:                                            ; preds = %bb.ah, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dc, %bb.ah ]
  resume { ptr, i32 } %.pn

bb.al:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  tail call void @__clang_call_terminate(ptr %i.dh) #27
  unreachable

bb.am:                                            ; preds = %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE13_M_deallocateEPS1_m.exit117
  unreachable
}

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #6

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #6

declare void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn17PriorBoxLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !234
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !236
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !120
  store ptr %i.a, ptr %0, align 8, !tbaa !234
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #24 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn17PriorBoxLayerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %1) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 376) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3dnn17PriorBoxLayerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %i.b) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 376) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_prior_box_layer.cpp() #18 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, i64 16), ptr @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, align 8, !tbaa !16
  store i64 8678228066229121616, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, i64 24), align 8, !tbaa !21
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN2cv3dnn17PriorBoxLayerImpl10_layerNameB5cxx11E, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { noreturn }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{!3, !64}
!4 = distinct !{!4, !64}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!20 = !{!19, !14, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!19, !17, i64 8}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!24 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSN2cv5ParamE", !9, i64 0}
!28 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !27, i64 0, !9, i64 8}
!29 = !{!28, !27, i64 0}
!30 = !{!"p1 long", !13, i64 0}
!31 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !30, i64 0, !17, i64 8, !9, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !17, i64 8}
!34 = !{!"_ZTSN2cv9AlgorithmE"}
!35 = !{!"p1 _ZTSN2cv3MatE", !13, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !38, i64 0}
!40 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !13, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !43, i64 0}
!45 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !34, i64 0, !39, i64 8, !44, i64 32, !44, i64 56, !13, i64 80, !19, i64 88, !19, i64 120, !10, i64 152}
!46 = !{!"_ZTSN2cv3dnn14dnn5_v2026060513PriorBoxLayerE", !45, i64 0}
!47 = !{!"p1 float", !13, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIfSaIfEE", !50, i64 0}
!52 = !{!"float", !9, i64 0}
!53 = !{!"bool", !9, i64 0}
!54 = !{!"_ZTSN2cv3dnn17PriorBoxLayerImplE", !46, i64 0, !51, i64 160, !51, i64 184, !52, i64 208, !52, i64 212, !51, i64 216, !51, i64 240, !51, i64 264, !51, i64 288, !51, i64 312, !51, i64 336, !53, i64 360, !53, i64 361, !53, i64 362, !53, i64 363, !17, i64 368}
!55 = !{!54, !53, i64 360}
!56 = !{!54, !53, i64 361}
!57 = !{!54, !53, i64 363}
!58 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!59 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!60 = !{!"_ZTSSt18_Rb_tree_node_base", !58, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!61 = !{!"_ZTSSt15_Rb_tree_header", !60, i64 0, !17, i64 32}
!62 = !{!61, !59, i64 8}
!63 = !{!59, !59, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!48, !47, i64 8}
!66 = !{!48, !47, i64 0}
!67 = !{!52, !52, i64 0}
!68 = !{!48, !47, i64 16}
!69 = !{!54, !17, i64 368}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!36, !35, i64 0}
!73 = !{!36, !35, i64 8}
!74 = !{!36, !35, i64 16}
!75 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060511LayerParamsE", !13, i64 0}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = !{!"p1 _ZTSN2cv12MatAllocatorE", !13, i64 0}
!80 = !{!"p1 _ZTSN2cv8UMatDataE", !13, i64 0}
!81 = !{!"_ZTSN2cv10DataLayoutE", !9, i64 0}
!82 = !{!"_ZTSN2cv8MatShapeE", !10, i64 0, !81, i64 4, !10, i64 8, !9, i64 12}
!83 = !{!"_ZTSN2cv7MatStepE", !9, i64 0}
!84 = !{!"_ZTSN2cv3MatE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !79, i64 56, !80, i64 64, !82, i64 72, !83, i64 128}
!85 = !{!84, !10, i64 4}
!86 = !{!82, !10, i64 0}
!87 = !{!10, !10, i64 0}
!88 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !13, i64 0}
!89 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !88, i64 0, !10, i64 8}
!90 = !{!"double", !9, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!89, !10, i64 8}
!93 = !{!"p1 _ZTSN2cv8MatShapeE", !13, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!96 = !{!95, !93, i64 8}
!97 = !{!95, !93, i64 0}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!61, !59, i64 16}
!100 = !{!61, !17, i64 32}
!101 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !13, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!60, !59, i64 16}
!104 = !{!60, !59, i64 24}
!105 = !{i64 8}
!106 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!107 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !106, i64 0, !17, i64 8, !9, i64 16}
!108 = !{!107, !106, i64 0}
!109 = !{!107, !17, i64 8}
!110 = !{!"p1 double", !13, i64 0}
!111 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !110, i64 0, !17, i64 8, !9, i64 16}
!112 = !{!111, !110, i64 0}
!113 = !{!111, !17, i64 8}
!114 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueEEE", !13, i64 0}
!115 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !101, i64 0, !114, i64 8}
!116 = !{!115, !114, i64 8}
!117 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!118 = !{!"p1 _ZTSN2cv3dnn17PriorBoxLayerImplE", !13, i64 0}
!119 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn17PriorBoxLayerImplELN9__gnu_cxx12_Lock_policyE2EE", !117, i64 0, !118, i64 16}
!120 = !{!119, !118, i64 16}
!121 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060513PriorBoxLayerE", !13, i64 0}
!122 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060513PriorBoxLayerELN9__gnu_cxx12_Lock_policyE2EE", !121, i64 0, !24, i64 8}
!123 = !{!122, !121, i64 0}
!124 = distinct !{!124, !64}
!125 = distinct !{!125, !64}
!126 = distinct !{!126, !64}
!127 = distinct !{!127, !64, !70, !71}
!128 = distinct !{!128, !64, !71, !70}
!129 = distinct !{!129, !64, !70, !71}
!130 = distinct !{!130, !64, !71, !70}
!131 = !{!47, !47, i64 0}
!132 = !{!54, !53, i64 362}
!133 = !{!54, !52, i64 212}
!134 = !{!54, !52, i64 208}
!135 = !{!75, !75, i64 0}
!136 = distinct !{!136, !64}
!137 = distinct !{!137, !64}
!138 = distinct !{!138, !64}
!139 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!140 = distinct !{!140, i1 false, !"LVerDomain"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !140}
!144 = distinct !{!144, !140}
!145 = distinct !{!145, !64, !70, !71}
!146 = distinct !{!146, !64, !70}
!147 = distinct !{!147, !64}
!148 = distinct !{!148, !64}
!149 = distinct !{!149, !64}
!150 = distinct !{!150, i1 false, !"LVerDomain"}
!151 = distinct !{!151, !150}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !150}
!154 = distinct !{!154, !150}
!155 = distinct !{!155, !64, !70, !71}
!156 = distinct !{!156, !64, !70}
!157 = distinct !{!157, !64, !70, !71}
!158 = distinct !{!158, !64, !71, !70}
!159 = distinct !{!159, i1 false, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !64, !70, !71}
!163 = distinct !{!163, !64, !70}
end_hunk_1
