Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 38
begin_hunk_0_@commit_params:bb.a
  %i.aei = fadd reassoc nsz arcp contract afn float %i.aeh, %i.aec
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

bb.ck:                                            ; preds = %bb.ci, %.lr.ph.i426.us.1.i.i
  %indvars.iv.next.i428.us.1.i.i = add nuw nsw i64 %indvars.iv.i427.us.1.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.1.i.i = icmp eq i64 %indvars.iv.next.i428.us.1.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.1.i.i, label %._crit_edge.i422.loopexit.us.1.i.i, label %.lr.ph.i426.us.1.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.1.i.i:               ; preds = %bb.ck
  %i.aej = load float, ptr %i.abz, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i: ; preds = %._crit_edge.i422.loopexit.us.1.i.i, %bb.cj
  %.1.i423.us488.1.i.i = phi nsz float [ %i.aei, %bb.cj ], [ %i.aej, %._crit_edge.i422.loopexit.us.1.i.i ] ; 2 uses
  %i.aek = fcmp reassoc nsz arcp contract afn ogt float %i.adr, %.1.i423.us488.1.i.i
  %i.ael = select reassoc nsz arcp contract afn i1 %i.aek, float %i.adr, float %.1.i423.us488.1.i.i ; 2 uses
  br label %.lr.ph.i426.us.2.i.i

.lr.ph.i426.us.2.i.i:                             ; preds = %bb.cn, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i
  %indvars.iv.i427.us.2.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i ], [ %indvars.iv.next.i428.us.2.i.i, %bb.cn ] ; 4 uses
  %i.aem = add nsw i64 %indvars.iv.i427.us.2.i.i, -1 ; 2 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.aem
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !21 ; 3 uses
  %i.aep = fcmp reassoc nsz arcp contract afn ult float %i.ace, %i.aeo
  br i1 %i.aep, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i426.us.2.i.i
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.2.i.i
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !21 ; 2 uses
  %i.aes = fcmp reassoc nsz arcp contract afn ugt float %i.ace, %i.aer
  br i1 %i.aes, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %indvars.iv.i427.us.2.i.i
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !21
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aca, i64 %i.aem
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !21 ; 2 uses
  %i.aex = fsub reassoc nsz arcp contract afn float %i.aeu, %i.aew
  %i.aey = fsub reassoc nsz arcp contract afn float %i.aer, %i.aeo
  %i.aez = fsub reassoc nsz arcp contract afn float %i.ace, %i.aeo
  %i.afa = fmul reassoc nsz arcp contract afn float %i.aex, %i.aez
  %i.afb = fdiv reassoc nsz arcp contract afn float %i.afa, %i.aey
  %i.afc = fadd reassoc nsz arcp contract afn float %i.afb, %i.aew
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

bb.cn:                                            ; preds = %bb.cl, %.lr.ph.i426.us.2.i.i
  %indvars.iv.next.i428.us.2.i.i = add nuw nsw i64 %indvars.iv.i427.us.2.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.2.i.i = icmp eq i64 %indvars.iv.next.i428.us.2.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.2.i.i, label %._crit_edge.i422.loopexit.us.2.i.i, label %.lr.ph.i426.us.2.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.2.i.i:               ; preds = %bb.cn
  %i.afd = load float, ptr %i.acc, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i: ; preds = %._crit_edge.i422.loopexit.us.2.i.i, %bb.cm
  %.1.i423.us488.2.i.i = phi nsz float [ %i.afc, %bb.cm ], [ %i.afd, %._crit_edge.i422.loopexit.us.2.i.i ] ; 2 uses
  %i.afe = fcmp reassoc nsz arcp contract afn ogt float %i.ael, %.1.i423.us488.2.i.i
  %i.aff = select reassoc nsz arcp contract afn i1 %i.afe, float %i.ael, float %.1.i423.us488.2.i.i
  br label %.split484.us.i.i

.preheader.i60.i:                                 ; preds = %.split484.us.i.i
  %i.afg = icmp sgt i32 %.0327.i.i, 0
  br i1 %i.afg, label %.lr.ph499.i.i.preheader, label %.sink.split.i41

.lr.ph499.i.i.preheader:                          ; preds = %.preheader.i60.i
  %min.iters.check462 = icmp ult i32 %.0327.i.i, 8
  br i1 %min.iters.check462, label %.lr.ph499.i.i.preheader517, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph499.i.i.preheader
  %n.vec464 = and i64 %wide.trip.count.i425.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert465 = insertelement <8 x float> poison, float %.us-phi.i58.i, i64 0
  %broadcast.splat466 = shufflevector <8 x float> %broadcast.splatinsert465, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.afh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat466
  %i.afi = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat466
  %i.afj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat466
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph463
  %index468 = phi i64 [ 0, %vector.ph463 ], [ %index.next472, %vector.body467 ] ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %index468 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.afk, align 4, !tbaa !21
  %i.afl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat466
  store <8 x float> %i.afl, ptr %i.afk, align 4, !tbaa !21
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index468 ; 4 uses
  %wide.load469 = load <8 x float>, ptr %i.afm, align 4, !tbaa !21
  %i.afn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load469, %i.afh
  store <8 x float> %i.afn, ptr %i.afm, align 4, !tbaa !21
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 64 ; 2 uses
  %wide.load470 = load <8 x float>, ptr %i.afo, align 4, !tbaa !21
  %i.afp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load470, %i.afi
  store <8 x float> %i.afp, ptr %i.afo, align 4, !tbaa !21
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 128 ; 2 uses
  %wide.load471 = load <8 x float>, ptr %i.afq, align 4, !tbaa !21
  %i.afr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load471, %i.afj
  store <8 x float> %i.afr, ptr %i.afq, align 4, !tbaa !21
  %index.next472 = add nuw i64 %index468, 8       ; 2 uses
  %i.afs = icmp eq i64 %index.next472, %n.vec464
  br i1 %i.afs, label %middle.block473, label %vector.body467, !llvm.loop !390

middle.block473:                                  ; preds = %vector.body467
  %cmp.n474 = icmp eq i64 %n.vec464, %wide.trip.count.i425.i.i
  br i1 %cmp.n474, label %.sink.split.i41, label %.lr.ph499.i.i.preheader517

.lr.ph499.i.i.preheader517:                       ; preds = %.lr.ph499.i.i.preheader, %middle.block473
  %indvars.iv589.i.i.ph = phi i64 [ 0, %.lr.ph499.i.i.preheader ], [ %n.vec464, %middle.block473 ]
  %i.aft = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.afu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.afv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  br label %.lr.ph499.i.i

.split484.us.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i, %.preheader.i421.preheader.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i
  %.us-phi.i58.i = phi float [ %i.aff, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i ], [ %i.aco, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i ], [ %i.acx, %.preheader.i421.preheader.i.i ] ; 6 uses
  %.int.i59.i = add nuw nsw i32 %.0329494.int.i.i, 1 ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %.int.i59.i, 200
  br i1 %exitcond584.not.i.i, label %.preheader.i60.i, label %.preheader434.i.i, !llvm.loop !391

.lr.ph499.i.i:                                    ; preds = %.lr.ph499.i.i.preheader517, %.lr.ph499.i.i
  %indvars.iv589.i.i = phi i64 [ %indvars.iv.next590.i.i, %.lr.ph499.i.i ], [ %indvars.iv589.i.i.ph, %.lr.ph499.i.i.preheader517 ] ; 3 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv589.i.i ; 2 uses
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !21
  %i.afy = fmul reassoc nsz arcp contract afn float %i.afx, %.us-phi.i58.i
  store float %i.afy, ptr %i.afw, align 4, !tbaa !21
  %invariant.gep495.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv589.i.i ; 4 uses
  %i.afz = load float, ptr %invariant.gep495.i.i, align 4, !tbaa !21
  %i.aga = fmul reassoc nsz arcp contract afn float %i.afz, %i.aft
  store float %i.aga, ptr %invariant.gep495.i.i, align 4, !tbaa !21
  %gep496.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 64 ; 2 uses
  %i.agb = load float, ptr %gep496.1.i.i, align 4, !tbaa !21
  %i.agc = fmul reassoc nsz arcp contract afn float %i.agb, %i.afu
  store float %i.agc, ptr %gep496.1.i.i, align 4, !tbaa !21
  %gep496.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 128 ; 2 uses
  %i.agd = load float, ptr %gep496.2.i.i, align 4, !tbaa !21
  %i.age = fmul reassoc nsz arcp contract afn float %i.agd, %i.afv
  store float %i.age, ptr %gep496.2.i.i, align 4, !tbaa !21
  %indvars.iv.next590.i.i = add nuw nsw i64 %indvars.iv589.i.i, 1 ; 2 uses
  %exitcond593.not.i.i = icmp eq i64 %indvars.iv.next590.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond593.not.i.i, label %.sink.split.i41, label %.lr.ph499.i.i, !llvm.loop !392

.sink.split.i41:                                  ; preds = %.lr.ph499.i.i, %middle.block473, %.preheader.i60.i, %bb.av
  %.0327.i.sink.i = phi i32 [ %i.kj, %bb.av ], [ %.0327.i.i, %.preheader.i60.i ], [ %.0327.i.i, %middle.block473 ], [ %.0327.i.i, %.lr.ph499.i.i ]
  store i32 %.0327.i.sink.i, ptr %i.ej, align 8, !tbaa !129
  br label %bb.co

bb.co:                                            ; preds = %.sink.split.i41, %bb.y
  %i.agf = getelementptr inbounds nuw i8, ptr %.0, i64 328
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !184 ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.agi = fcmp reassoc nsz arcp contract afn olt float %i.agg, 1.000000e-01
  %i.agj = fcmp reassoc nsz arcp contract afn ogt float %i.agg, 2.000000e+00
  %or.cond53.i = or i1 %i.agi, %i.agj
  %spec.store.select.i = select i1 %or.cond53.i, float 1.000000e+00, float %i.agg
  store float %spec.store.select.i, ptr %i.agh, align 8
  %i.agk = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.agl = load i32, ptr %i.agk, align 16, !tbaa !402
  %i.agm = icmp ne i32 %i.agl, 0
  %i.agn = icmp ne ptr %i.eg, null
  %or.cond.i42 = select i1 %i.agm, i1 %i.agn, i1 false
  br i1 %or.cond.i42, label %bb.cp, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cp:                                            ; preds = %bb.co
  %i.ago = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !69
  %i.agq = getelementptr i8, ptr %i.agp, i64 644
  %.val54.i = load i32, ptr %i.agq, align 4, !tbaa !100
  %i.agr = and i32 %.val54.i, 4
  %.not51.i = icmp eq i32 %i.agr, 0
  br i1 %.not51.i, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.agt = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.ags) #30 ; 0 uses
  %i.agu = load i32, ptr %i.ej, align 8, !tbaa !129 ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, 0
  br i1 %i.agv, label %.lr.ph.i71.i, label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

.lr.ph.i71.i:                                     ; preds = %bb.cq
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ee, i64 428
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ee, i64 236
  %wide.trip.count.i72.i = zext nneg i32 %i.agu to i64
  br label %bb.cr

._crit_edge.loopexit.i.i:                         ; preds = %bb.cu
  %i.agy = icmp ne i32 %.1.i.i, 0
  %i.agz = icmp ne <2 x i32> %i.aht, zeroinitializer
  br label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

bb.cr:                                            ; preds = %bb.cu, %.lr.ph.i71.i
  %indvars.iv.i73.i = phi i64 [ 0, %.lr.ph.i71.i ], [ %indvars.iv.next.i77.i, %bb.cu ] ; 3 uses
  %.03145.i.i = phi i32 [ 0, %.lr.ph.i71.i ], [ %.1.i.i, %bb.cu ]
  %i.aha = phi <2 x i32> [ zeroinitializer, %.lr.ph.i71.i ], [ %i.aht, %bb.cu ]
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.i73.i
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !21
  %invariant.gep.i74.i = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %indvars.iv.i73.i ; 3 uses
  %i.ahd = load float, ptr %invariant.gep.i74.i, align 4, !tbaa !21 ; 3 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 64
  %i.ahe = load float, ptr %gep.1.i.i, align 4, !tbaa !21 ; 3 uses
  %i.ahf = insertelement <2 x float> poison, float %i.ahd, i64 0
  %i.ahg = insertelement <2 x float> %i.ahf, float %i.ahe, i64 1
  %i.ahh = fadd reassoc nsz arcp contract afn <2 x float> %i.ahg, splat (float -1.000000e+00)
  %i.ahi = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ahh)
  %i.ahj = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.ahi, splat (float 1.000000e-07)
  %5 = bitcast <2 x i1> %i.ahj to i2
  %6 = icmp ne i2 %5, 0
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 128
  %i.ahk = load float, ptr %gep.2.i.i, align 4, !tbaa !21 ; 3 uses
  %i.ahl = insertelement <2 x float> poison, float %i.ahc, i64 0
  %i.ahm = insertelement <2 x float> %i.ahl, float %i.ahk, i64 1
  %i.ahn = fadd reassoc nsz arcp contract afn <2 x float> %i.ahm, splat (float -1.000000e+00)
  %i.aho = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ahn)
  %i.ahp = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.aho, splat (float 1.000000e-07) ; 2 uses
  %i.ahq = extractelement <2 x i1> %i.ahp, i64 1
  %i.ahr = or i1 %i.ahq, %6
  %i.ahs = insertelement <2 x i1> %i.ahp, i1 %i.ahr, i64 1
  %i.aht = select <2 x i1> %i.ahs, <2 x i32> splat (i32 1), <2 x i32> %i.aha ; 2 uses
  %i.ahu = fcmp reassoc nsz arcp contract afn une float %i.ahd, %i.ahe
  br i1 %i.ahu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahv = fcmp reassoc nsz arcp contract afn une float %i.ahd, %i.ahk
  %i.ahw = fcmp reassoc nsz arcp contract afn une float %i.ahe, %i.ahk
  %or.cond.i76.i = or i1 %i.ahv, %i.ahw
  br i1 %or.cond.i76.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.1.i.i = phi i32 [ 1, %bb.ct ], [ %.03145.i.i, %bb.cs ] ; 2 uses
  %indvars.iv.next.i77.i = add nuw nsw i64 %indvars.iv.i73.i, 1 ; 2 uses
  %exitcond.not.i78.i = icmp eq i64 %indvars.iv.next.i77.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i78.i, label %._crit_edge.loopexit.i.i, label %bb.cr, !llvm.loop !393

_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.cq
  %.031.lcssa.i.i = phi i1 [ false, %bb.cq ], [ %i.agy, %._crit_edge.loopexit.i.i ]
  %i.ahx = phi <2 x i1> [ zeroinitializer, %bb.cq ], [ %i.agz, %._crit_edge.loopexit.i.i ]
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !130 ; 2 uses
  %i.aia = trunc i32 %i.ahz to i1
  %i.aib = select i1 %i.aia, i1 %.031.lcssa.i.i, i1 false
  %i.aic = zext i1 %i.aib to i32
  %i.aid = insertelement <2 x i32> poison, i32 %i.ahz, i64 0
  %i.aie = shufflevector <2 x i32> %i.aid, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aif = and <2 x i32> %i.aie, <i32 2, i32 4>
  %i.aig = icmp ne <2 x i32> %i.aif, zeroinitializer
  %i.aih = select <2 x i1> %i.aig, <2 x i1> %i.ahx, <2 x i1> zeroinitializer
  %i.aii = select <2 x i1> %i.aih, <2 x i32> <i32 2, i32 4>, <2 x i32> zeroinitializer ; 2 uses
  %i.aij = extractelement <2 x i32> %i.aii, i64 0
  %i.aik = or disjoint i32 %i.aij, %i.aic
  %i.ail = extractelement <2 x i32> %i.aii, i64 1
  %i.aim = or disjoint i32 %i.aik, %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %i.eg, i64 328
  store i32 %i.aim, ptr %i.ain, align 8, !tbaa !179
  %i.aio = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ags) #30 ; 0 uses
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cv:                                            ; preds = %bb.e
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aiq = load ptr, ptr %i.aip, align 16, !tbaa !60 ; 2 uses
  %i.air = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.ais = load i32, ptr %i.air, align 16, !tbaa !402
  %i.ait = icmp ne i32 %i.ais, 0
  %i.aiu = icmp ne ptr %i.aiq, null
  %or.cond.i43 = select i1 %i.ait, i1 %i.aiu, i1 false
  br i1 %or.cond.i43, label %bb.cw, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cw:                                            ; preds = %bb.cv
  %i.aiv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !69
  %i.aix = getelementptr i8, ptr %i.aiw, i64 644
  %.val.i44 = load i32, ptr %i.aix, align 4, !tbaa !100
  %i.aiy = and i32 %.val.i44, 4
  %.not.i45 = icmp eq i32 %i.aiy, 0
  br i1 %.not.i45, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.aja = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.aiz) #30 ; 0 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiq, i64 328
  store i32 0, ptr %i.ajb, align 8, !tbaa !179
  %i.ajc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aiz) #30 ; 0 uses
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit: ; preds = %bb.cx, %bb.cw, %bb.cv, %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i, %bb.cp, %bb.co, %bb.x, %bb.w, %bb.v, %bb.u
  ret void
}

declare i32 @dt_image_is_monochrome(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2568) ptr @calloc(i64 noundef 1, i64 noundef 2568) #31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6lfLensD1Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %i.d) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 120) #33
  store ptr null, ptr %i.c, align 8, !tbaa !115
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call void @free(ptr noundef %i.e) #30
  store ptr null, ptr %i.a, align 16, !tbaa !44
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6lfLensD1Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #31 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.b, ptr %i.c, align 8, !tbaa !188
  store <8 x i32> splat (i32 -999), ptr %i.b, align 8, !tbaa !24
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 11 uses
  invoke void @_ZN10lfDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !168
  %i.f = tail call noundef i32 @_ZN10lfDatabase4LoadEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %_ZL15g_strdup_inlinePKc.exit

_ZL15g_strdup_inlinePKc.exit:                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.a, i64 noundef 4096)
  %i.g = call ptr @g_file_parse_name(ptr noundef nonnull %i.a) ; 2 uses
  %i.h = call ptr @g_file_get_parent(ptr noundef %i.g)
  %i.i = call ptr @g_file_get_path(ptr noundef %i.h) ; 3 uses
  call void @g_object_unref(ptr noundef %i.g)
  %i.j = call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null) ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !416
  call void @g_free(ptr noundef %i.k)
  %i.l = call noalias ptr @g_strdup(ptr noundef %i.j)
  store ptr %i.l, ptr %i.d, align 8, !tbaa !416
  %i.m = call noundef i32 @_ZN10lfDatabase4LoadEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZL15g_strdup_inlinePKc.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef %i.j)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !416
  call void @g_free(ptr noundef %i.n)
  %i.o = call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.i, ptr noundef nonnull @.str.14, ptr noundef null)
  store ptr %i.o, ptr %i.d, align 8, !tbaa !416
  %i.p = call noundef i32 @_ZN10lfDatabase4LoadEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #33
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !416
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %_ZL15g_strdup_inlinePKc.exit
  call void @g_free(ptr noundef %i.j)
  call void @g_free(ptr noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZN10lfDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN10lfDatabase4LoadEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @g_file_parse_name(ptr noundef) local_unnamed_addr #4

declare ptr @g_file_get_path(ptr noundef) local_unnamed_addr #4

end_hunk_0
