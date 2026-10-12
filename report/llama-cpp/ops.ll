Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_flash_attn_ext:bb.a
  %gep803.i.i.6 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.6
  store float %i.agu, ptr %gep803.i.i.6, align 4, !tbaa !43
  %i.agv = add nuw nsw i64 %.0432804.i.i, 7       ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agv
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !43
  %.idx.i.i.7 = shl nuw nsw i64 %i.agv, 8
  %gep803.i.i.7 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.7
  store float %i.agx, ptr %gep803.i.i.7, align 4, !tbaa !43
  %i.agy = add nuw nsw i64 %.0432804.i.i, 8       ; 2 uses
  %exitcond907.not.i.i.7 = icmp eq i64 %i.agy, %i.on
  br i1 %exitcond907.not.i.i.7, label %.loopexit.i.i, label %.lr.ph805.i.i, !llvm.loop !1420

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph809.i.i
  br i1 %lcmp.mod578.not, label %.loopexit.i.i, label %.lr.ph809.i.i.epil.preheader

.lr.ph809.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph809.i.i.preheader
  %.0433808.i.i.epil.init = phi i64 [ 0, %.lr.ph809.i.i.preheader ], [ %i.aga, %.loopexit.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod579)
  br label %.lr.ph809.i.i.epil

.lr.ph809.i.i.epil:                               ; preds = %.lr.ph809.i.i.epil, %.lr.ph809.i.i.epil.preheader
  %.0433808.i.i.epil = phi i64 [ %i.ahe, %.lr.ph809.i.i.epil ], [ %.0433808.i.i.epil.init, %.lr.ph809.i.i.epil.preheader ] ; 3 uses
  %epil.iter577 = phi i64 [ %epil.iter577.next, %.lr.ph809.i.i.epil ], [ 0, %.lr.ph809.i.i.epil.preheader ]
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %.0433808.i.i.epil
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !41
  %i.ahb = zext i16 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ahb
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !43
  %.idx512.i.i.epil = shl nuw nsw i64 %.0433808.i.i.epil, 8
  %gep807.i.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.epil
  store float %i.ahd, ptr %gep807.i.i.epil, align 4, !tbaa !43
  %i.ahe = add nuw nsw i64 %.0433808.i.i.epil, 1
  %epil.iter577.next = add i64 %epil.iter577, 1   ; 2 uses
  %epil.iter577.cmp.not = icmp eq i64 %epil.iter577.next, %xtraiter576
  br i1 %epil.iter577.cmp.not, label %.loopexit.i.i, label %.lr.ph809.i.i.epil, !llvm.loop !1421

.loopexit.i.i:                                    ; preds = %.lr.ph805.i.i.prol.loopexit, %.lr.ph805.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph809.i.i.epil, %middle.block388, %vec.epilog.middle.block406, %.preheader730.i.i, %.preheader731.i.i
  %indvars.iv.next910.i.i = add nuw nsw i64 %indvars.iv909.i.i, 1 ; 2 uses
  %exitcond914.not.i.i = icmp eq i64 %indvars.iv.next910.i.i, %i.yx
  br i1 %exitcond914.not.i.i, label %._crit_edge813.i.loopexit.i, label %bb.bt, !llvm.loop !1422

iter.check356:                                    ; preds = %iter.check356.preheader, %._crit_edge820.i.i
  %indvars.iv919.i.i = phi i64 [ %indvars.iv.next920.i.i, %._crit_edge820.i.i ], [ 0, %iter.check356.preheader ] ; 2 uses
  %.idx981.i.i = shl nuw nsw i64 %indvars.iv919.i.i, 8
  %invariant.gep1033.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx981.i.i ; 3 uses
  br i1 %min.iters.check345, label %vec.epilog.scalar.ph357.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check356
  br i1 %min.iters.check347, label %vec.epilog.ph360, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %i.yx
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next352, %vector.body350 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %index351 ; 4 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 32
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahg, i64 64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 96
  store <8 x float> splat (float -inf), ptr %i.ahg, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahh, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahi, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahj, align 4, !tbaa !43
  %index.next352 = add nuw i64 %index351, 32      ; 2 uses
  %i.ahk = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.ahk, label %middle.block353, label %vector.body350, !llvm.loop !1423

middle.block353:                                  ; preds = %vector.body350
  br i1 %cmp.n354, label %._crit_edge820.i.i, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block353
  br i1 %min.epilog.iters.check359, label %vec.epilog.scalar.ph357.preheader, label %vec.epilog.ph360, !prof !50

vec.epilog.ph360:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check358
  %vec.epilog.resume.val355 = phi i64 [ %n.vec349, %vec.epilog.iter.check358 ], [ 0, %vector.main.loop.iter.check346 ]
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %i.yx
  br label %vec.epilog.vector.body362

vec.epilog.vector.body362:                        ; preds = %vec.epilog.vector.body362, %vec.epilog.ph360
  %index363 = phi i64 [ %vec.epilog.resume.val355, %vec.epilog.ph360 ], [ %index.next364, %vec.epilog.vector.body362 ] ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %index363
  store <8 x float> splat (float -inf), ptr %i.ahm, align 4, !tbaa !43
  %index.next364 = add nuw i64 %index363, 8       ; 2 uses
  %i.ahn = icmp eq i64 %index.next364, %n.vec361
  br i1 %i.ahn, label %vec.epilog.middle.block365, label %vec.epilog.vector.body362, !llvm.loop !1424

vec.epilog.middle.block365:                       ; preds = %vec.epilog.vector.body362
  br i1 %cmp.n366, label %._crit_edge820.i.i, label %vec.epilog.scalar.ph357.preheader

vec.epilog.scalar.ph357.preheader:                ; preds = %iter.check356, %vec.epilog.iter.check358, %vec.epilog.middle.block365
  %indvars.iv916.i.i.ph = phi i64 [ %i.yx, %iter.check356 ], [ %i.aei, %vec.epilog.iter.check358 ], [ %i.aej, %vec.epilog.middle.block365 ]
  br label %vec.epilog.scalar.ph357

._crit_edge820.i.i:                               ; preds = %vec.epilog.scalar.ph357, %vec.epilog.middle.block365, %middle.block353
  %indvars.iv.next920.i.i = add nuw nsw i64 %indvars.iv919.i.i, 1 ; 2 uses
  %exitcond922.not.i.i = icmp eq i64 %indvars.iv.next920.i.i, 64
  br i1 %exitcond922.not.i.i, label %.loopexit738.i.i, label %iter.check356, !llvm.loop !1425

vec.epilog.scalar.ph357:                          ; preds = %vec.epilog.scalar.ph357.preheader, %vec.epilog.scalar.ph357
  %indvars.iv916.i.i = phi i64 [ %indvars.iv.next917.i.i, %vec.epilog.scalar.ph357 ], [ %indvars.iv916.i.i.ph, %vec.epilog.scalar.ph357.preheader ] ; 3 uses
  %gep1034.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %indvars.iv916.i.i
  store float -inf, ptr %gep1034.i.i, align 4, !tbaa !43
  %indvars.iv.next917.i.i = add nuw nsw i64 %indvars.iv916.i.i, 1
  %i.aho = trunc nuw i64 %indvars.iv916.i.i to i32
  %i.ahp = icmp slt i32 %i.aho, 63
  br i1 %i.ahp, label %vec.epilog.scalar.ph357, label %._crit_edge820.i.i, !llvm.loop !1426

.loopexit738.i.i:                                 ; preds = %._crit_edge820.i.i, %_ZL18ggml_vec_scale_f32iPff.exit.i264.i
  br i1 %i.rn, label %.preheader736.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit524.i.i

.preheader736.i.i:                                ; preds = %.loopexit738.i.i, %.preheader736.i.i
  %indvars.iv.i517.i.i = phi i64 [ %indvars.iv.next.i518.i.i.7, %.preheader736.i.i ], [ 0, %.loopexit738.i.i ] ; 9 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i ; 2 uses
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !43
  %i.ahs = tail call float @tanhf(float noundef %i.ahr) #18
  store float %i.ahs, ptr %i.ahq, align 4, !tbaa !43
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 4 ; 2 uses
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !43
  %i.ahw = tail call float @tanhf(float noundef %i.ahv) #18
  store float %i.ahw, ptr %i.ahu, align 4, !tbaa !43
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8 ; 2 uses
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !43
  %i.aia = tail call float @tanhf(float noundef %i.ahz) #18
  store float %i.aia, ptr %i.ahy, align 4, !tbaa !43
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 12 ; 2 uses
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !43
  %i.aie = tail call float @tanhf(float noundef %i.aid) #18
  store float %i.aie, ptr %i.aic, align 4, !tbaa !43
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16 ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !43
  %i.aii = tail call float @tanhf(float noundef %i.aih) #18
  store float %i.aii, ptr %i.aig, align 4, !tbaa !43
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 20 ; 2 uses
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !43
  %i.aim = tail call float @tanhf(float noundef %i.ail) #18
  store float %i.aim, ptr %i.aik, align 4, !tbaa !43
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 24 ; 2 uses
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !43
  %i.aiq = tail call float @tanhf(float noundef %i.aip) #18
  store float %i.aiq, ptr %i.aio, align 4, !tbaa !43
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i517.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 28 ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !43
  %i.aiu = tail call float @tanhf(float noundef %i.ait) #18
  store float %i.aiu, ptr %i.ais, align 4, !tbaa !43
  %indvars.iv.next.i518.i.i.7 = add nuw nsw i64 %indvars.iv.i517.i.i, 8 ; 2 uses
  %exitcond.not.i519.i.i.7 = icmp eq i64 %indvars.iv.next.i518.i.i.7, 4096
  br i1 %exitcond.not.i519.i.i.7, label %.preheader27.i520.i.i, label %.preheader736.i.i, !llvm.loop !1427

.preheader27.i520.i.i:                            ; preds = %.preheader736.i.i, %.preheader27.i520.i.i
  %indvars.iv.i521.i.i = phi i64 [ %indvars.iv.next.i522.i.i.1, %.preheader27.i520.i.i ], [ 0, %.preheader736.i.i ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i521.i.i ; 5 uses
  %i.aiw = load <16 x float>, ptr %i.aiv, align 1, !tbaa !56
  %i.aix = fmul <16 x float> %i.tg, %i.aiw
  store <16 x float> %i.aix, ptr %i.aiv, align 1, !tbaa !56
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 64 ; 2 uses
  %i.aiz = load <16 x float>, ptr %i.aiy, align 1, !tbaa !56
  %i.aja = fmul <16 x float> %i.tg, %i.aiz
  store <16 x float> %i.aja, ptr %i.aiy, align 1, !tbaa !56
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiv, i64 128 ; 2 uses
  %i.ajc = load <16 x float>, ptr %i.ajb, align 1, !tbaa !56
  %i.ajd = fmul <16 x float> %i.tg, %i.ajc
  store <16 x float> %i.ajd, ptr %i.ajb, align 1, !tbaa !56
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiv, i64 192 ; 2 uses
  %i.ajf = load <16 x float>, ptr %i.aje, align 1, !tbaa !56
  %i.ajg = fmul <16 x float> %i.tg, %i.ajf
  store <16 x float> %i.ajg, ptr %i.aje, align 1, !tbaa !56
  %indvars.iv.next.i522.i.i = or disjoint i64 %indvars.iv.i521.i.i, 64 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.next.i522.i.i ; 5 uses
  %i.aji = load <16 x float>, ptr %i.ajh, align 1, !tbaa !56
  %i.ajj = fmul <16 x float> %i.tg, %i.aji
  store <16 x float> %i.ajj, ptr %i.ajh, align 1, !tbaa !56
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 64 ; 2 uses
  %i.ajl = load <16 x float>, ptr %i.ajk, align 1, !tbaa !56
  %i.ajm = fmul <16 x float> %i.tg, %i.ajl
  store <16 x float> %i.ajm, ptr %i.ajk, align 1, !tbaa !56
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 128 ; 2 uses
  %i.ajo = load <16 x float>, ptr %i.ajn, align 1, !tbaa !56
  %i.ajp = fmul <16 x float> %i.tg, %i.ajo
  store <16 x float> %i.ajp, ptr %i.ajn, align 1, !tbaa !56
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajh, i64 192 ; 2 uses
  %i.ajr = load <16 x float>, ptr %i.ajq, align 1, !tbaa !56
  %i.ajs = fmul <16 x float> %i.tg, %i.ajr
  store <16 x float> %i.ajs, ptr %i.ajq, align 1, !tbaa !56
  %indvars.iv.next.i522.i.i.1 = add nuw nsw i64 %indvars.iv.i521.i.i, 128
  %i.ajt = icmp samesign ult i64 %indvars.iv.next.i522.i.i, 4032
  br i1 %i.ajt, label %.preheader27.i520.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit524.i.i, !llvm.loop !2

_ZL18ggml_vec_scale_f32iPff.exit524.i.i:          ; preds = %.preheader27.i520.i.i, %.loopexit738.i.i
  br i1 %.not511.i.i, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %.lr.ph.i.i.i

.preheader.loopexit.i.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.aju = trunc nuw nsw i64 %indvars.iv.next.i528.i.i to i32
  %2 = icmp sgt i32 %i.ya, %i.aju
  br i1 %2, label %iter.check330, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i

iter.check330:                                    ; preds = %.preheader.loopexit.i.i.i
  br i1 %min.iters.check311, label %.lr.ph22.i.i.i.preheader, label %vector.main.loop.iter.check312

vector.main.loop.iter.check312:                   ; preds = %iter.check330
  br i1 %min.iters.check313, label %vec.epilog.vector.body336.preheader, label %vector.ph314

vector.ph314:                                     ; preds = %vector.main.loop.iter.check312
  %i.ajv = add i64 %indvars.iv.next.i528.i.i, %n.vec315
  br label %vector.body316

vector.body316:                                   ; preds = %vector.ph314, %vector.body316
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next326, %vector.body316 ] ; 2 uses
  %i.ajw = add nuw i64 %indvars.iv.next.i528.i.i, %index317 ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.ajw ; 5 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 32 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 64 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajx, i64 96 ; 2 uses
  %wide.load318 = load <8 x float>, ptr %i.ajx, align 4, !tbaa !43
  %wide.load319 = load <8 x float>, ptr %i.ajy, align 4, !tbaa !43
  %wide.load320 = load <8 x float>, ptr %i.ajz, align 4, !tbaa !43
  %wide.load321 = load <8 x float>, ptr %i.aka, align 4, !tbaa !43
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.ajw ; 4 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 32
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 64
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akb, i64 96
  %wide.load322 = load <8 x float>, ptr %i.akb, align 4, !tbaa !43
  %wide.load323 = load <8 x float>, ptr %i.akc, align 4, !tbaa !43
  %wide.load324 = load <8 x float>, ptr %i.akd, align 4, !tbaa !43
  %wide.load325 = load <8 x float>, ptr %i.ake, align 4, !tbaa !43
  %i.akf = fadd <8 x float> %wide.load318, %wide.load322
  %i.akg = fadd <8 x float> %wide.load319, %wide.load323
  %i.akh = fadd <8 x float> %wide.load320, %wide.load324
  %i.aki = fadd <8 x float> %wide.load321, %wide.load325
  store <8 x float> %i.akf, ptr %i.ajx, align 4, !tbaa !43
  store <8 x float> %i.akg, ptr %i.ajy, align 4, !tbaa !43
  store <8 x float> %i.akh, ptr %i.ajz, align 4, !tbaa !43
  store <8 x float> %i.aki, ptr %i.aka, align 4, !tbaa !43
  %index.next326 = add nuw i64 %index317, 32      ; 2 uses
  %i.akj = icmp eq i64 %index.next326, %n.vec315
  br i1 %i.akj, label %middle.block327, label %vector.body316, !llvm.loop !1428

middle.block327:                                  ; preds = %vector.body316
  br i1 %cmp.n328, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block327
  br i1 %min.epilog.iters.check333, label %.lr.ph22.i.i.i.preheader, label %vec.epilog.vector.body336.preheader, !prof !50

vec.epilog.vector.body336.preheader:              ; preds = %vector.main.loop.iter.check312, %vec.epilog.iter.check332
  %index337.ph = phi i64 [ 0, %vector.main.loop.iter.check312 ], [ %n.vec315, %vec.epilog.iter.check332 ]
  br label %vec.epilog.vector.body336

.lr.ph22.i.i.i.preheader:                         ; preds = %iter.check330, %vec.epilog.iter.check332
  %indvars.iv24.i.i.i.ph = phi i64 [ %i.ajv, %vec.epilog.iter.check332 ], [ %indvars.iv.next.i528.i.i, %iter.check330 ]
  br label %.lr.ph22.i.i.i

vec.epilog.vector.body336:                        ; preds = %vec.epilog.vector.body336.preheader, %vec.epilog.vector.body336
  %index337 = phi i64 [ %index.next340, %vec.epilog.vector.body336 ], [ %index337.ph, %vec.epilog.vector.body336.preheader ] ; 2 uses
  %i.akk = add nuw i64 %indvars.iv.next.i528.i.i, %index337 ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.akk ; 2 uses
  %wide.load338 = load <8 x float>, ptr %i.akl, align 4, !tbaa !43
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.akk
  %wide.load339 = load <8 x float>, ptr %i.akm, align 4, !tbaa !43
  %i.akn = fadd <8 x float> %wide.load338, %wide.load339
  store <8 x float> %i.akn, ptr %i.akl, align 4, !tbaa !43
  %index.next340 = add nuw i64 %index337, 8       ; 2 uses
  %i.ako = icmp eq i64 %index.next340, %i.yj
  br i1 %i.ako, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %vec.epilog.vector.body336, !llvm.loop !1429

.lr.ph.i.i.i:                                     ; preds = %_ZL18ggml_vec_scale_f32iPff.exit524.i.i, %.lr.ph.i.i.i
  %indvars.iv.i527.i.i = phi i64 [ %indvars.iv.next.i528.i.i, %.lr.ph.i.i.i ], [ 0, %_ZL18ggml_vec_scale_f32iPff.exit524.i.i ] ; 3 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i527.i.i ; 2 uses
  %i.akq = load <8 x float>, ptr %i.akp, align 1, !tbaa !56
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.i527.i.i
  %i.aks = load <8 x float>, ptr %i.akr, align 1, !tbaa !56
  %i.akt = fadd <8 x float> %i.akq, %i.aks
  store <8 x float> %i.akt, ptr %i.akp, align 1, !tbaa !56
  %indvars.iv.next.i528.i.i = add nuw nsw i64 %indvars.iv.i527.i.i, 8 ; 7 uses
  %i.aku = or disjoint i64 %indvars.iv.next.i528.i.i, 7
  %i.akv = icmp samesign ult i64 %i.aku, %i.yb
  br i1 %i.akv, label %.lr.ph.i.i.i, label %.preheader.loopexit.i.i.i, !llvm.loop !0

.lr.ph22.i.i.i:                                   ; preds = %.lr.ph22.i.i.i.preheader, %.lr.ph22.i.i.i
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %.lr.ph22.i.i.i ], [ %indvars.iv24.i.i.i.ph, %.lr.ph22.i.i.i.preheader ] ; 3 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv24.i.i.i ; 2 uses
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !43
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv24.i.i.i
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !43
  %i.ala = fadd float %i.akx, %i.akz
  store float %i.ala, ptr %i.akw, align 4, !tbaa !43
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %exitcond.not.i526.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %i.yb
  br i1 %exitcond.not.i526.i.i, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %.lr.ph22.i.i.i, !llvm.loop !1430

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i:          ; preds = %vec.epilog.vector.body336, %.lr.ph22.i.i.i, %middle.block327, %.preheader.loopexit.i.i.i, %_ZL18ggml_vec_scale_f32iPff.exit524.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  br label %.lr.ph.i530.i.i

.lr.ph.i530.i.i:                                  ; preds = %bb.by, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i
  %indvars.iv923.i.i = phi i64 [ 0, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i ], [ %indvars.iv.next924.i.i, %bb.by ] ; 7 uses
  %.idx982.i.i = shl nuw nsw i64 %indvars.iv923.i.i, 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx982.i.i ; 66 uses
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !43 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !43 ; 2 uses
  %i.alf = fcmp ogt float %i.alc, %i.ale
  %.010..i.1.i.i = select i1 %i.alf, float %i.alc, float %i.ale ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !43 ; 2 uses
  %i.ali = fcmp ogt float %.010..i.1.i.i, %i.alh
  %.010..i.2.i.i = select i1 %i.ali, float %.010..i.1.i.i, float %i.alh ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alb, i64 12
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !43 ; 2 uses
  %i.all = fcmp ogt float %.010..i.2.i.i, %i.alk
  %.010..i.3.i.i = select i1 %i.all, float %.010..i.2.i.i, float %i.alk ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !43 ; 2 uses
  %i.alo = fcmp ogt float %.010..i.3.i.i, %i.aln
  %.010..i.4.i.i = select i1 %i.alo, float %.010..i.3.i.i, float %i.aln ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alb, i64 20
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !43 ; 2 uses
  %i.alr = fcmp ogt float %.010..i.4.i.i, %i.alq
  %.010..i.5.i.i = select i1 %i.alr, float %.010..i.4.i.i, float %i.alq ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.alt = load float, ptr %i.als, align 4, !tbaa !43 ; 2 uses
  %i.alu = fcmp ogt float %.010..i.5.i.i, %i.alt
  %.010..i.6.i.i = select i1 %i.alu, float %.010..i.5.i.i, float %i.alt ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alb, i64 28
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !43 ; 2 uses
  %i.alx = fcmp ogt float %.010..i.6.i.i, %i.alw
  %.010..i.7.i.i = select i1 %i.alx, float %.010..i.6.i.i, float %i.alw ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !43 ; 2 uses
  %i.ama = fcmp ogt float %.010..i.7.i.i, %i.alz
  %.010..i.8.i.i = select i1 %i.ama, float %.010..i.7.i.i, float %i.alz ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alb, i64 36
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !43 ; 2 uses
  %i.amd = fcmp ogt float %.010..i.8.i.i, %i.amc
  %.010..i.9.i.i = select i1 %i.amd, float %.010..i.8.i.i, float %i.amc ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alb, i64 40
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !43 ; 2 uses
  %i.amg = fcmp ogt float %.010..i.9.i.i, %i.amf
  %.010..i.10.i.i = select i1 %i.amg, float %.010..i.9.i.i, float %i.amf ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alb, i64 44
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !43 ; 2 uses
  %i.amj = fcmp ogt float %.010..i.10.i.i, %i.ami
  %.010..i.11.i.i = select i1 %i.amj, float %.010..i.10.i.i, float %i.ami ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alb, i64 48
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !43 ; 2 uses
  %i.amm = fcmp ogt float %.010..i.11.i.i, %i.aml
  %.010..i.12.i.i = select i1 %i.amm, float %.010..i.11.i.i, float %i.aml ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alb, i64 52
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !43 ; 2 uses
  %i.amp = fcmp ogt float %.010..i.12.i.i, %i.amo
  %.010..i.13.i.i = select i1 %i.amp, float %.010..i.12.i.i, float %i.amo ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alb, i64 56
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !43 ; 2 uses
  %i.ams = fcmp ogt float %.010..i.13.i.i, %i.amr
  %.010..i.14.i.i = select i1 %i.ams, float %.010..i.13.i.i, float %i.amr ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.alb, i64 60
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !43 ; 2 uses
  %i.amv = fcmp ogt float %.010..i.14.i.i, %i.amu
  %.010..i.15.i.i = select i1 %i.amv, float %.010..i.14.i.i, float %i.amu ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alb, i64 64
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !43 ; 2 uses
  %i.amy = fcmp ogt float %.010..i.15.i.i, %i.amx
  %.010..i.16.i.i = select i1 %i.amy, float %.010..i.15.i.i, float %i.amx ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.alb, i64 68
  %i.ana = load float, ptr %i.amz, align 4, !tbaa !43 ; 2 uses
  %i.anb = fcmp ogt float %.010..i.16.i.i, %i.ana
  %.010..i.17.i.i = select i1 %i.anb, float %.010..i.16.i.i, float %i.ana ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alb, i64 72
  %i.and = load float, ptr %i.anc, align 4, !tbaa !43 ; 2 uses
  %i.ane = fcmp ogt float %.010..i.17.i.i, %i.and
  %.010..i.18.i.i = select i1 %i.ane, float %.010..i.17.i.i, float %i.and ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.alb, i64 76
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !43 ; 2 uses
  %i.anh = fcmp ogt float %.010..i.18.i.i, %i.ang
  %.010..i.19.i.i = select i1 %i.anh, float %.010..i.18.i.i, float %i.ang ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.alb, i64 80
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !43 ; 2 uses
  %i.ank = fcmp ogt float %.010..i.19.i.i, %i.anj
  %.010..i.20.i.i = select i1 %i.ank, float %.010..i.19.i.i, float %i.anj ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.alb, i64 84
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !43 ; 2 uses
  %i.ann = fcmp ogt float %.010..i.20.i.i, %i.anm
  %.010..i.21.i.i = select i1 %i.ann, float %.010..i.20.i.i, float %i.anm ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.alb, i64 88
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !43 ; 2 uses
  %i.anq = fcmp ogt float %.010..i.21.i.i, %i.anp
  %.010..i.22.i.i = select i1 %i.anq, float %.010..i.21.i.i, float %i.anp ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.alb, i64 92
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !43 ; 2 uses
  %i.ant = fcmp ogt float %.010..i.22.i.i, %i.ans
  %.010..i.23.i.i = select i1 %i.ant, float %.010..i.22.i.i, float %i.ans ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.alb, i64 96
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !43 ; 2 uses
  %i.anw = fcmp ogt float %.010..i.23.i.i, %i.anv
end_hunk_0
