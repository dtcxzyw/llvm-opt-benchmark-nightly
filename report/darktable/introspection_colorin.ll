Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  %unroll_iter247 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod246 = icmp ne i64 %xtraiter243, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge5.us.i, %.lr.ph.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge5.us.i ] ; 2 uses
  %i.ahz = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.aia = mul i64 %i.ahz, %i.ahk                 ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aia ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aia ; 11 uses
  %brmerge = select i1 %min.iters.check214, i1 true, i1 %i.ahu
  br i1 %brmerge, label %scalar.ph213.preheader, label %vector.body217

vector.body217:                                   ; preds = %.lr.ph.us.i, %vector.body217
  %index218 = phi i64 [ %index.next225, %vector.body217 ], [ 0, %.lr.ph.us.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body217 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.us.i ] ; 2 uses
  %i.aid = shl nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.aie = extractelement <8 x i64> %i.aid, i64 0
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.aie
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aic, <8 x i64> %i.aid ; 3 uses
  %wide.vec219 = load <32 x float>, ptr %i.aif, align 4, !tbaa !120, !alias.scope !165 ; 3 uses
  %strided.vec220 = shufflevector <32 x float> %wide.vec219, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec221 = shufflevector <32 x float> %wide.vec219, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec222 = shufflevector <32 x float> %wide.vec219, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec220, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %wide.gep223 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec221, <8 x ptr> align 4 %wide.gep223, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %wide.gep224 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec222, <8 x ptr> align 4 %wide.gep224, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %i.aig = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec221, %strided.vec220
  %i.aih = fadd reassoc nsz arcp contract afn <8 x float> %i.aig, %strided.vec222 ; 3 uses
  %i.aii = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aih, zeroinitializer
  %i.aij = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec222, %i.aih ; 2 uses
  %i.aik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aij, splat (float 5.000000e-01)
  %i.ail = and <8 x i1> %i.aii, %i.aik            ; 2 uses
  %i.aim = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aij, splat (float 2.000000e+00)
  %i.ain = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.aim, splat (float -1.000000e+00)
  %i.aio = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aih, splat (float 2.000000e+00)
  %i.aip = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aio, <8 x float> splat (float 1.000000e+00))
  %i.aiq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aip, splat (float 1.100000e-01)
  %i.air = fmul reassoc nsz arcp contract afn <8 x float> %i.aiq, %i.ain ; 2 uses
  %i.ais = fadd reassoc nsz arcp contract afn <8 x float> %i.air, %strided.vec221
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ais, <8 x ptr> align 4 %wide.gep223, <8 x i1> %i.ail), !tbaa !120, !alias.scope !168, !noalias !165
  %i.ait = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec222, %i.air
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ait, <8 x ptr> align 4 %wide.gep224, <8 x i1> %i.ail), !tbaa !120, !alias.scope !168, !noalias !165
  %index.next225 = add nuw i64 %index218, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.aiu = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.aiu, label %scalar.ph213.preheader, label %vector.body217, !llvm.loop !170

scalar.ph213.preheader:                           ; preds = %vector.body217, %.lr.ph.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec216, %vector.body217 ]
  br label %scalar.ph213

scalar.ph213:                                     ; preds = %scalar.ph213.preheader, %_apply_blue_mapping.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_apply_blue_mapping.exit.us.i ], [ %indvars.iv.i.ph, %scalar.ph213.preheader ] ; 2 uses
  %i.aiv = shl nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.aiv ; 3 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.aiv ; 3 uses
  %i.aiy = load float, ptr %i.aiw, align 4, !tbaa !120 ; 2 uses
  store float %i.aiy, ptr %i.aix, align 4, !tbaa !120
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !120 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aix, i64 4 ; 2 uses
  store float %i.aja, ptr %i.ajb, align 4, !tbaa !120
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !120 ; 4 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aix, i64 8 ; 2 uses
  store float %i.ajd, ptr %i.aje, align 4, !tbaa !120
  %i.ajf = fadd reassoc nsz arcp contract afn float %i.aja, %i.aiy
  %i.ajg = fadd reassoc nsz arcp contract afn float %i.ajf, %i.ajd ; 3 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, 0.000000e+00
  br i1 %i.ajh, label %bb.du, label %_apply_blue_mapping.exit.us.i

bb.du:                                            ; preds = %scalar.ph213
  %i.aji = fdiv reassoc nsz arcp contract afn float %i.ajd, %i.ajg ; 2 uses
  %i.ajj = fcmp reassoc nsz arcp contract afn ogt float %i.aji, 5.000000e-01
  br i1 %i.ajj, label %bb.dv, label %_apply_blue_mapping.exit.us.i

bb.dv:                                            ; preds = %bb.du
  %i.ajk = fmul reassoc nnan nsz arcp contract afn float %i.aji, 2.000000e+00
  %i.ajl = fadd reassoc nnan nsz arcp contract afn float %i.ajk, -1.000000e+00
  %i.ajm = fmul reassoc nnan nsz arcp contract afn float %i.ajg, 2.000000e+00
  %i.ajn = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ajm, float 1.000000e+00)
  %i.ajo = fmul reassoc nnan nsz arcp contract afn float %i.ajn, 1.100000e-01
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajo, %i.ajl ; 2 uses
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, %i.aja
  store float %i.ajq, ptr %i.ajb, align 4, !tbaa !120
  %i.ajr = fsub reassoc nsz arcp contract afn float %i.ajd, %i.ajp
  store float %i.ajr, ptr %i.aje, align 4, !tbaa !120
  br label %_apply_blue_mapping.exit.us.i

_apply_blue_mapping.exit.us.i:                    ; preds = %bb.dv, %bb.du, %scalar.ph213
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph213, !llvm.loop !173

.lr.ph4.us.preheader.i:                           ; preds = %._crit_edge.us.i
  %i.ajs = load ptr, ptr %i.ahm, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.ajs, ptr noundef nonnull %i.aic, ptr noundef nonnull %i.aic, i32 noundef %.8.val.fr.i) #18
  br i1 %i.ahy, label %.lr.ph4.us.i.epil.preheader, label %.lr.ph4.us.i

.lr.ph4.us.i:                                     ; preds = %.lr.ph4.us.preheader.i, %.lr.ph4.us.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ] ; 5 uses
  %niter248 = phi i64 [ %niter248.next.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ]
  %.idx.i = shl nuw nsw i64 %indvars.iv22.i, 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aic, i64 %.idx.i ; 2 uses
  %.val.i.us.i = load <4 x float>, ptr %i.ajt, align 16, !tbaa !38
  %i.aju = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i, <4 x float> zeroinitializer)
  %i.ajv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aju, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ajv, ptr %i.ajt, align 16, !tbaa !38
  %indvars.iv.next23.i = shl i64 %indvars.iv22.i, 4
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aic, i64 %indvars.iv.next23.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16 ; 2 uses
  %.val.i.us.i.1 = load <4 x float>, ptr %i.ajx, align 16, !tbaa !38
  %i.ajy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.1, <4 x float> zeroinitializer)
  %i.ajz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajy, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ajz, ptr %i.ajx, align 16, !tbaa !38
  %indvars.iv.next23.i.1 = shl i64 %indvars.iv22.i, 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.aic, i64 %indvars.iv.next23.i.1
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 32 ; 2 uses
  %.val.i.us.i.2 = load <4 x float>, ptr %i.akb, align 16, !tbaa !38
  %i.akc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.2, <4 x float> zeroinitializer)
  %i.akd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akc, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akd, ptr %i.akb, align 16, !tbaa !38
  %indvars.iv.next23.i.2 = shl i64 %indvars.iv22.i, 4
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aic, i64 %indvars.iv.next23.i.2
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 48 ; 2 uses
  %.val.i.us.i.3 = load <4 x float>, ptr %i.akf, align 16, !tbaa !38
  %i.akg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.3, <4 x float> zeroinitializer)
  %i.akh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akg, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akh, ptr %i.akf, align 16, !tbaa !38
  %indvars.iv.next23.i.3 = add nuw nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %niter248.next.3 = add i64 %niter248, 4         ; 2 uses
  %niter248.ncmp.3 = icmp eq i64 %niter248.next.3, %unroll_iter247
  br i1 %niter248.ncmp.3, label %._crit_edge5.us.i.loopexit.unr-lcssa, label %.lr.ph4.us.i

._crit_edge5.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph4.us.i
  br i1 %lcmp.mod245.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil.preheader

.lr.ph4.us.i.epil.preheader:                      ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.preheader.i
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph4.us.preheader.i ], [ %indvars.iv.next23.i.3, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod246)
  br label %.lr.ph4.us.i.epil

.lr.ph4.us.i.epil:                                ; preds = %.lr.ph4.us.i.epil, %.lr.ph4.us.i.epil.preheader
  %indvars.iv22.i.epil = phi i64 [ %indvars.iv22.i.epil.init, %.lr.ph4.us.i.epil.preheader ], [ %indvars.iv.next23.i.epil, %.lr.ph4.us.i.epil ] ; 2 uses
  %epil.iter244 = phi i64 [ 0, %.lr.ph4.us.i.epil.preheader ], [ %epil.iter244.next, %.lr.ph4.us.i.epil ]
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv22.i.epil, 4
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aic, i64 %.idx.i.epil ; 2 uses
  %.val.i.us.i.epil = load <4 x float>, ptr %i.aki, align 16, !tbaa !38
  %i.akj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.epil, <4 x float> zeroinitializer)
  %i.akk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akj, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akk, ptr %i.aki, align 16, !tbaa !38
  %indvars.iv.next23.i.epil = add nuw nsw i64 %indvars.iv22.i.epil, 1
  %epil.iter244.next = add i64 %epil.iter244, 1   ; 2 uses
  %epil.iter244.cmp.not = icmp eq i64 %epil.iter244.next, %xtraiter243
  br i1 %epil.iter244.cmp.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil, !llvm.loop !175

._crit_edge5.us.i:                                ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.i.epil, %._crit_edge.us.i
  %.sink.in.i = phi ptr [ %i.aho, %._crit_edge.us.i ], [ %i.ahn, %.lr.ph4.us.i.epil ], [ %i.ahn, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !177
  tail call void @cmsDoTransform(ptr noundef %.sink.i, ptr noundef nonnull %i.aic, ptr noundef nonnull %i.aic, i32 noundef %.8.val.fr.i) #18
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count45.i
  br i1 %exitcond31.not.i, label %process_lcms2_bm.exit, label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_apply_blue_mapping.exit.us.i
  %i.akl = load ptr, ptr %i.ahl, align 16, !tbaa !126
  %.not.us.i = icmp eq ptr %i.akl, null
  br i1 %.not.us.i, label %._crit_edge5.us.i, label %.lr.ph4.us.preheader.i

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.i, %bb.dx
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.dx ], [ 0, %.lr.ph8.i ]
  %i.akm = load ptr, ptr %i.ahl, align 16, !tbaa !126
  %.not.i77 = icmp eq ptr %i.akm, null
  br i1 %.not.i77, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph8.split.split.i
  %i.akn = load ptr, ptr %i.ahm, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.akn, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph8.split.split.i, %bb.dw
  %.sink49.in.i = phi ptr [ %i.ahn, %bb.dw ], [ %i.aho, %.lr.ph8.split.split.i ]
  %.sink49.i = load ptr, ptr %.sink49.in.i, align 8, !tbaa !177
  tail call void @cmsDoTransform(ptr noundef %.sink49.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %process_lcms2_bm.exit, label %.lr.ph8.split.split.i

bb.dy:                                            ; preds = %bb.ds
  %.val74 = load ptr, ptr %i.f, align 16, !tbaa !11 ; 4 uses
  %i.ako = getelementptr i8, ptr %5, i64 8
  %.val75 = load i32, ptr %i.ako, align 4, !tbaa !123
  %i.akp = getelementptr i8, ptr %5, i64 12
  %.val76 = load i32, ptr %i.akp, align 4, !tbaa !124 ; 2 uses
  %.8.val.fr.i78 = freeze i32 %.val75             ; 13 uses
  %i.akq = sext i32 %.val76 to i64                ; 5 uses
  %i.akr = sext i32 %.8.val.fr.i78 to i64         ; 6 uses
  %i.aks = shl nsw i64 %i.akr, 2                  ; 3 uses
  %i.akt = shl nsw i64 %i.akr, 4
  %i.aku = add nsw i64 %i.akt, 48
  %i.akv = and i64 %i.aku, -64
  %i.akw = tail call ptr @dt_alloc_aligned(i64 noundef %i.akv) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.akw, i64 64) ]
  %.not14.i = icmp eq i32 %.val76, 0
  br i1 %.not14.i, label %process_lcms2_proper.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.dy
  %i.akx = fcmp reassoc nsz arcp contract afn une <2 x float> %i.bc, splat (float 1.000000e+00) ; 2 uses
  %i.aky = extractelement <2 x i1> %i.akx, i64 0
  %i.akz = extractelement <2 x i1> %i.akx, i64 1
  %or.cond = select i1 %i.aky, i1 true, i1 %i.akz
  %i.ala = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.alb = fcmp reassoc nsz arcp contract afn une float %i.ala, 1.000000e+00
  %spec.select = select i1 %or.cond, i1 true, i1 %i.alb
  %i.alc = getelementptr inbounds nuw i8, ptr %.val74, i64 16 ; 4 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.val74, i64 32 ; 4 uses
  %.not16.i79 = icmp eq i32 %.8.val.fr.i78, 0     ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.val74, i64 40 ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.val74, i64 24 ; 4 uses
  br i1 %spec.select, label %.lr.ph6.split.us.i, label %.lr.ph6.split.i

.lr.ph6.split.us.i:                               ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.preheader.us.i, label %.preheader.us.us.preheader.i

.preheader.us.us.preheader.i:                     ; preds = %.lr.ph6.split.us.i
  %wide.trip.count26.i = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %i.alg = tail call i64 @llvm.usub.sat.i64(i64 %i.aks, i64 4)
  %i.alh = shl i64 %i.alg, 2                      ; 2 uses
  %i.ali = getelementptr i8, ptr %i.akw, i64 %i.alh
  %scevgep = getelementptr i8, ptr %i.ali, i64 16
  %i.alj = add nsw i64 %i.akq, 1152921504606846975
  %i.alk = mul i64 %i.alj, %i.akr
  %i.all = shl i64 %i.alk, 4
  %i.alm = getelementptr i8, ptr %2, i64 %i.all
  %i.aln = getelementptr i8, ptr %i.alm, i64 %i.alh
  %scevgep195 = getelementptr i8, ptr %i.aln, i64 16
  %i.alo = tail call i64 @llvm.usub.sat.i64(i64 %i.aks, i64 4) ; 2 uses
  %i.alp = lshr exact i64 %i.alo, 2
  %i.alq = add nuw nsw i64 %i.alp, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.alo, 12
  %bound0 = icmp ult ptr %i.akw, %scevgep195
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %.8.val.fr.i78, 0
  %i.alr = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.alq, 9223372036854775804    ; 3 uses
  %i.als = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat197 = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat199 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat201 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n = icmp eq i64 %i.alq, %n.vec
  %i.alt = extractelement <2 x float> %i.bd, i64 1
  %xtraiter237 = and i64 %wide.trip.count26.i, 3  ; 3 uses
  %i.alu = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter241 = and i64 %wide.trip.count26.i, 4294967292
  %lcmp.mod239.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod240 = icmp ne i64 %xtraiter237, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.ea, %.preheader.us.us.preheader.i
  %.0474.us.us.i = phi i64 [ %i.anu, %bb.ea ], [ 0, %.preheader.us.us.preheader.i ] ; 2 uses
  %6 = shl i64 %.0474.us.us.i, 2
  %i.alv = mul i64 %6, %i.akr                     ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.alv ; 2 uses
  %brmerge249 = select i1 %min.iters.check, i1 true, i1 %i.alr
  br i1 %brmerge249, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.alx = shl nuw i64 %index, 2                  ; 2 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.alx
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %i.alx
  %wide.vec = load <16 x float>, ptr %i.alz, align 4, !tbaa !120, !alias.scope !178 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec202 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec203 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec204 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ama = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %broadcast.splat
  %i.amb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec202, %broadcast.splat197
  %i.amc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec203, %broadcast.splat199
  %i.amd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec204, %broadcast.splat201
  %i.ame = shufflevector <4 x float> %i.ama, <4 x float> %i.amb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amf = shufflevector <4 x float> %i.amc, <4 x float> %i.amd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ame, <8 x float> %i.amf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.aly, align 64, !tbaa !120, !alias.scope !181, !noalias !178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.amg = icmp eq i64 %index.next, %n.vec
  br i1 %i.amg, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %.0451.us.us.i.ph = phi i64 [ %i.als, %middle.block ], [ 0, %.preheader.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0451.us.us.i = phi i64 [ %i.amx, %scalar.ph ], [ %.0451.us.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %.0451.us.us.i ; 4 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %.0451.us.us.i ; 4 uses
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !120
  %i.amk = fmul reassoc nsz arcp contract afn float %i.amj, %i.bb
  store float %i.amk, ptr %i.amh, align 16, !tbaa !120
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 4
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !120
  %i.amn = fmul reassoc nsz arcp contract afn float %i.amm, %i.ba
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  store float %i.amn, ptr %i.amo, align 4, !tbaa !120
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !120
  %i.amr = fmul reassoc nsz arcp contract afn float %i.amq, %i.ala
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  store float %i.amr, ptr %i.ams, align 8, !tbaa !120
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ami, i64 12
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !120
  %i.amv = fmul reassoc nsz arcp contract afn float %i.amu, %i.alt
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amh, i64 12
  store float %i.amv, ptr %i.amw, align 4, !tbaa !120
  %i.amx = add nuw i64 %.0451.us.us.i, 4          ; 2 uses
  %i.amy = icmp ult i64 %i.amx, %i.aks
  br i1 %i.amy, label %scalar.ph, label %..loopexit_crit_edge.us.us.i, !llvm.loop !184

.lr.ph3.us.us.preheader.i:                        ; preds = %..loopexit_crit_edge.us.us.i
  %i.amz = load ptr, ptr %i.ald, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.amz, ptr noundef nonnull %i.akw, ptr noundef %i.anv, i32 noundef %.8.val.fr.i78) #18
  br i1 %i.alu, label %.lr.ph3.us.us.i.epil.preheader, label %.lr.ph3.us.us.i

.lr.ph3.us.us.i:                                  ; preds = %.lr.ph3.us.us.preheader.i, %.lr.ph3.us.us.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ] ; 5 uses
  %niter242 = phi i64 [ %niter242.next.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ]
  %.idx38.i = shl nuw nsw i64 %indvars.iv23.i, 4
  %i.ana = getelementptr inbounds nuw i8, ptr %i.anv, i64 %.idx38.i ; 2 uses
  %.val.i.us.us.i = load <4 x float>, ptr %i.ana, align 16, !tbaa !38
  %i.anb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i, <4 x float> zeroinitializer)
  %i.anc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.anb, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.anc, ptr %i.ana, align 16, !tbaa !38
  %indvars.iv.next24.i = shl i64 %indvars.iv23.i, 4
  %i.and = getelementptr inbounds nuw i8, ptr %i.anv, i64 %indvars.iv.next24.i
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %.val.i.us.us.i.1 = load <4 x float>, ptr %i.ane, align 16, !tbaa !38
  %i.anf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.1, <4 x float> zeroinitializer)
  %i.ang = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.anf, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ang, ptr %i.ane, align 16, !tbaa !38
  %indvars.iv.next24.i.1 = shl i64 %indvars.iv23.i, 4
  %i.anh = getelementptr inbounds nuw i8, ptr %i.anv, i64 %indvars.iv.next24.i.1
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 32 ; 2 uses
  %.val.i.us.us.i.2 = load <4 x float>, ptr %i.ani, align 16, !tbaa !38
  %i.anj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.2, <4 x float> zeroinitializer)
  %i.ank = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.anj, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ank, ptr %i.ani, align 16, !tbaa !38
  %indvars.iv.next24.i.2 = shl i64 %indvars.iv23.i, 4
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anv, i64 %indvars.iv.next24.i.2
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 48 ; 2 uses
  %.val.i.us.us.i.3 = load <4 x float>, ptr %i.anm, align 16, !tbaa !38
  %i.ann = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.3, <4 x float> zeroinitializer)
  %i.ano = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ann, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ano, ptr %i.anm, align 16, !tbaa !38
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter242.next.3 = add i64 %niter242, 4         ; 2 uses
  %niter242.ncmp.3 = icmp eq i64 %niter242.next.3, %unroll_iter241
  br i1 %niter242.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph3.us.us.i

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph3.us.us.i
  br i1 %lcmp.mod239.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil.preheader

.lr.ph3.us.us.i.epil.preheader:                   ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph3.us.us.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph3.us.us.preheader.i ], [ %indvars.iv.next24.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph3.us.us.i.epil

.lr.ph3.us.us.i.epil:                             ; preds = %.lr.ph3.us.us.i.epil, %.lr.ph3.us.us.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph3.us.us.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph3.us.us.i.epil ] ; 2 uses
  %epil.iter238 = phi i64 [ 0, %.lr.ph3.us.us.i.epil.preheader ], [ %epil.iter238.next, %.lr.ph3.us.us.i.epil ]
  %.idx38.i.epil = shl nuw nsw i64 %indvars.iv23.i.epil, 4
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anv, i64 %.idx38.i.epil ; 2 uses
  %.val.i.us.us.i.epil = load <4 x float>, ptr %i.anp, align 16, !tbaa !38
  %i.anq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.epil, <4 x float> zeroinitializer)
  %i.anr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.anq, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.anr, ptr %i.anp, align 16, !tbaa !38
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter238.next = add i64 %epil.iter238, 1   ; 2 uses
  %epil.iter238.cmp.not = icmp eq i64 %epil.iter238.next, %xtraiter237
  br i1 %epil.iter238.cmp.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil, !llvm.loop !185

._crit_edge.us.us.i:                              ; preds = %.lr.ph3.us.us.i.epil, %._crit_edge.us.us.i.unr-lcssa
  %i.ans = load ptr, ptr %i.ale, align 8, !tbaa !186
  tail call void @cmsDoTransform(ptr noundef %i.ans, ptr noundef nonnull %i.anv, ptr noundef nonnull %i.anv, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.dz:                                            ; preds = %..loopexit_crit_edge.us.us.i
  %i.ant = load ptr, ptr %i.alf, align 8, !tbaa !187
  tail call void @cmsDoTransform(ptr noundef %i.ant, ptr noundef nonnull %i.akw, ptr noundef %i.anv, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.us.us.i
  %i.anu = add nuw i64 %.0474.us.us.i, 1          ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.anu, %i.akq
  br i1 %exitcond28.not.i, label %process_lcms2_proper.exit, label %.preheader.us.us.i

..loopexit_crit_edge.us.us.i:                     ; preds = %scalar.ph, %middle.block
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alv ; 9 uses
  %i.anw = load ptr, ptr %i.alc, align 16, !tbaa !126
  %.not.us.us.i = icmp eq ptr %i.anw, null
  br i1 %.not.us.us.i, label %bb.dz, label %.lr.ph3.us.us.preheader.i

.preheader.us.i:                                  ; preds = %.lr.ph6.split.us.i, %bb.ec
  %.0474.us.i = phi i64 [ %i.aoa, %bb.ec ], [ 0, %.lr.ph6.split.us.i ]
  %i.anx = load ptr, ptr %i.alc, align 16, !tbaa !126
  %.not.us.i86 = icmp eq ptr %i.anx, null
  br i1 %.not.us.i86, label %bb.eb, label %._crit_edge.us.i87

._crit_edge.us.i87:                               ; preds = %.preheader.us.i
  %i.any = load ptr, ptr %i.ald, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.any, ptr noundef %i.akw, ptr noundef %3, i32 noundef 0) #18
  %.pre.i = load ptr, ptr %i.ale, align 8, !tbaa !186
  tail call void @cmsDoTransform(ptr noundef %.pre.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.eb:                                            ; preds = %.preheader.us.i
  %i.anz = load ptr, ptr %i.alf, align 8, !tbaa !187
  tail call void @cmsDoTransform(ptr noundef %i.anz, ptr noundef %i.akw, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.us.i87
  %i.aoa = add nuw i64 %.0474.us.i, 1             ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.aoa, %i.akq
  br i1 %exitcond34.not.i, label %process_lcms2_proper.exit, label %.preheader.us.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.lr.ph6.split.split.i, label %.lr.ph6.split.split.us.preheader.i

.lr.ph6.split.split.us.preheader.i:               ; preds = %.lr.ph6.split.i
  %wide.trip.count.i80 = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i80, 3     ; 3 uses
  %i.aob = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter = and i64 %wide.trip.count.i80, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph6.split.split.us.i

.lr.ph6.split.split.us.i:                         ; preds = %bb.ee, %.lr.ph6.split.split.us.preheader.i
  %.0474.us8.i = phi i64 [ %i.aox, %bb.ee ], [ 0, %.lr.ph6.split.split.us.preheader.i ] ; 2 uses
  %7 = shl i64 %.0474.us8.i, 2
  %i.aoc = mul i64 %7, %i.akr                     ; 2 uses
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aoc ; 2 uses
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aoc ; 9 uses
  %i.aof = load ptr, ptr %i.alc, align 16, !tbaa !126
  %.not.us9.i = icmp eq ptr %i.aof, null
  br i1 %.not.us9.i, label %bb.ed, label %.lr.ph3.us12.i

.lr.ph3.us12.i:                                   ; preds = %.lr.ph6.split.split.us.i
  %i.aog = load ptr, ptr %i.ald, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.aog, ptr noundef %i.aod, ptr noundef %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br i1 %i.aob, label %.epil.preheader, label %.lr.ph3.us12.i.new

.lr.ph3.us12.i.new:                               ; preds = %.lr.ph3.us12.i, %.lr.ph3.us12.i.new
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i83.3, %.lr.ph3.us12.i.new ], [ 0, %.lr.ph3.us12.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph3.us12.i.new ], [ 0, %.lr.ph3.us12.i ]
  %.idx.i82 = shl nuw nsw i64 %indvars.iv.i81, 4
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx.i82 ; 2 uses
  %.val.i.us11.i = load <4 x float>, ptr %i.aoh, align 16, !tbaa !38
  %i.aoi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us11.i, <4 x float> zeroinitializer)
  %i.aoj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoi, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aoj, ptr %i.aoh, align 16, !tbaa !38
  %indvars.iv.next.i83 = shl i64 %indvars.iv.i81, 4
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next.i83
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16 ; 2 uses
  %.val.i.us11.i.1 = load <4 x float>, ptr %i.aol, align 16, !tbaa !38
  %i.aom = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us11.i.1, <4 x float> zeroinitializer)
  %i.aon = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aom, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aon, ptr %i.aol, align 16, !tbaa !38
  %indvars.iv.next.i83.1 = shl i64 %indvars.iv.i81, 4
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next.i83.1
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 32 ; 2 uses
  %.val.i.us11.i.2 = load <4 x float>, ptr %i.aop, align 16, !tbaa !38
  %i.aoq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us11.i.2, <4 x float> zeroinitializer)
  %i.aor = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoq, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aor, ptr %i.aop, align 16, !tbaa !38
  %indvars.iv.next.i83.2 = shl i64 %indvars.iv.i81, 4
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next.i83.2
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 48 ; 2 uses
  %.val.i.us11.i.3 = load <4 x float>, ptr %i.aot, align 16, !tbaa !38
  %i.aou = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us11.i.3, <4 x float> zeroinitializer)
  %i.aov = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aou, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aov, ptr %i.aot, align 16, !tbaa !38
  %indvars.iv.next.i83.3 = add nuw nsw i64 %indvars.iv.i81, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us13.i.unr-lcssa, label %.lr.ph3.us12.i.new

bb.ed:                                            ; preds = %.lr.ph6.split.split.us.i
  %i.aow = load ptr, ptr %i.alf, align 8, !tbaa !187
  tail call void @cmsDoTransform(ptr noundef %i.aow, ptr noundef %i.aod, ptr noundef %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge.us13.i, %bb.ed
  %i.aox = add nuw i64 %.0474.us8.i, 1            ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.aox, %i.akq
  br i1 %exitcond21.not.i, label %process_lcms2_proper.exit, label %.lr.ph6.split.split.us.i

._crit_edge.us13.i.unr-lcssa:                     ; preds = %.lr.ph3.us12.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us13.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us13.i.unr-lcssa, %.lr.ph3.us12.i
  %indvars.iv.i81.epil.init = phi i64 [ 0, %.lr.ph3.us12.i ], [ %indvars.iv.next.i83.3, %._crit_edge.us13.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.epil.preheader
  %indvars.iv.i81.epil = phi i64 [ %indvars.iv.i81.epil.init, %.epil.preheader ], [ %indvars.iv.next.i83.epil, %bb.ef ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ef ]
  %.idx.i82.epil = shl nuw nsw i64 %indvars.iv.i81.epil, 4
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx.i82.epil ; 2 uses
  %.val.i.us11.i.epil = load <4 x float>, ptr %i.aoy, align 16, !tbaa !38
  %i.aoz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us11.i.epil, <4 x float> zeroinitializer)
  %i.apa = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoz, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.apa, ptr %i.aoy, align 16, !tbaa !38
  %indvars.iv.next.i83.epil = add nuw nsw i64 %indvars.iv.i81.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us13.i, label %bb.ef, !llvm.loop !188

._crit_edge.us13.i:                               ; preds = %bb.ef, %._crit_edge.us13.i.unr-lcssa
  %i.apb = load ptr, ptr %i.ale, align 8, !tbaa !186
  tail call void @cmsDoTransform(ptr noundef %i.apb, ptr noundef nonnull %i.aoe, ptr noundef nonnull %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ee

.lr.ph6.split.split.i:                            ; preds = %.lr.ph6.split.i, %bb.ei
  %.0474.i = phi i64 [ %i.apj, %bb.ei ], [ 0, %.lr.ph6.split.i ] ; 2 uses
  %8 = shl i64 %.0474.i, 2
  %i.apc = mul nuw nsw i64 %8, %i.akr             ; 2 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.apc ; 2 uses
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apc ; 4 uses
  %i.apf = load ptr, ptr %i.alc, align 16, !tbaa !126
  %.not.i85 = icmp eq ptr %i.apf, null
  br i1 %.not.i85, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph6.split.split.i
  %i.apg = load ptr, ptr %i.alf, align 8, !tbaa !187
  tail call void @cmsDoTransform(ptr noundef %i.apg, ptr noundef %i.apd, ptr noundef %i.ape, i32 noundef 0) #18
  br label %bb.ei

bb.eh:                                            ; preds = %.lr.ph6.split.split.i
  %i.aph = load ptr, ptr %i.ald, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.aph, ptr noundef %i.apd, ptr noundef %i.ape, i32 noundef 0) #18
  %i.api = load ptr, ptr %i.ale, align 8, !tbaa !186
  tail call void @cmsDoTransform(ptr noundef %i.api, ptr noundef %i.ape, ptr noundef %i.ape, i32 noundef 0) #18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.apj = add nuw i64 %.0474.i, 1                ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.apj, %i.akq
  br i1 %exitcond22.not.i, label %process_lcms2_proper.exit, label %.lr.ph6.split.split.i

process_lcms2_proper.exit:                        ; preds = %bb.ee, %bb.ei, %bb.ea, %bb.ec, %bb.dy
  tail call void @free(ptr noundef %i.akw) #18
  br label %process_lcms2_bm.exit

process_lcms2_bm.exit:                            ; preds = %._crit_edge5.us.i, %bb.dx, %bb.i, %process_lcms2_proper.exit, %process_cmatrix.exit, %bb.dt, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @dt_colorspaces_get_name(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_image_is_matrix_correction_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x float], align 4              ; 4 uses
  %i.b = alloca [1 x float], align 4              ; 4 uses
  %i.c = alloca [1 x float], align 4              ; 4 uses
  %i.d = alloca [4 x [4 x float]], align 64       ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !11  ; 61 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 786732 ; 2 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 786736 ; 2 uses
  store i32 %i.j, ptr %i.k, align 16, !tbaa !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 786740 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.n = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 512) #18 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 787252 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.q = tail call i64 @dt_strlcpy_to_fixed(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, i64 noundef 512) #18 ; 0 uses
  %i.r = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.24, i32 noundef 63) #18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1032
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 20 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !194  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.f, align 64, !tbaa !195
  %.not239 = icmp eq i32 %i.w, 0
  br i1 %.not239, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_colorspaces_cleanup_profile(ptr noundef nonnull %i.v) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i32 0, ptr %i.f, align 64, !tbaa !195
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 524
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.z = load i32, ptr %i.y, align 4, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 786724
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !122
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !197 ; 2 uses
  %switch.tableidx = add i32 %i.ac, -1
  %i.ad = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ad, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.ae = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.ac, ptr noundef nonnull @.str.24, i32 noundef 1) #18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !193
  store ptr %i.ag, ptr %i.x, align 16, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !187 ; 2 uses
  %.not240 = icmp eq ptr %i.ai, null
  br i1 %.not240, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @cmsDeleteTransform(ptr noundef nonnull %i.ai) #18
  store ptr null, ptr %i.ah, align 8, !tbaa !187
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 32, !tbaa !174 ; 2 uses
  %.not241 = icmp eq ptr %i.ak, null
  br i1 %.not241, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @cmsDeleteTransform(ptr noundef nonnull %i.ak) #18
  store ptr null, ptr %i.aj, align 32, !tbaa !174
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !186 ; 2 uses
  %.not242 = icmp eq ptr %i.am, null
  br i1 %.not242, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @cmsDeleteTransform(ptr noundef nonnull %i.am) #18
  store ptr null, ptr %i.al, align 8, !tbaa !186
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 786496 ; 9 uses
  store float +qnan, ptr %i.an, align 64, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 786560 ; 3 uses
  store float +qnan, ptr %i.ao, align 64, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 3 uses
  store float +qnan, ptr %i.ap, align 64, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  store float -1.000000e+00, ptr %i.aq, align 16, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 262192 ; 3 uses
  store float -1.000000e+00, ptr %i.ar, align 16, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 524336 ; 3 uses
  store float -1.000000e+00, ptr %i.as, align 16, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 786728 ; 5 uses
  store i32 0, ptr %i.at, align 8, !tbaa !125
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 4 uses
  store i32 1, ptr %i.au, align 8, !tbaa !198
  %i.av = load i32, ptr %1, align 4, !tbaa !189   ; 3 uses
  %i.aw = icmp eq i32 %i.av, 6
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.ax, align 16, !tbaa !199
  br label %bb.cl

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !118
  %i.ba = getelementptr i8, ptr %i.az, i64 644
  %.val = load i32, ptr %i.ba, align 4, !tbaa !200
  %i.bb = and i32 %.val, 1024
  %.not243 = icmp eq i32 %i.bb, 0
  br i1 %.not243, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.bc, align 16, !tbaa !199
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  switch i32 %i.av, label %bb.x [
    i32 12, label %bb.p
    i32 13, label %bb.r
    i32 14, label %bb.t
    i32 9, label %.thread280
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.be = tail call ptr @dt_colorspaces_create_darktable_profile(ptr noundef nonnull %i.bd) #18 ; 2 uses
  store ptr %i.be, ptr %i.u, align 8, !tbaa !194
  %.not244 = icmp eq ptr %i.be, null
  br i1 %.not244, label %.thread280, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.f, align 64, !tbaa !195
  br label %thread-pre-split

bb.r:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.bg = tail call ptr @dt_colorspaces_create_vendor_profile(ptr noundef nonnull %i.bf) #18 ; 2 uses
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !194
  %.not245 = icmp eq ptr %i.bg, null
  br i1 %.not245, label %.thread280, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.f, align 64, !tbaa !195
end_hunk_0
