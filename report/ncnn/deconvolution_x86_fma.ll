Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.awb = load ptr, ptr %1, align 8, !tbaa !20, !noalias !438
  %i.awc = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !438
  %i.awd = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !438 ; 2 uses
  %factor.op.mul.us.us.us2852.us.i.us = mul i64 %i.awd, %i.awc ; 4 uses
  %i.awe = mul i64 %i.avv, %i.awd
  %invariant.gep.us.us.us2853.us.i.us = getelementptr i8, ptr %i.awb, i64 %i.awe
  %i.awf = sext i32 %i.awa to i64
  %invariant.gep2789.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2853.us.i.us, i64 %i.awf ; 4 uses
  %.reass.us.us2824.us.us.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %indvars.iv3371.i
  %gep2790.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.i.us
  %i.awg = load float, ptr %gep2790.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03496.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.awg, i64 0
  %.reass.us.us2824.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aud
  %gep2790.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.1.i.us
  %i.awh = load float, ptr %gep2790.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03496.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.0.vec.insert.i.us, float %i.awh, i64 1
  %.reass.us.us2824.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aue
  %gep2790.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.2.i.us
  %i.awi = load float, ptr %gep2790.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03496.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.4.vec.insert.i.us, float %i.awi, i64 2
  %.reass.us.us2824.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.auf
  %gep2790.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.3.i.us
  %i.awj = load float, ptr %gep2790.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03496.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.8.vec.insert.i.us, float %i.awj, i64 3 ; 2 uses
  %i.awk = add nuw nsw i64 %indvars.iv3356.i.us, %i.avt
  %i.awl = shl i64 %i.awk, 3
  %i.awm = and i64 %i.awl, 4294967288
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %.17682837.us.us.i, i64 %i.awm ; 2 uses
  %i.awo = load <4 x float>, ptr %i.awn, align 16, !tbaa !82
  %i.awp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03496.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awo, <4 x float> nofpclass(nan inf) %.223762792.us2804.us.us.us.i.us)
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.awr = load <4 x float>, ptr %i.awq, align 16, !tbaa !82
  %i.aws = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03496.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awr, <4 x float> nofpclass(nan inf) %.223712793.us2803.us.us.us.i.us)
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2801.us.us.us.i.us
  %.32377.us2808.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us2804.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.awp, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762792.us2804.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2809.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us2803.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.aws, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712793.us2803.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3357.i.us = add nuw nsw i64 %indvars.iv3356.i.us, 1 ; 2 uses
  %exitcond3360.not.i.us = icmp eq i64 %indvars.iv.next3357.i.us, %i.atz
  br i1 %exitcond3360.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us190, label %.lr.ph.split.us2801.us.us.us.i.us, !llvm.loop !373

..loopexit2488_crit_edge.us.us.us.i.us190:        ; preds = %bb.cq, %bb.co, %.preheader2493.us.us.i.split.us182
  %.42378.us.us.us.i.us191 = phi nsz <4 x float> [ %.123752815.us.us.us.i.us185, %.preheader2493.us.us.i.split.us182 ], [ %.123752815.us.us.us.i.us185, %bb.co ], [ %.32377.us2808.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us192 = phi nsz <4 x float> [ %.123702816.us.us.us.i.us184, %.preheader2493.us.us.i.split.us182 ], [ %.123702816.us.us.us.i.us184, %bb.co ], [ %.32372.us2809.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3367.i.us193 = add nuw nsw i64 %indvars.iv3366.i.us183, 1 ; 2 uses
  %exitcond3370.not.i.us194 = icmp eq i64 %indvars.iv.next3367.i.us193, %wide.trip.count3345.i
  br i1 %exitcond3370.not.i.us194, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us182, !llvm.loop !374

._crit_edge2819.split.us.us.us.i:                 ; preds = %..loopexit2488_crit_edge.us.us.us.i.us190, %..loopexit2488_crit_edge.us.us.us.i.us, %.preheader2493.us.us.i
  %.us-phi180 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ], [ %.42378.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %.us-phi181 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ], [ %.42373.us.us.us.i.us192, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %i.awt = getelementptr inbounds [4 x i8], ptr %.17682837.us.us.i, i64 %i.apb ; 2 uses
  %indvars.iv.next3372.i = add nuw nsw i64 %indvars.iv3371.i, 4 ; 2 uses
  %i.awu = trunc i64 %indvars.iv.next3372.i to i32 ; 2 uses
  %i.awv = or i32 %i.awu, 3
  %i.aww = icmp slt i32 %i.awv, %i.kf
  br i1 %i.aww, label %.preheader2493.us.us.i, label %._crit_edge2841.i, !llvm.loop !377

._crit_edge2841.i:                                ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.preheader.i, %.preheader2493.preheader.i, %._crit_edge2768.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi181, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2768.i ], [ %scevgep3350.i, %.preheader2493.preheader.i ], [ %scevgep3351.i, %.preheader2493.us.preheader.i ], [ %i.awt, %._crit_edge2819.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2768.i ], [ %i.atq, %.preheader2493.preheader.i ], [ %i.aty, %.preheader2493.us.preheader.i ], [ %i.awu, %._crit_edge2819.split.us.us.us.i ] ; 7 uses
  %i.awx = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awy = fadd fast <4 x float> %i.awx, %.02374.lcssa.i ; 2 uses
  %i.awz = shufflevector <4 x float> %i.asv, <4 x float> %i.ata, <2 x i32> <i32 1, i32 5>
  %i.axa = fadd fast <2 x float> %i.awz, %i.api
  %i.axb = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.axc = fadd fast <4 x float> %i.axb, %.02369.lcssa.i ; 2 uses
  %i.axd = shufflevector <4 x float> %i.asv, <4 x float> %i.ata, <2 x i32> <i32 0, i32 4>
  %i.axe = fadd fast <2 x float> %i.axa, %i.axd
  %i.axf = shufflevector <4 x float> %i.awy, <4 x float> %i.axc, <2 x i32> <i32 1, i32 5>
  %i.axg = fadd fast <2 x float> %i.axe, %i.axf
  %i.axh = shufflevector <4 x float> %i.awy, <4 x float> %i.axc, <2 x i32> <i32 0, i32 4>
  %i.axi = fadd fast <2 x float> %i.axg, %i.axh   ; 4 uses
  %i.axj = or disjoint i32 %.1764.lcssa.i, 1
  %i.axk = icmp slt i32 %i.axj, %i.kf
  br i1 %i.axk, label %.preheader2492.lr.ph.i, label %.preheader2495.i

.preheader2492.lr.ph.i:                           ; preds = %._crit_edge2841.i
  %i.axl = load i32, ptr %i.d, align 4
  %i.axm = load i32, ptr %i.j, align 4
  %invariant.op2882.i = sub i32 %.neg2450.i, %i.axm
  %i.axn = load i32, ptr %i.f, align 4            ; 2 uses
  %i.axo = load i32, ptr %i.a, align 4
  %.fr3170.i = freeze i32 %i.axo                  ; 2 uses
  %i.axp = load i32, ptr %i.c, align 4
  %i.axq = load i32, ptr %i.i, align 4
  %.neg2444.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2873.i = sub i32 %.neg2444.i, %i.axq
  %i.axr = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aow, label %.preheader2492.lr.ph.split.us.i, label %.preheader2492.preheader.i

.preheader2492.preheader.i:                       ; preds = %.preheader2492.lr.ph.i
  %i.axs = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.axt = lshr i32 %i.axs, 1
  %i.axu = zext nneg i32 %i.axt to i64
  %i.axv = shl nuw nsw i64 %i.axu, 2
  %i.axw = add nuw nsw i64 %i.axv, 4
  %i.axx = mul i64 %i.axw, %i.apd
  %scevgep3374.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.axx
  %i.axy = add i32 %.1764.lcssa.i, 2
  %i.axz = and i32 %i.axs, -2
  %i.aya = add i32 %i.axy, %i.axz
  br label %.preheader2495.i

.preheader2492.lr.ph.split.us.i:                  ; preds = %.preheader2492.lr.ph.i
  %i.ayb = icmp sgt i32 %.fr3170.i, 0
  br i1 %i.ayb, label %.preheader2492.us.us.preheader.i, label %.preheader2492.us.preheader.i

.preheader2492.us.preheader.i:                    ; preds = %.preheader2492.lr.ph.split.us.i
  %i.ayc = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.ayd = lshr i32 %i.ayc, 1
  %i.aye = zext nneg i32 %i.ayd to i64
  %i.ayf = shl nuw nsw i64 %i.aye, 2
  %i.ayg = add nuw nsw i64 %i.ayf, 4
  %i.ayh = mul i64 %i.ayg, %i.apd
  %scevgep3375.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.ayh
  %i.ayi = add i32 %.1764.lcssa.i, 2
  %i.ayj = and i32 %i.ayc, -2
  %i.ayk = add i32 %i.ayi, %i.ayj
  br label %.preheader2495.i

.preheader2492.us.us.preheader.i:                 ; preds = %.preheader2492.lr.ph.split.us.i
  %i.ayl = zext nneg i32 %.fr3170.i to i64        ; 2 uses
  %i.aym = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2492.us.us.i

.preheader2492.us.us.i:                           ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.us.preheader.i
  %indvars.iv3389.i = phi i64 [ %i.aym, %.preheader2492.us.us.preheader.i ], [ %indvars.iv.next3390.i, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %.27692890.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2492.us.us.preheader.i ], [ %i.bac, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.ayn = phi <2 x float> [ %i.axi, %.preheader2492.us.us.preheader.i ], [ %i.bab, %._crit_edge2879.split.us.us.us.i ]
  %i.ayo = add nuw nsw i64 %indvars.iv3389.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2486_crit_edge.us.us.us.i, %.preheader2492.us.us.i
  %indvars.iv3384.i = phi i64 [ %indvars.iv.next3385.i, %..loopexit2486_crit_edge.us.us.us.i ], [ 0, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayp = phi <2 x float> [ %i.bab, %..loopexit2486_crit_edge.us.us.us.i ], [ %i.ayn, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayq = trunc i64 %indvars.iv3384.i to i32
  %i.ayr = mul i32 %i.axl, %i.ayq
  %.reass2883.us.us.us.i = add i32 %i.ayr, %invariant.op2882.i ; 3 uses
  %i.ays = icmp slt i32 %.reass2883.us.us.us.i, 0
  br i1 %i.ays, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayt = srem i32 %.reass2883.us.us.us.i, %i.axn
  %i.ayu = sdiv i32 %.reass2883.us.us.us.i, %i.axn ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.ayt, 0
  %.not909.us.us.us.i = icmp slt i32 %i.ayu, %i.kh
  %or.cond416 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond416, label %.preheader2485.us.us.us.i, label %..loopexit2486_crit_edge.us.us.us.i

.preheader2485.us.us.us.i:                        ; preds = %bb.cs
  %i.ayv = mul nuw nsw i64 %indvars.iv3384.i, %i.ayl
  %i.ayw = sext i32 %i.ayu to i64
  %i.ayx = mul nsw i64 %i.ayw, %i.lg
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit2482.us.us.us.i, %.preheader2485.us.us.us.i
  %indvars.iv3379.i = phi i64 [ %indvars.iv.next3380.i, %.loopexit2482.us.us.us.i ], [ 0, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayy = phi <2 x float> [ %i.baa, %.loopexit2482.us.us.us.i ], [ %i.ayp, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayz = trunc i64 %indvars.iv3379.i to i32
  %i.aza = mul i32 %i.axp, %i.ayz
  %.reass2874.us.us.us.i = add i32 %invariant.op2873.i, %i.aza ; 3 uses
  %i.azb = icmp slt i32 %.reass2874.us.us.us.i, 0
  br i1 %i.azb, label %.loopexit2482.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.azc = srem i32 %.reass2874.us.us.us.i, %i.axr
  %i.azd = sdiv i32 %.reass2874.us.us.us.i, %i.axr ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.azc, 0
  %.not911.us.us.us.i = icmp slt i32 %i.azd, %i.kg
  %or.cond417 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond417, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2482.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.aze = add nuw nsw i64 %indvars.iv3379.i, %i.ayv
  %i.azf = shl i64 %i.aze, 2
  %i.azg = and i64 %i.azf, 4294967292
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %.27692890.us.us.i, i64 %i.azg
  %i.azi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !439
  %i.azj = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !439
  %i.azk = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !439 ; 2 uses
  %factor.op.mul.us.us.us2909.i = mul i64 %i.azk, %i.azj ; 2 uses
  %i.azl = mul i64 %i.ayx, %i.azk
  %invariant.gep.us.us.us2910.i = getelementptr i8, ptr %i.azi, i64 %i.azl
  %i.azm = sext i32 %i.azd to i64
  %invariant.gep2863.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2910.i, i64 %i.azm ; 2 uses
  %.reass.us2884.us.us.i = mul i64 %factor.op.mul.us.us.us2909.i, %indvars.iv3389.i
  %gep2864.us.us.us.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.i
  %i.azn = load float, ptr %gep2864.us.us.us.i, align 4, !tbaa !39
  %.reass.us2884.us.us.1.i = mul i64 %factor.op.mul.us.us.us2909.i, %i.ayo
  %gep2864.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.1.i
  %i.azo = load float, ptr %gep2864.us.us.us.1.i, align 4, !tbaa !39
  %i.azp = load <4 x float>, ptr %i.azh, align 4, !tbaa !39 ; 2 uses
  %i.azq = shufflevector <4 x float> %i.azp, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.azr = insertelement <2 x float> poison, float %i.azn, i64 0
  %i.azs = shufflevector <2 x float> %i.azr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azt = fmul fast <2 x float> %i.azq, %i.azs
  %i.azu = fadd fast <2 x float> %i.azt, %i.ayy
  %i.azv = shufflevector <4 x float> %i.azp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.azw = insertelement <2 x float> poison, float %i.azo, i64 0
  %i.azx = shufflevector <2 x float> %i.azw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azy = fmul fast <2 x float> %i.azv, %i.azx
  %i.azz = fadd fast <2 x float> %i.azu, %i.azy
  br label %.loopexit2482.us.us.us.i

.loopexit2482.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.baa = phi <2 x float> [ %i.ayy, %bb.ct ], [ %i.ayy, %bb.cu ], [ %i.azz, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3380.i = add nuw nsw i64 %indvars.iv3379.i, 1 ; 2 uses
  %exitcond3383.not.i = icmp eq i64 %indvars.iv.next3380.i, %i.ayl
  br i1 %exitcond3383.not.i, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !380

..loopexit2486_crit_edge.us.us.us.i:              ; preds = %.loopexit2482.us.us.us.i, %bb.cs, %bb.cr
  %i.bab = phi <2 x float> [ %i.ayp, %bb.cr ], [ %i.ayp, %bb.cs ], [ %i.baa, %.loopexit2482.us.us.us.i ] ; 3 uses
  %indvars.iv.next3385.i = add nuw nsw i64 %indvars.iv3384.i, 1 ; 2 uses
  %exitcond3388.not.i = icmp eq i64 %indvars.iv.next3385.i, %wide.trip.count3345.i
  br i1 %exitcond3388.not.i, label %._crit_edge2879.split.us.us.us.i, label %bb.cr, !llvm.loop !381

._crit_edge2879.split.us.us.us.i:                 ; preds = %..loopexit2486_crit_edge.us.us.us.i
  %i.bac = getelementptr inbounds [4 x i8], ptr %.27692890.us.us.i, i64 %i.apd ; 2 uses
  %indvars.iv.next3390.i = add nuw nsw i64 %indvars.iv3389.i, 2 ; 2 uses
  %i.bad = trunc i64 %indvars.iv.next3390.i to i32 ; 2 uses
  %i.bae = or i32 %i.bad, 1
  %i.baf = icmp slt i32 %i.bae, %i.kf
  br i1 %i.baf, label %.preheader2492.us.us.i, label %.preheader2495.i, !llvm.loop !382

.preheader2495.i:                                 ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.preheader.i, %.preheader2492.preheader.i, %._crit_edge2841.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2841.i ], [ %scevgep3374.i, %.preheader2492.preheader.i ], [ %scevgep3375.i, %.preheader2492.us.preheader.i ], [ %i.bac, %._crit_edge2879.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2841.i ], [ %i.aya, %.preheader2492.preheader.i ], [ %i.ayk, %.preheader2492.us.preheader.i ], [ %i.bad, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.bag = phi <2 x float> [ %i.axi, %._crit_edge2841.i ], [ %i.axi, %.preheader2492.preheader.i ], [ %i.axi, %.preheader2492.us.preheader.i ], [ %i.bab, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %i.bah = icmp slt i32 %.2765.lcssa.i, %i.kf
  br i1 %i.bah, label %.preheader2491.lr.ph.i, label %._crit_edge2939.i

.preheader2491.lr.ph.i:                           ; preds = %.preheader2495.i
  %i.bai = load i32, ptr %i.d, align 4
  %i.baj = load i32, ptr %i.j, align 4
  %invariant.op2928.i = sub i32 %.neg2450.i, %i.baj
  %i.bak = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bal = load i32, ptr %i.a, align 4
  %.fr3171.i = freeze i32 %i.bal                  ; 2 uses
  %i.bam = load i32, ptr %i.c, align 4
  %i.ban = load i32, ptr %i.i, align 4
  %.neg2440.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2920.i = sub i32 %.neg2440.i, %i.ban
  %i.bao = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bap = icmp sgt i32 %.fr3171.i, 0
  %or.cond3616.i = and i1 %i.aow, %i.bap
  br i1 %or.cond3616.i, label %.preheader2491.us.us.preheader.i, label %._crit_edge2939.i

.preheader2491.us.us.preheader.i:                 ; preds = %.preheader2491.lr.ph.i
  %i.baq = zext nneg i32 %.fr3171.i to i64        ; 2 uses
  %i.bar = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2491.us.us.i

.preheader2491.us.us.i:                           ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.us.us.preheader.i
  %indvars.iv3402.i = phi i64 [ %i.bar, %.preheader2491.us.us.preheader.i ], [ %indvars.iv.next3403.i, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %.37702936.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2491.us.us.preheader.i ], [ %i.bcc, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %i.bas = phi <2 x float> [ %i.bag, %.preheader2491.us.us.preheader.i ], [ %i.bcb, %._crit_edge2925.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2484_crit_edge.us.us.us.i, %.preheader2491.us.us.i
  %indvars.iv3397.i = phi i64 [ %indvars.iv.next3398.i, %..loopexit2484_crit_edge.us.us.us.i ], [ 0, %.preheader2491.us.us.i ] ; 3 uses
  %i.bat = phi <2 x float> [ %i.bcb, %..loopexit2484_crit_edge.us.us.us.i ], [ %i.bas, %.preheader2491.us.us.i ] ; 3 uses
  %i.bau = trunc i64 %indvars.iv3397.i to i32
  %i.bav = mul i32 %i.bai, %i.bau
  %.reass2929.us.us.us.i = add i32 %i.bav, %invariant.op2928.i ; 3 uses
  %i.baw = icmp slt i32 %.reass2929.us.us.us.i, 0
  br i1 %i.baw, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bax = srem i32 %.reass2929.us.us.us.i, %i.bak
  %i.bay = sdiv i32 %.reass2929.us.us.us.i, %i.bak ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bax, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bay, %i.kh
  %or.cond418 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond418, label %.preheader2483.us.us.us.i, label %..loopexit2484_crit_edge.us.us.us.i

.preheader2483.us.us.us.i:                        ; preds = %bb.cw
  %i.baz = mul nuw nsw i64 %indvars.iv3397.i, %i.baq
  %i.bba = sext i32 %i.bay to i64
  %i.bbb = mul nsw i64 %i.bba, %i.lg
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.preheader2483.us.us.us.i
  %indvars.iv3392.i = phi i64 [ %indvars.iv.next3393.i, %bb.cz ], [ 0, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bbc = phi <2 x float> [ %i.bca, %bb.cz ], [ %i.bat, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bbd = trunc i64 %indvars.iv3392.i to i32
  %i.bbe = mul i32 %i.bam, %i.bbd
  %.reass.us2930.us.us.i = add i32 %invariant.op2920.i, %i.bbe ; 3 uses
  %i.bbf = icmp slt i32 %.reass.us2930.us.us.i, 0
  br i1 %i.bbf, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bbg = srem i32 %.reass.us2930.us.us.i, %i.bao
  %i.bbh = sdiv i32 %.reass.us2930.us.us.i, %i.bao ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bbg, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bbh, %i.kg
  %or.cond419 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond419, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bbi = add nuw nsw i64 %indvars.iv3392.i, %i.baz
  %.idx3562.i = shl nuw nsw i64 %i.bbi, 3
  %i.bbj = getelementptr inbounds nuw i8, ptr %.37702936.us.us.i, i64 %.idx3562.i
  %i.bbk = load ptr, ptr %1, align 8, !tbaa !20, !noalias !440
  %i.bbl = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !440
  %i.bbm = mul i64 %i.bbl, %indvars.iv3402.i
  %i.bbn = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !440 ; 2 uses
  %i.bbo = mul i64 %i.bbm, %i.bbn
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbo
  %i.bbq = mul i64 %i.bbb, %i.bbn
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = sext i32 %i.bbh to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bbs
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !39
  %i.bbv = load <2 x float>, ptr %i.bbj, align 4, !tbaa !39
  %i.bbw = insertelement <2 x float> poison, float %i.bbu, i64 0
  %i.bbx = shufflevector <2 x float> %i.bbw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bby = fmul fast <2 x float> %i.bbv, %i.bbx
  %i.bbz = fadd fast <2 x float> %i.bby, %i.bbc
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.cy, %bb.cx
  %i.bca = phi <2 x float> [ %i.bbc, %bb.cx ], [ %i.bbc, %bb.cy ], [ %i.bbz, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3393.i = add nuw nsw i64 %indvars.iv3392.i, 1 ; 2 uses
  %exitcond3396.not.i = icmp eq i64 %indvars.iv.next3393.i, %i.baq
  br i1 %exitcond3396.not.i, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cx, !llvm.loop !385

..loopexit2484_crit_edge.us.us.us.i:              ; preds = %bb.cz, %bb.cw, %bb.cv
  %i.bcb = phi <2 x float> [ %i.bat, %bb.cv ], [ %i.bat, %bb.cw ], [ %i.bca, %bb.cz ] ; 3 uses
  %indvars.iv.next3398.i = add nuw nsw i64 %indvars.iv3397.i, 1 ; 2 uses
  %exitcond3401.not.i = icmp eq i64 %indvars.iv.next3398.i, %wide.trip.count3345.i
  br i1 %exitcond3401.not.i, label %._crit_edge2925.split.us.us.us.i, label %bb.cv, !llvm.loop !386

._crit_edge2925.split.us.us.us.i:                 ; preds = %..loopexit2484_crit_edge.us.us.us.i
  %i.bcc = getelementptr inbounds [4 x i8], ptr %.37702936.us.us.i, i64 %i.apf
  %indvars.iv.next3403.i = add nuw nsw i64 %indvars.iv3402.i, 1 ; 2 uses
  %i.bcd = trunc nuw i64 %indvars.iv.next3403.i to i32
  %i.bce = icmp sgt i32 %i.kf, %i.bcd
  br i1 %i.bce, label %.preheader2491.us.us.i, label %._crit_edge2939.i, !llvm.loop !387

._crit_edge2939.i:                                ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.lr.ph.i, %.preheader2495.i
  %i.bcf = phi <2 x float> [ %i.bag, %.preheader2495.i ], [ %i.bag, %.preheader2491.lr.ph.i ], [ %i.bcb, %._crit_edge2925.split.us.us.us.i ] ; 12 uses
  switch i32 %i.aot, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i
    i32 6, label %bb.da
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i: ; preds = %._crit_edge2939.i
  %i.bcg = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcf, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i: ; preds = %._crit_edge2939.i
  %i.bch = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !39
  %i.bcj = fcmp fast ogt <2 x float> %i.bcf, zeroinitializer
  %i.bck = insertelement <2 x float> poison, float %i.bci, i64 0
  %i.bcl = shufflevector <2 x float> %i.bck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcm = select <2 x i1> %i.bcj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bcl
  %i.bcn = fmul fast <2 x float> %i.bcm, %i.bcf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i: ; preds = %._crit_edge2939.i
  %i.bco = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !39 ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 4
  %i.bcr = load float, ptr %i.bcq, align 4, !tbaa !39 ; 3 uses
  %i.bcs = extractelement <2 x float> %i.bcf, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcs, float %i.bcp) ; 2 uses
  %i.bct = fcmp fast ogt float %spec.select.i, %i.bcr
  %.123072397.i = select i1 %i.bct, float %i.bcr, float %spec.select.i
  %i.bcu = extractelement <2 x float> %i.bcf, i64 1
  %.02308.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcu, float %i.bcp)
  %spec.select2420.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02308.i, float %i.bcr)
  %i.bcv = insertelement <2 x float> poison, float %.123072397.i, i64 0
  %i.bcw = insertelement <2 x float> %i.bcv, float %spec.select2420.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i: ; preds = %._crit_edge2939.i
  %i.bcx = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bcf, <2 x float> splat (float f0x42B0C0A5))
  %i.bcy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcx, <2 x float> splat (float f0xC2B0C0A5))
  %i.bcz = fneg fast <2 x float> %i.bcy
  %i.bda = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bcz)
  %i.bdb = fadd fast <2 x float> %i.bda, splat (float 1.000000e+00)
  %i.bdc = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bdb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i: ; preds = %._crit_edge2939.i
  %i.bdd = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bcf)
  %i.bde = fadd fast <2 x float> %i.bdd, splat (float 1.000000e+00)
  %i.bdf = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bde)
  %i.bdg = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bdf)
  %i.bdh = fmul fast <2 x float> %i.bdg, %i.bcf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

bb.da:                                            ; preds = %._crit_edge2939.i
  %i.bdi = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !39 ; 5 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdi, i64 4
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !39 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.blo = sext i32 %i.blm to i64
  %i.blp = mul nsw i64 %i.blo, %i.aob
  br label %.lr.ph.split.us3025.us.us.us.i.us

.lr.ph.split.us3025.us.us.us.i.us:                ; preds = %bb.ds, %.preheader2472.us.us.us.i.us206
  %indvars.iv3439.i.us = phi i64 [ %indvars.iv.next3440.i.us, %bb.ds ], [ 0, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %.223143019.us3027.us.us.us.i.us = phi <4 x float> [ %.32315.us3031.us.us.us.i.us, %bb.ds ], [ %.123133035.us.us.us.i.us202, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %i.blq = trunc i64 %indvars.iv3439.i.us to i32
  %i.blr = mul i32 %i.bje, %i.blq
  %.reass3023.us3028.us.us.us.i.us = add i32 %i.blr, %invariant.op3022.i ; 3 uses
  %i.bls = icmp slt i32 %.reass3023.us3028.us.us.us.i.us, 0
  br i1 %i.bls, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3025.us.us.us.i.us
  %i.blt = srem i32 %.reass3023.us3028.us.us.us.i.us, %i.bjg
  %i.blu = sdiv i32 %.reass3023.us3028.us.us.us.i.us, %i.bjg ; 2 uses
  %.not897.us3029.us.us.us.i.us = icmp eq i32 %i.blt, 0
  %.not898.us3030.us.us.us.i.us = icmp slt i32 %i.blu, %i.amy
  %or.cond425 = select i1 %.not897.us3029.us.us.us.i.us, i1 %.not898.us3030.us.us.us.i.us, i1 false
  br i1 %or.cond425, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.blv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !445
  %i.blw = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !445
  %i.blx = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !445 ; 2 uses
  %factor.op.mul3014.us.us.us.us.i.us = mul i64 %i.blx, %i.blw ; 4 uses
  %i.bly = mul i64 %i.blp, %i.blx
  %invariant.gep.us.us.us3067.us.i.us = getelementptr i8, ptr %i.blv, i64 %i.bly
  %i.blz = sext i32 %i.blu to i64
  %invariant.gep3016.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3067.us.i.us, i64 %i.blz ; 4 uses
  %.reass3015.us.us.us.us.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %indvars.iv3454.i
  %gep3017.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.i.us
  %i.bma = load float, ptr %gep3017.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.bma, i64 0
  %.reass3015.us.us.us.us.1.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bka
  %gep3017.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.1.i.us
  %i.bmb = load float, ptr %gep3017.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.bmb, i64 1
  %.reass3015.us.us.us.us.2.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bkb
  %gep3017.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.2.i.us
  %i.bmc = load float, ptr %gep3017.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bmc, i64 2
  %.reass3015.us.us.us.us.3.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bkc
  %gep3017.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.3.i.us
  %i.bmd = load float, ptr %gep3017.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.bmd, i64 3
  %i.bme = add nuw nsw i64 %indvars.iv3439.i.us, %i.bln
  %i.bmf = shl i64 %i.bme, 2
  %i.bmg = and i64 %i.bmf, 4294967292
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.17253052.us.us.i, i64 %i.bmg
  %i.bmi = load <4 x float>, ptr %i.bmh, align 16, !tbaa !82
  %i.bmj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bmi, <4 x float> nofpclass(nan inf) %.223143019.us3027.us.us.us.i.us)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3025.us.us.us.i.us
  %.32315.us3031.us.us.us.i.us = phi nsz <4 x float> [ %.223143019.us3027.us.us.us.i.us, %.lr.ph.split.us3025.us.us.us.i.us ], [ %i.bmj, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223143019.us3027.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3440.i.us = add nuw nsw i64 %indvars.iv3439.i.us, 1 ; 2 uses
  %exitcond3443.not.i.us = icmp eq i64 %indvars.iv.next3440.i.us, %i.bjw
  br i1 %exitcond3443.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us207, label %.lr.ph.split.us3025.us.us.us.i.us, !llvm.loop !402

..loopexit2473_crit_edge.us.us.us.i.us207:        ; preds = %bb.ds, %bb.dq, %.preheader2478.us.us.i.split.us200
  %.42316.us.us.us.i.us208 = phi nsz <4 x float> [ %.123133035.us.us.us.i.us202, %.preheader2478.us.us.i.split.us200 ], [ %.123133035.us.us.us.i.us202, %bb.dq ], [ %.32315.us3031.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3450.i.us209 = add nuw nsw i64 %indvars.iv3449.i.us201, 1 ; 2 uses
  %exitcond3453.not.i.us210 = icmp eq i64 %indvars.iv.next3450.i.us209, %wide.trip.count3428.i
  br i1 %exitcond3453.not.i.us210, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us200, !llvm.loop !403

._crit_edge3038.split.us.us.us.i:                 ; preds = %..loopexit2473_crit_edge.us.us.us.i.us207, %..loopexit2473_crit_edge.us.us.us.i.us, %.preheader2478.us.us.i
  %.us-phi199 = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ], [ %.42316.us.us.us.i.us208, %..loopexit2473_crit_edge.us.us.us.i.us207 ] ; 2 uses
  %i.bmk = getelementptr inbounds [4 x i8], ptr %.17253052.us.us.i, i64 %i.bfj ; 2 uses
  %indvars.iv.next3455.i = add nuw nsw i64 %indvars.iv3454.i, 4 ; 2 uses
  %i.bml = trunc i64 %indvars.iv.next3455.i to i32 ; 2 uses
  %i.bmm = or i32 %i.bml, 3
  %i.bmn = icmp slt i32 %i.bmm, %i.amx
  br i1 %i.bmn, label %.preheader2478.us.us.i, label %._crit_edge3056.i, !llvm.loop !406

._crit_edge3056.i:                                ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.preheader.i, %.preheader2478.preheader.i, %._crit_edge2996.i
  %.02312.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2996.i ], [ zeroinitializer, %.preheader2478.preheader.i ], [ zeroinitializer, %.preheader2478.us.preheader.i ], [ %.us-phi199, %._crit_edge3038.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge2996.i ], [ %scevgep3433.i, %.preheader2478.preheader.i ], [ %scevgep3434.i, %.preheader2478.us.preheader.i ], [ %i.bmk, %._crit_edge3038.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge2996.i ], [ %i.bjn, %.preheader2478.preheader.i ], [ %i.bjv, %.preheader2478.us.preheader.i ], [ %i.bml, %._crit_edge3038.split.us.us.us.i ] ; 7 uses
  %i.bmo = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bix, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bmp = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bix, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bmq = fadd fast <4 x float> %i.bmo, %i.bmp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bmq) ; 4 uses
  %i.bmr = or disjoint i32 %.1.lcssa.i, 1
  %i.bms = icmp slt i32 %i.bmr, %i.amx
  br i1 %i.bms, label %.preheader2477.lr.ph.i, label %.preheader2480.i

.preheader2477.lr.ph.i:                           ; preds = %._crit_edge3056.i
  %i.bmt = load i32, ptr %i.d, align 4
  %i.bmu = load i32, ptr %i.j, align 4
  %invariant.op3091.i = sub i32 %.neg2434.i, %i.bmu
  %i.bmv = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bmw = load i32, ptr %i.a, align 4
  %.fr3174.i = freeze i32 %i.bmw                  ; 2 uses
  %i.bmx = load i32, ptr %i.c, align 4
  %i.bmy = load i32, ptr %i.i, align 4
  %.neg2428.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3084.i = sub i32 %.neg2428.i, %i.bmy
  %i.bmz = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bfe, label %.preheader2477.lr.ph.split.us.i, label %.preheader2477.preheader.i

.preheader2477.preheader.i:                       ; preds = %.preheader2477.lr.ph.i
  %i.bna = sub i32 %i.anw, %.1.lcssa.i            ; 2 uses
  %i.bnb = lshr i32 %i.bna, 1
  %i.bnc = zext nneg i32 %i.bnb to i64
  %i.bnd = shl nuw nsw i64 %i.bnc, 2
  %i.bne = add nuw nsw i64 %i.bnd, 4
  %i.bnf = mul i64 %i.bne, %i.bfl
  %scevgep3457.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnf
  %i.bng = add i32 %.1.lcssa.i, 2
  %i.bnh = and i32 %i.bna, -2
  %i.bni = add i32 %i.bng, %i.bnh
  br label %.preheader2480.i

.preheader2477.lr.ph.split.us.i:                  ; preds = %.preheader2477.lr.ph.i
  %i.bnj = icmp sgt i32 %.fr3174.i, 0
  br i1 %i.bnj, label %.preheader2477.us.us.preheader.i, label %.preheader2477.us.preheader.i

.preheader2477.us.preheader.i:                    ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnk = sub i32 %i.anw, %.1.lcssa.i            ; 2 uses
  %i.bnl = lshr i32 %i.bnk, 1
  %i.bnm = zext nneg i32 %i.bnl to i64
  %i.bnn = shl nuw nsw i64 %i.bnm, 2
  %i.bno = add nuw nsw i64 %i.bnn, 4
  %i.bnp = mul i64 %i.bno, %i.bfl
  %scevgep3458.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnp
  %i.bnq = add i32 %.1.lcssa.i, 2
  %i.bnr = and i32 %i.bnk, -2
  %i.bns = add i32 %i.bnq, %i.bnr
  br label %.preheader2480.i

.preheader2477.us.us.preheader.i:                 ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnt = zext nneg i32 %.fr3174.i to i64        ; 2 uses
  %i.bnu = zext i32 %.1.lcssa.i to i64
  br label %.preheader2477.us.us.i

.preheader2477.us.us.i:                           ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.us.preheader.i
  %indvars.iv3472.i = phi i64 [ %i.bnu, %.preheader2477.us.us.preheader.i ], [ %indvars.iv.next3473.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.27263096.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2477.us.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %.17293095.us.us.i = phi float [ %op.rdx, %.preheader2477.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ]
  %i.bnv = add nuw nsw i64 %indvars.iv3472.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2471_crit_edge.us.us.us.i, %.preheader2477.us.us.i
  %indvars.iv3467.i = phi i64 [ %indvars.iv.next3468.i, %..loopexit2471_crit_edge.us.us.us.i ], [ 0, %.preheader2477.us.us.i ] ; 3 uses
  %.27303086.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2471_crit_edge.us.us.us.i ], [ %.17293095.us.us.i, %.preheader2477.us.us.i ] ; 3 uses
  %i.bnw = trunc i64 %indvars.iv3467.i to i32
  %i.bnx = mul i32 %i.bmt, %i.bnw
  %.reass3092.us.us.us.i = add i32 %i.bnx, %invariant.op3091.i ; 3 uses
  %i.bny = icmp slt i32 %.reass3092.us.us.us.i, 0
  br i1 %i.bny, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bnz = srem i32 %.reass3092.us.us.us.i, %i.bmv
  %i.boa = sdiv i32 %.reass3092.us.us.us.i, %i.bmv ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bnz, 0
  %.not892.us.us.us.i = icmp slt i32 %i.boa, %i.amz
  %or.cond426 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond426, label %.preheader2470.us.us.us.i, label %..loopexit2471_crit_edge.us.us.us.i

.preheader2470.us.us.us.i:                        ; preds = %bb.du
  %i.bob = mul nuw nsw i64 %indvars.iv3467.i, %i.bnt
  %i.boc = sext i32 %i.boa to i64
  %i.bod = mul nsw i64 %i.boc, %i.aob
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2470.us.us.us.i
  %indvars.iv3462.i = phi i64 [ %indvars.iv.next3463.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2470.us.us.us.i ] ; 3 uses
  %.37313081.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303086.us.us.us.i, %.preheader2470.us.us.us.i ] ; 3 uses
  %i.boe = trunc i64 %indvars.iv3462.i to i32
  %i.bof = mul i32 %i.bmx, %i.boe
  %.reass3085.us.us.us.i = add i32 %invariant.op3084.i, %i.bof ; 3 uses
  %i.bog = icmp slt i32 %.reass3085.us.us.us.i, 0
  br i1 %i.bog, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.boh = srem i32 %.reass3085.us.us.us.i, %i.bmz
  %i.boi = sdiv i32 %.reass3085.us.us.us.i, %i.bmz ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.boh, 0
  %.not894.us.us.us.i = icmp slt i32 %i.boi, %i.amy
  %or.cond427 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond427, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.boj = add nuw nsw i64 %indvars.iv3462.i, %i.bob
  %.idx3564.i = shl nuw nsw i64 %i.boj, 3
  %i.bok = getelementptr inbounds nuw i8, ptr %.27263096.us.us.i, i64 %.idx3564.i ; 2 uses
  %i.bol = load ptr, ptr %1, align 8, !tbaa !20, !noalias !446
  %i.bom = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !446
  %i.bon = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !446 ; 2 uses
  %factor.op.mul3075.us.us.us.i = mul i64 %i.bon, %i.bom ; 2 uses
  %i.boo = mul i64 %i.bod, %i.bon
  %invariant.gep.us.us.us3113.i = getelementptr i8, ptr %i.bol, i64 %i.boo
  %i.bop = sext i32 %i.boi to i64
  %invariant.gep3077.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3113.i, i64 %i.bop ; 2 uses
  %.reass3076.us.us.us.i = mul i64 %factor.op.mul3075.us.us.us.i, %indvars.iv3472.i
  %gep3078.us.us.us.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.i
  %i.boq = load float, ptr %gep3078.us.us.us.i, align 4, !tbaa !39
  %i.bor = load float, ptr %i.bok, align 4, !tbaa !39
  %i.bos = fmul fast float %i.bor, %i.boq
  %i.bot = fadd fast float %i.bos, %.37313081.us.us.us.i
  %.reass3076.us.us.us.1.i = mul i64 %factor.op.mul3075.us.us.us.i, %i.bnv
  %gep3078.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.1.i
  %i.bou = load float, ptr %gep3078.us.us.us.1.i, align 4, !tbaa !39
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bok, i64 4
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !39
  %i.box = fmul fast float %i.bow, %i.bou
  %i.boy = fadd fast float %i.bot, %i.box
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6.us.us.us.i = phi nsz float [ %.37313081.us.us.us.i, %bb.dv ], [ %.37313081.us.us.us.i, %bb.dw ], [ %i.boy, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3463.i = add nuw nsw i64 %indvars.iv3462.i, 1 ; 2 uses
  %exitcond3466.not.i = icmp eq i64 %indvars.iv.next3463.i, %i.bnt
  br i1 %exitcond3466.not.i, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !409

..loopexit2471_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8.us.us.us.i = phi nsz float [ %.27303086.us.us.us.i, %bb.dt ], [ %.27303086.us.us.us.i, %bb.du ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3468.i = add nuw nsw i64 %indvars.iv3467.i, 1 ; 2 uses
  %exitcond3471.not.i = icmp eq i64 %indvars.iv.next3468.i, %wide.trip.count3428.i
  br i1 %exitcond3471.not.i, label %._crit_edge3089.split.us.us.us.i, label %bb.dt, !llvm.loop !410

._crit_edge3089.split.us.us.us.i:                 ; preds = %..loopexit2471_crit_edge.us.us.us.i
  %i.boz = getelementptr inbounds [4 x i8], ptr %.27263096.us.us.i, i64 %i.bfl ; 2 uses
  %indvars.iv.next3473.i = add nuw nsw i64 %indvars.iv3472.i, 2 ; 2 uses
  %i.bpa = trunc i64 %indvars.iv.next3473.i to i32 ; 2 uses
  %i.bpb = or i32 %i.bpa, 1
  %i.bpc = icmp slt i32 %i.bpb, %i.amx
  br i1 %i.bpc, label %.preheader2477.us.us.i, label %.preheader2480.i, !llvm.loop !411

.preheader2480.i:                                 ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.preheader.i, %.preheader2477.preheader.i, %._crit_edge3056.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3056.i ], [ %op.rdx, %.preheader2477.preheader.i ], [ %op.rdx, %.preheader2477.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3056.i ], [ %scevgep3457.i, %.preheader2477.preheader.i ], [ %scevgep3458.i, %.preheader2477.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3056.i ], [ %i.bni, %.preheader2477.preheader.i ], [ %i.bns, %.preheader2477.us.preheader.i ], [ %i.bpa, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %i.bpd = icmp slt i32 %.2.lcssa.i, %i.amx
  br i1 %i.bpd, label %.preheader2476.lr.ph.i, label %._crit_edge3135.i

.preheader2476.lr.ph.i:                           ; preds = %.preheader2480.i
  %i.bpe = load i32, ptr %i.d, align 4
  %i.bpf = load i32, ptr %i.j, align 4
  %invariant.op3127.i = sub i32 %.neg2434.i, %i.bpf
  %i.bpg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bph = load i32, ptr %i.a, align 4
  %.fr3175.i = freeze i32 %i.bph                  ; 2 uses
  %i.bpi = load i32, ptr %i.c, align 4
  %i.bpj = load i32, ptr %i.i, align 4
  %.neg2424.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3120.i = sub i32 %.neg2424.i, %i.bpj
  %i.bpk = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bpl = icmp sgt i32 %.fr3175.i, 0
  %or.cond3621.i = and i1 %i.bfe, %i.bpl
  br i1 %or.cond3621.i, label %.preheader2476.us.us.preheader.i, label %._crit_edge3135.i

.preheader2476.us.us.preheader.i:                 ; preds = %.preheader2476.lr.ph.i
  %i.bpm = zext nneg i32 %.fr3175.i to i64        ; 2 uses
  %i.bpn = zext i32 %.2.lcssa.i to i64
  br label %.preheader2476.us.us.i

.preheader2476.us.us.i:                           ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.us.us.preheader.i
  %indvars.iv3485.i = phi i64 [ %i.bpn, %.preheader2476.us.us.preheader.i ], [ %indvars.iv.next3486.i, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.37273132.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %i.bqr, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.93131.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3125.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2469_crit_edge.us.us.us.i, %.preheader2476.us.us.i
  %indvars.iv3480.i = phi i64 [ %indvars.iv.next3481.i, %..loopexit2469_crit_edge.us.us.us.i ], [ 0, %.preheader2476.us.us.i ] ; 3 uses
  %.103122.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2469_crit_edge.us.us.us.i ], [ %.93131.us.us.i, %.preheader2476.us.us.i ] ; 3 uses
  %i.bpo = trunc i64 %indvars.iv3480.i to i32
  %i.bpp = mul i32 %i.bpe, %i.bpo
  %.reass3128.us.us.us.i = add i32 %i.bpp, %invariant.op3127.i ; 3 uses
  %i.bpq = icmp slt i32 %.reass3128.us.us.us.i, 0
  br i1 %i.bpq, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bpr = srem i32 %.reass3128.us.us.us.i, %i.bpg
  %i.bps = sdiv i32 %.reass3128.us.us.us.i, %i.bpg ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bpr, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bps, %i.amz
  %or.cond428 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond428, label %.preheader.us.us.us.i, label %..loopexit2469_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bpt = mul nuw nsw i64 %indvars.iv3480.i, %i.bpm
  %i.bpu = sext i32 %i.bps to i64
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.37273132.us.us.i, i64 %i.bpt
  %i.bpw = mul nsw i64 %i.bpu, %i.aob
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %.preheader.us.us.us.i
  %indvars.iv3475.i = phi i64 [ %indvars.iv.next3476.i, %bb.eb ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113117.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.eb ], [ %.103122.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bpx = trunc i64 %indvars.iv3475.i to i32
  %i.bpy = mul i32 %i.bpi, %i.bpx
  %.reass3121.us.us.us.i = add i32 %invariant.op3120.i, %i.bpy ; 3 uses
  %i.bpz = icmp slt i32 %.reass3121.us.us.us.i, 0
  br i1 %i.bpz, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bqa = srem i32 %.reass3121.us.us.us.i, %i.bpk
  %i.bqb = sdiv i32 %.reass3121.us.us.us.i, %i.bpk ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bqa, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bqb, %i.amy
  %or.cond429 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond429, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bqc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !447
  %i.bqd = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !447
  %i.bqe = mul i64 %i.bqd, %indvars.iv3485.i
  %i.bqf = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !447 ; 2 uses
  %i.bqg = mul i64 %i.bqe, %i.bqf
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqc, i64 %i.bqg
  %i.bqi = mul i64 %i.bpw, %i.bqf
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqh, i64 %i.bqi
  %i.bqk = sext i32 %i.bqb to i64
  %i.bql = getelementptr inbounds [4 x i8], ptr %i.bqj, i64 %i.bqk
  %i.bqm = load float, ptr %i.bql, align 4, !tbaa !39
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bpv, i64 %indvars.iv3475.i
  %i.bqo = load float, ptr %i.bqn, align 4, !tbaa !39
  %i.bqp = fmul fast float %i.bqo, %i.bqm
  %i.bqq = fadd fast float %i.bqp, %.113117.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13.us.us.us.i = phi nsz float [ %.113117.us.us.us.i, %bb.dz ], [ %.113117.us.us.us.i, %bb.ea ], [ %i.bqq, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3476.i = add nuw nsw i64 %indvars.iv3475.i, 1 ; 2 uses
  %exitcond3479.not.i = icmp eq i64 %indvars.iv.next3476.i, %i.bpm
  br i1 %exitcond3479.not.i, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dz, !llvm.loop !414

..loopexit2469_crit_edge.us.us.us.i:              ; preds = %bb.eb, %bb.dy, %bb.dx
  %.15.us.us.us.i = phi nsz float [ %.103122.us.us.us.i, %bb.dx ], [ %.103122.us.us.us.i, %bb.dy ], [ %.13.us.us.us.i, %bb.eb ] ; 3 uses
  %indvars.iv.next3481.i = add nuw nsw i64 %indvars.iv3480.i, 1 ; 2 uses
  %exitcond3484.not.i = icmp eq i64 %indvars.iv.next3481.i, %wide.trip.count3428.i
  br i1 %exitcond3484.not.i, label %._crit_edge3125.split.us.us.us.i, label %bb.dx, !llvm.loop !415

._crit_edge3125.split.us.us.us.i:                 ; preds = %..loopexit2469_crit_edge.us.us.us.i
  %i.bqr = getelementptr inbounds [4 x i8], ptr %.37273132.us.us.i, i64 %i.bfm
  %indvars.iv.next3486.i = add nuw nsw i64 %indvars.iv3485.i, 1 ; 2 uses
  %i.bqs = trunc nuw i64 %indvars.iv.next3486.i to i32
  %i.bqt = icmp sgt i32 %i.amx, %i.bqs
  br i1 %i.bqt, label %.preheader2476.us.us.i, label %._crit_edge3135.i, !llvm.loop !416

._crit_edge3135.i:                                ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.lr.ph.i, %.preheader2480.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2480.i ], [ %.1729.lcssa.i, %.preheader2476.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3125.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bfb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.ef
    i32 5, label %bb.eg
    i32 6, label %bb.eh
  ]

bb.ec:                                            ; preds = %._crit_edge3135.i
  %i.bqu = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ed:                                            ; preds = %._crit_edge3135.i
  %i.bqv = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.bqw = load float, ptr %i.bqv, align 4, !tbaa !39
  %i.bqx = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.bqy = select fast i1 %i.bqx, float 1.000000e+00, float %i.bqw
  %i.bqz = fmul fast float %i.bqy, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ee:                                            ; preds = %._crit_edge3135.i
  %i.bra = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !39
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bra, i64 4
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !39
  %spec.select2418.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.brb)
  %spec.select2419.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2418.i, float %i.brd)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ef:                                            ; preds = %._crit_edge3135.i
  %.sroa.speculated2165.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2165.i, float f0xC2B0C0A5)
  %i.bre = fneg fast float %.sroa.speculated.i
  %i.brf = call fast float @llvm.exp.f32(float %i.bre)
  %i.brg = fadd fast float %i.brf, 1.000000e+00
  %i.brh = fdiv fast float 1.000000e+00, %i.brg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eg:                                            ; preds = %._crit_edge3135.i
  %i.bri = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.brj = fadd fast float %i.bri, 1.000000e+00
  %i.brk = call fast float @llvm.log.f32(float %i.brj)
  %i.brl = call fast float @llvm.tanh.f32(float %i.brk)
  %i.brm = fmul fast float %i.brl, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eh:                                            ; preds = %._crit_edge3135.i
  %i.brn = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bro = load float, ptr %i.brn, align 4, !tbaa !39 ; 3 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brn, i64 4
  %i.brq = load float, ptr %i.brp, align 4, !tbaa !39 ; 2 uses
  %i.brr = fneg fast float %i.brq
  %i.brs = fdiv fast float %i.brr, %i.bro         ; 2 uses
  %i.brt = fcmp fast olt float %.9.lcssa.i, %i.brs
  br i1 %i.brt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bru = fdiv fast float 1.000000e+00, %i.bro
  %i.brv = fadd fast float %i.brs, %i.bru
  %i.brw = fcmp fast ogt float %.9.lcssa.i, %i.brv
  br i1 %i.brw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.reass.us.us2894.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axi
  %gep2860.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.3.i.us
  %i.azy = load i16, ptr %gep2860.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.azz = zext i16 %i.azv to i32
  %i.baa = zext i16 %i.azw to i32
  %i.bab = zext i16 %i.azx to i32
  %i.bac = zext i16 %i.azy to i32
  %i.bad = insertelement <4 x i32> poison, i32 %i.azz, i64 0
  %i.bae = insertelement <4 x i32> %i.bad, i32 %i.baa, i64 1
  %i.baf = insertelement <4 x i32> %i.bae, i32 %i.bab, i64 2
  %i.bag = insertelement <4 x i32> %i.baf, i32 %i.bac, i64 3
  %i.bah = shl nuw <4 x i32> %i.bag, splat (i32 16)
  %.sroa.03566.12.vec.insert.i.us = bitcast <4 x i32> %i.bah to <4 x float> ; 2 uses
  %i.bai = add nuw nsw i64 %indvars.iv3426.i.us, %i.azi
  %i.baj = shl i64 %i.bai, 3
  %i.bak = and i64 %i.baj, 4294967288
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %.17682907.us.us.i, i64 %i.bak ; 2 uses
  %i.bam = load i64, ptr %i.bal, align 1, !tbaa !82
  %i.ban = insertelement <2 x i64> poison, i64 %i.bam, i64 0
  %i.bao = bitcast <2 x i64> %i.ban to <8 x i16>
  %i.bap = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.baq = bitcast <8 x i16> %i.bap to <4 x float>
  %i.bar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03566.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.baq, <4 x float> nofpclass(nan inf) %.224462862.us2874.us.us.us.i.us)
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  %i.bat = load i64, ptr %i.bas, align 1, !tbaa !82
  %i.bau = insertelement <2 x i64> poison, i64 %i.bat, i64 0
  %i.bav = bitcast <2 x i64> %i.bau to <8 x i16>
  %i.baw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bav, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bax = bitcast <8 x i16> %i.baw to <4 x float>
  %i.bay = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03566.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bax, <4 x float> nofpclass(nan inf) %.224412863.us2873.us.us.us.i.us)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2871.us.us.us.i.us
  %.32447.us2878.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us2874.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bar, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462862.us2874.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2879.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us2873.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bay, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412863.us2873.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3427.i.us = add nuw nsw i64 %indvars.iv3426.i.us, 1 ; 2 uses
  %exitcond3430.not.i.us = icmp eq i64 %indvars.iv.next3427.i.us, %i.axc
  br i1 %exitcond3430.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2871.us.us.us.i.us, !llvm.loop !573

..loopexit2558_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2563.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452885.us.us.us.i.us107, %.preheader2563.us.us.i.split.us104 ], [ %.124452885.us.us.us.i.us107, %bb.bn ], [ %.32447.us2878.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402886.us.us.us.i.us106, %.preheader2563.us.us.i.split.us104 ], [ %.124402886.us.us.us.i.us106, %bb.bn ], [ %.32442.us2879.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3437.i.us115 = add nuw nsw i64 %indvars.iv3436.i.us105, 1 ; 2 uses
  %exitcond3440.not.i.us116 = icmp eq i64 %indvars.iv.next3437.i.us115, %wide.trip.count3415.i
  br i1 %exitcond3440.not.i.us116, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us104, !llvm.loop !574

._crit_edge2889.split.us.us.us.i:                 ; preds = %..loopexit2558_crit_edge.us.us.us.i.us112, %..loopexit2558_crit_edge.us.us.us.i.us, %.preheader2563.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.baz = getelementptr inbounds [2 x i8], ptr %.17682907.us.us.i, i64 %i.aqt ; 2 uses
  %indvars.iv.next3442.i = add nuw nsw i64 %indvars.iv3441.i, 4 ; 2 uses
  %i.bba = trunc i64 %indvars.iv.next3442.i to i32 ; 2 uses
  %i.bbb = or i32 %i.bba, 3
  %i.bbc = icmp slt i32 %i.bbb, %i.fy
  br i1 %i.bbc, label %.preheader2563.us.us.i, label %._crit_edge2911.i, !llvm.loop !577

._crit_edge2911.i:                                ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.preheader.i, %.preheader2563.preheader.i, %._crit_edge2838.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2838.i ], [ %scevgep3420.i, %.preheader2563.preheader.i ], [ %scevgep3421.i, %.preheader2563.us.preheader.i ], [ %i.baz, %._crit_edge2889.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2838.i ], [ %i.aws, %.preheader2563.preheader.i ], [ %i.axb, %.preheader2563.us.preheader.i ], [ %i.bba, %._crit_edge2889.split.us.us.us.i ] ; 7 uses
  %i.bbd = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbe = fadd fast <4 x float> %i.bbd, %.02444.lcssa.i ; 2 uses
  %i.bbf = shufflevector <4 x float> %i.avw, <4 x float> %i.awb, <2 x i32> <i32 1, i32 5>
  %i.bbg = fadd fast <2 x float> %i.bbf, %i.ara
  %i.bbh = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbi = fadd fast <4 x float> %i.bbh, %.02439.lcssa.i ; 2 uses
  %i.bbj = shufflevector <4 x float> %i.avw, <4 x float> %i.awb, <2 x i32> <i32 0, i32 4>
  %i.bbk = fadd fast <2 x float> %i.bbg, %i.bbj
  %i.bbl = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbi, <2 x i32> <i32 1, i32 5>
  %i.bbm = fadd fast <2 x float> %i.bbk, %i.bbl
  %i.bbn = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbi, <2 x i32> <i32 0, i32 4>
  %i.bbo = fadd fast <2 x float> %i.bbm, %i.bbn   ; 4 uses
  %i.bbp = or disjoint i32 %.1764.lcssa.i, 1
  %i.bbq = icmp slt i32 %i.bbp, %i.fy
  br i1 %i.bbq, label %.preheader2562.lr.ph.i, label %.preheader2565.i

.preheader2562.lr.ph.i:                           ; preds = %._crit_edge2911.i
  %i.bbr = load i32, ptr %i.d, align 4
  %i.bbs = load i32, ptr %i.j, align 4
  %invariant.op2952.i = sub i32 %.neg2520.i, %i.bbs
  %i.bbt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bbu = load i32, ptr %i.a, align 4
  %.fr3240.i = freeze i32 %i.bbu                  ; 2 uses
  %i.bbv = load i32, ptr %i.c, align 4
  %i.bbw = load i32, ptr %i.i, align 4
  %.neg2514.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2943.i = sub i32 %.neg2514.i, %i.bbw
  %i.bbx = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aqo, label %.preheader2562.lr.ph.split.us.i, label %.preheader2562.preheader.i

.preheader2562.preheader.i:                       ; preds = %.preheader2562.lr.ph.i
  %i.bby = sub i32 %i.gy, %.1764.lcssa.i
  %i.bbz = and i32 %i.bby, -2                     ; 2 uses
  %i.bca = zext i32 %i.bbz to i64
  %i.bcb = add nuw nsw i64 %i.bca, 2
  %i.bcc = mul nsw i64 %i.bcb, %i.aqv
  %scevgep3444.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcc
  %i.bcd = add i32 %.1764.lcssa.i, 2
  %i.bce = add i32 %i.bcd, %i.bbz
  br label %.preheader2565.i

.preheader2562.lr.ph.split.us.i:                  ; preds = %.preheader2562.lr.ph.i
  %i.bcf = icmp sgt i32 %.fr3240.i, 0
  br i1 %i.bcf, label %.preheader2562.us.us.preheader.i, label %.preheader2562.us.preheader.i

.preheader2562.us.preheader.i:                    ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bcg = sub i32 %i.gy, %.1764.lcssa.i
  %i.bch = and i32 %i.bcg, -2                     ; 2 uses
  %i.bci = zext i32 %i.bch to i64
  %i.bcj = add nuw nsw i64 %i.bci, 2
  %i.bck = mul nsw i64 %i.bcj, %i.aqv
  %scevgep3445.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bck
  %i.bcl = add i32 %.1764.lcssa.i, 2
  %i.bcm = add i32 %i.bcl, %i.bch
  br label %.preheader2565.i

.preheader2562.us.us.preheader.i:                 ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bcn = zext nneg i32 %.fr3240.i to i64        ; 2 uses
  %i.bco = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2562.us.us.i

.preheader2562.us.us.i:                           ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.us.preheader.i
  %indvars.iv3459.i = phi i64 [ %i.bco, %.preheader2562.us.us.preheader.i ], [ %indvars.iv.next3460.i, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %.27692960.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2562.us.us.preheader.i ], [ %i.beo, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bcp = phi <2 x float> [ %i.bbo, %.preheader2562.us.us.preheader.i ], [ %i.ben, %._crit_edge2949.split.us.us.us.i ]
  %i.bcq = add nuw nsw i64 %indvars.iv3459.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2556_crit_edge.us.us.us.i, %.preheader2562.us.us.i
  %indvars.iv3454.i = phi i64 [ %indvars.iv.next3455.i, %..loopexit2556_crit_edge.us.us.us.i ], [ 0, %.preheader2562.us.us.i ] ; 3 uses
  %i.bcr = phi <2 x float> [ %i.ben, %..loopexit2556_crit_edge.us.us.us.i ], [ %i.bcp, %.preheader2562.us.us.i ] ; 3 uses
  %i.bcs = trunc i64 %indvars.iv3454.i to i32
  %i.bct = mul i32 %i.bbr, %i.bcs
  %.reass2953.us.us.us.i = add i32 %i.bct, %invariant.op2952.i ; 3 uses
  %i.bcu = icmp slt i32 %.reass2953.us.us.us.i, 0
  br i1 %i.bcu, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bcv = srem i32 %.reass2953.us.us.us.i, %i.bbt
  %i.bcw = sdiv i32 %.reass2953.us.us.us.i, %i.bbt ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bcv, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bcw, %i.ga
  %or.cond316 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond316, label %.preheader2555.us.us.us.i, label %..loopexit2556_crit_edge.us.us.us.i

.preheader2555.us.us.us.i:                        ; preds = %bb.br
  %i.bcx = mul nuw nsw i64 %indvars.iv3454.i, %i.bcn
  %i.bcy = sext i32 %i.bcw to i64
  %i.bcz = mul nsw i64 %i.bcy, %i.ha
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit2552.us.us.us.i, %.preheader2555.us.us.us.i
  %indvars.iv3449.i = phi i64 [ %indvars.iv.next3450.i, %.loopexit2552.us.us.us.i ], [ 0, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bda = phi <2 x float> [ %i.bem, %.loopexit2552.us.us.us.i ], [ %i.bcr, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bdb = trunc i64 %indvars.iv3449.i to i32
  %i.bdc = mul i32 %i.bbv, %i.bdb
  %.reass2944.us.us.us.i = add i32 %invariant.op2943.i, %i.bdc ; 3 uses
  %i.bdd = icmp slt i32 %.reass2944.us.us.us.i, 0
  br i1 %i.bdd, label %.loopexit2552.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bde = srem i32 %.reass2944.us.us.us.i, %i.bbx
  %i.bdf = sdiv i32 %.reass2944.us.us.us.i, %i.bbx ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bde, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bdf, %i.fz
  %or.cond317 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond317, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2552.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bdg = add nuw nsw i64 %indvars.iv3449.i, %i.bcx
  %i.bdh = shl i64 %i.bdg, 2
  %i.bdi = and i64 %i.bdh, 4294967292
  %i.bdj = getelementptr inbounds nuw [2 x i8], ptr %.27692960.us.us.i, i64 %i.bdi
  %i.bdk = load ptr, ptr %1, align 8, !tbaa !20, !noalias !636
  %i.bdl = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !636
  %i.bdm = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !636 ; 2 uses
  %factor.op.mul.us.us.us2979.i = mul i64 %i.bdm, %i.bdl ; 2 uses
  %i.bdn = mul i64 %i.bcz, %i.bdm
  %invariant.gep.us.us.us2980.i = getelementptr i8, ptr %i.bdk, i64 %i.bdn
  %i.bdo = sext i32 %i.bdf to i64
  %invariant.gep2933.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2980.i, i64 %i.bdo ; 2 uses
  %.reass.us2954.us.us.i = mul i64 %factor.op.mul.us.us.us2979.i, %indvars.iv3459.i
  %gep2934.us.us.us.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.i
  %i.bdp = load i16, ptr %gep2934.us.us.us.i, align 2, !tbaa !89
  %.reass.us2954.us.us.1.i = mul i64 %factor.op.mul.us.us.us2979.i, %i.bcq
  %gep2934.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.1.i
  %i.bdq = load i16, ptr %gep2934.us.us.us.1.i, align 2, !tbaa !89
  %i.bdr = zext i16 %i.bdp to i32
  %i.bds = shl nuw i32 %i.bdr, 16
  %i.bdt = load <4 x i16>, ptr %i.bdj, align 2, !tbaa !89
  %i.bdu = freeze <4 x i16> %i.bdt
  %i.bdv = bitcast <4 x i16> %i.bdu to <2 x i32>  ; 2 uses
  %i.bdw = and <2 x i32> %i.bdv, splat (i32 -65536)
  %i.bdx = shl <2 x i32> %i.bdv, splat (i32 16)
  %i.bdy = bitcast <2 x i32> %i.bdx to <2 x float>
  %i.bdz = insertelement <2 x i32> poison, i32 %i.bds, i64 0
  %i.bea = bitcast <2 x i32> %i.bdz to <2 x float>
  %i.beb = shufflevector <2 x float> %i.bea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bec = fmul fast <2 x float> %i.beb, %i.bdy
  %i.bed = fadd fast <2 x float> %i.bec, %i.bda
  %i.bee = zext i16 %i.bdq to i32
  %i.bef = shl nuw i32 %i.bee, 16
  %i.beg = bitcast <2 x i32> %i.bdw to <2 x float>
  %i.beh = insertelement <2 x i32> poison, i32 %i.bef, i64 0
  %i.bei = bitcast <2 x i32> %i.beh to <2 x float>
  %i.bej = shufflevector <2 x float> %i.bei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bek = fmul fast <2 x float> %i.bej, %i.beg
  %i.bel = fadd fast <2 x float> %i.bed, %i.bek
  br label %.loopexit2552.us.us.us.i

.loopexit2552.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bem = phi <2 x float> [ %i.bda, %bb.bs ], [ %i.bda, %bb.bt ], [ %i.bel, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3450.i = add nuw nsw i64 %indvars.iv3449.i, 1 ; 2 uses
  %exitcond3453.not.i = icmp eq i64 %indvars.iv.next3450.i, %i.bcn
  br i1 %exitcond3453.not.i, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !580

..loopexit2556_crit_edge.us.us.us.i:              ; preds = %.loopexit2552.us.us.us.i, %bb.br, %bb.bq
  %i.ben = phi <2 x float> [ %i.bcr, %bb.bq ], [ %i.bcr, %bb.br ], [ %i.bem, %.loopexit2552.us.us.us.i ] ; 3 uses
  %indvars.iv.next3455.i = add nuw nsw i64 %indvars.iv3454.i, 1 ; 2 uses
  %exitcond3458.not.i = icmp eq i64 %indvars.iv.next3455.i, %wide.trip.count3415.i
  br i1 %exitcond3458.not.i, label %._crit_edge2949.split.us.us.us.i, label %bb.bq, !llvm.loop !581

._crit_edge2949.split.us.us.us.i:                 ; preds = %..loopexit2556_crit_edge.us.us.us.i
  %i.beo = getelementptr inbounds [2 x i8], ptr %.27692960.us.us.i, i64 %i.aqv ; 2 uses
  %indvars.iv.next3460.i = add nuw nsw i64 %indvars.iv3459.i, 2 ; 2 uses
  %i.bep = trunc i64 %indvars.iv.next3460.i to i32 ; 2 uses
  %i.beq = or i32 %i.bep, 1
  %i.ber = icmp slt i32 %i.beq, %i.fy
  br i1 %i.ber, label %.preheader2562.us.us.i, label %.preheader2565.i, !llvm.loop !582

.preheader2565.i:                                 ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.preheader.i, %.preheader2562.preheader.i, %._crit_edge2911.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2911.i ], [ %scevgep3444.i, %.preheader2562.preheader.i ], [ %scevgep3445.i, %.preheader2562.us.preheader.i ], [ %i.beo, %._crit_edge2949.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2911.i ], [ %i.bce, %.preheader2562.preheader.i ], [ %i.bcm, %.preheader2562.us.preheader.i ], [ %i.bep, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bes = phi <2 x float> [ %i.bbo, %._crit_edge2911.i ], [ %i.bbo, %.preheader2562.preheader.i ], [ %i.bbo, %.preheader2562.us.preheader.i ], [ %i.ben, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %i.bet = icmp slt i32 %.2765.lcssa.i, %i.fy
  br i1 %i.bet, label %.preheader2561.lr.ph.i, label %._crit_edge3009.i

.preheader2561.lr.ph.i:                           ; preds = %.preheader2565.i
  %i.beu = load i32, ptr %i.d, align 4
  %i.bev = load i32, ptr %i.j, align 4
  %invariant.op2998.i = sub i32 %.neg2520.i, %i.bev
  %i.bew = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bex = load i32, ptr %i.a, align 4
  %.fr3241.i = freeze i32 %i.bex                  ; 2 uses
  %i.bey = load i32, ptr %i.c, align 4
  %i.bez = load i32, ptr %i.i, align 4
  %.neg2510.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2990.i = sub i32 %.neg2510.i, %i.bez
  %i.bfa = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfb = icmp sgt i32 %.fr3241.i, 0
  %or.cond3746.i = and i1 %i.aqo, %i.bfb
  br i1 %or.cond3746.i, label %.preheader2561.us.us.preheader.i, label %._crit_edge3009.i

.preheader2561.us.us.preheader.i:                 ; preds = %.preheader2561.lr.ph.i
  %i.bfc = zext nneg i32 %.fr3241.i to i64        ; 2 uses
  %i.bfd = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2561.us.us.i

.preheader2561.us.us.i:                           ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.us.us.preheader.i
  %indvars.iv3472.i = phi i64 [ %i.bfd, %.preheader2561.us.us.preheader.i ], [ %indvars.iv.next3473.i, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %.37703006.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2561.us.us.preheader.i ], [ %i.bgu, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %i.bfe = phi <2 x float> [ %i.bes, %.preheader2561.us.us.preheader.i ], [ %i.bgt, %._crit_edge2995.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2554_crit_edge.us.us.us.i, %.preheader2561.us.us.i
  %indvars.iv3467.i = phi i64 [ %indvars.iv.next3468.i, %..loopexit2554_crit_edge.us.us.us.i ], [ 0, %.preheader2561.us.us.i ] ; 3 uses
  %i.bff = phi <2 x float> [ %i.bgt, %..loopexit2554_crit_edge.us.us.us.i ], [ %i.bfe, %.preheader2561.us.us.i ] ; 3 uses
  %i.bfg = trunc i64 %indvars.iv3467.i to i32
  %i.bfh = mul i32 %i.beu, %i.bfg
  %.reass2999.us.us.us.i = add i32 %i.bfh, %invariant.op2998.i ; 3 uses
  %i.bfi = icmp slt i32 %.reass2999.us.us.us.i, 0
  br i1 %i.bfi, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bfj = srem i32 %.reass2999.us.us.us.i, %i.bew
  %i.bfk = sdiv i32 %.reass2999.us.us.us.i, %i.bew ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bfj, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bfk, %i.ga
  %or.cond318 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond318, label %.preheader2553.us.us.us.i, label %..loopexit2554_crit_edge.us.us.us.i

.preheader2553.us.us.us.i:                        ; preds = %bb.bv
  %i.bfl = mul nuw nsw i64 %indvars.iv3467.i, %i.bfc
  %i.bfm = sext i32 %i.bfk to i64
  %i.bfn = mul nsw i64 %i.bfm, %i.ha
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.preheader2553.us.us.us.i
  %indvars.iv3462.i = phi i64 [ %indvars.iv.next3463.i, %bb.by ], [ 0, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bfo = phi <2 x float> [ %i.bgs, %bb.by ], [ %i.bff, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bfp = trunc i64 %indvars.iv3462.i to i32
  %i.bfq = mul i32 %i.bey, %i.bfp
  %.reass.us3000.us.us.i = add i32 %invariant.op2990.i, %i.bfq ; 3 uses
  %i.bfr = icmp slt i32 %.reass.us3000.us.us.i, 0
  br i1 %i.bfr, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bfs = srem i32 %.reass.us3000.us.us.i, %i.bfa
  %i.bft = sdiv i32 %.reass.us3000.us.us.i, %i.bfa ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bfs, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bft, %i.fz
  %or.cond319 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond319, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bfu = add nuw nsw i64 %indvars.iv3462.i, %i.bfl
  %.idx3637.i = shl nuw nsw i64 %i.bfu, 2
  %i.bfv = getelementptr inbounds nuw i8, ptr %.37703006.us.us.i, i64 %.idx3637.i
  %i.bfw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !637
  %i.bfx = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !637
  %i.bfy = mul i64 %i.bfx, %indvars.iv3472.i
  %i.bfz = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !637 ; 2 uses
  %i.bga = mul i64 %i.bfy, %i.bfz
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfw, i64 %i.bga
  %i.bgc = mul i64 %i.bfn, %i.bfz
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bgc
  %i.bge = sext i32 %i.bft to i64
  %i.bgf = getelementptr inbounds [2 x i8], ptr %i.bgd, i64 %i.bge
  %i.bgg = load i16, ptr %i.bgf, align 2, !tbaa !89
  %i.bgh = zext i16 %i.bgg to i32
  %i.bgi = shl nuw i32 %i.bgh, 16
  %i.bgj = load <2 x i16>, ptr %i.bfv, align 2, !tbaa !89
  %i.bgk = zext <2 x i16> %i.bgj to <2 x i32>
  %i.bgl = shl nuw <2 x i32> %i.bgk, splat (i32 16)
  %i.bgm = bitcast <2 x i32> %i.bgl to <2 x float>
  %i.bgn = insertelement <2 x i32> poison, i32 %i.bgi, i64 0
  %i.bgo = bitcast <2 x i32> %i.bgn to <2 x float>
  %i.bgp = shufflevector <2 x float> %i.bgo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgq = fmul fast <2 x float> %i.bgp, %i.bgm
  %i.bgr = fadd fast <2 x float> %i.bgq, %i.bfo
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.bx, %bb.bw
  %i.bgs = phi <2 x float> [ %i.bfo, %bb.bw ], [ %i.bfo, %bb.bx ], [ %i.bgr, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3463.i = add nuw nsw i64 %indvars.iv3462.i, 1 ; 2 uses
  %exitcond3466.not.i = icmp eq i64 %indvars.iv.next3463.i, %i.bfc
  br i1 %exitcond3466.not.i, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bw, !llvm.loop !585

..loopexit2554_crit_edge.us.us.us.i:              ; preds = %bb.by, %bb.bv, %bb.bu
  %i.bgt = phi <2 x float> [ %i.bff, %bb.bu ], [ %i.bff, %bb.bv ], [ %i.bgs, %bb.by ] ; 3 uses
  %indvars.iv.next3468.i = add nuw nsw i64 %indvars.iv3467.i, 1 ; 2 uses
  %exitcond3471.not.i = icmp eq i64 %indvars.iv.next3468.i, %wide.trip.count3415.i
  br i1 %exitcond3471.not.i, label %._crit_edge2995.split.us.us.us.i, label %bb.bu, !llvm.loop !586

._crit_edge2995.split.us.us.us.i:                 ; preds = %..loopexit2554_crit_edge.us.us.us.i
  %i.bgu = getelementptr inbounds [2 x i8], ptr %.37703006.us.us.i, i64 %i.aqx
  %indvars.iv.next3473.i = add nuw nsw i64 %indvars.iv3472.i, 1 ; 2 uses
  %i.bgv = trunc nuw i64 %indvars.iv.next3473.i to i32
  %i.bgw = icmp sgt i32 %i.fy, %i.bgv
  br i1 %i.bgw, label %.preheader2561.us.us.i, label %._crit_edge3009.i, !llvm.loop !587

._crit_edge3009.i:                                ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.lr.ph.i, %.preheader2565.i
  %i.bgx = phi <2 x float> [ %i.bes, %.preheader2565.i ], [ %i.bes, %.preheader2561.lr.ph.i ], [ %i.bgt, %._crit_edge2995.split.us.us.us.i ] ; 12 uses
  switch i32 %i.aql, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i
    i32 6, label %bb.bz
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i: ; preds = %._crit_edge3009.i
  %i.bgy = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bgx, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i: ; preds = %._crit_edge3009.i
  %i.bgz = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.bha = load float, ptr %i.bgz, align 4, !tbaa !39
  %i.bhb = fcmp fast ogt <2 x float> %i.bgx, zeroinitializer
  %i.bhc = insertelement <2 x float> poison, float %i.bha, i64 0
  %i.bhd = shufflevector <2 x float> %i.bhc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhe = select <2 x i1> %i.bhb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bhd
  %i.bhf = fmul fast <2 x float> %i.bhe, %i.bgx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i: ; preds = %._crit_edge3009.i
  %i.bhg = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bhh = load float, ptr %i.bhg, align 4, !tbaa !39 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 4
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !39 ; 3 uses
  %i.bhk = extractelement <2 x float> %i.bgx, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhk, float %i.bhh) ; 2 uses
  %i.bhl = fcmp fast ogt float %spec.select.i, %i.bhj
  %.123772467.i = select i1 %i.bhl, float %i.bhj, float %spec.select.i
  %i.bhm = extractelement <2 x float> %i.bgx, i64 1
  %.02378.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bhm, float %i.bhh)
  %spec.select2490.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02378.i, float %i.bhj)
  %i.bhn = insertelement <2 x float> poison, float %.123772467.i, i64 0
  %i.bho = insertelement <2 x float> %i.bhn, float %spec.select2490.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i: ; preds = %._crit_edge3009.i
  %i.bhp = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bgx, <2 x float> splat (float f0x42B0C0A5))
  %i.bhq = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bhp, <2 x float> splat (float f0xC2B0C0A5))
  %i.bhr = fneg fast <2 x float> %i.bhq
  %i.bhs = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bhr)
  %i.bht = fadd fast <2 x float> %i.bhs, splat (float 1.000000e+00)
  %i.bhu = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bht
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i: ; preds = %._crit_edge3009.i
  %i.bhv = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bgx)
  %i.bhw = fadd fast <2 x float> %i.bhv, splat (float 1.000000e+00)
  %i.bhx = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bhw)
  %i.bhy = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bhx)
  %i.bhz = fmul fast <2 x float> %i.bhy, %i.bgx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.cq:                                            ; preds = %.lr.ph.split.us3095.us.us.us.i.us
  %i.bsd = srem i32 %.reass3093.us3098.us.us.us.i.us, %i.bpg
  %i.bse = sdiv i32 %.reass3093.us3098.us.us.us.i.us, %i.bpg ; 2 uses
  %.not897.us3099.us.us.us.i.us = icmp eq i32 %i.bsd, 0
  %.not898.us3100.us.us.us.i.us = icmp slt i32 %i.bse, %i.aop
  %or.cond325 = select i1 %.not897.us3099.us.us.us.i.us, i1 %.not898.us3100.us.us.us.i.us, i1 false
  br i1 %or.cond325, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.cr

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.bsf = load ptr, ptr %1, align 8, !tbaa !20, !noalias !642
  %i.bsg = load i64, ptr %i.aoz, align 8, !tbaa !21, !noalias !642
  %i.bsh = load i64, ptr %i.apa, align 8, !tbaa !55, !noalias !642 ; 2 uses
  %factor.op.mul3084.us.us.us.us.i.us = mul i64 %i.bsh, %i.bsg ; 4 uses
  %i.bsi = mul i64 %i.brz, %i.bsh
  %invariant.gep.us.us.us3137.us.i.us = getelementptr i8, ptr %i.bsf, i64 %i.bsi
  %i.bsj = sext i32 %i.bse to i64
  %invariant.gep3086.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3137.us.i.us, i64 %i.bsj ; 4 uses
  %.reass3085.us.us.us.us.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %indvars.iv3524.i
  %gep3087.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.i.us
  %i.bsk = load i16, ptr %gep3087.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.1.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqc
  %gep3087.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.1.i.us
  %i.bsl = load i16, ptr %gep3087.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.2.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqd
  %gep3087.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.2.i.us
  %i.bsm = load i16, ptr %gep3087.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.3.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqe
  %gep3087.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.3.i.us
  %i.bsn = load i16, ptr %gep3087.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.bso = zext i16 %i.bsk to i32
  %i.bsp = zext i16 %i.bsl to i32
  %i.bsq = zext i16 %i.bsm to i32
  %i.bsr = zext i16 %i.bsn to i32
  %i.bss = insertelement <4 x i32> poison, i32 %i.bso, i64 0
  %i.bst = insertelement <4 x i32> %i.bss, i32 %i.bsp, i64 1
  %i.bsu = insertelement <4 x i32> %i.bst, i32 %i.bsq, i64 2
  %i.bsv = insertelement <4 x i32> %i.bsu, i32 %i.bsr, i64 3
  %i.bsw = shl nuw <4 x i32> %i.bsv, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.bsw to <4 x float>
  %i.bsx = add nuw nsw i64 %indvars.iv3509.i.us, %i.brx
  %i.bsy = shl i64 %i.bsx, 2
  %i.bsz = and i64 %i.bsy, 4294967292
  %i.bta = getelementptr inbounds nuw [2 x i8], ptr %.17253122.us.us.i, i64 %i.bsz
  %i.btb = load i64, ptr %i.bta, align 1, !tbaa !82
  %i.btc = insertelement <2 x i64> poison, i64 %i.btb, i64 0
  %i.btd = bitcast <2 x i64> %i.btc to <8 x i16>
  %i.bte = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.btf = bitcast <8 x i16> %i.bte to <4 x float>
  %i.btg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.btf, <4 x float> nofpclass(nan inf) %.223963089.us3097.us.us.us.i.us)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3095.us.us.us.i.us
  %.32397.us3101.us.us.us.i.us = phi nsz <4 x float> [ %.223963089.us3097.us.us.us.i.us, %.lr.ph.split.us3095.us.us.us.i.us ], [ %i.btg, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223963089.us3097.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3510.i.us = add nuw nsw i64 %indvars.iv3509.i.us, 1 ; 2 uses
  %exitcond3513.not.i.us = icmp eq i64 %indvars.iv.next3510.i.us, %i.bpy
  br i1 %exitcond3513.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3095.us.us.us.i.us, !llvm.loop !602

..loopexit2543_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2548.us.us.i.split.us122
  %.42398.us.us.us.i.us130 = phi nsz <4 x float> [ %.123953105.us.us.us.i.us124, %.preheader2548.us.us.i.split.us122 ], [ %.123953105.us.us.us.i.us124, %bb.cp ], [ %.32397.us3101.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3520.i.us131 = add nuw nsw i64 %indvars.iv3519.i.us123, 1 ; 2 uses
  %exitcond3523.not.i.us132 = icmp eq i64 %indvars.iv.next3520.i.us131, %wide.trip.count3498.i
  br i1 %exitcond3523.not.i.us132, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us122, !llvm.loop !603

._crit_edge3108.split.us.us.us.i:                 ; preds = %..loopexit2543_crit_edge.us.us.us.i.us129, %..loopexit2543_crit_edge.us.us.us.i.us, %.preheader2548.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ], [ %.42398.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.bth = getelementptr inbounds [2 x i8], ptr %.17253122.us.us.i, i64 %i.bke ; 2 uses
  %indvars.iv.next3525.i = add nuw nsw i64 %indvars.iv3524.i, 4 ; 2 uses
  %i.bti = trunc i64 %indvars.iv.next3525.i to i32 ; 2 uses
  %i.btj = or i32 %i.bti, 3
  %i.btk = icmp slt i32 %i.btj, %i.aoo
  br i1 %i.btk, label %.preheader2548.us.us.i, label %._crit_edge3126.i, !llvm.loop !606

._crit_edge3126.i:                                ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.preheader.i, %.preheader2548.preheader.i, %._crit_edge3066.i
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3066.i ], [ zeroinitializer, %.preheader2548.preheader.i ], [ zeroinitializer, %.preheader2548.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge3066.i ], [ %scevgep3503.i, %.preheader2548.preheader.i ], [ %scevgep3504.i, %.preheader2548.us.preheader.i ], [ %i.bth, %._crit_edge3108.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge3066.i ], [ %i.bpo, %.preheader2548.preheader.i ], [ %i.bpx, %.preheader2548.us.preheader.i ], [ %i.bti, %._crit_edge3108.split.us.us.us.i ] ; 7 uses
  %i.btl = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.box, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.btm = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.box, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.btn = fadd fast <4 x float> %i.btl, %i.btm
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.btn) ; 4 uses
  %i.bto = or disjoint i32 %.1.lcssa.i, 1
  %i.btp = icmp slt i32 %i.bto, %i.aoo
  br i1 %i.btp, label %.preheader2547.lr.ph.i, label %.preheader2550.i

.preheader2547.lr.ph.i:                           ; preds = %._crit_edge3126.i
  %i.btq = load i32, ptr %i.d, align 4
  %i.btr = load i32, ptr %i.j, align 4
  %invariant.op3161.i = sub i32 %.neg2504.i, %i.btr
  %i.bts = load i32, ptr %i.f, align 4            ; 2 uses
  %i.btt = load i32, ptr %i.a, align 4
  %.fr3244.i = freeze i32 %i.btt                  ; 2 uses
  %i.btu = load i32, ptr %i.c, align 4
  %i.btv = load i32, ptr %i.i, align 4
  %.neg2498.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3154.i = sub i32 %.neg2498.i, %i.btv
  %i.btw = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bjz, label %.preheader2547.lr.ph.split.us.i, label %.preheader2547.preheader.i

.preheader2547.preheader.i:                       ; preds = %.preheader2547.lr.ph.i
  %i.btx = sub i32 %i.apo, %.1.lcssa.i
  %i.bty = and i32 %i.btx, -2                     ; 2 uses
  %i.btz = zext i32 %i.bty to i64
  %i.bua = add nuw nsw i64 %i.btz, 2
  %i.bub = mul nsw i64 %i.bua, %i.bkg
  %scevgep3527.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bub
  %i.buc = add i32 %.1.lcssa.i, 2
  %i.bud = add i32 %i.buc, %i.bty
  br label %.preheader2550.i

.preheader2547.lr.ph.split.us.i:                  ; preds = %.preheader2547.lr.ph.i
  %i.bue = icmp sgt i32 %.fr3244.i, 0
  br i1 %i.bue, label %.preheader2547.us.us.preheader.i, label %.preheader2547.us.preheader.i

.preheader2547.us.preheader.i:                    ; preds = %.preheader2547.lr.ph.split.us.i
  %i.buf = sub i32 %i.apo, %.1.lcssa.i
  %i.bug = and i32 %i.buf, -2                     ; 2 uses
  %i.buh = zext i32 %i.bug to i64
  %i.bui = add nuw nsw i64 %i.buh, 2
  %i.buj = mul nsw i64 %i.bui, %i.bkg
  %scevgep3528.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.buj
  %i.buk = add i32 %.1.lcssa.i, 2
  %i.bul = add i32 %i.buk, %i.bug
  br label %.preheader2550.i

.preheader2547.us.us.preheader.i:                 ; preds = %.preheader2547.lr.ph.split.us.i
  %i.bum = zext nneg i32 %.fr3244.i to i64        ; 2 uses
  %i.bun = zext i32 %.1.lcssa.i to i64
  br label %.preheader2547.us.us.i

.preheader2547.us.us.i:                           ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.us.preheader.i
  %indvars.iv3542.i = phi i64 [ %i.bun, %.preheader2547.us.us.preheader.i ], [ %indvars.iv.next3543.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.27263166.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2547.us.us.preheader.i ], [ %i.bwe, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %.17293165.us.us.i = phi float [ %op.rdx, %.preheader2547.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ]
  %i.buo = add nuw nsw i64 %indvars.iv3542.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2541_crit_edge.us.us.us.i, %.preheader2547.us.us.i
  %indvars.iv3537.i = phi i64 [ %indvars.iv.next3538.i, %..loopexit2541_crit_edge.us.us.us.i ], [ 0, %.preheader2547.us.us.i ] ; 3 uses
  %.27303156.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2541_crit_edge.us.us.us.i ], [ %.17293165.us.us.i, %.preheader2547.us.us.i ] ; 3 uses
  %i.bup = trunc i64 %indvars.iv3537.i to i32
  %i.buq = mul i32 %i.btq, %i.bup
  %.reass3162.us.us.us.i = add i32 %i.buq, %invariant.op3161.i ; 3 uses
  %i.bur = icmp slt i32 %.reass3162.us.us.us.i, 0
  br i1 %i.bur, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bus = srem i32 %.reass3162.us.us.us.i, %i.bts
  %i.but = sdiv i32 %.reass3162.us.us.us.i, %i.bts ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bus, 0
  %.not892.us.us.us.i = icmp slt i32 %i.but, %i.aoq
  %or.cond326 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond326, label %.preheader2540.us.us.us.i, label %..loopexit2541_crit_edge.us.us.us.i

.preheader2540.us.us.us.i:                        ; preds = %bb.ct
  %i.buu = mul nuw nsw i64 %indvars.iv3537.i, %i.bum
  %i.buv = sext i32 %i.but to i64
  %i.buw = mul nsw i64 %i.buv, %i.apt
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2540.us.us.us.i
  %indvars.iv3532.i = phi i64 [ %indvars.iv.next3533.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2540.us.us.us.i ] ; 3 uses
  %.37313151.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303156.us.us.us.i, %.preheader2540.us.us.us.i ] ; 3 uses
  %i.bux = trunc i64 %indvars.iv3532.i to i32
  %i.buy = mul i32 %i.btu, %i.bux
  %.reass3155.us.us.us.i = add i32 %invariant.op3154.i, %i.buy ; 3 uses
  %i.buz = icmp slt i32 %.reass3155.us.us.us.i, 0
  br i1 %i.buz, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bva = srem i32 %.reass3155.us.us.us.i, %i.btw
  %i.bvb = sdiv i32 %.reass3155.us.us.us.i, %i.btw ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bva, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bvb, %i.aop
  %or.cond327 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond327, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.bvc = add nuw nsw i64 %indvars.iv3532.i, %i.buu
  %.idx3641.i = shl nuw nsw i64 %i.bvc, 2
  %i.bvd = getelementptr inbounds nuw i8, ptr %.27263166.us.us.i, i64 %.idx3641.i ; 2 uses
  %i.bve = load ptr, ptr %1, align 8, !tbaa !20, !noalias !643
  %i.bvf = load i64, ptr %i.aoz, align 8, !tbaa !21, !noalias !643
  %i.bvg = load i64, ptr %i.apa, align 8, !tbaa !55, !noalias !643 ; 2 uses
  %factor.op.mul3145.us.us.us.i = mul i64 %i.bvg, %i.bvf ; 2 uses
  %i.bvh = mul i64 %i.buw, %i.bvg
  %invariant.gep.us.us.us3183.i = getelementptr i8, ptr %i.bve, i64 %i.bvh
  %i.bvi = sext i32 %i.bvb to i64
  %invariant.gep3147.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3183.i, i64 %i.bvi ; 2 uses
  %.reass3146.us.us.us.i = mul i64 %factor.op.mul3145.us.us.us.i, %indvars.iv3542.i
  %gep3148.us.us.us.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.i
  %i.bvj = load i16, ptr %gep3148.us.us.us.i, align 2, !tbaa !89
  %i.bvk = zext i16 %i.bvj to i32
  %i.bvl = shl nuw i32 %i.bvk, 16
  %i.bvm = bitcast i32 %i.bvl to float
  %i.bvn = load i16, ptr %i.bvd, align 2, !tbaa !89
  %i.bvo = zext i16 %i.bvn to i32
  %i.bvp = shl nuw i32 %i.bvo, 16
  %i.bvq = bitcast i32 %i.bvp to float
  %i.bvr = fmul fast float %i.bvq, %i.bvm
  %i.bvs = fadd fast float %i.bvr, %.37313151.us.us.us.i
  %.reass3146.us.us.us.1.i = mul i64 %factor.op.mul3145.us.us.us.i, %i.buo
  %gep3148.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.1.i
  %i.bvt = load i16, ptr %gep3148.us.us.us.1.i, align 2, !tbaa !89
  %i.bvu = zext i16 %i.bvt to i32
  %i.bvv = shl nuw i32 %i.bvu, 16
  %i.bvw = bitcast i32 %i.bvv to float
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvd, i64 2
  %i.bvy = load i16, ptr %i.bvx, align 2, !tbaa !89
  %i.bvz = zext i16 %i.bvy to i32
  %i.bwa = shl nuw i32 %i.bvz, 16
  %i.bwb = bitcast i32 %i.bwa to float
  %i.bwc = fmul fast float %i.bwb, %i.bvw
  %i.bwd = fadd fast float %i.bvs, %i.bwc
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6.us.us.us.i = phi nsz float [ %.37313151.us.us.us.i, %bb.cu ], [ %.37313151.us.us.us.i, %bb.cv ], [ %i.bwd, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3533.i = add nuw nsw i64 %indvars.iv3532.i, 1 ; 2 uses
  %exitcond3536.not.i = icmp eq i64 %indvars.iv.next3533.i, %i.bum
  br i1 %exitcond3536.not.i, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !609

..loopexit2541_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8.us.us.us.i = phi nsz float [ %.27303156.us.us.us.i, %bb.cs ], [ %.27303156.us.us.us.i, %bb.ct ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3538.i = add nuw nsw i64 %indvars.iv3537.i, 1 ; 2 uses
  %exitcond3541.not.i = icmp eq i64 %indvars.iv.next3538.i, %wide.trip.count3498.i
  br i1 %exitcond3541.not.i, label %._crit_edge3159.split.us.us.us.i, label %bb.cs, !llvm.loop !610

._crit_edge3159.split.us.us.us.i:                 ; preds = %..loopexit2541_crit_edge.us.us.us.i
  %i.bwe = getelementptr inbounds [2 x i8], ptr %.27263166.us.us.i, i64 %i.bkg ; 2 uses
  %indvars.iv.next3543.i = add nuw nsw i64 %indvars.iv3542.i, 2 ; 2 uses
  %i.bwf = trunc i64 %indvars.iv.next3543.i to i32 ; 2 uses
  %i.bwg = or i32 %i.bwf, 1
  %i.bwh = icmp slt i32 %i.bwg, %i.aoo
  br i1 %i.bwh, label %.preheader2547.us.us.i, label %.preheader2550.i, !llvm.loop !611

.preheader2550.i:                                 ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.preheader.i, %.preheader2547.preheader.i, %._crit_edge3126.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3126.i ], [ %op.rdx, %.preheader2547.preheader.i ], [ %op.rdx, %.preheader2547.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3126.i ], [ %scevgep3527.i, %.preheader2547.preheader.i ], [ %scevgep3528.i, %.preheader2547.us.preheader.i ], [ %i.bwe, %._crit_edge3159.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3126.i ], [ %i.bud, %.preheader2547.preheader.i ], [ %i.bul, %.preheader2547.us.preheader.i ], [ %i.bwf, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %i.bwi = icmp slt i32 %.2.lcssa.i, %i.aoo
  br i1 %i.bwi, label %.preheader2546.lr.ph.i, label %._crit_edge3205.i

.preheader2546.lr.ph.i:                           ; preds = %.preheader2550.i
  %i.bwj = load i32, ptr %i.d, align 4
  %i.bwk = load i32, ptr %i.j, align 4
  %invariant.op3197.i = sub i32 %.neg2504.i, %i.bwk
  %i.bwl = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bwm = load i32, ptr %i.a, align 4
  %.fr3245.i = freeze i32 %i.bwm                  ; 2 uses
  %i.bwn = load i32, ptr %i.c, align 4
  %i.bwo = load i32, ptr %i.i, align 4
  %.neg2494.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3190.i = sub i32 %.neg2494.i, %i.bwo
  %i.bwp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bwq = icmp sgt i32 %.fr3245.i, 0
  %or.cond3761.i = and i1 %i.bjz, %i.bwq
  br i1 %or.cond3761.i, label %.preheader2546.us.us.preheader.i, label %._crit_edge3205.i

.preheader2546.us.us.preheader.i:                 ; preds = %.preheader2546.lr.ph.i
  %i.bwr = zext nneg i32 %.fr3245.i to i64        ; 2 uses
  %i.bws = zext i32 %.2.lcssa.i to i64
  br label %.preheader2546.us.us.i

.preheader2546.us.us.i:                           ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.us.us.preheader.i
  %indvars.iv3555.i = phi i64 [ %i.bws, %.preheader2546.us.us.preheader.i ], [ %indvars.iv.next3556.i, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.37273202.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %i.byc, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.93201.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3195.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2539_crit_edge.us.us.us.i, %.preheader2546.us.us.i
  %indvars.iv3550.i = phi i64 [ %indvars.iv.next3551.i, %..loopexit2539_crit_edge.us.us.us.i ], [ 0, %.preheader2546.us.us.i ] ; 3 uses
  %.103192.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2539_crit_edge.us.us.us.i ], [ %.93201.us.us.i, %.preheader2546.us.us.i ] ; 3 uses
  %i.bwt = trunc i64 %indvars.iv3550.i to i32
  %i.bwu = mul i32 %i.bwj, %i.bwt
  %.reass3198.us.us.us.i = add i32 %i.bwu, %invariant.op3197.i ; 3 uses
  %i.bwv = icmp slt i32 %.reass3198.us.us.us.i, 0
  br i1 %i.bwv, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bww = srem i32 %.reass3198.us.us.us.i, %i.bwl
  %i.bwx = sdiv i32 %.reass3198.us.us.us.i, %i.bwl ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bww, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bwx, %i.aoq
  %or.cond328 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond328, label %.preheader.us.us.us.i, label %..loopexit2539_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.bwy = mul nuw nsw i64 %indvars.iv3550.i, %i.bwr
  %i.bwz = sext i32 %i.bwx to i64
  %i.bxa = getelementptr inbounds nuw [2 x i8], ptr %.37273202.us.us.i, i64 %i.bwy
  %i.bxb = mul nsw i64 %i.bwz, %i.apt
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %.preheader.us.us.us.i
  %indvars.iv3545.i = phi i64 [ %indvars.iv.next3546.i, %bb.da ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113187.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.da ], [ %.103192.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bxc = trunc i64 %indvars.iv3545.i to i32
  %i.bxd = mul i32 %i.bwn, %i.bxc
  %.reass3191.us.us.us.i = add i32 %invariant.op3190.i, %i.bxd ; 3 uses
  %i.bxe = icmp slt i32 %.reass3191.us.us.us.i, 0
  br i1 %i.bxe, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bxf = srem i32 %.reass3191.us.us.us.i, %i.bwp
  %i.bxg = sdiv i32 %.reass3191.us.us.us.i, %i.bwp ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bxf, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bxg, %i.aop
  %or.cond329 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond329, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.bxh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !644
  %i.bxi = load i64, ptr %i.aoz, align 8, !tbaa !21, !noalias !644
  %i.bxj = mul i64 %i.bxi, %indvars.iv3555.i
  %i.bxk = load i64, ptr %i.apa, align 8, !tbaa !55, !noalias !644 ; 2 uses
  %i.bxl = mul i64 %i.bxj, %i.bxk
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.bxl
  %i.bxn = mul i64 %i.bxb, %i.bxk
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxm, i64 %i.bxn
  %i.bxp = sext i32 %i.bxg to i64
  %i.bxq = getelementptr inbounds [2 x i8], ptr %i.bxo, i64 %i.bxp
  %i.bxr = load i16, ptr %i.bxq, align 2, !tbaa !89
  %i.bxs = zext i16 %i.bxr to i32
  %i.bxt = shl nuw i32 %i.bxs, 16
  %i.bxu = bitcast i32 %i.bxt to float
  %i.bxv = getelementptr inbounds nuw [2 x i8], ptr %i.bxa, i64 %indvars.iv3545.i
  %i.bxw = load i16, ptr %i.bxv, align 2, !tbaa !89
  %i.bxx = zext i16 %i.bxw to i32
  %i.bxy = shl nuw i32 %i.bxx, 16
  %i.bxz = bitcast i32 %i.bxy to float
  %i.bya = fmul fast float %i.bxz, %i.bxu
  %i.byb = fadd fast float %i.bya, %.113187.us.us.us.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.cz, %bb.cy
  %.13.us.us.us.i = phi nsz float [ %.113187.us.us.us.i, %bb.cy ], [ %.113187.us.us.us.i, %bb.cz ], [ %i.byb, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3546.i = add nuw nsw i64 %indvars.iv3545.i, 1 ; 2 uses
  %exitcond3549.not.i = icmp eq i64 %indvars.iv.next3546.i, %i.bwr
  br i1 %exitcond3549.not.i, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cy, !llvm.loop !614

..loopexit2539_crit_edge.us.us.us.i:              ; preds = %bb.da, %bb.cx, %bb.cw
  %.15.us.us.us.i = phi nsz float [ %.103192.us.us.us.i, %bb.cw ], [ %.103192.us.us.us.i, %bb.cx ], [ %.13.us.us.us.i, %bb.da ] ; 3 uses
  %indvars.iv.next3551.i = add nuw nsw i64 %indvars.iv3550.i, 1 ; 2 uses
  %exitcond3554.not.i = icmp eq i64 %indvars.iv.next3551.i, %wide.trip.count3498.i
  br i1 %exitcond3554.not.i, label %._crit_edge3195.split.us.us.us.i, label %bb.cw, !llvm.loop !615

._crit_edge3195.split.us.us.us.i:                 ; preds = %..loopexit2539_crit_edge.us.us.us.i
  %i.byc = getelementptr inbounds [2 x i8], ptr %.37273202.us.us.i, i64 %i.bkh
  %indvars.iv.next3556.i = add nuw nsw i64 %indvars.iv3555.i, 1 ; 2 uses
  %i.byd = trunc nuw i64 %indvars.iv.next3556.i to i32
  %i.bye = icmp sgt i32 %i.aoo, %i.byd
  br i1 %i.bye, label %.preheader2546.us.us.i, label %._crit_edge3205.i, !llvm.loop !616

._crit_edge3205.i:                                ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.lr.ph.i, %.preheader2550.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2550.i ], [ %.1729.lcssa.i, %.preheader2546.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3195.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bjw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.db
    i32 2, label %bb.dc
    i32 3, label %bb.dd
    i32 4, label %bb.de
    i32 5, label %bb.df
    i32 6, label %bb.dg
  ]

bb.db:                                            ; preds = %._crit_edge3205.i
  %i.byf = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dc:                                            ; preds = %._crit_edge3205.i
  %i.byg = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !39
  %i.byi = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.byj = select fast i1 %i.byi, float 1.000000e+00, float %i.byh
  %i.byk = fmul fast float %i.byj, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dd:                                            ; preds = %._crit_edge3205.i
  %i.byl = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bym = load float, ptr %i.byl, align 4, !tbaa !39
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byl, i64 4
  %i.byo = load float, ptr %i.byn, align 4, !tbaa !39
  %spec.select2488.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.bym)
  %spec.select2489.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2488.i, float %i.byo)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.de:                                            ; preds = %._crit_edge3205.i
  %.sroa.speculated2235.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2235.i, float f0xC2B0C0A5)
  %i.byp = fneg fast float %.sroa.speculated.i
  %i.byq = call fast float @llvm.exp.f32(float %i.byp)
  %i.byr = fadd fast float %i.byq, 1.000000e+00
  %i.bys = fdiv fast float 1.000000e+00, %i.byr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.df:                                            ; preds = %._crit_edge3205.i
  %i.byt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.byu = fadd fast float %i.byt, 1.000000e+00
  %i.byv = call fast float @llvm.log.f32(float %i.byu)
  %i.byw = call fast float @llvm.tanh.f32(float %i.byv)
  %i.byx = fmul fast float %i.byw, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dg:                                            ; preds = %._crit_edge3205.i
  %i.byy = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !39 ; 3 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byy, i64 4
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !39 ; 2 uses
  %i.bzc = fneg fast float %i.bzb
  %i.bzd = fdiv fast float %i.bzc, %i.byz         ; 2 uses
  %i.bze = fcmp fast olt float %.9.lcssa.i, %i.bzd
  br i1 %i.bze, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
end_hunk_3
