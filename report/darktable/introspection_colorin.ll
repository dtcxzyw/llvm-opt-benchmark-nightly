Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  %lcmp.mod254.not = icmp eq i64 %xtraiter252, 0
  %lcmp.mod255 = icmp ne i64 %xtraiter252, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge5.us.i, %.lr.ph.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge5.us.i ] ; 2 uses
  %i.ajd = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.aje = mul i64 %i.ajd, %i.aio                 ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aje ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aje ; 11 uses
  %brmerge = select i1 %min.iters.check216, i1 true, i1 %i.aiy
  br i1 %brmerge, label %scalar.ph215.preheader, label %vector.body224

vector.body224:                                   ; preds = %.lr.ph.us.i, %vector.body224
  %index225 = phi i64 [ %index.next232, %vector.body224 ], [ 0, %.lr.ph.us.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body224 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.us.i ] ; 2 uses
  %i.ajh = shl nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.aji = extractelement <8 x i64> %i.ajh, i64 0
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.aji
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, <8 x i64> %i.ajh ; 3 uses
  %wide.vec226 = load <32 x float>, ptr %i.ajj, align 4, !tbaa !101, !alias.scope !207 ; 3 uses
  %strided.vec227 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec228 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec229 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec227, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep230 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec228, <8 x ptr> align 4 %wide.gep230, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec229, <8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec228, %strided.vec227
  %i.ajl = fadd reassoc nsz arcp contract afn <8 x float> %i.ajk, %strided.vec229 ; 3 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajl, zeroinitializer
  %i.ajn = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajl ; 2 uses
  %i.ajo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajn, splat (float 5.000000e-01)
  %i.ajp = and <8 x i1> %i.ajm, %i.ajo            ; 2 uses
  %i.ajq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajn, splat (float 2.000000e+00)
  %i.ajr = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ajq, splat (float -1.000000e+00)
  %i.ajs = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajl, splat (float 2.000000e+00)
  %i.ajt = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ajs, <8 x float> splat (float 1.000000e+00))
  %i.aju = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajt, splat (float 1.100000e-01)
  %i.ajv = fmul reassoc nsz arcp contract afn <8 x float> %i.aju, %i.ajr ; 2 uses
  %i.ajw = fadd reassoc nsz arcp contract afn <8 x float> %i.ajv, %strided.vec228
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajw, <8 x ptr> align 4 %wide.gep230, <8 x i1> %i.ajp), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajv
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajx, <8 x ptr> align 4 %wide.gep231, <8 x i1> %i.ajp), !tbaa !101, !alias.scope !208, !noalias !207
  %index.next232 = add nuw i64 %index225, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ajy = icmp eq i64 %index.next232, %n.vec223
  br i1 %i.ajy, label %scalar.ph215.preheader, label %vector.body224, !llvm.loop !174

scalar.ph215.preheader:                           ; preds = %vector.body224, %.lr.ph.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec223, %vector.body224 ]
  br label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %_apply_blue_mapping.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_apply_blue_mapping.exit.us.i ], [ %indvars.iv.i.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.ajz = shl nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.ajz ; 3 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajz ; 3 uses
  %i.akc = load float, ptr %i.aka, align 4, !tbaa !101 ; 2 uses
  store float %i.akc, ptr %i.akb, align 4, !tbaa !101
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 4
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !101 ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akb, i64 4 ; 2 uses
  store float %i.ake, ptr %i.akf, align 4, !tbaa !101
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !101 ; 4 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akb, i64 8 ; 2 uses
  store float %i.akh, ptr %i.aki, align 4, !tbaa !101
  %i.akj = fadd reassoc nsz arcp contract afn float %i.ake, %i.akc
  %i.akk = fadd reassoc nsz arcp contract afn float %i.akj, %i.akh ; 3 uses
  %i.akl = fcmp reassoc nsz arcp contract afn ogt float %i.akk, 0.000000e+00
  br i1 %i.akl, label %bb.du, label %_apply_blue_mapping.exit.us.i

bb.du:                                            ; preds = %scalar.ph215
  %i.akm = fdiv reassoc nsz arcp contract afn float %i.akh, %i.akk ; 2 uses
  %i.akn = fcmp reassoc nsz arcp contract afn ogt float %i.akm, 5.000000e-01
  br i1 %i.akn, label %bb.dv, label %_apply_blue_mapping.exit.us.i

bb.dv:                                            ; preds = %bb.du
  %i.ako = fmul reassoc nnan nsz arcp contract afn float %i.akm, 2.000000e+00
  %i.akp = fadd reassoc nnan nsz arcp contract afn float %i.ako, -1.000000e+00
  %i.akq = fmul reassoc nnan nsz arcp contract afn float %i.akk, 2.000000e+00
  %i.akr = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.akq, float 1.000000e+00)
  %i.aks = fmul reassoc nnan nsz arcp contract afn float %i.akr, 1.100000e-01
  %i.akt = fmul reassoc nsz arcp contract afn float %i.aks, %i.akp ; 2 uses
  %i.aku = fadd reassoc nsz arcp contract afn float %i.akt, %i.ake
  store float %i.aku, ptr %i.akf, align 4, !tbaa !101
  %i.akv = fsub reassoc nsz arcp contract afn float %i.akh, %i.akt
  store float %i.akv, ptr %i.aki, align 4, !tbaa !101
  br label %_apply_blue_mapping.exit.us.i

_apply_blue_mapping.exit.us.i:                    ; preds = %bb.dv, %bb.du, %scalar.ph215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph215, !llvm.loop !175

.lr.ph4.us.preheader.i:                           ; preds = %._crit_edge.us.i
  %i.akw = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.akw, ptr noundef nonnull %i.ajg, ptr noundef nonnull %i.ajg, i32 noundef %.8.val.fr.i) #18
  br i1 %i.ajc, label %.lr.ph4.us.i.epil.preheader, label %.lr.ph4.us.i

.lr.ph4.us.i:                                     ; preds = %.lr.ph4.us.preheader.i, %.lr.ph4.us.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ] ; 5 uses
  %niter257 = phi i64 [ %niter257.next.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ]
  %.idx.i = shl nuw nsw i64 %indvars.iv22.i, 4
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %.idx.i ; 2 uses
  %.val.i.us.i = load <4 x float>, ptr %i.akx, align 16, !tbaa !34
  %i.aky = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i, <4 x float> zeroinitializer)
  %i.akz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aky, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akz, ptr %i.akx, align 16, !tbaa !34
  %indvars.iv.next23.i = shl i64 %indvars.iv22.i, 4
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 16 ; 2 uses
  %.val.i.us.i.1 = load <4 x float>, ptr %i.alb, align 16, !tbaa !34
  %i.alc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.1, <4 x float> zeroinitializer)
  %i.ald = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alc, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ald, ptr %i.alb, align 16, !tbaa !34
  %indvars.iv.next23.i.1 = shl i64 %indvars.iv22.i, 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i.1
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 32 ; 2 uses
  %.val.i.us.i.2 = load <4 x float>, ptr %i.alf, align 16, !tbaa !34
  %i.alg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.2, <4 x float> zeroinitializer)
  %i.alh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alg, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alh, ptr %i.alf, align 16, !tbaa !34
  %indvars.iv.next23.i.2 = shl i64 %indvars.iv22.i, 4
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %indvars.iv.next23.i.2
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 48 ; 2 uses
  %.val.i.us.i.3 = load <4 x float>, ptr %i.alj, align 16, !tbaa !34
  %i.alk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.3, <4 x float> zeroinitializer)
  %i.all = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alk, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.all, ptr %i.alj, align 16, !tbaa !34
  %indvars.iv.next23.i.3 = add nuw nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %niter257.next.3 = add i64 %niter257, 4         ; 2 uses
  %niter257.ncmp.3 = icmp eq i64 %niter257.next.3, %unroll_iter256
  br i1 %niter257.ncmp.3, label %._crit_edge5.us.i.loopexit.unr-lcssa, label %.lr.ph4.us.i

._crit_edge5.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph4.us.i
  br i1 %lcmp.mod254.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil.preheader

.lr.ph4.us.i.epil.preheader:                      ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.preheader.i
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph4.us.preheader.i ], [ %indvars.iv.next23.i.3, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph4.us.i.epil

.lr.ph4.us.i.epil:                                ; preds = %.lr.ph4.us.i.epil, %.lr.ph4.us.i.epil.preheader
  %indvars.iv22.i.epil = phi i64 [ %indvars.iv22.i.epil.init, %.lr.ph4.us.i.epil.preheader ], [ %indvars.iv.next23.i.epil, %.lr.ph4.us.i.epil ] ; 2 uses
  %epil.iter253 = phi i64 [ 0, %.lr.ph4.us.i.epil.preheader ], [ %epil.iter253.next, %.lr.ph4.us.i.epil ]
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv22.i.epil, 4
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %.idx.i.epil ; 2 uses
  %.val.i.us.i.epil = load <4 x float>, ptr %i.alm, align 16, !tbaa !34
  %i.aln = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.epil, <4 x float> zeroinitializer)
  %i.alo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aln, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alo, ptr %i.alm, align 16, !tbaa !34
  %indvars.iv.next23.i.epil = add nuw nsw i64 %indvars.iv22.i.epil, 1
  %epil.iter253.next = add i64 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i64 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil, !llvm.loop !176

._crit_edge5.us.i:                                ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.i.epil, %._crit_edge.us.i
  %.sink.in.i = phi ptr [ %i.ais, %._crit_edge.us.i ], [ %i.air, %.lr.ph4.us.i.epil ], [ %i.air, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink.i, ptr noundef nonnull %i.ajg, ptr noundef nonnull %i.ajg, i32 noundef %.8.val.fr.i) #18
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count45.i
  br i1 %exitcond31.not.i, label %process_lcms2_bm.exit, label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_apply_blue_mapping.exit.us.i
  %i.alp = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.us.i = icmp eq ptr %i.alp, null
  br i1 %.not.us.i, label %._crit_edge5.us.i, label %.lr.ph4.us.preheader.i

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.i, %bb.dx
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.dx ], [ 0, %.lr.ph8.i ]
  %i.alq = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.i77 = icmp eq ptr %i.alq, null
  br i1 %.not.i77, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph8.split.split.i
  %i.alr = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.alr, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph8.split.split.i, %bb.dw
  %.sink49.in.i = phi ptr [ %i.air, %bb.dw ], [ %i.ais, %.lr.ph8.split.split.i ]
  %.sink49.i = load ptr, ptr %.sink49.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink49.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %process_lcms2_bm.exit, label %.lr.ph8.split.split.i

bb.dy:                                            ; preds = %bb.ds
  %.val74 = load ptr, ptr %i.f, align 16, !tbaa !29 ; 4 uses
  %i.als = getelementptr i8, ptr %5, i64 8
  %.val75 = load i32, ptr %i.als, align 4, !tbaa !187
  %i.alt = getelementptr i8, ptr %5, i64 12
  %.val76 = load i32, ptr %i.alt, align 4, !tbaa !188 ; 2 uses
  %.8.val.fr.i78 = freeze i32 %.val75             ; 13 uses
  %i.alu = sext i32 %.val76 to i64                ; 5 uses
  %i.alv = sext i32 %.8.val.fr.i78 to i64         ; 6 uses
  %i.alw = shl nsw i64 %i.alv, 2                  ; 3 uses
  %i.alx = shl nsw i64 %i.alv, 4
  %i.aly = add nsw i64 %i.alx, 48
  %i.alz = and i64 %i.aly, -64
  %i.ama = tail call ptr @dt_alloc_aligned(i64 noundef %i.alz) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ama, i64 64) ]
  %.not14.i = icmp eq i32 %.val76, 0
  br i1 %.not14.i, label %process_lcms2_proper.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.dy
  %i.amb = fcmp reassoc nsz arcp contract afn une <2 x float> %i.bc, splat (float 1.000000e+00) ; 2 uses
  %i.amc = extractelement <2 x i1> %i.amb, i64 0
  %i.amd = extractelement <2 x i1> %i.amb, i64 1
  %or.cond = select i1 %i.amc, i1 true, i1 %i.amd
  %i.ame = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.amf = fcmp reassoc nsz arcp contract afn une float %i.ame, 1.000000e+00
  %spec.select = select i1 %or.cond, i1 true, i1 %i.amf
  %i.amg = getelementptr inbounds nuw i8, ptr %.val74, i64 16 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.val74, i64 32 ; 4 uses
  %.not16.i79 = icmp eq i32 %.8.val.fr.i78, 0     ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.val74, i64 40 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.val74, i64 24 ; 4 uses
  br i1 %spec.select, label %.lr.ph6.split.us.i, label %.lr.ph6.split.i

.lr.ph6.split.us.i:                               ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.preheader.us.i, label %.preheader.us.us.preheader.i

.preheader.us.us.preheader.i:                     ; preds = %.lr.ph6.split.us.i
  %wide.trip.count26.i = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %i.amk = add nsw i64 %i.alu, 1152921504606846975
  %i.aml = mul i64 %i.amk, %i.alv
  %i.amm = shl i64 %i.aml, 4
  %i.amn = tail call i64 @llvm.usub.sat.i64(i64 %i.alw, i64 4)
  %i.amo = shl i64 %i.amn, 2                      ; 2 uses
  %i.amp = getelementptr i8, ptr %2, i64 %i.amm
  %i.amq = getelementptr i8, ptr %i.amp, i64 %i.amo
  %scevgep = getelementptr i8, ptr %i.amq, i64 16
  %i.amr = getelementptr i8, ptr %i.ama, i64 %i.amo
  %scevgep196 = getelementptr i8, ptr %i.amr, i64 16
  %i.ams = tail call i64 @llvm.usub.sat.i64(i64 %i.alw, i64 4) ; 2 uses
  %i.amt = lshr exact i64 %i.ams, 2
  %i.amu = add nuw nsw i64 %i.amt, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ams, 12
  %bound0 = icmp ult ptr %i.ama, %scevgep
  %bound1 = icmp ult ptr %2, %scevgep196
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %.8.val.fr.i78, 0
  %i.amv = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.amu, 9223372036854775804    ; 3 uses
  %i.amw = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat198 = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat200 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat202 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n = icmp eq i64 %i.amu, %n.vec
  %i.amx = extractelement <2 x float> %i.bd, i64 1
  %xtraiter246 = and i64 %wide.trip.count26.i, 3  ; 3 uses
  %i.amy = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter250 = and i64 %wide.trip.count26.i, 4294967292
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod249 = icmp ne i64 %xtraiter246, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.ea, %.preheader.us.us.preheader.i
  %.0474.us.us.i = phi i64 [ %i.apb, %bb.ea ], [ 0, %.preheader.us.us.preheader.i ] ; 2 uses
  %i.amz = shl i64 %.0474.us.us.i, 2
  %i.ana = mul i64 %i.amz, %i.alv                 ; 2 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ana ; 2 uses
  %brmerge258 = select i1 %min.iters.check, i1 true, i1 %i.amv
  br i1 %brmerge258, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.anc = shl nuw i64 %index, 2                  ; 2 uses
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.anc
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.anc
  %wide.vec = load <16 x float>, ptr %i.ane, align 4, !tbaa !101, !alias.scope !213 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec203 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec204 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec205 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.anf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %broadcast.splat
  %i.ang = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec203, %broadcast.splat198
  %i.anh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec204, %broadcast.splat200
  %i.ani = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec205, %broadcast.splat202
  %i.anj = shufflevector <4 x float> %i.anf, <4 x float> %i.ang, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ank = shufflevector <4 x float> %i.anh, <4 x float> %i.ani, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.anj, <8 x float> %i.ank, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.and, align 64, !tbaa !101, !alias.scope !214, !noalias !213
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.anl = icmp eq i64 %index.next, %n.vec
  br i1 %i.anl, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %.0451.us.us.i.ph = phi i64 [ %i.amw, %middle.block ], [ 0, %.preheader.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0451.us.us.i = phi i64 [ %i.aoc, %scalar.ph ], [ %.0451.us.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %.0451.us.us.i ; 4 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %.0451.us.us.i ; 4 uses
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !101
  %i.anp = fmul reassoc nsz arcp contract afn float %i.ano, %i.bb
  store float %i.anp, ptr %i.anm, align 16, !tbaa !101
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 4
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !101
  %i.ans = fmul reassoc nsz arcp contract afn float %i.anr, %i.ba
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  store float %i.ans, ptr %i.ant, align 4, !tbaa !101
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !101
  %i.anw = fmul reassoc nsz arcp contract afn float %i.anv, %i.ame
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  store float %i.anw, ptr %i.anx, align 8, !tbaa !101
  %i.any = getelementptr inbounds nuw i8, ptr %i.ann, i64 12
  %i.anz = load float, ptr %i.any, align 4, !tbaa !101
  %i.aoa = fmul reassoc nsz arcp contract afn float %i.anz, %i.amx
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anm, i64 12
  store float %i.aoa, ptr %i.aob, align 4, !tbaa !101
  %i.aoc = add nuw i64 %.0451.us.us.i, 4          ; 2 uses
  %i.aod = icmp ult i64 %i.aoc, %i.alw
  br i1 %i.aod, label %scalar.ph, label %..loopexit_crit_edge.us.us.i, !llvm.loop !181

..loopexit_crit_edge.us.us.i:                     ; preds = %scalar.ph, %middle.block
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ana ; 9 uses
  %i.aof = load ptr, ptr %i.amg, align 16, !tbaa !105
  %.not.us.us.i = icmp eq ptr %i.aof, null
  br i1 %.not.us.us.i, label %bb.dz, label %.lr.ph3.us.us.preheader.i

.lr.ph3.us.us.preheader.i:                        ; preds = %..loopexit_crit_edge.us.us.i
  %i.aog = load ptr, ptr %i.amh, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.aog, ptr noundef nonnull %i.ama, ptr noundef %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br i1 %i.amy, label %.lr.ph3.us.us.i.epil.preheader, label %.lr.ph3.us.us.i

.lr.ph3.us.us.i:                                  ; preds = %.lr.ph3.us.us.preheader.i, %.lr.ph3.us.us.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ] ; 5 uses
  %niter251 = phi i64 [ %niter251.next.3, %.lr.ph3.us.us.i ], [ 0, %.lr.ph3.us.us.preheader.i ]
  %.idx38.i = shl nuw nsw i64 %indvars.iv23.i, 4
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx38.i ; 2 uses
  %.val.i.us.us.i = load <4 x float>, ptr %i.aoh, align 16, !tbaa !34
  %i.aoi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i, <4 x float> zeroinitializer)
  %i.aoj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoi, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aoj, ptr %i.aoh, align 16, !tbaa !34
  %indvars.iv.next24.i = shl i64 %indvars.iv23.i, 4
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next24.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16 ; 2 uses
  %.val.i.us.us.i.1 = load <4 x float>, ptr %i.aol, align 16, !tbaa !34
  %i.aom = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.1, <4 x float> zeroinitializer)
  %i.aon = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aom, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aon, ptr %i.aol, align 16, !tbaa !34
  %indvars.iv.next24.i.1 = shl i64 %indvars.iv23.i, 4
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next24.i.1
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 32 ; 2 uses
  %.val.i.us.us.i.2 = load <4 x float>, ptr %i.aop, align 16, !tbaa !34
  %i.aoq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.2, <4 x float> zeroinitializer)
  %i.aor = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aoq, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aor, ptr %i.aop, align 16, !tbaa !34
  %indvars.iv.next24.i.2 = shl i64 %indvars.iv23.i, 4
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %indvars.iv.next24.i.2
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 48 ; 2 uses
  %.val.i.us.us.i.3 = load <4 x float>, ptr %i.aot, align 16, !tbaa !34
  %i.aou = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.3, <4 x float> zeroinitializer)
  %i.aov = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aou, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aov, ptr %i.aot, align 16, !tbaa !34
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph3.us.us.i

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph3.us.us.i
  br i1 %lcmp.mod248.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil.preheader

.lr.ph3.us.us.i.epil.preheader:                   ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph3.us.us.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph3.us.us.preheader.i ], [ %indvars.iv.next24.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph3.us.us.i.epil

.lr.ph3.us.us.i.epil:                             ; preds = %.lr.ph3.us.us.i.epil, %.lr.ph3.us.us.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph3.us.us.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph3.us.us.i.epil ] ; 2 uses
  %epil.iter247 = phi i64 [ 0, %.lr.ph3.us.us.i.epil.preheader ], [ %epil.iter247.next, %.lr.ph3.us.us.i.epil ]
  %.idx38.i.epil = shl nuw nsw i64 %indvars.iv23.i.epil, 4
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx38.i.epil ; 2 uses
  %.val.i.us.us.i.epil = load <4 x float>, ptr %i.aow, align 16, !tbaa !34
  %i.aox = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.us.i.epil, <4 x float> zeroinitializer)
  %i.aoy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aox, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aoy, ptr %i.aow, align 16, !tbaa !34
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter247.next = add i64 %epil.iter247, 1   ; 2 uses
  %epil.iter247.cmp.not = icmp eq i64 %epil.iter247.next, %xtraiter246
  br i1 %epil.iter247.cmp.not, label %._crit_edge.us.us.i, label %.lr.ph3.us.us.i.epil, !llvm.loop !182

._crit_edge.us.us.i:                              ; preds = %.lr.ph3.us.us.i.epil, %._crit_edge.us.us.i.unr-lcssa
  %i.aoz = load ptr, ptr %i.ami, align 8, !tbaa !107
  tail call void @cmsDoTransform(ptr noundef %i.aoz, ptr noundef nonnull %i.aoe, ptr noundef nonnull %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.dz:                                            ; preds = %..loopexit_crit_edge.us.us.i
  %i.apa = load ptr, ptr %i.amj, align 8, !tbaa !108
  tail call void @cmsDoTransform(ptr noundef %i.apa, ptr noundef nonnull %i.ama, ptr noundef %i.aoe, i32 noundef %.8.val.fr.i78) #18
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.us.us.i
  %i.apb = add nuw i64 %.0474.us.us.i, 1          ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.apb, %i.alu
  br i1 %exitcond28.not.i, label %process_lcms2_proper.exit, label %.preheader.us.us.i

.preheader.us.i:                                  ; preds = %.lr.ph6.split.us.i, %bb.ec
  %.0474.us.i = phi i64 [ %i.apf, %bb.ec ], [ 0, %.lr.ph6.split.us.i ]
  %i.apc = load ptr, ptr %i.amg, align 16, !tbaa !105
  %.not.us.i86 = icmp eq ptr %i.apc, null
  br i1 %.not.us.i86, label %bb.eb, label %._crit_edge.us.i87

._crit_edge.us.i87:                               ; preds = %.preheader.us.i
  %i.apd = load ptr, ptr %i.amh, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.apd, ptr noundef %i.ama, ptr noundef %3, i32 noundef 0) #18
  %.pre.i = load ptr, ptr %i.ami, align 8, !tbaa !107
  tail call void @cmsDoTransform(ptr noundef %.pre.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.eb:                                            ; preds = %.preheader.us.i
  %i.ape = load ptr, ptr %i.amj, align 8, !tbaa !108
  tail call void @cmsDoTransform(ptr noundef %i.ape, ptr noundef %i.ama, ptr noundef %3, i32 noundef 0) #18
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.us.i87
  %i.apf = add nuw i64 %.0474.us.i, 1             ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.apf, %i.alu
  br i1 %exitcond34.not.i, label %process_lcms2_proper.exit, label %.preheader.us.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.lr.ph6.split.split.i, label %.lr.ph6.split.split.us.preheader.i

.lr.ph6.split.split.us.preheader.i:               ; preds = %.lr.ph6.split.i
  %wide.trip.count.i80 = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i80, 3     ; 3 uses
  %i.apg = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter = and i64 %wide.trip.count.i80, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph6.split.split.us.i
end_hunk_0
