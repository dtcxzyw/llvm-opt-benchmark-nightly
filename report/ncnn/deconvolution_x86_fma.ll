Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.avx = load ptr, ptr %1, align 8, !tbaa !18, !noalias !390
  %i.avy = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !390
  %i.avz = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !390 ; 2 uses
  %factor.op.mul.us.us.us2849.us.i.us = mul i64 %i.avz, %i.avy ; 4 uses
  %i.awa = mul i64 %i.avr, %i.avz
  %invariant.gep.us.us.us2850.us.i.us = getelementptr i8, ptr %i.avx, i64 %i.awa
  %i.awb = sext i32 %i.avw to i64
  %invariant.gep2786.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2850.us.i.us, i64 %i.awb ; 4 uses
  %.reass.us.us2828.us.us.i.us = mul i64 %factor.op.mul.us.us.us2849.us.i.us, %indvars.iv3373.i
  %gep2787.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2786.us.us.us.us.i.us, i64 %.reass.us.us2828.us.us.i.us
  %i.awc = load float, ptr %gep2787.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03504.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.awc, i64 0
  %.reass.us.us2828.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2849.us.i.us, %i.atz
  %gep2787.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2786.us.us.us.us.i.us, i64 %.reass.us.us2828.us.us.1.i.us
  %i.awd = load float, ptr %gep2787.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03504.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03504.0.vec.insert.i.us, float %i.awd, i64 1
  %.reass.us.us2828.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2849.us.i.us, %i.aua
  %gep2787.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2786.us.us.us.us.i.us, i64 %.reass.us.us2828.us.us.2.i.us
  %i.awe = load float, ptr %gep2787.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03504.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03504.4.vec.insert.i.us, float %i.awe, i64 2
  %.reass.us.us2828.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2849.us.i.us, %i.aub
  %gep2787.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2786.us.us.us.us.i.us, i64 %.reass.us.us2828.us.us.3.i.us
  %i.awf = load float, ptr %gep2787.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03504.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03504.8.vec.insert.i.us, float %i.awf, i64 3 ; 2 uses
  %i.awg = add nuw nsw i64 %indvars.iv3358.i.us, %i.avp
  %i.awh = shl i64 %i.awg, 3
  %i.awi = and i64 %i.awh, 4294967288
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %.17682834.us.us.i, i64 %i.awi ; 2 uses
  %i.awk = load <4 x float>, ptr %i.awj, align 16, !tbaa !310
  %i.awl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03504.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awk, <4 x float> nofpclass(nan inf) %.223762789.us2801.us.us.us.i.us)
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  %i.awn = load <4 x float>, ptr %i.awm, align 16, !tbaa !310
  %i.awo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03504.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awn, <4 x float> nofpclass(nan inf) %.223712790.us2800.us.us.us.i.us)
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2798.us.us.us.i.us
  %.32377.us2805.us.us.us.i.us = phi nsz <4 x float> [ %.223762789.us2801.us.us.us.i.us, %.lr.ph.split.us2798.us.us.us.i.us ], [ %i.awl, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762789.us2801.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2806.us.us.us.i.us = phi nsz <4 x float> [ %.223712790.us2800.us.us.us.i.us, %.lr.ph.split.us2798.us.us.us.i.us ], [ %i.awo, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712790.us2800.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3359.i.us = add nuw nsw i64 %indvars.iv3358.i.us, 1 ; 2 uses
  %exitcond3362.not.i.us = icmp eq i64 %indvars.iv.next3359.i.us, %i.atv
  br i1 %exitcond3362.not.i.us, label %..loopexit2485_crit_edge.us.us.us.i.us190, label %.lr.ph.split.us2798.us.us.us.i.us, !llvm.loop !388

..loopexit2485_crit_edge.us.us.us.i.us190:        ; preds = %bb.cq, %bb.co, %.preheader2490.us.us.i.split.us182
  %.42378.us.us.us.i.us191 = phi nsz <4 x float> [ %.123752812.us.us.us.i.us185, %.preheader2490.us.us.i.split.us182 ], [ %.123752812.us.us.us.i.us185, %bb.co ], [ %.32377.us2805.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us192 = phi nsz <4 x float> [ %.123702813.us.us.us.i.us184, %.preheader2490.us.us.i.split.us182 ], [ %.123702813.us.us.us.i.us184, %bb.co ], [ %.32372.us2806.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3369.i.us193 = add nuw nsw i64 %indvars.iv3368.i.us183, 1 ; 2 uses
  %exitcond3372.not.i.us194 = icmp eq i64 %indvars.iv.next3369.i.us193, %wide.trip.count3345.i
  br i1 %exitcond3372.not.i.us194, label %._crit_edge2816.split.us.us.us.i, label %.preheader2490.us.us.i.split.us182, !llvm.loop !389

._crit_edge2816.split.us.us.us.i:                 ; preds = %..loopexit2485_crit_edge.us.us.us.i.us190, %..loopexit2485_crit_edge.us.us.us.i.us, %.preheader2490.us.us.i
  %.us-phi180 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2485_crit_edge.us.us.us.i.us ], [ %.023742832.us.us.i, %.preheader2490.us.us.i ], [ %.42378.us.us.us.i.us191, %..loopexit2485_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %.us-phi181 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2485_crit_edge.us.us.us.i.us ], [ %.023692833.us.us.i, %.preheader2490.us.us.i ], [ %.42373.us.us.us.i.us192, %..loopexit2485_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %i.awp = getelementptr inbounds [4 x i8], ptr %.17682834.us.us.i, i64 %i.aox ; 2 uses
  %indvars.iv.next3374.i = add nuw nsw i64 %indvars.iv3373.i, 4 ; 2 uses
  %i.awq = trunc i64 %indvars.iv.next3374.i to i32 ; 2 uses
  %i.awr = or i32 %i.awq, 3
  %i.aws = icmp slt i32 %i.awr, %i.kf
  br i1 %i.aws, label %.preheader2490.us.us.i, label %._crit_edge2838.i, !llvm.loop !393

._crit_edge2838.i:                                ; preds = %._crit_edge2816.split.us.us.us.i, %.preheader2490.us.preheader.i, %.preheader2490.preheader.i, %._crit_edge2765.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2765.i ], [ zeroinitializer, %.preheader2490.preheader.i ], [ zeroinitializer, %.preheader2490.us.preheader.i ], [ %.us-phi180, %._crit_edge2816.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2765.i ], [ zeroinitializer, %.preheader2490.preheader.i ], [ zeroinitializer, %.preheader2490.us.preheader.i ], [ %.us-phi181, %._crit_edge2816.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2765.i ], [ %scevgep3351.i, %.preheader2490.preheader.i ], [ %scevgep3353.i, %.preheader2490.us.preheader.i ], [ %i.awp, %._crit_edge2816.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2765.i ], [ %i.atm, %.preheader2490.preheader.i ], [ %i.atu, %.preheader2490.us.preheader.i ], [ %i.awq, %._crit_edge2816.split.us.us.us.i ] ; 9 uses
  %i.awt = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awu = fadd fast <4 x float> %i.awt, %.02374.lcssa.i ; 2 uses
  %i.awv = shufflevector <4 x float> %i.asr, <4 x float> %i.asw, <2 x i32> <i32 1, i32 5>
  %i.aww = fadd fast <2 x float> %i.awv, %i.ape
  %i.awx = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awy = fadd fast <4 x float> %i.awx, %.02369.lcssa.i ; 2 uses
  %i.awz = shufflevector <4 x float> %i.asr, <4 x float> %i.asw, <2 x i32> <i32 0, i32 4>
  %i.axa = fadd fast <2 x float> %i.aww, %i.awz
  %i.axb = shufflevector <4 x float> %i.awu, <4 x float> %i.awy, <2 x i32> <i32 1, i32 5>
  %i.axc = fadd fast <2 x float> %i.axa, %i.axb
  %i.axd = shufflevector <4 x float> %i.awu, <4 x float> %i.awy, <2 x i32> <i32 0, i32 4>
  %i.axe = fadd fast <2 x float> %i.axc, %i.axd   ; 4 uses
  %i.axf = or disjoint i32 %.1764.lcssa.i, 1
  %i.axg = icmp slt i32 %i.axf, %i.kf
  br i1 %i.axg, label %.preheader2489.lr.ph.i, label %.preheader2492.i

.preheader2489.lr.ph.i:                           ; preds = %._crit_edge2838.i
  %i.axh = load i32, ptr %i.d, align 4
  %i.axi = load i32, ptr %i.j, align 4
  %invariant.op2879.i = sub i32 %.neg2447.i, %i.axi
  %i.axj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.axk = load i32, ptr %i.a, align 4
  %.fr3167.i = freeze i32 %i.axk                  ; 2 uses
  %i.axl = load i32, ptr %i.c, align 4
  %i.axm = load i32, ptr %i.i, align 4
  %.neg2441.i = add nuw nsw i32 %.08032952.i, 1
  %invariant.op2870.i = sub i32 %.neg2441.i, %i.axm
  %i.axn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aos, label %.preheader2489.lr.ph.split.us.i, label %.preheader2489.preheader.i

.preheader2489.preheader.i:                       ; preds = %.preheader2489.lr.ph.i
  %i.axo = add i32 %.1764.lcssa.i, 3
  %smax3376.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.axo)
  %reass.sub218 = sub i32 %smax3376.i, %.1764.lcssa.i
  %i.axp = add i32 %reass.sub218, -2              ; 2 uses
  %i.axq = lshr i32 %i.axp, 1
  %i.axr = zext nneg i32 %i.axq to i64
  %i.axs = shl nuw nsw i64 %i.axr, 2
  %i.axt = add nuw nsw i64 %i.axs, 4
  %i.axu = mul i64 %i.axt, %i.aoz
  %scevgep3377.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.axu
  %i.axv = add i32 %.1764.lcssa.i, 2
  %i.axw = and i32 %i.axp, -2
  %i.axx = add i32 %i.axv, %i.axw
  br label %.preheader2492.i

.preheader2489.lr.ph.split.us.i:                  ; preds = %.preheader2489.lr.ph.i
  %i.axy = icmp sgt i32 %.fr3167.i, 0
  br i1 %i.axy, label %.preheader2489.us.us.preheader.i, label %.preheader2489.us.preheader.i

.preheader2489.us.preheader.i:                    ; preds = %.preheader2489.lr.ph.split.us.i
  %i.axz = add i32 %.1764.lcssa.i, 3
  %smax3378.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.axz)
  %reass.sub219 = sub i32 %smax3378.i, %.1764.lcssa.i
  %i.aya = add i32 %reass.sub219, -2              ; 2 uses
  %i.ayb = lshr i32 %i.aya, 1
  %i.ayc = zext nneg i32 %i.ayb to i64
  %i.ayd = shl nuw nsw i64 %i.ayc, 2
  %i.aye = add nuw nsw i64 %i.ayd, 4
  %i.ayf = mul i64 %i.aye, %i.aoz
  %scevgep3379.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.ayf
  %i.ayg = add i32 %.1764.lcssa.i, 2
  %i.ayh = and i32 %i.aya, -2
  %i.ayi = add i32 %i.ayg, %i.ayh
  br label %.preheader2492.i

.preheader2489.us.us.preheader.i:                 ; preds = %.preheader2489.lr.ph.split.us.i
  %i.ayj = zext nneg i32 %.fr3167.i to i64        ; 2 uses
  %i.ayk = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2489.us.us.i

.preheader2489.us.us.i:                           ; preds = %._crit_edge2876.split.us.us.us.i, %.preheader2489.us.us.preheader.i
  %indvars.iv3393.i = phi i64 [ %i.ayk, %.preheader2489.us.us.preheader.i ], [ %indvars.iv.next3394.i, %._crit_edge2876.split.us.us.us.i ] ; 3 uses
  %.27692887.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2489.us.us.preheader.i ], [ %i.baa, %._crit_edge2876.split.us.us.us.i ] ; 2 uses
  %i.ayl = phi <2 x float> [ %i.axe, %.preheader2489.us.us.preheader.i ], [ %i.azw, %._crit_edge2876.split.us.us.us.i ]
  %i.aym = add nuw nsw i64 %indvars.iv3393.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2483_crit_edge.us.us.us.i, %.preheader2489.us.us.i
  %indvars.iv3388.i = phi i64 [ %indvars.iv.next3389.i, %..loopexit2483_crit_edge.us.us.us.i ], [ 0, %.preheader2489.us.us.i ] ; 3 uses
  %i.ayn = phi <2 x float> [ %i.azw, %..loopexit2483_crit_edge.us.us.us.i ], [ %i.ayl, %.preheader2489.us.us.i ] ; 3 uses
  %i.ayo = trunc i64 %indvars.iv3388.i to i32
  %i.ayp = mul i32 %i.axh, %i.ayo
  %.reass2880.us.us.us.i = add i32 %i.ayp, %invariant.op2879.i ; 3 uses
  %i.ayq = icmp slt i32 %.reass2880.us.us.us.i, 0
  br i1 %i.ayq, label %..loopexit2483_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayr = srem i32 %.reass2880.us.us.us.i, %i.axj
  %i.ays = sdiv i32 %.reass2880.us.us.us.i, %i.axj ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.ayr, 0
  %.not909.us.us.us.i = icmp slt i32 %i.ays, %i.kh
  %or.cond429 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond429, label %.preheader2482.us.us.us.i, label %..loopexit2483_crit_edge.us.us.us.i

bb.ct:                                            ; preds = %.preheader2482.us.us.us.i, %.loopexit2479.us.us.us.i
  %indvars.iv3383.i = phi i64 [ 0, %.preheader2482.us.us.us.i ], [ %indvars.iv.next3384.i, %.loopexit2479.us.us.us.i ] ; 3 uses
  %i.ayt = phi <2 x float> [ %i.ayn, %.preheader2482.us.us.us.i ], [ %i.azv, %.loopexit2479.us.us.us.i ] ; 3 uses
  %i.ayu = trunc i64 %indvars.iv3383.i to i32
  %i.ayv = mul i32 %i.axl, %i.ayu
  %.reass2871.us.us.us.i = add i32 %invariant.op2870.i, %i.ayv ; 3 uses
  %i.ayw = icmp slt i32 %.reass2871.us.us.us.i, 0
  br i1 %i.ayw, label %.loopexit2479.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ayx = srem i32 %.reass2871.us.us.us.i, %i.axn
  %i.ayy = sdiv i32 %.reass2871.us.us.us.i, %i.axn ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.ayx, 0
  %.not911.us.us.us.i = icmp slt i32 %i.ayy, %i.kg
  %or.cond430 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond430, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2479.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.ayz = add nuw nsw i64 %indvars.iv3383.i, %i.azx
  %i.aza = shl i64 %i.ayz, 2
  %i.azb = and i64 %i.aza, 4294967292
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.27692887.us.us.i, i64 %i.azb
  %i.azd = load ptr, ptr %1, align 8, !tbaa !18, !noalias !394
  %i.aze = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !394
  %i.azf = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !394 ; 2 uses
  %factor.op.mul.us.us.us2906.i = mul i64 %i.azf, %i.aze ; 2 uses
  %i.azg = mul i64 %i.azz, %i.azf
  %invariant.gep.us.us.us2907.i = getelementptr i8, ptr %i.azd, i64 %i.azg
  %i.azh = sext i32 %i.ayy to i64
  %invariant.gep2860.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2907.i, i64 %i.azh ; 2 uses
  %.reass.us2881.us.us.i = mul i64 %factor.op.mul.us.us.us2906.i, %indvars.iv3393.i
  %gep2861.us.us.us.i = getelementptr i8, ptr %invariant.gep2860.us.us.us.i, i64 %.reass.us2881.us.us.i
  %i.azi = load float, ptr %gep2861.us.us.us.i, align 4, !tbaa !39
  %.reass.us2881.us.us.1.i = mul i64 %factor.op.mul.us.us.us2906.i, %i.aym
  %gep2861.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2860.us.us.us.i, i64 %.reass.us2881.us.us.1.i
  %i.azj = load float, ptr %gep2861.us.us.us.1.i, align 4, !tbaa !39
  %i.azk = load <4 x float>, ptr %i.azc, align 4, !tbaa !39 ; 2 uses
  %i.azl = shufflevector <4 x float> %i.azk, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.azm = insertelement <2 x float> poison, float %i.azi, i64 0
  %i.azn = shufflevector <2 x float> %i.azm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azo = fmul fast <2 x float> %i.azl, %i.azn
  %i.azp = fadd fast <2 x float> %i.ayt, %i.azo
  %i.azq = shufflevector <4 x float> %i.azk, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.azr = insertelement <2 x float> poison, float %i.azj, i64 0
  %i.azs = shufflevector <2 x float> %i.azr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azt = fmul fast <2 x float> %i.azq, %i.azs
  %i.azu = fadd fast <2 x float> %i.azt, %i.azp
  br label %.loopexit2479.us.us.us.i

.loopexit2479.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.azv = phi <2 x float> [ %i.ayt, %bb.ct ], [ %i.ayt, %bb.cu ], [ %i.azu, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3384.i = add nuw nsw i64 %indvars.iv3383.i, 1 ; 2 uses
  %exitcond3387.not.i = icmp eq i64 %indvars.iv.next3384.i, %i.ayj
  br i1 %exitcond3387.not.i, label %..loopexit2483_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !397

..loopexit2483_crit_edge.us.us.us.i:              ; preds = %.loopexit2479.us.us.us.i, %bb.cs, %bb.cr
  %i.azw = phi <2 x float> [ %i.ayn, %bb.cr ], [ %i.ayn, %bb.cs ], [ %i.azv, %.loopexit2479.us.us.us.i ] ; 3 uses
  %indvars.iv.next3389.i = add nuw nsw i64 %indvars.iv3388.i, 1 ; 2 uses
  %exitcond3392.not.i = icmp eq i64 %indvars.iv.next3389.i, %wide.trip.count3345.i
  br i1 %exitcond3392.not.i, label %._crit_edge2876.split.us.us.us.i, label %bb.cr, !llvm.loop !398

.preheader2482.us.us.us.i:                        ; preds = %bb.cs
  %i.azx = mul nuw nsw i64 %indvars.iv3388.i, %i.ayj
  %i.azy = sext i32 %i.ays to i64
  %i.azz = mul nsw i64 %i.azy, %i.le
  br label %bb.ct

._crit_edge2876.split.us.us.us.i:                 ; preds = %..loopexit2483_crit_edge.us.us.us.i
  %i.baa = getelementptr inbounds [4 x i8], ptr %.27692887.us.us.i, i64 %i.aoz ; 2 uses
  %indvars.iv.next3394.i = add nuw nsw i64 %indvars.iv3393.i, 2 ; 2 uses
  %i.bab = trunc i64 %indvars.iv.next3394.i to i32 ; 2 uses
  %i.bac = or i32 %i.bab, 1
  %i.bad = icmp slt i32 %i.bac, %i.kf
  br i1 %i.bad, label %.preheader2489.us.us.i, label %.preheader2492.i, !llvm.loop !399

.preheader2492.i:                                 ; preds = %._crit_edge2876.split.us.us.us.i, %.preheader2489.us.preheader.i, %.preheader2489.preheader.i, %._crit_edge2838.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2838.i ], [ %scevgep3377.i, %.preheader2489.preheader.i ], [ %scevgep3379.i, %.preheader2489.us.preheader.i ], [ %i.baa, %._crit_edge2876.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2838.i ], [ %i.axx, %.preheader2489.preheader.i ], [ %i.ayi, %.preheader2489.us.preheader.i ], [ %i.bab, %._crit_edge2876.split.us.us.us.i ] ; 2 uses
  %i.bae = phi <2 x float> [ %i.axe, %._crit_edge2838.i ], [ %i.axe, %.preheader2489.preheader.i ], [ %i.axe, %.preheader2489.us.preheader.i ], [ %i.azw, %._crit_edge2876.split.us.us.us.i ] ; 3 uses
  %i.baf = icmp slt i32 %.2765.lcssa.i, %i.kf
  br i1 %i.baf, label %.preheader2488.lr.ph.i, label %._crit_edge2936.i

.preheader2488.lr.ph.i:                           ; preds = %.preheader2492.i
  %i.bag = load i32, ptr %i.d, align 4
  %i.bah = load i32, ptr %i.j, align 4
  %invariant.op2925.i = sub i32 %.neg2447.i, %i.bah
  %i.bai = load i32, ptr %i.f, align 4            ; 2 uses
  %i.baj = load i32, ptr %i.a, align 4
  %.fr3168.i = freeze i32 %i.baj                  ; 2 uses
  %i.bak = load i32, ptr %i.c, align 4
  %i.bal = load i32, ptr %i.i, align 4
  %.neg2437.i = add nuw nsw i32 %.08032952.i, 1
  %invariant.op2917.i = sub i32 %.neg2437.i, %i.bal
  %i.bam = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ban = icmp sgt i32 %.fr3168.i, 0
  %or.cond3626.i = and i1 %i.aos, %i.ban
  br i1 %or.cond3626.i, label %.preheader2488.us.us.preheader.i, label %._crit_edge2936.i

.preheader2488.us.us.preheader.i:                 ; preds = %.preheader2488.lr.ph.i
  %i.bao = zext nneg i32 %.fr3168.i to i64        ; 2 uses
  %i.bap = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2488.us.us.i

.preheader2488.us.us.i:                           ; preds = %._crit_edge2922.split.us.us.us.i, %.preheader2488.us.us.preheader.i
  %indvars.iv3406.i = phi i64 [ %i.bap, %.preheader2488.us.us.preheader.i ], [ %indvars.iv.next3407.i, %._crit_edge2922.split.us.us.us.i ] ; 2 uses
  %.37702933.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2488.us.us.preheader.i ], [ %i.bca, %._crit_edge2922.split.us.us.us.i ] ; 2 uses
  %i.baq = phi <2 x float> [ %i.bae, %.preheader2488.us.us.preheader.i ], [ %i.bbw, %._crit_edge2922.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2481_crit_edge.us.us.us.i, %.preheader2488.us.us.i
  %indvars.iv3401.i = phi i64 [ %indvars.iv.next3402.i, %..loopexit2481_crit_edge.us.us.us.i ], [ 0, %.preheader2488.us.us.i ] ; 3 uses
  %i.bar = phi <2 x float> [ %i.bbw, %..loopexit2481_crit_edge.us.us.us.i ], [ %i.baq, %.preheader2488.us.us.i ] ; 3 uses
  %i.bas = trunc i64 %indvars.iv3401.i to i32
  %i.bat = mul i32 %i.bag, %i.bas
  %.reass2926.us.us.us.i = add i32 %i.bat, %invariant.op2925.i ; 3 uses
  %i.bau = icmp slt i32 %.reass2926.us.us.us.i, 0
  br i1 %i.bau, label %..loopexit2481_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bav = srem i32 %.reass2926.us.us.us.i, %i.bai
  %i.baw = sdiv i32 %.reass2926.us.us.us.i, %i.bai ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bav, 0
  %.not905.us.us.us.i = icmp slt i32 %i.baw, %i.kh
  %or.cond431 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond431, label %.preheader2480.us.us.us.i, label %..loopexit2481_crit_edge.us.us.us.i

bb.cx:                                            ; preds = %.preheader2480.us.us.us.i, %bb.cz
  %indvars.iv3396.i = phi i64 [ 0, %.preheader2480.us.us.us.i ], [ %indvars.iv.next3397.i, %bb.cz ] ; 3 uses
  %i.bax = phi <2 x float> [ %i.bar, %.preheader2480.us.us.us.i ], [ %i.bbv, %bb.cz ] ; 3 uses
  %i.bay = trunc i64 %indvars.iv3396.i to i32
  %i.baz = mul i32 %i.bak, %i.bay
  %.reass.us2927.us.us.i = add i32 %invariant.op2917.i, %i.baz ; 3 uses
  %i.bba = icmp slt i32 %.reass.us2927.us.us.i, 0
  br i1 %i.bba, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bbb = srem i32 %.reass.us2927.us.us.i, %i.bam
  %i.bbc = sdiv i32 %.reass.us2927.us.us.i, %i.bam ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bbb, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bbc, %i.kg
  %or.cond432 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond432, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bbd = add nuw nsw i64 %indvars.iv3396.i, %i.bbx
  %.idx3572.i = shl nuw nsw i64 %i.bbd, 3
  %i.bbe = getelementptr inbounds nuw i8, ptr %.37702933.us.us.i, i64 %.idx3572.i
  %i.bbf = load ptr, ptr %1, align 8, !tbaa !18, !noalias !400
  %i.bbg = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !400
  %i.bbh = mul i64 %i.bbg, %indvars.iv3406.i
  %i.bbi = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !400 ; 2 uses
  %i.bbj = mul i64 %i.bbh, %i.bbi
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %i.bbj
  %i.bbl = mul i64 %i.bbz, %i.bbi
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbl
  %i.bbn = sext i32 %i.bbc to i64
  %i.bbo = getelementptr inbounds [4 x i8], ptr %i.bbm, i64 %i.bbn
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !39
  %i.bbq = load <2 x float>, ptr %i.bbe, align 4, !tbaa !39
  %i.bbr = insertelement <2 x float> poison, float %i.bbp, i64 0
  %i.bbs = shufflevector <2 x float> %i.bbr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbt = fmul fast <2 x float> %i.bbq, %i.bbs
  %i.bbu = fadd fast <2 x float> %i.bbt, %i.bax
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.cy, %bb.cx
  %i.bbv = phi <2 x float> [ %i.bax, %bb.cx ], [ %i.bax, %bb.cy ], [ %i.bbu, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3397.i = add nuw nsw i64 %indvars.iv3396.i, 1 ; 2 uses
  %exitcond3400.not.i = icmp eq i64 %indvars.iv.next3397.i, %i.bao
  br i1 %exitcond3400.not.i, label %..loopexit2481_crit_edge.us.us.us.i, label %bb.cx, !llvm.loop !403

..loopexit2481_crit_edge.us.us.us.i:              ; preds = %bb.cz, %bb.cw, %bb.cv
  %i.bbw = phi <2 x float> [ %i.bar, %bb.cv ], [ %i.bar, %bb.cw ], [ %i.bbv, %bb.cz ] ; 3 uses
  %indvars.iv.next3402.i = add nuw nsw i64 %indvars.iv3401.i, 1 ; 2 uses
  %exitcond3405.not.i = icmp eq i64 %indvars.iv.next3402.i, %wide.trip.count3345.i
  br i1 %exitcond3405.not.i, label %._crit_edge2922.split.us.us.us.i, label %bb.cv, !llvm.loop !404

.preheader2480.us.us.us.i:                        ; preds = %bb.cw
  %i.bbx = mul nuw nsw i64 %indvars.iv3401.i, %i.bao
  %i.bby = sext i32 %i.baw to i64
  %i.bbz = mul nsw i64 %i.bby, %i.le
  br label %bb.cx

._crit_edge2922.split.us.us.us.i:                 ; preds = %..loopexit2481_crit_edge.us.us.us.i
  %i.bca = getelementptr inbounds [4 x i8], ptr %.37702933.us.us.i, i64 %i.apb
  %indvars.iv.next3407.i = add nuw nsw i64 %indvars.iv3406.i, 1 ; 2 uses
  %i.bcb = trunc nuw i64 %indvars.iv.next3407.i to i32
  %i.bcc = icmp sgt i32 %i.kf, %i.bcb
  br i1 %i.bcc, label %.preheader2488.us.us.i, label %._crit_edge2936.i, !llvm.loop !405

._crit_edge2936.i:                                ; preds = %._crit_edge2922.split.us.us.us.i, %.preheader2488.lr.ph.i, %.preheader2492.i
  %i.bcd = phi <2 x float> [ %i.bae, %.preheader2492.i ], [ %i.bae, %.preheader2488.lr.ph.i ], [ %i.bbw, %._crit_edge2922.split.us.us.us.i ] ; 11 uses
  switch i32 %i.aop, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i
    i32 6, label %bb.da
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i: ; preds = %._crit_edge2936.i
  %i.bce = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcd, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i: ; preds = %._crit_edge2936.i
  %i.bcf = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.bcg = load float, ptr %i.bcf, align 4, !tbaa !39
  %i.bch = fcmp fast ogt <2 x float> %i.bcd, zeroinitializer
  %i.bci = insertelement <2 x float> poison, float %i.bcg, i64 0
  %i.bcj = shufflevector <2 x float> %i.bci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bck = select <2 x i1> %i.bch, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bcj
  %i.bcl = fmul fast <2 x float> %i.bck, %i.bcd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i: ; preds = %._crit_edge2936.i
  %i.bcm = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.bcn = load float, ptr %i.bcm, align 4, !tbaa !39
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcm, i64 4
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !39 ; 3 uses
  %i.bcq = insertelement <2 x float> poison, float %i.bcn, i64 0
  %i.bcr = shufflevector <2 x float> %i.bcq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcs = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcd, <2 x float> %i.bcr) ; 3 uses
  %i.bct = insertelement <2 x float> poison, float %i.bcp, i64 0
  %i.bcu = shufflevector <2 x float> %i.bct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcv = fcmp fast ogt <2 x float> %i.bcs, %i.bcu ; 2 uses
  %i.bcw = extractelement <2 x i1> %i.bcv, i64 0
  %i.bcx = extractelement <2 x float> %i.bcs, i64 0
  %.123072397.i = select i1 %i.bcw, float %i.bcp, float %i.bcx
  %i.bcy = insertelement <2 x float> %i.bcs, float %.123072397.i, i64 0 ; 2 uses
  %i.bcz = extractelement <2 x i1> %i.bcv, i64 1
  %i.bda = insertelement <2 x float> %i.bcy, float %i.bcp, i64 1
  %spec.select = select i1 %i.bcz, <2 x float> %i.bda, <2 x float> %i.bcy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i: ; preds = %._crit_edge2936.i
  %i.bdb = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bcd, <2 x float> splat (float f0x42B0C0A5))
  %i.bdc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bdb, <2 x float> splat (float f0xC2B0C0A5))
  %i.bdd = fneg fast <2 x float> %i.bdc
  %i.bde = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bdd)
  %i.bdf = fadd fast <2 x float> %i.bde, splat (float 1.000000e+00)
  %i.bdg = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bdf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i: ; preds = %._crit_edge2936.i
  %i.bdh = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bcd)
  %i.bdi = fadd fast <2 x float> %i.bdh, splat (float 1.000000e+00)
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bls = sext i32 %i.blq to i64
  %i.blt = mul nsw i64 %i.bls, %i.anx
  br label %.lr.ph.split.us3022.us.us.us.i.us

.lr.ph.split.us3022.us.us.us.i.us:                ; preds = %.preheader2469.us.us.us.i.us206, %bb.ds
  %indvars.iv3445.i.us = phi i64 [ %indvars.iv.next3446.i.us, %bb.ds ], [ 0, %.preheader2469.us.us.us.i.us206 ] ; 3 uses
  %.223143016.us3024.us.us.us.i.us = phi <4 x float> [ %.32315.us3028.us.us.us.i.us, %bb.ds ], [ %.123133032.us.us.us.i.us202, %.preheader2469.us.us.us.i.us206 ] ; 3 uses
  %i.blu = trunc i64 %indvars.iv3445.i.us to i32
  %i.blv = mul i32 %i.bji, %i.blu
  %.reass3020.us3025.us.us.us.i.us = add i32 %i.blv, %invariant.op3019.i ; 3 uses
  %i.blw = icmp slt i32 %.reass3020.us3025.us.us.us.i.us, 0
  br i1 %i.blw, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3022.us.us.us.i.us
  %i.blx = srem i32 %.reass3020.us3025.us.us.us.i.us, %i.bjk
  %i.bly = sdiv i32 %.reass3020.us3025.us.us.us.i.us, %i.bjk ; 2 uses
  %.not897.us3026.us.us.us.i.us = icmp eq i32 %i.blx, 0
  %.not898.us3027.us.us.us.i.us = icmp slt i32 %i.bly, %i.amw
  %or.cond438 = select i1 %.not897.us3026.us.us.us.i.us, i1 %.not898.us3027.us.us.us.i.us, i1 false
  br i1 %or.cond438, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.blz = load ptr, ptr %1, align 8, !tbaa !18, !noalias !426
  %i.bma = load i64, ptr %i.ang, align 8, !tbaa !20, !noalias !426
  %i.bmb = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !426 ; 2 uses
  %factor.op.mul3011.us.us.us.us.i.us = mul i64 %i.bmb, %i.bma ; 4 uses
  %i.bmc = mul i64 %i.blt, %i.bmb
  %invariant.gep.us.us.us3064.us.i.us = getelementptr i8, ptr %i.blz, i64 %i.bmc
  %i.bmd = sext i32 %i.bly to i64
  %invariant.gep3013.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3064.us.i.us, i64 %i.bmd ; 4 uses
  %.reass3012.us.us.us.us.i.us = mul i64 %factor.op.mul3011.us.us.us.us.i.us, %indvars.iv3460.i
  %gep3014.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3013.us.us.us.us.i.us, i64 %.reass3012.us.us.us.us.i.us
  %i.bme = load float, ptr %gep3014.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.bme, i64 0
  %.reass3012.us.us.us.us.1.i.us = mul i64 %factor.op.mul3011.us.us.us.us.i.us, %i.bke
  %gep3014.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3013.us.us.us.us.i.us, i64 %.reass3012.us.us.us.us.1.i.us
  %i.bmf = load float, ptr %gep3014.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.bmf, i64 1
  %.reass3012.us.us.us.us.2.i.us = mul i64 %factor.op.mul3011.us.us.us.us.i.us, %i.bkf
  %gep3014.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3013.us.us.us.us.i.us, i64 %.reass3012.us.us.us.us.2.i.us
  %i.bmg = load float, ptr %gep3014.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bmg, i64 2
  %.reass3012.us.us.us.us.3.i.us = mul i64 %factor.op.mul3011.us.us.us.us.i.us, %i.bkg
  %gep3014.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3013.us.us.us.us.i.us, i64 %.reass3012.us.us.us.us.3.i.us
  %i.bmh = load float, ptr %gep3014.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.bmh, i64 3
  %i.bmi = add nuw nsw i64 %indvars.iv3445.i.us, %i.blr
  %i.bmj = shl i64 %i.bmi, 2
  %i.bmk = and i64 %i.bmj, 4294967292
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %.17253049.us.us.i, i64 %i.bmk
  %i.bmm = load <4 x float>, ptr %i.bml, align 16, !tbaa !310
  %i.bmn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bmm, <4 x float> nofpclass(nan inf) %.223143016.us3024.us.us.us.i.us)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3022.us.us.us.i.us
  %.32315.us3028.us.us.us.i.us = phi nsz <4 x float> [ %.223143016.us3024.us.us.us.i.us, %.lr.ph.split.us3022.us.us.us.i.us ], [ %i.bmn, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223143016.us3024.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3446.i.us = add nuw nsw i64 %indvars.iv3445.i.us, 1 ; 2 uses
  %exitcond3449.not.i.us = icmp eq i64 %indvars.iv.next3446.i.us, %i.bka
  br i1 %exitcond3449.not.i.us, label %..loopexit2470_crit_edge.us.us.us.i.us207, label %.lr.ph.split.us3022.us.us.us.i.us, !llvm.loop !424

..loopexit2470_crit_edge.us.us.us.i.us207:        ; preds = %bb.ds, %bb.dq, %.preheader2475.us.us.i.split.us200
  %.42316.us.us.us.i.us208 = phi nsz <4 x float> [ %.123133032.us.us.us.i.us202, %.preheader2475.us.us.i.split.us200 ], [ %.123133032.us.us.us.i.us202, %bb.dq ], [ %.32315.us3028.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3456.i.us209 = add nuw nsw i64 %indvars.iv3455.i.us201, 1 ; 2 uses
  %exitcond3459.not.i.us210 = icmp eq i64 %indvars.iv.next3456.i.us209, %wide.trip.count3432.i
  br i1 %exitcond3459.not.i.us210, label %._crit_edge3035.split.us.us.us.i, label %.preheader2475.us.us.i.split.us200, !llvm.loop !425

._crit_edge3035.split.us.us.us.i:                 ; preds = %..loopexit2470_crit_edge.us.us.us.i.us207, %..loopexit2470_crit_edge.us.us.us.i.us, %.preheader2475.us.us.i
  %.us-phi199 = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2470_crit_edge.us.us.us.i.us ], [ %.023123048.us.us.i, %.preheader2475.us.us.i ], [ %.42316.us.us.us.i.us208, %..loopexit2470_crit_edge.us.us.us.i.us207 ] ; 2 uses
  %i.bmo = getelementptr inbounds [4 x i8], ptr %.17253049.us.us.i, i64 %i.bfn ; 2 uses
  %indvars.iv.next3461.i = add nuw nsw i64 %indvars.iv3460.i, 4 ; 2 uses
  %i.bmp = trunc i64 %indvars.iv.next3461.i to i32 ; 2 uses
  %i.bmq = or i32 %i.bmp, 3
  %i.bmr = icmp slt i32 %i.bmq, %i.amv
  br i1 %i.bmr, label %.preheader2475.us.us.i, label %._crit_edge3053.i, !llvm.loop !429

._crit_edge3053.i:                                ; preds = %._crit_edge3035.split.us.us.us.i, %.preheader2475.us.preheader.i, %.preheader2475.preheader.i, %._crit_edge2993.i
  %.02312.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2993.i ], [ zeroinitializer, %.preheader2475.preheader.i ], [ zeroinitializer, %.preheader2475.us.preheader.i ], [ %.us-phi199, %._crit_edge3035.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge2993.i ], [ %scevgep3438.i, %.preheader2475.preheader.i ], [ %scevgep3440.i, %.preheader2475.us.preheader.i ], [ %i.bmo, %._crit_edge3035.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge2993.i ], [ %i.bjr, %.preheader2475.preheader.i ], [ %i.bjz, %.preheader2475.us.preheader.i ], [ %i.bmp, %._crit_edge3035.split.us.us.us.i ] ; 9 uses
  %i.bms = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bjb, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bmt = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bjb, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bmu = fadd fast <4 x float> %i.bms, %i.bmt
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bmu) ; 4 uses
  %i.bmv = or disjoint i32 %.1.lcssa.i, 1
  %i.bmw = icmp slt i32 %i.bmv, %i.amv
  br i1 %i.bmw, label %.preheader2474.lr.ph.i, label %.preheader2477.i

.preheader2474.lr.ph.i:                           ; preds = %._crit_edge3053.i
  %i.bmx = load i32, ptr %i.d, align 4
  %i.bmy = load i32, ptr %i.j, align 4
  %invariant.op3088.i = sub i32 %.neg2431.i, %i.bmy
  %i.bmz = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bna = load i32, ptr %i.a, align 4
  %.fr3171.i = freeze i32 %i.bna                  ; 2 uses
  %i.bnb = load i32, ptr %i.c, align 4
  %i.bnc = load i32, ptr %i.i, align 4
  %.neg2425.i = add nuw nsw i32 %.07323144.i, 1
  %invariant.op3081.i = sub i32 %.neg2425.i, %i.bnc
  %i.bnd = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bfi, label %.preheader2474.lr.ph.split.us.i, label %.preheader2474.preheader.i

.preheader2474.preheader.i:                       ; preds = %.preheader2474.lr.ph.i
  %i.bne = add i32 %.1.lcssa.i, 3
  %smax3463.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bne)
  %reass.sub222 = sub i32 %smax3463.i, %.1.lcssa.i
  %i.bnf = add i32 %reass.sub222, -2              ; 2 uses
  %i.bng = lshr i32 %i.bnf, 1
  %i.bnh = zext nneg i32 %i.bng to i64
  %i.bni = shl nuw nsw i64 %i.bnh, 2
  %i.bnj = add nuw nsw i64 %i.bni, 4
  %i.bnk = mul i64 %i.bnj, %i.bfp
  %scevgep3464.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnk
  %i.bnl = add i32 %.1.lcssa.i, 2
  %i.bnm = and i32 %i.bnf, -2
  %i.bnn = add i32 %i.bnl, %i.bnm
  br label %.preheader2477.i

.preheader2474.lr.ph.split.us.i:                  ; preds = %.preheader2474.lr.ph.i
  %i.bno = icmp sgt i32 %.fr3171.i, 0
  br i1 %i.bno, label %.preheader2474.us.us.preheader.i, label %.preheader2474.us.preheader.i

.preheader2474.us.preheader.i:                    ; preds = %.preheader2474.lr.ph.split.us.i
  %i.bnp = add i32 %.1.lcssa.i, 3
  %smax3465.i = call i32 @llvm.smax.i32(i32 %i.amv, i32 %i.bnp)
  %reass.sub223 = sub i32 %smax3465.i, %.1.lcssa.i
  %i.bnq = add i32 %reass.sub223, -2              ; 2 uses
  %i.bnr = lshr i32 %i.bnq, 1
  %i.bns = zext nneg i32 %i.bnr to i64
  %i.bnt = shl nuw nsw i64 %i.bns, 2
  %i.bnu = add nuw nsw i64 %i.bnt, 4
  %i.bnv = mul i64 %i.bnu, %i.bfp
  %scevgep3466.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnv
  %i.bnw = add i32 %.1.lcssa.i, 2
  %i.bnx = and i32 %i.bnq, -2
  %i.bny = add i32 %i.bnw, %i.bnx
  br label %.preheader2477.i

.preheader2474.us.us.preheader.i:                 ; preds = %.preheader2474.lr.ph.split.us.i
  %i.bnz = zext nneg i32 %.fr3171.i to i64        ; 2 uses
  %i.boa = zext i32 %.1.lcssa.i to i64
  br label %.preheader2474.us.us.i

.preheader2474.us.us.i:                           ; preds = %._crit_edge3086.split.us.us.us.i, %.preheader2474.us.us.preheader.i
  %indvars.iv3480.i = phi i64 [ %i.boa, %.preheader2474.us.us.preheader.i ], [ %indvars.iv.next3481.i, %._crit_edge3086.split.us.us.us.i ] ; 3 uses
  %.27263093.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2474.us.us.preheader.i ], [ %i.bpf, %._crit_edge3086.split.us.us.us.i ] ; 2 uses
  %.17293092.us.us.i = phi float [ %op.rdx, %.preheader2474.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3086.split.us.us.us.i ]
  %i.bob = add nuw nsw i64 %indvars.iv3480.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2468_crit_edge.us.us.us.i, %.preheader2474.us.us.i
  %indvars.iv3475.i = phi i64 [ %indvars.iv.next3476.i, %..loopexit2468_crit_edge.us.us.us.i ], [ 0, %.preheader2474.us.us.i ] ; 3 uses
  %.27303083.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2468_crit_edge.us.us.us.i ], [ %.17293092.us.us.i, %.preheader2474.us.us.i ] ; 3 uses
  %i.boc = trunc i64 %indvars.iv3475.i to i32
  %i.bod = mul i32 %i.bmx, %i.boc
  %.reass3089.us.us.us.i = add i32 %i.bod, %invariant.op3088.i ; 3 uses
  %i.boe = icmp slt i32 %.reass3089.us.us.us.i, 0
  br i1 %i.boe, label %..loopexit2468_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bof = srem i32 %.reass3089.us.us.us.i, %i.bmz
  %i.bog = sdiv i32 %.reass3089.us.us.us.i, %i.bmz ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bof, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bog, %i.amx
  %or.cond439 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond439, label %.preheader2467.us.us.us.i, label %..loopexit2468_crit_edge.us.us.us.i

bb.dv:                                            ; preds = %.preheader2467.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv3470.i = phi i64 [ 0, %.preheader2467.us.us.us.i ], [ %indvars.iv.next3471.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.37313078.us.us.us.i = phi float [ %.27303083.us.us.us.i, %.preheader2467.us.us.us.i ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.boh = trunc i64 %indvars.iv3470.i to i32
  %i.boi = mul i32 %i.bnb, %i.boh
  %.reass3082.us.us.us.i = add i32 %invariant.op3081.i, %i.boi ; 3 uses
  %i.boj = icmp slt i32 %.reass3082.us.us.us.i, 0
  br i1 %i.boj, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bok = srem i32 %.reass3082.us.us.us.i, %i.bnd
  %i.bol = sdiv i32 %.reass3082.us.us.us.i, %i.bnd ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bok, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bol, %i.amw
  %or.cond440 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond440, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.bom = add nuw nsw i64 %indvars.iv3470.i, %i.bpc
  %.idx3574.i = shl nuw nsw i64 %i.bom, 3
  %i.bon = getelementptr inbounds nuw i8, ptr %.27263093.us.us.i, i64 %.idx3574.i ; 2 uses
  %i.boo = load ptr, ptr %1, align 8, !tbaa !18, !noalias !430
  %i.bop = load i64, ptr %i.ang, align 8, !tbaa !20, !noalias !430
  %i.boq = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !430 ; 2 uses
  %factor.op.mul3072.us.us.us.i = mul i64 %i.boq, %i.bop ; 2 uses
  %i.bor = mul i64 %i.bpe, %i.boq
  %invariant.gep.us.us.us3110.i = getelementptr i8, ptr %i.boo, i64 %i.bor
  %i.bos = sext i32 %i.bol to i64
  %invariant.gep3074.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3110.i, i64 %i.bos ; 2 uses
  %.reass3073.us.us.us.i = mul i64 %factor.op.mul3072.us.us.us.i, %indvars.iv3480.i
  %gep3075.us.us.us.i = getelementptr i8, ptr %invariant.gep3074.us.us.us.i, i64 %.reass3073.us.us.us.i
  %i.bot = load float, ptr %gep3075.us.us.us.i, align 4, !tbaa !39
  %i.bou = load float, ptr %i.bon, align 4, !tbaa !39
  %i.bov = fmul fast float %i.bou, %i.bot
  %i.bow = fadd fast float %.37313078.us.us.us.i, %i.bov
  %.reass3073.us.us.us.1.i = mul i64 %factor.op.mul3072.us.us.us.i, %i.bob
  %gep3075.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3074.us.us.us.i, i64 %.reass3073.us.us.us.1.i
  %i.box = load float, ptr %gep3075.us.us.us.1.i, align 4, !tbaa !39
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bon, i64 4
  %i.boz = load float, ptr %i.boy, align 4, !tbaa !39
  %i.bpa = fmul fast float %i.boz, %i.box
  %i.bpb = fadd fast float %i.bpa, %i.bow
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6.us.us.us.i = phi nsz float [ %.37313078.us.us.us.i, %bb.dv ], [ %.37313078.us.us.us.i, %bb.dw ], [ %i.bpb, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3471.i = add nuw nsw i64 %indvars.iv3470.i, 1 ; 2 uses
  %exitcond3474.not.i = icmp eq i64 %indvars.iv.next3471.i, %i.bnz
  br i1 %exitcond3474.not.i, label %..loopexit2468_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !433

..loopexit2468_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8.us.us.us.i = phi nsz float [ %.27303083.us.us.us.i, %bb.dt ], [ %.27303083.us.us.us.i, %bb.du ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3476.i = add nuw nsw i64 %indvars.iv3475.i, 1 ; 2 uses
  %exitcond3479.not.i = icmp eq i64 %indvars.iv.next3476.i, %wide.trip.count3432.i
  br i1 %exitcond3479.not.i, label %._crit_edge3086.split.us.us.us.i, label %bb.dt, !llvm.loop !434

.preheader2467.us.us.us.i:                        ; preds = %bb.du
  %i.bpc = mul nuw nsw i64 %indvars.iv3475.i, %i.bnz
  %i.bpd = sext i32 %i.bog to i64
  %i.bpe = mul nsw i64 %i.bpd, %i.anx
  br label %bb.dv

._crit_edge3086.split.us.us.us.i:                 ; preds = %..loopexit2468_crit_edge.us.us.us.i
  %i.bpf = getelementptr inbounds [4 x i8], ptr %.27263093.us.us.i, i64 %i.bfp ; 2 uses
  %indvars.iv.next3481.i = add nuw nsw i64 %indvars.iv3480.i, 2 ; 2 uses
  %i.bpg = trunc i64 %indvars.iv.next3481.i to i32 ; 2 uses
  %i.bph = or i32 %i.bpg, 1
  %i.bpi = icmp slt i32 %i.bph, %i.amv
  br i1 %i.bpi, label %.preheader2474.us.us.i, label %.preheader2477.i, !llvm.loop !435

.preheader2477.i:                                 ; preds = %._crit_edge3086.split.us.us.us.i, %.preheader2474.us.preheader.i, %.preheader2474.preheader.i, %._crit_edge3053.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3053.i ], [ %op.rdx, %.preheader2474.preheader.i ], [ %op.rdx, %.preheader2474.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3086.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3053.i ], [ %scevgep3464.i, %.preheader2474.preheader.i ], [ %scevgep3466.i, %.preheader2474.us.preheader.i ], [ %i.bpf, %._crit_edge3086.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3053.i ], [ %i.bnn, %.preheader2474.preheader.i ], [ %i.bny, %.preheader2474.us.preheader.i ], [ %i.bpg, %._crit_edge3086.split.us.us.us.i ] ; 2 uses
  %i.bpj = icmp slt i32 %.2.lcssa.i, %i.amv
  br i1 %i.bpj, label %.preheader2473.lr.ph.i, label %._crit_edge3132.i

.preheader2473.lr.ph.i:                           ; preds = %.preheader2477.i
  %i.bpk = load i32, ptr %i.d, align 4
  %i.bpl = load i32, ptr %i.j, align 4
  %invariant.op3124.i = sub i32 %.neg2431.i, %i.bpl
  %i.bpm = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bpn = load i32, ptr %i.a, align 4
  %.fr3172.i = freeze i32 %i.bpn                  ; 2 uses
  %i.bpo = load i32, ptr %i.c, align 4
  %i.bpp = load i32, ptr %i.i, align 4
  %.neg2421.i = add nuw nsw i32 %.07323144.i, 1
  %invariant.op3117.i = sub i32 %.neg2421.i, %i.bpp
  %i.bpq = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bpr = icmp sgt i32 %.fr3172.i, 0
  %or.cond3631.i = and i1 %i.bfi, %i.bpr
  br i1 %or.cond3631.i, label %.preheader2473.us.us.preheader.i, label %._crit_edge3132.i

.preheader2473.us.us.preheader.i:                 ; preds = %.preheader2473.lr.ph.i
  %i.bps = zext nneg i32 %.fr3172.i to i64        ; 2 uses
  %i.bpt = zext i32 %.2.lcssa.i to i64
  br label %.preheader2473.us.us.i

.preheader2473.us.us.i:                           ; preds = %._crit_edge3122.split.us.us.us.i, %.preheader2473.us.us.preheader.i
  %indvars.iv3493.i = phi i64 [ %i.bpt, %.preheader2473.us.us.preheader.i ], [ %indvars.iv.next3494.i, %._crit_edge3122.split.us.us.us.i ] ; 2 uses
  %.37273129.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2473.us.us.preheader.i ], [ %i.bqx, %._crit_edge3122.split.us.us.us.i ] ; 2 uses
  %.93128.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2473.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3122.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2466_crit_edge.us.us.us.i, %.preheader2473.us.us.i
  %indvars.iv3488.i = phi i64 [ %indvars.iv.next3489.i, %..loopexit2466_crit_edge.us.us.us.i ], [ 0, %.preheader2473.us.us.i ] ; 3 uses
  %.103119.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2466_crit_edge.us.us.us.i ], [ %.93128.us.us.i, %.preheader2473.us.us.i ] ; 3 uses
  %i.bpu = trunc i64 %indvars.iv3488.i to i32
  %i.bpv = mul i32 %i.bpk, %i.bpu
  %.reass3125.us.us.us.i = add i32 %i.bpv, %invariant.op3124.i ; 3 uses
  %i.bpw = icmp slt i32 %.reass3125.us.us.us.i, 0
  br i1 %i.bpw, label %..loopexit2466_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bpx = srem i32 %.reass3125.us.us.us.i, %i.bpm
  %i.bpy = sdiv i32 %.reass3125.us.us.us.i, %i.bpm ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bpx, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bpy, %i.amx
  %or.cond441 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond441, label %.preheader.us.us.us.i, label %..loopexit2466_crit_edge.us.us.us.i

bb.dz:                                            ; preds = %.preheader.us.us.us.i, %bb.eb
  %indvars.iv3483.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next3484.i, %bb.eb ] ; 3 uses
  %.113114.us.us.us.i = phi float [ %.103119.us.us.us.i, %.preheader.us.us.us.i ], [ %.13.us.us.us.i, %bb.eb ] ; 3 uses
  %i.bpz = trunc i64 %indvars.iv3483.i to i32
  %i.bqa = mul i32 %i.bpo, %i.bpz
  %.reass3118.us.us.us.i = add i32 %invariant.op3117.i, %i.bqa ; 3 uses
  %i.bqb = icmp slt i32 %.reass3118.us.us.us.i, 0
  br i1 %i.bqb, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bqc = srem i32 %.reass3118.us.us.us.i, %i.bpq
  %i.bqd = sdiv i32 %.reass3118.us.us.us.i, %i.bpq ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bqc, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bqd, %i.amw
  %or.cond442 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond442, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bqe = load ptr, ptr %1, align 8, !tbaa !18, !noalias !436
  %i.bqf = load i64, ptr %i.ang, align 8, !tbaa !20, !noalias !436
  %i.bqg = mul i64 %i.bqf, %indvars.iv3493.i
  %i.bqh = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !436 ; 2 uses
  %i.bqi = mul i64 %i.bqg, %i.bqh
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqe, i64 %i.bqi
  %i.bqk = mul i64 %i.bqw, %i.bqh
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqj, i64 %i.bqk
  %i.bqm = sext i32 %i.bqd to i64
  %i.bqn = getelementptr inbounds [4 x i8], ptr %i.bql, i64 %i.bqm
  %i.bqo = load float, ptr %i.bqn, align 4, !tbaa !39
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bqv, i64 %indvars.iv3483.i
  %i.bqq = load float, ptr %i.bqp, align 4, !tbaa !39
  %i.bqr = fmul fast float %i.bqq, %i.bqo
  %i.bqs = fadd fast float %i.bqr, %.113114.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13.us.us.us.i = phi nsz float [ %.113114.us.us.us.i, %bb.dz ], [ %.113114.us.us.us.i, %bb.ea ], [ %i.bqs, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3484.i = add nuw nsw i64 %indvars.iv3483.i, 1 ; 2 uses
  %exitcond3487.not.i = icmp eq i64 %indvars.iv.next3484.i, %i.bps
  br i1 %exitcond3487.not.i, label %..loopexit2466_crit_edge.us.us.us.i, label %bb.dz, !llvm.loop !439

..loopexit2466_crit_edge.us.us.us.i:              ; preds = %bb.eb, %bb.dy, %bb.dx
  %.15.us.us.us.i = phi nsz float [ %.103119.us.us.us.i, %bb.dx ], [ %.103119.us.us.us.i, %bb.dy ], [ %.13.us.us.us.i, %bb.eb ] ; 3 uses
  %indvars.iv.next3489.i = add nuw nsw i64 %indvars.iv3488.i, 1 ; 2 uses
  %exitcond3492.not.i = icmp eq i64 %indvars.iv.next3489.i, %wide.trip.count3432.i
  br i1 %exitcond3492.not.i, label %._crit_edge3122.split.us.us.us.i, label %bb.dx, !llvm.loop !440

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bqt = mul nuw nsw i64 %indvars.iv3488.i, %i.bps
  %i.bqu = sext i32 %i.bpy to i64
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %.37273129.us.us.i, i64 %i.bqt
  %i.bqw = mul nsw i64 %i.bqu, %i.anx
  br label %bb.dz

._crit_edge3122.split.us.us.us.i:                 ; preds = %..loopexit2466_crit_edge.us.us.us.i
  %i.bqx = getelementptr inbounds [4 x i8], ptr %.37273129.us.us.i, i64 %i.bfq
  %indvars.iv.next3494.i = add nuw nsw i64 %indvars.iv3493.i, 1 ; 2 uses
  %i.bqy = trunc nuw i64 %indvars.iv.next3494.i to i32
  %i.bqz = icmp sgt i32 %i.amv, %i.bqy
  br i1 %i.bqz, label %.preheader2473.us.us.i, label %._crit_edge3132.i, !llvm.loop !441

._crit_edge3132.i:                                ; preds = %._crit_edge3122.split.us.us.us.i, %.preheader2473.lr.ph.i, %.preheader2477.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2477.i ], [ %.1729.lcssa.i, %.preheader2473.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3122.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bff, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.eg
    i32 5, label %bb.eh
    i32 6, label %bb.ei
  ]

bb.ec:                                            ; preds = %._crit_edge3132.i
  %i.bra = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ed:                                            ; preds = %._crit_edge3132.i
  %i.brb = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.brc = load float, ptr %i.brb, align 4, !tbaa !39
  %i.brd = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.bre = select fast i1 %i.brd, float 1.000000e+00, float %i.brc
  %i.brf = fmul fast float %i.bre, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ee:                                            ; preds = %._crit_edge3132.i
  %i.brg = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.brh = load float, ptr %i.brg, align 4, !tbaa !39
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brg, i64 4
  %i.brj = load float, ptr %i.bri, align 4, !tbaa !39 ; 2 uses
  %.02310.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.brh) ; 2 uses
  %i.brk = fcmp fast ogt float %.02310.i, %i.brj
  br i1 %i.brk, label %bb.ef, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ef:                                            ; preds = %bb.ee
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eg:                                            ; preds = %._crit_edge3132.i
  %.sroa.speculated2165.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2165.i, float f0xC2B0C0A5)
  %i.brl = fneg fast float %.sroa.speculated.i
  %i.brm = call fast float @llvm.exp.f32(float %i.brl)
  %i.brn = fadd fast float %i.brm, 1.000000e+00
  %i.bro = fdiv fast float 1.000000e+00, %i.brn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eh:                                            ; preds = %._crit_edge3132.i
  %i.brp = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.brq = fadd fast float %i.brp, 1.000000e+00
  %i.brr = call fast float @llvm.log.f32(float %i.brq)
  %i.brs = call fast float @llvm.tanh.f32(float %i.brr)
  %i.brt = fmul fast float %i.brs, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ei:                                            ; preds = %._crit_edge3132.i
  %i.bru = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !39 ; 3 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.bru, i64 4
  %i.brx = load float, ptr %i.brw, align 4, !tbaa !39 ; 2 uses
  %i.bry = fneg fast float %i.brx
  %i.brz = fdiv fast float %i.bry, %i.brv         ; 2 uses
  %i.bsa = fcmp fast olt float %.9.lcssa.i, %i.brz
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.reass.us.us2898.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2919.us.i.us, %i.axw
  %gep2857.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2856.us.us.us.us.i.us, i64 %.reass.us.us2898.us.us.3.i.us
  %i.bam = load i16, ptr %gep2857.us.us.us.us.3.i.us, align 2, !tbaa !461
  %i.ban = zext i16 %i.bam to i32
  %i.bao = zext i16 %i.bal to i32
  %i.bap = zext i16 %i.bak to i32
  %i.baq = zext i16 %i.baj to i32
  %i.bar = insertelement <4 x i32> poison, i32 %i.baq, i64 0
  %i.bas = insertelement <4 x i32> %i.bar, i32 %i.bap, i64 1
  %i.bat = insertelement <4 x i32> %i.bas, i32 %i.bao, i64 2
  %i.bau = insertelement <4 x i32> %i.bat, i32 %i.ban, i64 3
  %i.bav = shl nuw <4 x i32> %i.bau, splat (i32 16)
  %.sroa.03574.12.vec.insert.i.us = bitcast <4 x i32> %i.bav to <4 x float> ; 2 uses
  %i.baw = add nuw nsw i64 %indvars.iv3428.i.us, %i.azw
  %i.bax = shl i64 %i.baw, 3
  %i.bay = and i64 %i.bax, 4294967288
  %i.baz = getelementptr inbounds nuw [2 x i8], ptr %.17682904.us.us.i, i64 %i.bay ; 2 uses
  %i.bba = load i64, ptr %i.baz, align 1, !tbaa !310
  %i.bbb = insertelement <2 x i64> poison, i64 %i.bba, i64 0
  %i.bbc = bitcast <2 x i64> %i.bbb to <8 x i16>
  %i.bbd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbe = bitcast <8 x i16> %i.bbd to <4 x float>
  %i.bbf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03574.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbe, <4 x float> nofpclass(nan inf) %.224462859.us2871.us.us.us.i.us)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbh = load i64, ptr %i.bbg, align 1, !tbaa !310
  %i.bbi = insertelement <2 x i64> poison, i64 %i.bbh, i64 0
  %i.bbj = bitcast <2 x i64> %i.bbi to <8 x i16>
  %i.bbk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbl = bitcast <8 x i16> %i.bbk to <4 x float>
  %i.bbm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03574.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbl, <4 x float> nofpclass(nan inf) %.224412860.us2870.us.us.us.i.us)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2868.us.us.us.i.us
  %.32447.us2875.us.us.us.i.us = phi nsz <4 x float> [ %.224462859.us2871.us.us.us.i.us, %.lr.ph.split.us2868.us.us.us.i.us ], [ %i.bbf, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462859.us2871.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2876.us.us.us.i.us = phi nsz <4 x float> [ %.224412860.us2870.us.us.us.i.us, %.lr.ph.split.us2868.us.us.us.i.us ], [ %i.bbm, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412860.us2870.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3429.i.us = add nuw nsw i64 %indvars.iv3428.i.us, 1 ; 2 uses
  %exitcond3432.not.i.us = icmp eq i64 %indvars.iv.next3429.i.us, %i.axq
  br i1 %exitcond3432.not.i.us, label %..loopexit2555_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2868.us.us.us.i.us, !llvm.loop !587

..loopexit2555_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2560.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452882.us.us.us.i.us107, %.preheader2560.us.us.i.split.us104 ], [ %.124452882.us.us.us.i.us107, %bb.bn ], [ %.32447.us2875.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402883.us.us.us.i.us106, %.preheader2560.us.us.i.split.us104 ], [ %.124402883.us.us.us.i.us106, %bb.bn ], [ %.32442.us2876.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3439.i.us115 = add nuw nsw i64 %indvars.iv3438.i.us105, 1 ; 2 uses
  %exitcond3442.not.i.us116 = icmp eq i64 %indvars.iv.next3439.i.us115, %wide.trip.count3415.i
  br i1 %exitcond3442.not.i.us116, label %._crit_edge2886.split.us.us.us.i, label %.preheader2560.us.us.i.split.us104, !llvm.loop !588

._crit_edge2886.split.us.us.us.i:                 ; preds = %..loopexit2555_crit_edge.us.us.us.i.us112, %..loopexit2555_crit_edge.us.us.us.i.us, %.preheader2560.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2555_crit_edge.us.us.us.i.us ], [ %.024442902.us.us.i, %.preheader2560.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2555_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2555_crit_edge.us.us.us.i.us ], [ %.024392903.us.us.i, %.preheader2560.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2555_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.bbn = getelementptr inbounds [2 x i8], ptr %.17682904.us.us.i, i64 %i.arf ; 2 uses
  %indvars.iv.next3444.i = add nuw nsw i64 %indvars.iv3443.i, 4 ; 2 uses
  %i.bbo = trunc i64 %indvars.iv.next3444.i to i32 ; 2 uses
  %i.bbp = or i32 %i.bbo, 3
  %i.bbq = icmp slt i32 %i.bbp, %i.fy
  br i1 %i.bbq, label %.preheader2560.us.us.i, label %._crit_edge2908.i, !llvm.loop !592

._crit_edge2908.i:                                ; preds = %._crit_edge2886.split.us.us.us.i, %.preheader2560.us.preheader.i, %.preheader2560.preheader.i, %._crit_edge2835.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2835.i ], [ zeroinitializer, %.preheader2560.preheader.i ], [ zeroinitializer, %.preheader2560.us.preheader.i ], [ %.us-phi102, %._crit_edge2886.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2835.i ], [ zeroinitializer, %.preheader2560.preheader.i ], [ zeroinitializer, %.preheader2560.us.preheader.i ], [ %.us-phi103, %._crit_edge2886.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2835.i ], [ %scevgep3421.i, %.preheader2560.preheader.i ], [ %scevgep3423.i, %.preheader2560.us.preheader.i ], [ %i.bbn, %._crit_edge2886.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2835.i ], [ %i.axf, %.preheader2560.preheader.i ], [ %i.axp, %.preheader2560.us.preheader.i ], [ %i.bbo, %._crit_edge2886.split.us.us.us.i ] ; 9 uses
  %i.bbr = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbs = fadd fast <4 x float> %i.bbr, %.02444.lcssa.i ; 2 uses
  %i.bbt = shufflevector <4 x float> %i.awi, <4 x float> %i.awn, <2 x i32> <i32 1, i32 5>
  %i.bbu = fadd fast <2 x float> %i.bbt, %i.arm
  %i.bbv = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbw = fadd fast <4 x float> %i.bbv, %.02439.lcssa.i ; 2 uses
  %i.bbx = shufflevector <4 x float> %i.awi, <4 x float> %i.awn, <2 x i32> <i32 0, i32 4>
  %i.bby = fadd fast <2 x float> %i.bbu, %i.bbx
  %i.bbz = shufflevector <4 x float> %i.bbs, <4 x float> %i.bbw, <2 x i32> <i32 1, i32 5>
  %i.bca = fadd fast <2 x float> %i.bby, %i.bbz
  %i.bcb = shufflevector <4 x float> %i.bbs, <4 x float> %i.bbw, <2 x i32> <i32 0, i32 4>
  %i.bcc = fadd fast <2 x float> %i.bca, %i.bcb   ; 4 uses
  %i.bcd = or disjoint i32 %.1764.lcssa.i, 1
  %i.bce = icmp slt i32 %i.bcd, %i.fy
  br i1 %i.bce, label %.preheader2559.lr.ph.i, label %.preheader2562.i

.preheader2559.lr.ph.i:                           ; preds = %._crit_edge2908.i
  %i.bcf = load i32, ptr %i.d, align 4
  %i.bcg = load i32, ptr %i.j, align 4
  %invariant.op2949.i = sub i32 %.neg2517.i, %i.bcg
  %i.bch = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bci = load i32, ptr %i.a, align 4
  %.fr3237.i = freeze i32 %i.bci                  ; 2 uses
  %i.bcj = load i32, ptr %i.c, align 4
  %i.bck = load i32, ptr %i.i, align 4
  %.neg2511.i = add nuw nsw i32 %.08033022.i, 1
  %invariant.op2940.i = sub i32 %.neg2511.i, %i.bck
  %i.bcl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.ara, label %.preheader2559.lr.ph.split.us.i, label %.preheader2559.preheader.i

.preheader2559.preheader.i:                       ; preds = %.preheader2559.lr.ph.i
  %i.bcm = add i32 %.1764.lcssa.i, 3
  %smax3446.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bcm)
  %reass.sub140 = sub i32 %smax3446.i, %.1764.lcssa.i
  %i.bcn = and i32 %reass.sub140, -2              ; 2 uses
  %i.bco = add i32 %i.bcn, -2
  %i.bcp = zext i32 %i.bco to i64
  %i.bcq = add nuw nsw i64 %i.bcp, 2
  %i.bcr = mul nsw i64 %i.bcq, %i.arh
  %scevgep3447.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcr
  %i.bcs = add i32 %.1764.lcssa.i, %i.bcn
  br label %.preheader2562.i

.preheader2559.lr.ph.split.us.i:                  ; preds = %.preheader2559.lr.ph.i
  %i.bct = icmp sgt i32 %.fr3237.i, 0
  br i1 %i.bct, label %.preheader2559.us.us.preheader.i, label %.preheader2559.us.preheader.i

.preheader2559.us.preheader.i:                    ; preds = %.preheader2559.lr.ph.split.us.i
  %i.bcu = add i32 %.1764.lcssa.i, 3
  %smax3448.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bcu)
  %reass.sub141 = sub i32 %smax3448.i, %.1764.lcssa.i
  %i.bcv = and i32 %reass.sub141, -2              ; 2 uses
  %i.bcw = add i32 %i.bcv, -2
  %i.bcx = zext i32 %i.bcw to i64
  %i.bcy = add nuw nsw i64 %i.bcx, 2
  %i.bcz = mul nsw i64 %i.bcy, %i.arh
  %scevgep3449.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcz
  %i.bda = add i32 %.1764.lcssa.i, %i.bcv
  br label %.preheader2562.i

.preheader2559.us.us.preheader.i:                 ; preds = %.preheader2559.lr.ph.split.us.i
  %i.bdb = zext nneg i32 %.fr3237.i to i64        ; 2 uses
  %i.bdc = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2559.us.us.i

.preheader2559.us.us.i:                           ; preds = %._crit_edge2946.split.us.us.us.i, %.preheader2559.us.us.preheader.i
  %indvars.iv3463.i = phi i64 [ %i.bdc, %.preheader2559.us.us.preheader.i ], [ %indvars.iv.next3464.i, %._crit_edge2946.split.us.us.us.i ] ; 3 uses
  %.27692957.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2559.us.us.preheader.i ], [ %i.bfc, %._crit_edge2946.split.us.us.us.i ] ; 2 uses
  %i.bdd = phi <2 x float> [ %i.bcc, %.preheader2559.us.us.preheader.i ], [ %i.bey, %._crit_edge2946.split.us.us.us.i ]
  %i.bde = add nuw nsw i64 %indvars.iv3463.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2553_crit_edge.us.us.us.i, %.preheader2559.us.us.i
  %indvars.iv3458.i = phi i64 [ %indvars.iv.next3459.i, %..loopexit2553_crit_edge.us.us.us.i ], [ 0, %.preheader2559.us.us.i ] ; 3 uses
  %i.bdf = phi <2 x float> [ %i.bey, %..loopexit2553_crit_edge.us.us.us.i ], [ %i.bdd, %.preheader2559.us.us.i ] ; 3 uses
  %i.bdg = trunc i64 %indvars.iv3458.i to i32
  %i.bdh = mul i32 %i.bcf, %i.bdg
  %.reass2950.us.us.us.i = add i32 %i.bdh, %invariant.op2949.i ; 3 uses
  %i.bdi = icmp slt i32 %.reass2950.us.us.us.i, 0
  br i1 %i.bdi, label %..loopexit2553_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bdj = srem i32 %.reass2950.us.us.us.i, %i.bch
  %i.bdk = sdiv i32 %.reass2950.us.us.us.i, %i.bch ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bdj, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bdk, %i.ga
  %or.cond329 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond329, label %.preheader2552.us.us.us.i, label %..loopexit2553_crit_edge.us.us.us.i

bb.bs:                                            ; preds = %.preheader2552.us.us.us.i, %.loopexit2549.us.us.us.i
  %indvars.iv3453.i = phi i64 [ 0, %.preheader2552.us.us.us.i ], [ %indvars.iv.next3454.i, %.loopexit2549.us.us.us.i ] ; 3 uses
  %i.bdl = phi <2 x float> [ %i.bdf, %.preheader2552.us.us.us.i ], [ %i.bex, %.loopexit2549.us.us.us.i ] ; 3 uses
  %i.bdm = trunc i64 %indvars.iv3453.i to i32
  %i.bdn = mul i32 %i.bcj, %i.bdm
  %.reass2941.us.us.us.i = add i32 %invariant.op2940.i, %i.bdn ; 3 uses
  %i.bdo = icmp slt i32 %.reass2941.us.us.us.i, 0
  br i1 %i.bdo, label %.loopexit2549.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bdp = srem i32 %.reass2941.us.us.us.i, %i.bcl
  %i.bdq = sdiv i32 %.reass2941.us.us.us.i, %i.bcl ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bdp, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bdq, %i.fz
  %or.cond330 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond330, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2549.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bdr = add nuw nsw i64 %indvars.iv3453.i, %i.bez
  %i.bds = shl i64 %i.bdr, 2
  %i.bdt = and i64 %i.bds, 4294967292
  %i.bdu = getelementptr inbounds nuw [2 x i8], ptr %.27692957.us.us.i, i64 %i.bdt
  %i.bdv = load ptr, ptr %1, align 8, !tbaa !18, !noalias !593
  %i.bdw = load i64, ptr %i.gj, align 8, !tbaa !20, !noalias !593
  %i.bdx = load i64, ptr %i.gk, align 8, !tbaa !57, !noalias !593 ; 2 uses
  %factor.op.mul.us.us.us2976.i = mul i64 %i.bdx, %i.bdw ; 2 uses
  %i.bdy = mul i64 %i.bfb, %i.bdx
  %invariant.gep.us.us.us2977.i = getelementptr i8, ptr %i.bdv, i64 %i.bdy
  %i.bdz = sext i32 %i.bdq to i64
  %invariant.gep2930.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2977.i, i64 %i.bdz ; 2 uses
  %.reass.us2951.us.us.i = mul i64 %factor.op.mul.us.us.us2976.i, %indvars.iv3463.i
  %gep2931.us.us.us.i = getelementptr i8, ptr %invariant.gep2930.us.us.us.i, i64 %.reass.us2951.us.us.i
  %i.bea = load i16, ptr %gep2931.us.us.us.i, align 2, !tbaa !461
  %i.beb = zext i16 %i.bea to i32
  %i.bec = shl nuw i32 %i.beb, 16
  %.reass.us2951.us.us.1.i = mul i64 %factor.op.mul.us.us.us2976.i, %i.bde
  %gep2931.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2930.us.us.us.i, i64 %.reass.us2951.us.us.1.i
  %i.bed = load i16, ptr %gep2931.us.us.us.1.i, align 2, !tbaa !461
  %i.bee = zext i16 %i.bed to i32
  %i.bef = shl nuw i32 %i.bee, 16
  %i.beg = load <4 x i16>, ptr %i.bdu, align 2, !tbaa !461
  %i.beh = freeze <4 x i16> %i.beg
  %i.bei = bitcast <4 x i16> %i.beh to <2 x i32>  ; 2 uses
  %i.bej = and <2 x i32> %i.bei, splat (i32 -65536)
  %i.bek = shl <2 x i32> %i.bei, splat (i32 16)
  %i.bel = bitcast <2 x i32> %i.bek to <2 x float>
  %i.bem = insertelement <2 x i32> poison, i32 %i.bec, i64 0
  %i.ben = bitcast <2 x i32> %i.bem to <2 x float>
  %i.beo = shufflevector <2 x float> %i.ben, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bep = fmul fast <2 x float> %i.beo, %i.bel
  %i.beq = fadd fast <2 x float> %i.bdl, %i.bep
  %i.ber = bitcast <2 x i32> %i.bej to <2 x float>
  %i.bes = insertelement <2 x i32> poison, i32 %i.bef, i64 0
  %i.bet = bitcast <2 x i32> %i.bes to <2 x float>
  %i.beu = shufflevector <2 x float> %i.bet, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bev = fmul fast <2 x float> %i.beu, %i.ber
  %i.bew = fadd fast <2 x float> %i.bev, %i.beq
  br label %.loopexit2549.us.us.us.i

.loopexit2549.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bex = phi <2 x float> [ %i.bdl, %bb.bs ], [ %i.bdl, %bb.bt ], [ %i.bew, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3454.i = add nuw nsw i64 %indvars.iv3453.i, 1 ; 2 uses
  %exitcond3457.not.i = icmp eq i64 %indvars.iv.next3454.i, %i.bdb
  br i1 %exitcond3457.not.i, label %..loopexit2553_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !596

..loopexit2553_crit_edge.us.us.us.i:              ; preds = %.loopexit2549.us.us.us.i, %bb.br, %bb.bq
  %i.bey = phi <2 x float> [ %i.bdf, %bb.bq ], [ %i.bdf, %bb.br ], [ %i.bex, %.loopexit2549.us.us.us.i ] ; 3 uses
  %indvars.iv.next3459.i = add nuw nsw i64 %indvars.iv3458.i, 1 ; 2 uses
  %exitcond3462.not.i = icmp eq i64 %indvars.iv.next3459.i, %wide.trip.count3415.i
  br i1 %exitcond3462.not.i, label %._crit_edge2946.split.us.us.us.i, label %bb.bq, !llvm.loop !597

.preheader2552.us.us.us.i:                        ; preds = %bb.br
  %i.bez = mul nuw nsw i64 %indvars.iv3458.i, %i.bdb
  %i.bfa = sext i32 %i.bdk to i64
  %i.bfb = mul nsw i64 %i.bfa, %i.gy
  br label %bb.bs

._crit_edge2946.split.us.us.us.i:                 ; preds = %..loopexit2553_crit_edge.us.us.us.i
  %i.bfc = getelementptr inbounds [2 x i8], ptr %.27692957.us.us.i, i64 %i.arh ; 2 uses
  %indvars.iv.next3464.i = add nuw nsw i64 %indvars.iv3463.i, 2 ; 2 uses
  %i.bfd = trunc i64 %indvars.iv.next3464.i to i32 ; 2 uses
  %i.bfe = or i32 %i.bfd, 1
  %i.bff = icmp slt i32 %i.bfe, %i.fy
  br i1 %i.bff, label %.preheader2559.us.us.i, label %.preheader2562.i, !llvm.loop !598

.preheader2562.i:                                 ; preds = %._crit_edge2946.split.us.us.us.i, %.preheader2559.us.preheader.i, %.preheader2559.preheader.i, %._crit_edge2908.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2908.i ], [ %scevgep3447.i, %.preheader2559.preheader.i ], [ %scevgep3449.i, %.preheader2559.us.preheader.i ], [ %i.bfc, %._crit_edge2946.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2908.i ], [ %i.bcs, %.preheader2559.preheader.i ], [ %i.bda, %.preheader2559.us.preheader.i ], [ %i.bfd, %._crit_edge2946.split.us.us.us.i ] ; 2 uses
  %i.bfg = phi <2 x float> [ %i.bcc, %._crit_edge2908.i ], [ %i.bcc, %.preheader2559.preheader.i ], [ %i.bcc, %.preheader2559.us.preheader.i ], [ %i.bey, %._crit_edge2946.split.us.us.us.i ] ; 3 uses
  %i.bfh = icmp slt i32 %.2765.lcssa.i, %i.fy
  br i1 %i.bfh, label %.preheader2558.lr.ph.i, label %._crit_edge3006.i

.preheader2558.lr.ph.i:                           ; preds = %.preheader2562.i
  %i.bfi = load i32, ptr %i.d, align 4
  %i.bfj = load i32, ptr %i.j, align 4
  %invariant.op2995.i = sub i32 %.neg2517.i, %i.bfj
  %i.bfk = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfl = load i32, ptr %i.a, align 4
  %.fr3238.i = freeze i32 %i.bfl                  ; 2 uses
  %i.bfm = load i32, ptr %i.c, align 4
  %i.bfn = load i32, ptr %i.i, align 4
  %.neg2507.i = add nuw nsw i32 %.08033022.i, 1
  %invariant.op2987.i = sub i32 %.neg2507.i, %i.bfn
  %i.bfo = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfp = icmp sgt i32 %.fr3238.i, 0
  %or.cond3756.i = and i1 %i.ara, %i.bfp
  br i1 %or.cond3756.i, label %.preheader2558.us.us.preheader.i, label %._crit_edge3006.i

.preheader2558.us.us.preheader.i:                 ; preds = %.preheader2558.lr.ph.i
  %i.bfq = zext nneg i32 %.fr3238.i to i64        ; 2 uses
  %i.bfr = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2558.us.us.i

.preheader2558.us.us.i:                           ; preds = %._crit_edge2992.split.us.us.us.i, %.preheader2558.us.us.preheader.i
  %indvars.iv3476.i = phi i64 [ %i.bfr, %.preheader2558.us.us.preheader.i ], [ %indvars.iv.next3477.i, %._crit_edge2992.split.us.us.us.i ] ; 2 uses
  %.37703003.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2558.us.us.preheader.i ], [ %i.bhi, %._crit_edge2992.split.us.us.us.i ] ; 2 uses
  %i.bfs = phi <2 x float> [ %i.bfg, %.preheader2558.us.us.preheader.i ], [ %i.bhe, %._crit_edge2992.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2551_crit_edge.us.us.us.i, %.preheader2558.us.us.i
  %indvars.iv3471.i = phi i64 [ %indvars.iv.next3472.i, %..loopexit2551_crit_edge.us.us.us.i ], [ 0, %.preheader2558.us.us.i ] ; 3 uses
  %i.bft = phi <2 x float> [ %i.bhe, %..loopexit2551_crit_edge.us.us.us.i ], [ %i.bfs, %.preheader2558.us.us.i ] ; 3 uses
  %i.bfu = trunc i64 %indvars.iv3471.i to i32
  %i.bfv = mul i32 %i.bfi, %i.bfu
  %.reass2996.us.us.us.i = add i32 %i.bfv, %invariant.op2995.i ; 3 uses
  %i.bfw = icmp slt i32 %.reass2996.us.us.us.i, 0
  br i1 %i.bfw, label %..loopexit2551_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bfx = srem i32 %.reass2996.us.us.us.i, %i.bfk
  %i.bfy = sdiv i32 %.reass2996.us.us.us.i, %i.bfk ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bfx, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bfy, %i.ga
  %or.cond331 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond331, label %.preheader2550.us.us.us.i, label %..loopexit2551_crit_edge.us.us.us.i

bb.bw:                                            ; preds = %.preheader2550.us.us.us.i, %bb.by
  %indvars.iv3466.i = phi i64 [ 0, %.preheader2550.us.us.us.i ], [ %indvars.iv.next3467.i, %bb.by ] ; 3 uses
  %i.bfz = phi <2 x float> [ %i.bft, %.preheader2550.us.us.us.i ], [ %i.bhd, %bb.by ] ; 3 uses
  %i.bga = trunc i64 %indvars.iv3466.i to i32
  %i.bgb = mul i32 %i.bfm, %i.bga
  %.reass.us2997.us.us.i = add i32 %invariant.op2987.i, %i.bgb ; 3 uses
  %i.bgc = icmp slt i32 %.reass.us2997.us.us.i, 0
  br i1 %i.bgc, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bgd = srem i32 %.reass.us2997.us.us.i, %i.bfo
  %i.bge = sdiv i32 %.reass.us2997.us.us.i, %i.bfo ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bgd, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bge, %i.fz
  %or.cond332 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond332, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bgf = add nuw nsw i64 %indvars.iv3466.i, %i.bhf
  %.idx3647.i = shl nuw nsw i64 %i.bgf, 2
  %i.bgg = getelementptr inbounds nuw i8, ptr %.37703003.us.us.i, i64 %.idx3647.i
  %i.bgh = load ptr, ptr %1, align 8, !tbaa !18, !noalias !599
  %i.bgi = load i64, ptr %i.gj, align 8, !tbaa !20, !noalias !599
  %i.bgj = mul i64 %i.bgi, %indvars.iv3476.i
  %i.bgk = load i64, ptr %i.gk, align 8, !tbaa !57, !noalias !599 ; 2 uses
  %i.bgl = mul i64 %i.bgj, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bgl
  %i.bgn = mul i64 %i.bhh, %i.bgk
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.bgn
  %i.bgp = sext i32 %i.bge to i64
  %i.bgq = getelementptr inbounds [2 x i8], ptr %i.bgo, i64 %i.bgp
  %i.bgr = load i16, ptr %i.bgq, align 2, !tbaa !461
  %i.bgs = zext i16 %i.bgr to i32
  %i.bgt = shl nuw i32 %i.bgs, 16
  %i.bgu = load <2 x i16>, ptr %i.bgg, align 2, !tbaa !461
  %i.bgv = zext <2 x i16> %i.bgu to <2 x i32>
  %i.bgw = shl nuw <2 x i32> %i.bgv, splat (i32 16)
  %i.bgx = bitcast <2 x i32> %i.bgw to <2 x float>
  %i.bgy = insertelement <2 x i32> poison, i32 %i.bgt, i64 0
  %i.bgz = bitcast <2 x i32> %i.bgy to <2 x float>
  %i.bha = shufflevector <2 x float> %i.bgz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhb = fmul fast <2 x float> %i.bha, %i.bgx
  %i.bhc = fadd fast <2 x float> %i.bhb, %i.bfz
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.bx, %bb.bw
  %i.bhd = phi <2 x float> [ %i.bfz, %bb.bw ], [ %i.bfz, %bb.bx ], [ %i.bhc, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3467.i = add nuw nsw i64 %indvars.iv3466.i, 1 ; 2 uses
  %exitcond3470.not.i = icmp eq i64 %indvars.iv.next3467.i, %i.bfq
  br i1 %exitcond3470.not.i, label %..loopexit2551_crit_edge.us.us.us.i, label %bb.bw, !llvm.loop !602

..loopexit2551_crit_edge.us.us.us.i:              ; preds = %bb.by, %bb.bv, %bb.bu
  %i.bhe = phi <2 x float> [ %i.bft, %bb.bu ], [ %i.bft, %bb.bv ], [ %i.bhd, %bb.by ] ; 3 uses
  %indvars.iv.next3472.i = add nuw nsw i64 %indvars.iv3471.i, 1 ; 2 uses
  %exitcond3475.not.i = icmp eq i64 %indvars.iv.next3472.i, %wide.trip.count3415.i
  br i1 %exitcond3475.not.i, label %._crit_edge2992.split.us.us.us.i, label %bb.bu, !llvm.loop !603

.preheader2550.us.us.us.i:                        ; preds = %bb.bv
  %i.bhf = mul nuw nsw i64 %indvars.iv3471.i, %i.bfq
  %i.bhg = sext i32 %i.bfy to i64
  %i.bhh = mul nsw i64 %i.bhg, %i.gy
  br label %bb.bw

._crit_edge2992.split.us.us.us.i:                 ; preds = %..loopexit2551_crit_edge.us.us.us.i
  %i.bhi = getelementptr inbounds [2 x i8], ptr %.37703003.us.us.i, i64 %i.arj
  %indvars.iv.next3477.i = add nuw nsw i64 %indvars.iv3476.i, 1 ; 2 uses
  %i.bhj = trunc nuw i64 %indvars.iv.next3477.i to i32
  %i.bhk = icmp sgt i32 %i.fy, %i.bhj
  br i1 %i.bhk, label %.preheader2558.us.us.i, label %._crit_edge3006.i, !llvm.loop !604

._crit_edge3006.i:                                ; preds = %._crit_edge2992.split.us.us.us.i, %.preheader2558.lr.ph.i, %.preheader2562.i
  %i.bhl = phi <2 x float> [ %i.bfg, %.preheader2562.i ], [ %i.bfg, %.preheader2558.lr.ph.i ], [ %i.bhe, %._crit_edge2992.split.us.us.us.i ] ; 11 uses
  switch i32 %i.aqx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i
    i32 6, label %bb.bz
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i: ; preds = %._crit_edge3006.i
  %i.bhm = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bhl, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i: ; preds = %._crit_edge3006.i
  %i.bhn = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.bho = load float, ptr %i.bhn, align 4, !tbaa !39
  %i.bhp = fcmp fast ogt <2 x float> %i.bhl, zeroinitializer
  %i.bhq = insertelement <2 x float> poison, float %i.bho, i64 0
  %i.bhr = shufflevector <2 x float> %i.bhq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhs = select <2 x i1> %i.bhp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bhr
  %i.bht = fmul fast <2 x float> %i.bhs, %i.bhl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i: ; preds = %._crit_edge3006.i
  %i.bhu = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.bhv = load float, ptr %i.bhu, align 4, !tbaa !39
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhu, i64 4
  %i.bhx = load float, ptr %i.bhw, align 4, !tbaa !39 ; 3 uses
  %i.bhy = insertelement <2 x float> poison, float %i.bhv, i64 0
  %i.bhz = shufflevector <2 x float> %i.bhy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bia = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bhl, <2 x float> %i.bhz) ; 3 uses
  %i.bib = insertelement <2 x float> poison, float %i.bhx, i64 0
  %i.bic = shufflevector <2 x float> %i.bib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bid = fcmp fast ogt <2 x float> %i.bia, %i.bic ; 2 uses
  %i.bie = extractelement <2 x i1> %i.bid, i64 0
  %i.bif = extractelement <2 x float> %i.bia, i64 0
  %.123772467.i = select i1 %i.bie, float %i.bhx, float %i.bif
  %i.big = insertelement <2 x float> %i.bia, float %.123772467.i, i64 0 ; 2 uses
  %i.bih = extractelement <2 x i1> %i.bid, i64 1
  %i.bii = insertelement <2 x float> %i.big, float %i.bhx, i64 1
  %spec.select = select i1 %i.bih, <2 x float> %i.bii, <2 x float> %i.big
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i: ; preds = %._crit_edge3006.i
  %i.bij = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bhl, <2 x float> splat (float f0x42B0C0A5))
  %i.bik = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bij, <2 x float> splat (float f0xC2B0C0A5))
  %i.bil = fneg fast <2 x float> %i.bik
  %i.bim = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bil)
  %i.bin = fadd fast <2 x float> %i.bim, splat (float 1.000000e+00)
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.cp:                                            ; preds = %.preheader2545.us.us.i.split.us122
  %i.bsr = srem i32 %.reass3108.us.us.us.i.us125, %i.bpw
  %i.bss = sdiv i32 %.reass3108.us.us.us.i.us125, %i.bpw ; 2 uses
  %.not895.us.us.us.i.us126 = icmp eq i32 %i.bsr, 0
  %.not896.us.us.us.i.us127 = icmp slt i32 %i.bss, %i.ape
  %or.cond337 = select i1 %.not895.us.us.us.i.us126, i1 %.not896.us.us.us.i.us127, i1 false
  br i1 %or.cond337, label %.preheader2539.us.us.us.i.us128, label %..loopexit2540_crit_edge.us.us.us.i.us129

.preheader2539.us.us.us.i.us128:                  ; preds = %bb.cp
  %i.bst = mul nuw nsw i64 %indvars.iv3525.i.us123, %i.bqu
  %i.bsu = sext i32 %i.bss to i64
  %i.bsv = mul nsw i64 %i.bsu, %i.aqf
  br label %.lr.ph.split.us3092.us.us.us.i.us

.lr.ph.split.us3092.us.us.us.i.us:                ; preds = %.preheader2539.us.us.us.i.us128, %bb.cr
  %indvars.iv3515.i.us = phi i64 [ %indvars.iv.next3516.i.us, %bb.cr ], [ 0, %.preheader2539.us.us.us.i.us128 ] ; 3 uses
  %.223963086.us3094.us.us.us.i.us = phi <4 x float> [ %.32397.us3098.us.us.us.i.us, %bb.cr ], [ %.123953102.us.us.us.i.us124, %.preheader2539.us.us.us.i.us128 ] ; 3 uses
  %i.bsw = trunc i64 %indvars.iv3515.i.us to i32
  %i.bsx = mul i32 %i.bpy, %i.bsw
  %.reass3090.us3095.us.us.us.i.us = add i32 %i.bsx, %invariant.op3089.i ; 3 uses
  %i.bsy = icmp slt i32 %.reass3090.us3095.us.us.us.i.us, 0
  br i1 %i.bsy, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.split.us3092.us.us.us.i.us
  %i.bsz = srem i32 %.reass3090.us3095.us.us.us.i.us, %i.bqa
  %i.bta = sdiv i32 %.reass3090.us3095.us.us.us.i.us, %i.bqa ; 2 uses
  %.not897.us3096.us.us.us.i.us = icmp eq i32 %i.bsz, 0
  %.not898.us3097.us.us.us.i.us = icmp slt i32 %i.bta, %i.apd
  %or.cond338 = select i1 %.not897.us3096.us.us.us.i.us, i1 %.not898.us3097.us.us.us.i.us, i1 false
  br i1 %or.cond338, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.cr

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.btb = load ptr, ptr %1, align 8, !tbaa !18, !noalias !625
  %i.btc = load i64, ptr %i.apn, align 8, !tbaa !20, !noalias !625
  %i.btd = load i64, ptr %i.apo, align 8, !tbaa !57, !noalias !625 ; 2 uses
  %factor.op.mul3081.us.us.us.us.i.us = mul i64 %i.btd, %i.btc ; 4 uses
  %i.bte = mul i64 %i.bsv, %i.btd
  %invariant.gep.us.us.us3134.us.i.us = getelementptr i8, ptr %i.btb, i64 %i.bte
  %i.btf = sext i32 %i.bta to i64
  %invariant.gep3083.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3134.us.i.us, i64 %i.btf ; 4 uses
  %.reass3082.us.us.us.us.i.us = mul i64 %factor.op.mul3081.us.us.us.us.i.us, %indvars.iv3530.i
  %gep3084.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3083.us.us.us.us.i.us, i64 %.reass3082.us.us.us.us.i.us
  %i.btg = load i16, ptr %gep3084.us.us.us.us.i.us, align 2, !tbaa !461
  %.reass3082.us.us.us.us.1.i.us = mul i64 %factor.op.mul3081.us.us.us.us.i.us, %i.bqy
  %gep3084.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3083.us.us.us.us.i.us, i64 %.reass3082.us.us.us.us.1.i.us
  %i.bth = load i16, ptr %gep3084.us.us.us.us.1.i.us, align 2, !tbaa !461
  %.reass3082.us.us.us.us.2.i.us = mul i64 %factor.op.mul3081.us.us.us.us.i.us, %i.bqz
  %gep3084.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3083.us.us.us.us.i.us, i64 %.reass3082.us.us.us.us.2.i.us
  %i.bti = load i16, ptr %gep3084.us.us.us.us.2.i.us, align 2, !tbaa !461
  %.reass3082.us.us.us.us.3.i.us = mul i64 %factor.op.mul3081.us.us.us.us.i.us, %i.bra
  %gep3084.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3083.us.us.us.us.i.us, i64 %.reass3082.us.us.us.us.3.i.us
  %i.btj = load i16, ptr %gep3084.us.us.us.us.3.i.us, align 2, !tbaa !461
  %i.btk = zext i16 %i.btj to i32
  %i.btl = zext i16 %i.bti to i32
  %i.btm = zext i16 %i.bth to i32
  %i.btn = zext i16 %i.btg to i32
  %i.bto = insertelement <4 x i32> poison, i32 %i.btn, i64 0
  %i.btp = insertelement <4 x i32> %i.bto, i32 %i.btm, i64 1
  %i.btq = insertelement <4 x i32> %i.btp, i32 %i.btl, i64 2
  %i.btr = insertelement <4 x i32> %i.btq, i32 %i.btk, i64 3
  %i.bts = shl nuw <4 x i32> %i.btr, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.bts to <4 x float>
  %i.btt = add nuw nsw i64 %indvars.iv3515.i.us, %i.bst
  %i.btu = shl i64 %i.btt, 2
  %i.btv = and i64 %i.btu, 4294967292
  %i.btw = getelementptr inbounds nuw [2 x i8], ptr %.17253119.us.us.i, i64 %i.btv
  %i.btx = load i64, ptr %i.btw, align 1, !tbaa !310
  %i.bty = insertelement <2 x i64> poison, i64 %i.btx, i64 0
  %i.btz = bitcast <2 x i64> %i.bty to <8 x i16>
  %i.bua = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bub = bitcast <8 x i16> %i.bua to <4 x float>
  %i.buc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bub, <4 x float> nofpclass(nan inf) %.223963086.us3094.us.us.us.i.us)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3092.us.us.us.i.us
  %.32397.us3098.us.us.us.i.us = phi nsz <4 x float> [ %.223963086.us3094.us.us.us.i.us, %.lr.ph.split.us3092.us.us.us.i.us ], [ %i.buc, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223963086.us3094.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3516.i.us = add nuw nsw i64 %indvars.iv3515.i.us, 1 ; 2 uses
  %exitcond3519.not.i.us = icmp eq i64 %indvars.iv.next3516.i.us, %i.bqu
  br i1 %exitcond3519.not.i.us, label %..loopexit2540_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3092.us.us.us.i.us, !llvm.loop !623

..loopexit2540_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2545.us.us.i.split.us122
  %.42398.us.us.us.i.us130 = phi nsz <4 x float> [ %.123953102.us.us.us.i.us124, %.preheader2545.us.us.i.split.us122 ], [ %.123953102.us.us.us.i.us124, %bb.cp ], [ %.32397.us3098.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3526.i.us131 = add nuw nsw i64 %indvars.iv3525.i.us123, 1 ; 2 uses
  %exitcond3529.not.i.us132 = icmp eq i64 %indvars.iv.next3526.i.us131, %wide.trip.count3502.i
  br i1 %exitcond3529.not.i.us132, label %._crit_edge3105.split.us.us.us.i, label %.preheader2545.us.us.i.split.us122, !llvm.loop !624

._crit_edge3105.split.us.us.us.i:                 ; preds = %..loopexit2540_crit_edge.us.us.us.i.us129, %..loopexit2540_crit_edge.us.us.us.i.us, %.preheader2545.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2540_crit_edge.us.us.us.i.us ], [ %.023943118.us.us.i, %.preheader2545.us.us.i ], [ %.42398.us.us.us.i.us130, %..loopexit2540_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.bud = getelementptr inbounds [2 x i8], ptr %.17253119.us.us.i, i64 %i.bky ; 2 uses
  %indvars.iv.next3531.i = add nuw nsw i64 %indvars.iv3530.i, 4 ; 2 uses
  %i.bue = trunc i64 %indvars.iv.next3531.i to i32 ; 2 uses
  %i.buf = or i32 %i.bue, 3
  %i.bug = icmp slt i32 %i.buf, %i.apc
  br i1 %i.bug, label %.preheader2545.us.us.i, label %._crit_edge3123.i, !llvm.loop !628

._crit_edge3123.i:                                ; preds = %._crit_edge3105.split.us.us.us.i, %.preheader2545.us.preheader.i, %.preheader2545.preheader.i, %._crit_edge3063.i
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3063.i ], [ zeroinitializer, %.preheader2545.preheader.i ], [ zeroinitializer, %.preheader2545.us.preheader.i ], [ %.us-phi121, %._crit_edge3105.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge3063.i ], [ %scevgep3508.i, %.preheader2545.preheader.i ], [ %scevgep3510.i, %.preheader2545.us.preheader.i ], [ %i.bud, %._crit_edge3105.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge3063.i ], [ %i.bqj, %.preheader2545.preheader.i ], [ %i.bqt, %.preheader2545.us.preheader.i ], [ %i.bue, %._crit_edge3105.split.us.us.us.i ] ; 9 uses
  %i.buh = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpr, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bui = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpr, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.buj = fadd fast <4 x float> %i.buh, %i.bui
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.buj) ; 4 uses
  %i.buk = or disjoint i32 %.1.lcssa.i, 1
  %i.bul = icmp slt i32 %i.buk, %i.apc
  br i1 %i.bul, label %.preheader2544.lr.ph.i, label %.preheader2547.i

.preheader2544.lr.ph.i:                           ; preds = %._crit_edge3123.i
  %i.bum = load i32, ptr %i.d, align 4
  %i.bun = load i32, ptr %i.j, align 4
  %invariant.op3158.i = sub i32 %.neg2501.i, %i.bun
  %i.buo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bup = load i32, ptr %i.a, align 4
  %.fr3241.i = freeze i32 %i.bup                  ; 2 uses
  %i.buq = load i32, ptr %i.c, align 4
  %i.bur = load i32, ptr %i.i, align 4
  %.neg2495.i = add nuw nsw i32 %.07323214.i, 1
  %invariant.op3151.i = sub i32 %.neg2495.i, %i.bur
  %i.bus = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bkt, label %.preheader2544.lr.ph.split.us.i, label %.preheader2544.preheader.i

.preheader2544.preheader.i:                       ; preds = %.preheader2544.lr.ph.i
  %i.but = add i32 %.1.lcssa.i, 3
  %smax3533.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.but)
  %reass.sub144 = sub i32 %smax3533.i, %.1.lcssa.i
  %i.buu = and i32 %reass.sub144, -2              ; 2 uses
  %i.buv = add i32 %i.buu, -2
  %i.buw = zext i32 %i.buv to i64
  %i.bux = add nuw nsw i64 %i.buw, 2
  %i.buy = mul nsw i64 %i.bux, %i.bla
  %scevgep3534.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.buy
  %i.buz = add i32 %.1.lcssa.i, %i.buu
  br label %.preheader2547.i

.preheader2544.lr.ph.split.us.i:                  ; preds = %.preheader2544.lr.ph.i
  %i.bva = icmp sgt i32 %.fr3241.i, 0
  br i1 %i.bva, label %.preheader2544.us.us.preheader.i, label %.preheader2544.us.preheader.i

.preheader2544.us.preheader.i:                    ; preds = %.preheader2544.lr.ph.split.us.i
  %i.bvb = add i32 %.1.lcssa.i, 3
  %smax3535.i = call i32 @llvm.smax.i32(i32 %i.apc, i32 %i.bvb)
  %reass.sub145 = sub i32 %smax3535.i, %.1.lcssa.i
  %i.bvc = and i32 %reass.sub145, -2              ; 2 uses
  %i.bvd = add i32 %i.bvc, -2
  %i.bve = zext i32 %i.bvd to i64
  %i.bvf = add nuw nsw i64 %i.bve, 2
  %i.bvg = mul nsw i64 %i.bvf, %i.bla
  %scevgep3536.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bvg
  %i.bvh = add i32 %.1.lcssa.i, %i.bvc
  br label %.preheader2547.i

.preheader2544.us.us.preheader.i:                 ; preds = %.preheader2544.lr.ph.split.us.i
  %i.bvi = zext nneg i32 %.fr3241.i to i64        ; 2 uses
  %i.bvj = zext i32 %.1.lcssa.i to i64
  br label %.preheader2544.us.us.i

.preheader2544.us.us.i:                           ; preds = %._crit_edge3156.split.us.us.us.i, %.preheader2544.us.us.preheader.i
  %indvars.iv3550.i = phi i64 [ %i.bvj, %.preheader2544.us.us.preheader.i ], [ %indvars.iv.next3551.i, %._crit_edge3156.split.us.us.us.i ] ; 3 uses
  %.27263163.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2544.us.us.preheader.i ], [ %i.bwj, %._crit_edge3156.split.us.us.us.i ] ; 2 uses
  %.17293162.us.us.i = phi float [ %op.rdx, %.preheader2544.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3156.split.us.us.us.i ]
  %i.bvk = add nuw nsw i64 %indvars.iv3550.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2538_crit_edge.us.us.us.i, %.preheader2544.us.us.i
  %indvars.iv3545.i = phi i64 [ %indvars.iv.next3546.i, %..loopexit2538_crit_edge.us.us.us.i ], [ 0, %.preheader2544.us.us.i ] ; 3 uses
  %.27303153.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2538_crit_edge.us.us.us.i ], [ %.17293162.us.us.i, %.preheader2544.us.us.i ] ; 3 uses
  %i.bvl = trunc i64 %indvars.iv3545.i to i32
  %i.bvm = mul i32 %i.bum, %i.bvl
  %.reass3159.us.us.us.i = add i32 %i.bvm, %invariant.op3158.i ; 3 uses
  %i.bvn = icmp slt i32 %.reass3159.us.us.us.i, 0
  br i1 %i.bvn, label %..loopexit2538_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bvo = srem i32 %.reass3159.us.us.us.i, %i.buo
  %i.bvp = sdiv i32 %.reass3159.us.us.us.i, %i.buo ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bvo, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bvp, %i.ape
  %or.cond339 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond339, label %.preheader2537.us.us.us.i, label %..loopexit2538_crit_edge.us.us.us.i

bb.cu:                                            ; preds = %.preheader2537.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv3540.i = phi i64 [ 0, %.preheader2537.us.us.us.i ], [ %indvars.iv.next3541.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.37313148.us.us.us.i = phi float [ %.27303153.us.us.us.i, %.preheader2537.us.us.us.i ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.bvq = trunc i64 %indvars.iv3540.i to i32
  %i.bvr = mul i32 %i.buq, %i.bvq
  %.reass3152.us.us.us.i = add i32 %invariant.op3151.i, %i.bvr ; 3 uses
  %i.bvs = icmp slt i32 %.reass3152.us.us.us.i, 0
  br i1 %i.bvs, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bvt = srem i32 %.reass3152.us.us.us.i, %i.bus
  %i.bvu = sdiv i32 %.reass3152.us.us.us.i, %i.bus ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bvt, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bvu, %i.apd
  %or.cond340 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond340, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.bvv = add nuw nsw i64 %indvars.iv3540.i, %i.bwg
  %.idx3651.i = shl nuw nsw i64 %i.bvv, 2
  %i.bvw = getelementptr inbounds nuw i8, ptr %.27263163.us.us.i, i64 %.idx3651.i ; 2 uses
  %i.bvx = load ptr, ptr %1, align 8, !tbaa !18, !noalias !629
  %i.bvy = load i64, ptr %i.apn, align 8, !tbaa !20, !noalias !629
  %i.bvz = load i64, ptr %i.apo, align 8, !tbaa !57, !noalias !629 ; 2 uses
  %factor.op.mul3142.us.us.us.i = mul i64 %i.bvz, %i.bvy ; 2 uses
  %i.bwa = mul i64 %i.bwi, %i.bvz
  %invariant.gep.us.us.us3180.i = getelementptr i8, ptr %i.bvx, i64 %i.bwa
  %i.bwb = sext i32 %i.bvu to i64
  %invariant.gep3144.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3180.i, i64 %i.bwb ; 2 uses
  %.reass3143.us.us.us.i = mul i64 %factor.op.mul3142.us.us.us.i, %indvars.iv3550.i
  %gep3145.us.us.us.i = getelementptr i8, ptr %invariant.gep3144.us.us.us.i, i64 %.reass3143.us.us.us.i
  %i.bwc = load i16, ptr %gep3145.us.us.us.i, align 2, !tbaa !461
  %5 = zext i16 %i.bwc to i32
  %6 = shl nuw i32 %5, 16
  %7 = bitcast i32 %6 to float
  %i.bwd = load i16, ptr %i.bvw, align 2, !tbaa !461
  %i.bwe = zext i16 %i.bwd to i32
  %8 = shl nuw i32 %i.bwe, 16
  %9 = bitcast i32 %8 to float
  %10 = fmul fast float %9, %7
  %11 = fadd fast float %.37313148.us.us.us.i, %10
  %.reass3143.us.us.us.1.i = mul i64 %factor.op.mul3142.us.us.us.i, %i.bvk
  %gep3145.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3144.us.us.us.i, i64 %.reass3143.us.us.us.1.i
  %12 = load i16, ptr %gep3145.us.us.us.1.i, align 2, !tbaa !461
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 %13, 16
  %15 = bitcast i32 %14 to float
  %16 = getelementptr inbounds nuw i8, ptr %i.bvw, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !461
  %18 = zext i16 %17 to i32
  %19 = shl nuw i32 %18, 16
  %20 = bitcast i32 %19 to float
  %21 = fmul fast float %20, %15
  %i.bwf = fadd fast float %21, %11
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6.us.us.us.i = phi nsz float [ %.37313148.us.us.us.i, %bb.cu ], [ %.37313148.us.us.us.i, %bb.cv ], [ %i.bwf, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3541.i = add nuw nsw i64 %indvars.iv3540.i, 1 ; 2 uses
  %exitcond3544.not.i = icmp eq i64 %indvars.iv.next3541.i, %i.bvi
  br i1 %exitcond3544.not.i, label %..loopexit2538_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !632

..loopexit2538_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8.us.us.us.i = phi nsz float [ %.27303153.us.us.us.i, %bb.cs ], [ %.27303153.us.us.us.i, %bb.ct ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3546.i = add nuw nsw i64 %indvars.iv3545.i, 1 ; 2 uses
  %exitcond3549.not.i = icmp eq i64 %indvars.iv.next3546.i, %wide.trip.count3502.i
  br i1 %exitcond3549.not.i, label %._crit_edge3156.split.us.us.us.i, label %bb.cs, !llvm.loop !633

.preheader2537.us.us.us.i:                        ; preds = %bb.ct
  %i.bwg = mul nuw nsw i64 %indvars.iv3545.i, %i.bvi
  %i.bwh = sext i32 %i.bvp to i64
  %i.bwi = mul nsw i64 %i.bwh, %i.aqf
  br label %bb.cu

._crit_edge3156.split.us.us.us.i:                 ; preds = %..loopexit2538_crit_edge.us.us.us.i
  %i.bwj = getelementptr inbounds [2 x i8], ptr %.27263163.us.us.i, i64 %i.bla ; 2 uses
  %indvars.iv.next3551.i = add nuw nsw i64 %indvars.iv3550.i, 2 ; 2 uses
  %i.bwk = trunc i64 %indvars.iv.next3551.i to i32 ; 2 uses
  %i.bwl = or i32 %i.bwk, 1
  %i.bwm = icmp slt i32 %i.bwl, %i.apc
  br i1 %i.bwm, label %.preheader2544.us.us.i, label %.preheader2547.i, !llvm.loop !634

.preheader2547.i:                                 ; preds = %._crit_edge3156.split.us.us.us.i, %.preheader2544.us.preheader.i, %.preheader2544.preheader.i, %._crit_edge3123.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3123.i ], [ %op.rdx, %.preheader2544.preheader.i ], [ %op.rdx, %.preheader2544.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3156.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3123.i ], [ %scevgep3534.i, %.preheader2544.preheader.i ], [ %scevgep3536.i, %.preheader2544.us.preheader.i ], [ %i.bwj, %._crit_edge3156.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3123.i ], [ %i.buz, %.preheader2544.preheader.i ], [ %i.bvh, %.preheader2544.us.preheader.i ], [ %i.bwk, %._crit_edge3156.split.us.us.us.i ] ; 2 uses
  %i.bwn = icmp slt i32 %.2.lcssa.i, %i.apc
  br i1 %i.bwn, label %.preheader2543.lr.ph.i, label %._crit_edge3202.i

.preheader2543.lr.ph.i:                           ; preds = %.preheader2547.i
  %i.bwo = load i32, ptr %i.d, align 4
  %i.bwp = load i32, ptr %i.j, align 4
  %invariant.op3194.i = sub i32 %.neg2501.i, %i.bwp
  %i.bwq = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bwr = load i32, ptr %i.a, align 4
  %.fr3242.i = freeze i32 %i.bwr                  ; 2 uses
  %i.bws = load i32, ptr %i.c, align 4
  %i.bwt = load i32, ptr %i.i, align 4
  %.neg2491.i = add nuw nsw i32 %.07323214.i, 1
  %invariant.op3187.i = sub i32 %.neg2491.i, %i.bwt
  %i.bwu = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bwv = icmp sgt i32 %.fr3242.i, 0
  %or.cond3771.i = and i1 %i.bkt, %i.bwv
  br i1 %or.cond3771.i, label %.preheader2543.us.us.preheader.i, label %._crit_edge3202.i

.preheader2543.us.us.preheader.i:                 ; preds = %.preheader2543.lr.ph.i
  %i.bww = zext nneg i32 %.fr3242.i to i64        ; 2 uses
  %i.bwx = zext i32 %.2.lcssa.i to i64
  br label %.preheader2543.us.us.i

.preheader2543.us.us.i:                           ; preds = %._crit_edge3192.split.us.us.us.i, %.preheader2543.us.us.preheader.i
  %indvars.iv3563.i = phi i64 [ %i.bwx, %.preheader2543.us.us.preheader.i ], [ %indvars.iv.next3564.i, %._crit_edge3192.split.us.us.us.i ] ; 2 uses
  %.37273199.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2543.us.us.preheader.i ], [ %i.byh, %._crit_edge3192.split.us.us.us.i ] ; 2 uses
  %.93198.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2543.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3192.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2536_crit_edge.us.us.us.i, %.preheader2543.us.us.i
  %indvars.iv3558.i = phi i64 [ %indvars.iv.next3559.i, %..loopexit2536_crit_edge.us.us.us.i ], [ 0, %.preheader2543.us.us.i ] ; 3 uses
  %.103189.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2536_crit_edge.us.us.us.i ], [ %.93198.us.us.i, %.preheader2543.us.us.i ] ; 3 uses
  %i.bwy = trunc i64 %indvars.iv3558.i to i32
  %i.bwz = mul i32 %i.bwo, %i.bwy
  %.reass3195.us.us.us.i = add i32 %i.bwz, %invariant.op3194.i ; 3 uses
  %i.bxa = icmp slt i32 %.reass3195.us.us.us.i, 0
  br i1 %i.bxa, label %..loopexit2536_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bxb = srem i32 %.reass3195.us.us.us.i, %i.bwq
  %i.bxc = sdiv i32 %.reass3195.us.us.us.i, %i.bwq ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bxb, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bxc, %i.ape
  %or.cond341 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond341, label %.preheader.us.us.us.i, label %..loopexit2536_crit_edge.us.us.us.i

bb.cy:                                            ; preds = %.preheader.us.us.us.i, %bb.da
  %indvars.iv3553.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next3554.i, %bb.da ] ; 3 uses
  %.113184.us.us.us.i = phi float [ %.103189.us.us.us.i, %.preheader.us.us.us.i ], [ %.13.us.us.us.i, %bb.da ] ; 3 uses
  %i.bxd = trunc i64 %indvars.iv3553.i to i32
  %i.bxe = mul i32 %i.bws, %i.bxd
  %.reass3188.us.us.us.i = add i32 %invariant.op3187.i, %i.bxe ; 3 uses
  %i.bxf = icmp slt i32 %.reass3188.us.us.us.i, 0
  br i1 %i.bxf, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bxg = srem i32 %.reass3188.us.us.us.i, %i.bwu
  %i.bxh = sdiv i32 %.reass3188.us.us.us.i, %i.bwu ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bxg, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bxh, %i.apd
  %or.cond342 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond342, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.bxi = load ptr, ptr %1, align 8, !tbaa !18, !noalias !635
  %i.bxj = load i64, ptr %i.apn, align 8, !tbaa !20, !noalias !635
  %i.bxk = mul i64 %i.bxj, %indvars.iv3563.i
  %i.bxl = load i64, ptr %i.apo, align 8, !tbaa !57, !noalias !635 ; 2 uses
  %i.bxm = mul i64 %i.bxk, %i.bxl
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.bxm
  %i.bxo = mul i64 %i.byg, %i.bxl
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxn, i64 %i.bxo
  %i.bxq = sext i32 %i.bxh to i64
  %i.bxr = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.bxq
  %i.bxs = load i16, ptr %i.bxr, align 2, !tbaa !461
  %i.bxt = zext i16 %i.bxs to i32
  %i.bxu = shl nuw i32 %i.bxt, 16
  %i.bxv = bitcast i32 %i.bxu to float
  %i.bxw = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %indvars.iv3553.i
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !461
  %i.bxy = zext i16 %i.bxx to i32
  %i.bxz = shl nuw i32 %i.bxy, 16
  %i.bya = bitcast i32 %i.bxz to float
  %i.byb = fmul fast float %i.bya, %i.bxv
  %i.byc = fadd fast float %i.byb, %.113184.us.us.us.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.cz, %bb.cy
  %.13.us.us.us.i = phi nsz float [ %.113184.us.us.us.i, %bb.cy ], [ %.113184.us.us.us.i, %bb.cz ], [ %i.byc, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3554.i = add nuw nsw i64 %indvars.iv3553.i, 1 ; 2 uses
  %exitcond3557.not.i = icmp eq i64 %indvars.iv.next3554.i, %i.bww
  br i1 %exitcond3557.not.i, label %..loopexit2536_crit_edge.us.us.us.i, label %bb.cy, !llvm.loop !638

..loopexit2536_crit_edge.us.us.us.i:              ; preds = %bb.da, %bb.cx, %bb.cw
  %.15.us.us.us.i = phi nsz float [ %.103189.us.us.us.i, %bb.cw ], [ %.103189.us.us.us.i, %bb.cx ], [ %.13.us.us.us.i, %bb.da ] ; 3 uses
  %indvars.iv.next3559.i = add nuw nsw i64 %indvars.iv3558.i, 1 ; 2 uses
  %exitcond3562.not.i = icmp eq i64 %indvars.iv.next3559.i, %wide.trip.count3502.i
  br i1 %exitcond3562.not.i, label %._crit_edge3192.split.us.us.us.i, label %bb.cw, !llvm.loop !639

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.byd = mul nuw nsw i64 %indvars.iv3558.i, %i.bww
  %i.bye = sext i32 %i.bxc to i64
  %i.byf = getelementptr inbounds nuw [2 x i8], ptr %.37273199.us.us.i, i64 %i.byd
  %i.byg = mul nsw i64 %i.bye, %i.aqf
  br label %bb.cy

._crit_edge3192.split.us.us.us.i:                 ; preds = %..loopexit2536_crit_edge.us.us.us.i
  %i.byh = getelementptr inbounds [2 x i8], ptr %.37273199.us.us.i, i64 %i.blb
  %indvars.iv.next3564.i = add nuw nsw i64 %indvars.iv3563.i, 1 ; 2 uses
  %i.byi = trunc nuw i64 %indvars.iv.next3564.i to i32
  %i.byj = icmp sgt i32 %i.apc, %i.byi
  br i1 %i.byj, label %.preheader2543.us.us.i, label %._crit_edge3202.i, !llvm.loop !640

._crit_edge3202.i:                                ; preds = %._crit_edge3192.split.us.us.us.i, %.preheader2543.lr.ph.i, %.preheader2547.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2547.i ], [ %.1729.lcssa.i, %.preheader2543.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3192.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bkq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.db
    i32 2, label %bb.dc
    i32 3, label %bb.dd
    i32 4, label %bb.df
    i32 5, label %bb.dg
    i32 6, label %bb.dh
  ]

bb.db:                                            ; preds = %._crit_edge3202.i
  %i.byk = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dc:                                            ; preds = %._crit_edge3202.i
  %i.byl = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.bym = load float, ptr %i.byl, align 4, !tbaa !39
  %i.byn = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.byo = select fast i1 %i.byn, float 1.000000e+00, float %i.bym
  %i.byp = fmul fast float %i.byo, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dd:                                            ; preds = %._crit_edge3202.i
  %i.byq = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !39
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byq, i64 4
  %i.byt = load float, ptr %i.bys, align 4, !tbaa !39 ; 2 uses
  %.02380.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.byr) ; 2 uses
  %i.byu = fcmp fast ogt float %.02380.i, %i.byt
  br i1 %i.byu, label %bb.de, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.de:                                            ; preds = %bb.dd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.df:                                            ; preds = %._crit_edge3202.i
  %.sroa.speculated2235.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2235.i, float f0xC2B0C0A5)
  %i.byv = fneg fast float %.sroa.speculated.i
  %i.byw = call fast float @llvm.exp.f32(float %i.byv)
  %i.byx = fadd fast float %i.byw, 1.000000e+00
  %i.byy = fdiv fast float 1.000000e+00, %i.byx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dg:                                            ; preds = %._crit_edge3202.i
  %i.byz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.bza = fadd fast float %i.byz, 1.000000e+00
  %i.bzb = call fast float @llvm.log.f32(float %i.bza)
  %i.bzc = call fast float @llvm.tanh.f32(float %i.bzb)
  %i.bzd = fmul fast float %i.bzc, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dh:                                            ; preds = %._crit_edge3202.i
  %i.bze = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
end_hunk_3
