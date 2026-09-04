Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/prior_box_layer?download=true
inline.NumInlined: 1235
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn17PriorBoxLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
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
  br i1 %min.iters.check357, label %.lr.ph.preheader404, label %vector.ph358

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
  br i1 %cmp.n366, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %.lr.ph.preheader404

.lr.ph.preheader404:                              ; preds = %.lr.ph.preheader, %middle.block365
  %.059193.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec359, %middle.block365 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader404, %.lr.ph
  %.059193 = phi i64 [ %i.gy, %.lr.ph ], [ %.059193.ph, %.lr.ph.preheader404 ] ; 2 uses
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
  %.pn143.in = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pn143.in.v
  %.pn143 = load i64, ptr %.pn143.in, align 8, !tbaa !18 ; 6 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %i.au, i64 %.pn143 ; 14 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !65
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !66 ; 10 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = icmp eq i64 %i.hi, 4
  br i1 %i.hj, label %bb.ab, label %.preheader146

.preheader146:                                    ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit
  br i1 %.not208, label %.loopexit, label %.preheader145.lr.ph

.preheader145.lr.ph:                              ; preds = %.preheader146
  %i.hk = sext i32 %i.ag to i64
  %.not214 = icmp eq i32 %i.ag, 0
  br i1 %.not214, label %.loopexit, label %.preheader145.lr.ph.split

.preheader145.lr.ph.split:                        ; preds = %.preheader145.lr.ph
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !69 ; 9 uses
  %.not215 = icmp eq i64 %i.hm, 0
  br i1 %.not215, label %.loopexit, label %.preheader145.us.preheader

.preheader145.us.preheader:                       ; preds = %.preheader145.lr.ph.split
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 12 ; 4 uses
  %i.hq = add i64 %i.hm, -1                       ; 2 uses
  %i.hr = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep368 = getelementptr i8, ptr %i.hr, i64 4
  %i.hs = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep370 = getelementptr i8, ptr %i.hs, i64 8
  %i.ht = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep372 = getelementptr i8, ptr %i.ht, i64 12
  %scevgep375 = getelementptr i8, ptr %i.au, i64 %.pn143
  %i.hu = shl i64 %i.hm, 4
  %i.hv = getelementptr i8, ptr %i.au, i64 %.pn143
  %scevgep377 = getelementptr i8, ptr %i.hv, i64 %i.hu
  %scevgep379 = getelementptr i8, ptr %i.hf, i64 16
  %min.iters.check384 = icmp ult i64 %i.hm, 20
  %mul.result = shl i64 %i.hq, 4                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.hq, 1152921504606846975
  %n.vec386 = and i64 %i.hm, 2305843009213693948  ; 4 uses
  %i.hw = shl nuw nsw i64 %n.vec386, 2
  %cmp.n400 = icmp eq i64 %i.hm, %n.vec386
  %xtraiter = and i64 %i.hm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader145.us

.preheader145.us:                                 ; preds = %.preheader145.us.preheader, %._crit_edge201.split.us.us
  %.057205.us = phi i64 [ %i.ka, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  %.058204.us = phi i64 [ %indvars.iv.next242.3.lcssa, %._crit_edge201.split.us.us ], [ 0, %.preheader145.us.preheader ]
  br label %.preheader144.us.us

.preheader144.us.us:                              ; preds = %._crit_edge.us.us, %.preheader145.us
  %.056200.us.us = phi i64 [ 0, %.preheader145.us ], [ %i.jz, %._crit_edge.us.us ]
  %.1199.us.us = phi i64 [ %.058204.us, %.preheader145.us ], [ %indvars.iv.next242.3.lcssa, %._crit_edge.us.us ] ; 7 uses
  br i1 %min.iters.check384, label %.preheader.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader144.us.us
  %i.hx = shl i64 %.1199.us.us, 2                 ; 3 uses
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.hx ; 2 uses
  %i.hy = getelementptr i8, ptr %scevgep369, i64 %mul.result
  %i.hz = icmp ult ptr %i.hy, %scevgep369
  %scevgep371 = getelementptr i8, ptr %scevgep370, i64 %i.hx ; 2 uses
  %i.ia = getelementptr i8, ptr %scevgep371, i64 %mul.result
  %i.ib = icmp ult ptr %i.ia, %scevgep371
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.hx ; 2 uses
  %i.ic = getelementptr i8, ptr %scevgep373, i64 %mul.result
  %i.id = icmp ult ptr %i.ic, %scevgep373
  %i.ie = or i1 %i.id, %mul.overflow
  %i.if = or i1 %i.ib, %i.hz
  %i.ig = or i1 %i.if, %i.ie
  br i1 %i.ig, label %.preheader.us.us.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %vector.scevcheck
  %i.ih = shl i64 %.1199.us.us, 2                 ; 2 uses
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.ih
  %scevgep378 = getelementptr i8, ptr %scevgep377, i64 %i.ih
  %bound0380 = icmp ult ptr %scevgep376, %scevgep379
  %bound1381 = icmp ult ptr %i.hf, %scevgep378
  %found.conflict382 = and i1 %bound0380, %bound1381
  br i1 %found.conflict382, label %.preheader.us.us.preheader, label %vector.ph385

vector.ph385:                                     ; preds = %vector.memcheck374
  %i.ii = add i64 %.1199.us.us, %i.hw             ; 2 uses
  %i.ij = load float, ptr %i.hf, align 4, !tbaa !67, !alias.scope !180
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.ik = load float, ptr %i.hn, align 4, !tbaa !67, !alias.scope !180
  %broadcast.splatinsert391 = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.il = load float, ptr %i.ho, align 4, !tbaa !67, !alias.scope !180
  %broadcast.splatinsert393 = insertelement <4 x float> poison, float %i.il, i64 0
  %i.im = load float, ptr %i.hp, align 4, !tbaa !67, !alias.scope !180
  %broadcast.splatinsert395 = insertelement <4 x float> poison, float %i.im, i64 0
  %18 = getelementptr [4 x i8], ptr %.0.i, i64 %.1199.us.us
  %19 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> %broadcast.splatinsert391, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %20 = shufflevector <4 x float> %broadcast.splatinsert393, <4 x float> %broadcast.splatinsert395, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %interleaved.vec397 = shufflevector <8 x float> %19, <8 x float> %20, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next398, %vector.body387 ] ; 2 uses
  %.idx = shl i64 %index388, 4
  %i.in = getelementptr i8, ptr %18, i64 %.idx
  store <16 x float> %interleaved.vec397, ptr %i.in, align 4, !tbaa !67, !alias.scope !181, !noalias !180
  %index.next398 = add nuw i64 %index388, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next398, %n.vec386
  br i1 %i.io, label %middle.block399, label %vector.body387, !llvm.loop !162

middle.block399:                                  ; preds = %vector.body387
  br i1 %cmp.n400, label %._crit_edge.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %vector.memcheck374, %vector.scevcheck, %.preheader144.us.us, %middle.block399
  %.055197.us.us.ph = phi i64 [ 0, %vector.memcheck374 ], [ 0, %vector.scevcheck ], [ 0, %.preheader144.us.us ], [ %n.vec386, %middle.block399 ] ; 3 uses
  %.2196.us.us.ph = phi i64 [ %.1199.us.us, %vector.memcheck374 ], [ %.1199.us.us, %vector.scevcheck ], [ %.1199.us.us, %.preheader144.us.us ], [ %i.ii, %middle.block399 ] ; 6 uses
  %.neg = or disjoint i64 %.055197.us.us.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol

.preheader.us.us.prol:                            ; preds = %.preheader.us.us.preheader
  %i.ip = load float, ptr %i.hf, align 4, !tbaa !67
  %i.iq = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %.2196.us.us.ph
  store float %i.ip, ptr %i.iq, align 4, !tbaa !67
  %i.ir = load float, ptr %i.hn, align 4, !tbaa !67
  %i.is = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us.ph
  %i.it = getelementptr i8, ptr %i.is, i64 4
  store float %i.ir, ptr %i.it, align 4, !tbaa !67
  %i.iu = load float, ptr %i.ho, align 4, !tbaa !67
  %i.iv = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us.ph
  %i.iw = getelementptr i8, ptr %i.iv, i64 8
  store float %i.iu, ptr %i.iw, align 4, !tbaa !67
  %i.ix = load float, ptr %i.hp, align 4, !tbaa !67
  %i.iy = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us.ph
  %i.iz = getelementptr i8, ptr %i.iy, i64 12
  store float %i.ix, ptr %i.iz, align 4, !tbaa !67
  %indvars.iv.next242.3.prol = add nsw i64 %.2196.us.us.ph, 4 ; 2 uses
  %i.ja = or disjoint i64 %.055197.us.us.ph, 1
  br label %.preheader.us.us.prol.loopexit

.preheader.us.us.prol.loopexit:                   ; preds = %.preheader.us.us.prol, %.preheader.us.us.preheader
  %indvars.iv.next242.3.lcssa403.unr = phi i64 [ poison, %.preheader.us.us.preheader ], [ %indvars.iv.next242.3.prol, %.preheader.us.us.prol ]
  %.055197.us.us.unr = phi i64 [ %.055197.us.us.ph, %.preheader.us.us.preheader ], [ %i.ja, %.preheader.us.us.prol ]
  %.2196.us.us.unr = phi i64 [ %.2196.us.us.ph, %.preheader.us.us.preheader ], [ %indvars.iv.next242.3.prol, %.preheader.us.us.prol ]
  %i.jb = icmp eq i64 %i.hm, %.neg
  br i1 %i.jb, label %._crit_edge.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us
  %.055197.us.us = phi i64 [ %i.jy, %.preheader.us.us ], [ %.055197.us.us.unr, %.preheader.us.us.prol.loopexit ]
  %.2196.us.us = phi i64 [ %indvars.iv.next242.3.1, %.preheader.us.us ], [ %.2196.us.us.unr, %.preheader.us.us.prol.loopexit ] ; 6 uses
  %i.jc = load float, ptr %i.hf, align 4, !tbaa !67
  %i.jd = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %.2196.us.us
  store float %i.jc, ptr %i.jd, align 4, !tbaa !67
  %i.je = load float, ptr %i.hn, align 4, !tbaa !67
  %i.jf = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us
  %i.jg = getelementptr i8, ptr %i.jf, i64 4
  store float %i.je, ptr %i.jg, align 4, !tbaa !67
  %i.jh = load float, ptr %i.ho, align 4, !tbaa !67
  %i.ji = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  store float %i.jh, ptr %i.jj, align 4, !tbaa !67
  %i.jk = load float, ptr %i.hp, align 4, !tbaa !67
  %i.jl = getelementptr [4 x i8], ptr %.0.i, i64 %.2196.us.us
  %i.jm = getelementptr i8, ptr %i.jl, i64 12
  store float %i.jk, ptr %i.jm, align 4, !tbaa !67
  %indvars.iv.next242.3 = add nsw i64 %.2196.us.us, 4 ; 4 uses
  %i.jn = load float, ptr %i.hf, align 4, !tbaa !67
  %i.jo = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %indvars.iv.next242.3
  store float %i.jn, ptr %i.jo, align 4, !tbaa !67
  %i.jp = load float, ptr %i.hn, align 4, !tbaa !67
  %i.jq = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv.next242.3
  %i.jr = getelementptr i8, ptr %i.jq, i64 4
  store float %i.jp, ptr %i.jr, align 4, !tbaa !67
  %i.js = load float, ptr %i.ho, align 4, !tbaa !67
  %i.jt = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv.next242.3
  %i.ju = getelementptr i8, ptr %i.jt, i64 8
  store float %i.js, ptr %i.ju, align 4, !tbaa !67
  %i.jv = load float, ptr %i.hp, align 4, !tbaa !67
  %i.jw = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv.next242.3
  %i.jx = getelementptr i8, ptr %i.jw, i64 12
  store float %i.jv, ptr %i.jx, align 4, !tbaa !67
  %indvars.iv.next242.3.1 = add nsw i64 %.2196.us.us, 8 ; 2 uses
  %i.jy = add nuw i64 %.055197.us.us, 2           ; 2 uses
  %exitcond247.not.1 = icmp eq i64 %i.jy, %i.hm
  br i1 %exitcond247.not.1, label %._crit_edge.us.us, label %.preheader.us.us, !llvm.loop !163

._crit_edge.us.us:                                ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us, %middle.block399
  %indvars.iv.next242.3.lcssa = phi i64 [ %i.ii, %middle.block399 ], [ %indvars.iv.next242.3.lcssa403.unr, %.preheader.us.us.prol.loopexit ], [ %indvars.iv.next242.3.1, %.preheader.us.us ] ; 2 uses
  %i.jz = add nuw i64 %.056200.us.us, 1           ; 2 uses
  %exitcond248.not = icmp eq i64 %i.jz, %i.hk
  br i1 %exitcond248.not, label %._crit_edge201.split.us.us, label %.preheader144.us.us, !llvm.loop !164

._crit_edge201.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.ka = add nuw i64 %.057205.us, 1              ; 2 uses
  %exitcond249.not = icmp eq i64 %i.ka, %i.av
  br i1 %exitcond249.not, label %.loopexit, label %.preheader145.us, !llvm.loop !165

bb.ab:                                            ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !88
  %i.kd = icmp sgt i32 %i.kc, 2
  br i1 %i.kd, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc127 unwind label %bb.aj

.noexc127:                                        ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.64, i32 noundef 97) #23
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc127
  unreachable

bb.ae:                                            ; preds = %.noexc127
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.ae
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !21
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body128

bb.af:                                            ; preds = %bb.ab
  %i.kk = getelementptr inbounds nuw i8, ptr %i.as, i64 92
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !89
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 1, i32 noundef %i.kl, i32 noundef 5, ptr noundef %.0.i, i64 noundef 0)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.km = load ptr, ptr %i.hc, align 8, !tbaa !66
  %i.kn = load float, ptr %i.km, align 4, !tbaa !67
  %i.ko = fpext float %i.kn to double
  %i.kp = insertelement <4 x double> poison, double %i.ko, i64 0
  %i.kq = shufflevector <4 x double> %i.kp, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.kq, ptr %17, align 8, !tbaa !93, !alias.scope !182
  %i.kr = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 -1056833530, ptr %16, align 8, !tbaa !185
  %i.ks = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.ks, align 8, !tbaa !186
  store i64 17179869185, ptr %i.kr, align 8
  %i.kt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ku = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %.pre = load ptr, ptr %12, align 8, !tbaa !74
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ac, %bb.af
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body128

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  br label %.body128

.body128:                                         ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, %bb.ak
  %.pn84.pn = phi { ptr, i32 } [ %i.kw, %bb.ak ], [ %i.kv, %bb.aj ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.body

.loopexit:                                        ; preds = %._crit_edge201.split.us.us, %.preheader145.lr.ph.split, %.preheader146, %.preheader145.lr.ph, %bb.ai
  %i.kx = phi ptr [ %i.as, %.preheader145.lr.ph.split ], [ %.pre, %bb.ai ], [ %i.as, %.preheader146 ], [ %i.as, %.preheader145.lr.ph ], [ %i.as, %._crit_edge201.split.us.us ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kx, %i.kz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.la, %.lr.ph.i.i.i ], [ %i.kx, %.loopexit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #24
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.la, %i.kz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

end_hunk_0
