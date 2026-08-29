Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_small_kernel_nn?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dgemm_small_kernel_nn:bb.a
  %i.acy = shufflevector <2 x double> %i.acx, <2 x double> poison, <8 x i32> zeroinitializer
  %i.acz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.acv, <8 x double> %i.acy, <8 x double> %i.acs) ; 3 uses
  %i.ada = add nuw nsw i64 %.827633257.us, 8      ; 2 uses
  %niter4401.next.7 = add nuw nsw i64 %niter4401, 8 ; 2 uses
  %niter4401.ncmp.7 = icmp eq i64 %niter4401.next.7, %unroll_iter4400
  br i1 %niter4401.ncmp.7, label %._crit_edge3259.us.unr-lcssa, label %.preheader3019.us.new, !llvm.loop !82

._crit_edge3259.us.unr-lcssa:                     ; preds = %.preheader3019.us.new
  br i1 %lcmp.mod4397.not, label %._crit_edge3259.us, label %.epil.preheader4394

.epil.preheader4394:                              ; preds = %._crit_edge3259.us.unr-lcssa, %.preheader3019.us
  %.827633257.us.epil.init = phi i64 [ 0, %.preheader3019.us ], [ %i.ada, %._crit_edge3259.us.unr-lcssa ]
  %.028563256.us.epil.init = phi <8 x double> [ zeroinitializer, %.preheader3019.us ], [ %i.acz, %._crit_edge3259.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4399)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader4394
  %.827633257.us.epil = phi i64 [ %.827633257.us.epil.init, %.epil.preheader4394 ], [ %i.adh, %bb.g ] ; 3 uses
  %.028563256.us.epil = phi <8 x double> [ %.028563256.us.epil.init, %.epil.preheader4394 ], [ %i.adg, %bb.g ]
  %epil.iter4396 = phi i64 [ 0, %.epil.preheader4394 ], [ %epil.iter4396.next, %bb.g ]
  %i.adb = mul nsw i64 %.827633257.us.epil, %4
  %gep3255.us.epil = getelementptr [8 x i8], ptr %invariant.gep3254, i64 %i.adb
  %i.adc = load <8 x double>, ptr %gep3255.us.epil, align 1, !tbaa !8
  %gep3262.us.epil = getelementptr [8 x i8], ptr %invariant.gep3261.us, i64 %.827633257.us.epil
  %i.add = load double, ptr %gep3262.us.epil, align 1, !tbaa !8
  %i.ade = insertelement <2 x double> poison, double %i.add, i64 0
  %i.adf = shufflevector <2 x double> %i.ade, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.adc, <8 x double> %i.adf, <8 x double> %.028563256.us.epil) ; 2 uses
  %i.adh = add nuw nsw i64 %.827633257.us.epil, 1
  %epil.iter4396.next = add i64 %epil.iter4396, 1 ; 2 uses
  %epil.iter4396.cmp.not = icmp eq i64 %epil.iter4396.next, %xtraiter4395
  br i1 %epil.iter4396.cmp.not, label %._crit_edge3259.us, label %bb.g, !llvm.loop !83

._crit_edge3259.us:                               ; preds = %bb.g, %._crit_edge3259.us.unr-lcssa
  %.lcssa4279 = phi <8 x double> [ %i.acz, %._crit_edge3259.us.unr-lcssa ], [ %i.adg, %bb.g ]
  %i.adi = fmul <8 x double> %i.k, %.lcssa4279
  %i.adj = mul nsw i64 %.83265.us, %10
  %gep3264.us = getelementptr [8 x i8], ptr %invariant.gep3225, i64 %i.adj ; 2 uses
  %i.adk = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3264.us, <8 x double> %i.m, <8 x double> %i.adi) #9, !srcloc !84
  store <8 x double> %i.adk, ptr %gep3264.us, align 1, !tbaa !8
  %i.adl = add i64 %.83265.us, 1                  ; 2 uses
  %exitcond3701.not = icmp eq i64 %i.adl, %1
  br i1 %exitcond3701.not, label %._crit_edge3266, label %.preheader3019.us, !llvm.loop !85

.preheader3020:                                   ; preds = %.preheader3020.lr.ph, %._crit_edge3245
  %.73252 = phi i64 [ %.6.lcssa, %.preheader3020.lr.ph ], [ %i.agl, %._crit_edge3245 ] ; 5 uses
  br i1 %i.ls, label %.lr.ph3244, label %.preheader3020.._crit_edge3245_crit_edge

.preheader3020.._crit_edge3245_crit_edge:         ; preds = %.preheader3020
  %.pre3766 = add nuw nsw i64 %.73252, 1
  br label %._crit_edge3245

.lr.ph3244:                                       ; preds = %.preheader3020
  %i.adm = mul nsw i64 %.73252, %7                ; 5 uses
  %i.adn = add nuw nsw i64 %.73252, 1             ; 2 uses
  %i.ado = mul nsw i64 %i.adn, %7                 ; 5 uses
  br i1 %i.lw, label %.epil.preheader4385, label %.lr.ph3244.new

.lr.ph3244.new:                                   ; preds = %.lr.ph3244, %.lr.ph3244.new
  %.727623243 = phi i64 [ %i.afs, %.lr.ph3244.new ], [ 0, %.lr.ph3244 ] ; 6 uses
  %.028543242 = phi <8 x double> [ %i.afq, %.lr.ph3244.new ], [ zeroinitializer, %.lr.ph3244 ]
  %.028553241 = phi <8 x double> [ %i.afr, %.lr.ph3244.new ], [ zeroinitializer, %.lr.ph3244 ]
  %niter4393 = phi i64 [ %niter4393.next.3, %.lr.ph3244.new ], [ 0, %.lr.ph3244 ]
  %i.adp = mul nsw i64 %.727623243, %4
  %gep3240 = getelementptr [8 x i8], ptr %invariant.gep3239, i64 %i.adp
  %i.adq = load <8 x double>, ptr %gep3240, align 1, !tbaa !8 ; 2 uses
  %i.adr = getelementptr [8 x i8], ptr %6, i64 %.727623243 ; 2 uses
  %i.ads = getelementptr [8 x i8], ptr %i.adr, i64 %i.adm
  %i.adt = load double, ptr %i.ads, align 1, !tbaa !8
  %i.adu = insertelement <2 x double> poison, double %i.adt, i64 0
  %i.adv = shufflevector <2 x double> %i.adu, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adw = getelementptr [8 x i8], ptr %i.adr, i64 %i.ado
  %i.adx = load double, ptr %i.adw, align 1, !tbaa !8
  %i.ady = insertelement <2 x double> poison, double %i.adx, i64 0
  %i.adz = shufflevector <2 x double> %i.ady, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aea = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.adq, <8 x double> %i.adv, <8 x double> %.028543242)
  %i.aeb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.adq, <8 x double> %i.adz, <8 x double> %.028553241)
  %i.aec = or disjoint i64 %.727623243, 1         ; 2 uses
  %i.aed = mul nsw i64 %i.aec, %4
  %gep3240.1 = getelementptr [8 x i8], ptr %invariant.gep3239, i64 %i.aed
  %i.aee = load <8 x double>, ptr %gep3240.1, align 1, !tbaa !8 ; 2 uses
  %i.aef = getelementptr [8 x i8], ptr %6, i64 %i.aec ; 2 uses
  %i.aeg = getelementptr [8 x i8], ptr %i.aef, i64 %i.adm
  %i.aeh = load double, ptr %i.aeg, align 1, !tbaa !8
  %i.aei = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.aej = shufflevector <2 x double> %i.aei, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aek = getelementptr [8 x i8], ptr %i.aef, i64 %i.ado
  %i.ael = load double, ptr %i.aek, align 1, !tbaa !8
  %i.aem = insertelement <2 x double> poison, double %i.ael, i64 0
  %i.aen = shufflevector <2 x double> %i.aem, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aeo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aee, <8 x double> %i.aej, <8 x double> %i.aea)
  %i.aep = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aee, <8 x double> %i.aen, <8 x double> %i.aeb)
  %i.aeq = or disjoint i64 %.727623243, 2         ; 2 uses
  %i.aer = mul nsw i64 %i.aeq, %4
  %gep3240.2 = getelementptr [8 x i8], ptr %invariant.gep3239, i64 %i.aer
  %i.aes = load <8 x double>, ptr %gep3240.2, align 1, !tbaa !8 ; 2 uses
  %i.aet = getelementptr [8 x i8], ptr %6, i64 %i.aeq ; 2 uses
  %i.aeu = getelementptr [8 x i8], ptr %i.aet, i64 %i.adm
  %i.aev = load double, ptr %i.aeu, align 1, !tbaa !8
  %i.aew = insertelement <2 x double> poison, double %i.aev, i64 0
  %i.aex = shufflevector <2 x double> %i.aew, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aey = getelementptr [8 x i8], ptr %i.aet, i64 %i.ado
  %i.aez = load double, ptr %i.aey, align 1, !tbaa !8
  %i.afa = insertelement <2 x double> poison, double %i.aez, i64 0
  %i.afb = shufflevector <2 x double> %i.afa, <2 x double> poison, <8 x i32> zeroinitializer
  %i.afc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aes, <8 x double> %i.aex, <8 x double> %i.aeo)
  %i.afd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aes, <8 x double> %i.afb, <8 x double> %i.aep)
  %i.afe = or disjoint i64 %.727623243, 3         ; 2 uses
  %i.aff = mul nsw i64 %i.afe, %4
  %gep3240.3 = getelementptr [8 x i8], ptr %invariant.gep3239, i64 %i.aff
  %i.afg = load <8 x double>, ptr %gep3240.3, align 1, !tbaa !8 ; 2 uses
  %i.afh = getelementptr [8 x i8], ptr %6, i64 %i.afe ; 2 uses
  %i.afi = getelementptr [8 x i8], ptr %i.afh, i64 %i.adm
  %i.afj = load double, ptr %i.afi, align 1, !tbaa !8
  %i.afk = insertelement <2 x double> poison, double %i.afj, i64 0
  %i.afl = shufflevector <2 x double> %i.afk, <2 x double> poison, <8 x i32> zeroinitializer
  %i.afm = getelementptr [8 x i8], ptr %i.afh, i64 %i.ado
  %i.afn = load double, ptr %i.afm, align 1, !tbaa !8
  %i.afo = insertelement <2 x double> poison, double %i.afn, i64 0
  %i.afp = shufflevector <2 x double> %i.afo, <2 x double> poison, <8 x i32> zeroinitializer
  %i.afq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.afg, <8 x double> %i.afl, <8 x double> %i.afc) ; 3 uses
  %i.afr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.afg, <8 x double> %i.afp, <8 x double> %i.afd) ; 3 uses
  %i.afs = add nuw nsw i64 %.727623243, 4         ; 2 uses
  %niter4393.next.3 = add nuw nsw i64 %niter4393, 4 ; 2 uses
  %niter4393.ncmp.3 = icmp eq i64 %niter4393.next.3, %unroll_iter4392
  br i1 %niter4393.ncmp.3, label %._crit_edge3245.loopexit.unr-lcssa, label %.lr.ph3244.new, !llvm.loop !86

._crit_edge3245.loopexit.unr-lcssa:               ; preds = %.lr.ph3244.new
  br i1 %lcmp.mod4388.not, label %._crit_edge3245.loopexit, label %.epil.preheader4385

.epil.preheader4385:                              ; preds = %._crit_edge3245.loopexit.unr-lcssa, %.lr.ph3244
  %.727623243.epil.init = phi i64 [ 0, %.lr.ph3244 ], [ %i.afs, %._crit_edge3245.loopexit.unr-lcssa ]
  %.028543242.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3244 ], [ %i.afq, %._crit_edge3245.loopexit.unr-lcssa ]
  %.028553241.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3244 ], [ %i.afr, %._crit_edge3245.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4391)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader4385
  %.727623243.epil = phi i64 [ %.727623243.epil.init, %.epil.preheader4385 ], [ %i.agg, %bb.h ] ; 3 uses
  %.028543242.epil = phi <8 x double> [ %.028543242.epil.init, %.epil.preheader4385 ], [ %i.age, %bb.h ]
  %.028553241.epil = phi <8 x double> [ %.028553241.epil.init, %.epil.preheader4385 ], [ %i.agf, %bb.h ]
  %epil.iter4387 = phi i64 [ 0, %.epil.preheader4385 ], [ %epil.iter4387.next, %bb.h ]
  %i.aft = mul nsw i64 %.727623243.epil, %4
  %gep3240.epil = getelementptr [8 x i8], ptr %invariant.gep3239, i64 %i.aft
  %i.afu = load <8 x double>, ptr %gep3240.epil, align 1, !tbaa !8 ; 2 uses
  %i.afv = getelementptr [8 x i8], ptr %6, i64 %.727623243.epil ; 2 uses
  %i.afw = getelementptr [8 x i8], ptr %i.afv, i64 %i.adm
  %i.afx = load double, ptr %i.afw, align 1, !tbaa !8
  %i.afy = insertelement <2 x double> poison, double %i.afx, i64 0
  %i.afz = shufflevector <2 x double> %i.afy, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aga = getelementptr [8 x i8], ptr %i.afv, i64 %i.ado
  %i.agb = load double, ptr %i.aga, align 1, !tbaa !8
  %i.agc = insertelement <2 x double> poison, double %i.agb, i64 0
  %i.agd = shufflevector <2 x double> %i.agc, <2 x double> poison, <8 x i32> zeroinitializer
  %i.age = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.afu, <8 x double> %i.afz, <8 x double> %.028543242.epil) ; 2 uses
  %i.agf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.afu, <8 x double> %i.agd, <8 x double> %.028553241.epil) ; 2 uses
  %i.agg = add nuw nsw i64 %.727623243.epil, 1
  %epil.iter4387.next = add i64 %epil.iter4387, 1 ; 2 uses
  %epil.iter4387.cmp.not = icmp eq i64 %epil.iter4387.next, %xtraiter4386
  br i1 %epil.iter4387.cmp.not, label %._crit_edge3245.loopexit, label %bb.h, !llvm.loop !87

._crit_edge3245.loopexit:                         ; preds = %bb.h, %._crit_edge3245.loopexit.unr-lcssa
  %.lcssa4277 = phi <8 x double> [ %i.afq, %._crit_edge3245.loopexit.unr-lcssa ], [ %i.age, %bb.h ]
  %.lcssa4276 = phi <8 x double> [ %i.afr, %._crit_edge3245.loopexit.unr-lcssa ], [ %i.agf, %bb.h ]
  %.pre3732 = fmul <8 x double> %i.k, %.lcssa4277
  %.pre3734 = fmul <8 x double> %i.k, %.lcssa4276
  br label %._crit_edge3245

._crit_edge3245:                                  ; preds = %.preheader3020.._crit_edge3245_crit_edge, %._crit_edge3245.loopexit
  %.pre-phi3767 = phi i64 [ %.pre3766, %.preheader3020.._crit_edge3245_crit_edge ], [ %i.adn, %._crit_edge3245.loopexit ]
  %.pre-phi3735 = phi <8 x double> [ %i.lt, %.preheader3020.._crit_edge3245_crit_edge ], [ %.pre3734, %._crit_edge3245.loopexit ]
  %.pre-phi3733 = phi <8 x double> [ %i.lt, %.preheader3020.._crit_edge3245_crit_edge ], [ %.pre3732, %._crit_edge3245.loopexit ]
  %i.agh = mul nsw i64 %.73252, %10
  %gep3249 = getelementptr [8 x i8], ptr %invariant.gep3225, i64 %i.agh ; 2 uses
  %i.agi = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3249, <8 x double> %i.m, <8 x double> %.pre-phi3733) #9, !srcloc !88
  store <8 x double> %i.agi, ptr %gep3249, align 1, !tbaa !8
  %i.agj = mul nsw i64 %.pre-phi3767, %10
  %gep3251 = getelementptr [8 x i8], ptr %invariant.gep3225, i64 %i.agj ; 2 uses
  %i.agk = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3251, <8 x double> %i.m, <8 x double> %.pre-phi3735) #9, !srcloc !89
  store <8 x double> %i.agk, ptr %gep3251, align 1, !tbaa !8
  %i.agl = add nuw nsw i64 %.73252, 2             ; 3 uses
  %i.agm = icmp slt i64 %i.agl, %i.i
  br i1 %i.agm, label %.preheader3020, label %.preheader3022, !llvm.loop !90

.preheader3019:                                   ; preds = %.preheader3019.lr.ph, %.preheader3019
  %.83265 = phi i64 [ %i.agp, %.preheader3019 ], [ %.7.lcssa, %.preheader3019.lr.ph ] ; 2 uses
  %i.agn = mul nsw i64 %.83265, %10
  %gep3264 = getelementptr [8 x i8], ptr %invariant.gep3225, i64 %i.agn ; 2 uses
  %i.ago = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3264, <8 x double> %i.m, <8 x double> %i.lt) #9, !srcloc !84
  store <8 x double> %i.ago, ptr %gep3264, align 1, !tbaa !8
  %i.agp = add i64 %.83265, 1                     ; 2 uses
  %exitcond3699.not = icmp eq i64 %i.agp, %1
  br i1 %exitcond3699.not, label %._crit_edge3266, label %.preheader3019, !llvm.loop !85

._crit_edge3266:                                  ; preds = %.preheader3019, %._crit_edge3259.us, %.preheader3022
  %i.agq = add nuw nsw i64 %.23267, 8             ; 3 uses
  %i.agr = icmp slt i64 %i.agq, %i.c
  br i1 %i.agr, label %.preheader3024, label %._crit_edge3268, !llvm.loop !91

._crit_edge3268:                                  ; preds = %._crit_edge3266, %.preheader3025
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader3025 ], [ %i.agq, %._crit_edge3266 ] ; 10 uses
  %i.ags = sub nsw i64 %0, %.2.lcssa              ; 7 uses
  %i.agt = trunc i64 %i.ags to i32                ; 4 uses
  %.not = icmp eq i32 %i.agt, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge3268
  %i.agu = icmp sgt i32 %i.agt, 4
  %i.agv = icmp slt i64 %2, 16
  %or.cond = or i1 %i.agv, %i.agu
  br i1 %or.cond, label %bb.j, label %.lr.ph3274

bb.j:                                             ; preds = %bb.i
  %i.agw = and i64 %i.ags, 4294967295
  %notmask2971 = shl nsw i64 -1, %i.agw
  %i.agx = trunc i64 %notmask2971 to i8
  %i.agy = xor i8 %i.agx, -1                      ; 12 uses
  %invariant.gep3495 = getelementptr [8 x i8], ptr %9, i64 %.2.lcssa ; 9 uses
  %i.agz = icmp sgt i64 %i.g, 0
  br i1 %i.agz, label %.preheader2996.lr.ph, label %.preheader2995

.preheader2996.lr.ph:                             ; preds = %bb.j
  %invariant.gep3478 = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 3 uses
  %i.aha = icmp sgt i64 %2, 0
  %i.ahb = bitcast i8 %i.agy to <8 x i1>          ; 9 uses
  %xtraiter4410 = and i64 %2, 1
  %i.ahc = icmp eq i64 %2, 1
  %unroll_iter4420 = and i64 %2, 9223372036854775806
  %lcmp.mod4412.not = icmp eq i64 %xtraiter4410, 0
  %lcmp.mod4419 = trunc i64 %2 to i1
  br label %.preheader2996

.preheader2996:                                   ; preds = %.preheader2996.lr.ph, %._crit_edge3488
  %.93507 = phi i64 [ 0, %.preheader2996.lr.ph ], [ %i.ami, %._crit_edge3488 ] ; 13 uses
  br i1 %i.aha, label %.lr.ph3487, label %.preheader2996.._crit_edge3488_crit_edge

.preheader2996.._crit_edge3488_crit_edge:         ; preds = %.preheader2996
  %.pre3768 = or disjoint i64 %.93507, 1
  %.pre3770 = add nuw nsw i64 %.93507, 2
  %.pre3772 = add nuw nsw i64 %.93507, 3
  %.pre3774 = add nuw nsw i64 %.93507, 4
  %.pre3776 = add nuw nsw i64 %.93507, 5
  br label %._crit_edge3488

.lr.ph3487:                                       ; preds = %.preheader2996
  %i.ahd = mul nsw i64 %.93507, %7                ; 3 uses
  %i.ahe = or disjoint i64 %.93507, 1             ; 3 uses
  %i.ahf = mul nsw i64 %i.ahe, %7                 ; 3 uses
  %i.ahg = add nuw nsw i64 %.93507, 2             ; 3 uses
  %i.ahh = mul nsw i64 %i.ahg, %7                 ; 3 uses
  %i.ahi = add nuw nsw i64 %.93507, 3             ; 3 uses
  %i.ahj = mul nsw i64 %i.ahi, %7                 ; 3 uses
  %i.ahk = add nuw nsw i64 %.93507, 4             ; 3 uses
  %i.ahl = mul nsw i64 %i.ahk, %7                 ; 3 uses
  %i.ahm = add nuw nsw i64 %.93507, 5             ; 3 uses
  %i.ahn = mul nsw i64 %i.ahm, %7                 ; 3 uses
  br i1 %i.ahc, label %.epil.preheader4409, label %.lr.ph3487.new

.preheader2995:                                   ; preds = %._crit_edge3488, %bb.j
  %.9.lcssa = phi i64 [ 0, %bb.j ], [ %i.ami, %._crit_edge3488 ] ; 3 uses
  %i.aho = icmp slt i64 %.9.lcssa, %i.i
  br i1 %i.aho, label %.preheader2994.lr.ph, label %.preheader2993

.preheader2994.lr.ph:                             ; preds = %.preheader2995
  %invariant.gep3509 = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 5 uses
  %i.ahp = icmp sgt i64 %2, 0
  %i.ahq = bitcast i8 %i.agy to <8 x i1>          ; 7 uses
  %i.ahr = add i64 %2, -1
  %xtraiter4423 = and i64 %2, 3                   ; 3 uses
  %i.ahs = icmp ult i64 %i.ahr, 3
  %unroll_iter4429 = and i64 %2, 9223372036854775804
  %lcmp.mod4425.not = icmp eq i64 %xtraiter4423, 0
  %lcmp.mod4428 = icmp ne i64 %xtraiter4423, 0
  br label %.preheader2994

.lr.ph3487.new:                                   ; preds = %.lr.ph3487, %.lr.ph3487.new
  %.927643486 = phi i64 [ %i.aki, %.lr.ph3487.new ], [ 0, %.lr.ph3487 ] ; 4 uses
  %.028573485 = phi <8 x double> [ %i.akc, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %.028583484 = phi <8 x double> [ %i.akd, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %.028593483 = phi <8 x double> [ %i.ake, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %.028603482 = phi <8 x double> [ %i.akf, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %.028773481 = phi <8 x double> [ %i.akg, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %.028783480 = phi <8 x double> [ %i.akh, %.lr.ph3487.new ], [ zeroinitializer, %.lr.ph3487 ]
  %niter4421 = phi i64 [ %niter4421.next.1, %.lr.ph3487.new ], [ 0, %.lr.ph3487 ]
  %i.aht = mul nsw i64 %.927643486, %4
  %gep3479 = getelementptr [8 x i8], ptr %invariant.gep3478, i64 %i.aht
  %i.ahu = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3479, <8 x i1> %i.ahb, <8 x double> zeroinitializer) ; 6 uses
  %i.ahv = getelementptr [8 x i8], ptr %6, i64 %.927643486 ; 6 uses
  %i.ahw = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahd
  %i.ahx = load double, ptr %i.ahw, align 1, !tbaa !8
  %i.ahy = insertelement <2 x double> poison, double %i.ahx, i64 0
  %i.ahz = shufflevector <2 x double> %i.ahy, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aia = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahf
  %i.aib = load double, ptr %i.aia, align 1, !tbaa !8
  %i.aic = insertelement <2 x double> poison, double %i.aib, i64 0
  %i.aid = shufflevector <2 x double> %i.aic, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aie = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahh
  %i.aif = load double, ptr %i.aie, align 1, !tbaa !8
  %i.aig = insertelement <2 x double> poison, double %i.aif, i64 0
  %i.aih = shufflevector <2 x double> %i.aig, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aii = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahj
  %i.aij = load double, ptr %i.aii, align 1, !tbaa !8
  %i.aik = insertelement <2 x double> poison, double %i.aij, i64 0
  %i.ail = shufflevector <2 x double> %i.aik, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aim = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahl
  %i.ain = load double, ptr %i.aim, align 1, !tbaa !8
  %i.aio = insertelement <2 x double> poison, double %i.ain, i64 0
  %i.aip = shufflevector <2 x double> %i.aio, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aiq = getelementptr [8 x i8], ptr %i.ahv, i64 %i.ahn
  %i.air = load double, ptr %i.aiq, align 1, !tbaa !8
  %i.ais = insertelement <2 x double> poison, double %i.air, i64 0
  %i.ait = shufflevector <2 x double> %i.ais, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aiu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.ahz, <8 x double> %.028573485)
  %i.aiv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.aid, <8 x double> %.028583484)
  %i.aiw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.aih, <8 x double> %.028593483)
  %i.aix = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.ail, <8 x double> %.028603482)
  %i.aiy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.aip, <8 x double> %.028773481)
  %i.aiz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahu, <8 x double> %i.ait, <8 x double> %.028783480)
  %i.aja = or disjoint i64 %.927643486, 1         ; 2 uses
  %i.ajb = mul nsw i64 %i.aja, %4
  %gep3479.1 = getelementptr [8 x i8], ptr %invariant.gep3478, i64 %i.ajb
  %i.ajc = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3479.1, <8 x i1> %i.ahb, <8 x double> zeroinitializer) ; 6 uses
  %i.ajd = getelementptr [8 x i8], ptr %6, i64 %i.aja ; 6 uses
  %i.aje = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahd
  %i.ajf = load double, ptr %i.aje, align 1, !tbaa !8
  %i.ajg = insertelement <2 x double> poison, double %i.ajf, i64 0
  %i.ajh = shufflevector <2 x double> %i.ajg, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aji = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahf
  %i.ajj = load double, ptr %i.aji, align 1, !tbaa !8
  %i.ajk = insertelement <2 x double> poison, double %i.ajj, i64 0
  %i.ajl = shufflevector <2 x double> %i.ajk, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajm = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahh
  %i.ajn = load double, ptr %i.ajm, align 1, !tbaa !8
  %i.ajo = insertelement <2 x double> poison, double %i.ajn, i64 0
  %i.ajp = shufflevector <2 x double> %i.ajo, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajq = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahj
  %i.ajr = load double, ptr %i.ajq, align 1, !tbaa !8
  %i.ajs = insertelement <2 x double> poison, double %i.ajr, i64 0
  %i.ajt = shufflevector <2 x double> %i.ajs, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aju = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahl
  %i.ajv = load double, ptr %i.aju, align 1, !tbaa !8
  %i.ajw = insertelement <2 x double> poison, double %i.ajv, i64 0
  %i.ajx = shufflevector <2 x double> %i.ajw, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajy = getelementptr [8 x i8], ptr %i.ajd, i64 %i.ahn
  %i.ajz = load double, ptr %i.ajy, align 1, !tbaa !8
  %i.aka = insertelement <2 x double> poison, double %i.ajz, i64 0
  %i.akb = shufflevector <2 x double> %i.aka, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.ajh, <8 x double> %i.aiu) ; 3 uses
  %i.akd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.ajl, <8 x double> %i.aiv) ; 3 uses
  %i.ake = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.ajp, <8 x double> %i.aiw) ; 3 uses
  %i.akf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.ajt, <8 x double> %i.aix) ; 3 uses
  %i.akg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.ajx, <8 x double> %i.aiy) ; 3 uses
  %i.akh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajc, <8 x double> %i.akb, <8 x double> %i.aiz) ; 3 uses
  %i.aki = add nuw nsw i64 %.927643486, 2         ; 2 uses
  %niter4421.next.1 = add nuw nsw i64 %niter4421, 2 ; 2 uses
  %niter4421.ncmp.1 = icmp eq i64 %niter4421.next.1, %unroll_iter4420
  br i1 %niter4421.ncmp.1, label %._crit_edge3488.loopexit.unr-lcssa, label %.lr.ph3487.new, !llvm.loop !92

._crit_edge3488.loopexit.unr-lcssa:               ; preds = %.lr.ph3487.new
  br i1 %lcmp.mod4412.not, label %._crit_edge3488, label %.epil.preheader4409

.epil.preheader4409:                              ; preds = %._crit_edge3488.loopexit.unr-lcssa, %.lr.ph3487
  %.927643486.epil.init = phi i64 [ 0, %.lr.ph3487 ], [ %i.aki, %._crit_edge3488.loopexit.unr-lcssa ] ; 2 uses
  %.028573485.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.akc, %._crit_edge3488.loopexit.unr-lcssa ]
  %.028583484.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.akd, %._crit_edge3488.loopexit.unr-lcssa ]
  %.028593483.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.ake, %._crit_edge3488.loopexit.unr-lcssa ]
  %.028603482.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.akf, %._crit_edge3488.loopexit.unr-lcssa ]
  %.028773481.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.akg, %._crit_edge3488.loopexit.unr-lcssa ]
  %.028783480.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3487 ], [ %i.akh, %._crit_edge3488.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4419)
  %i.akj = mul nsw i64 %.927643486.epil.init, %4
  %gep3479.epil = getelementptr [8 x i8], ptr %invariant.gep3478, i64 %i.akj
  %i.akk = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3479.epil, <8 x i1> %i.ahb, <8 x double> zeroinitializer) ; 6 uses
  %i.akl = getelementptr [8 x i8], ptr %6, i64 %.927643486.epil.init ; 6 uses
  %i.akm = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahd
  %i.akn = load double, ptr %i.akm, align 1, !tbaa !8
  %i.ako = insertelement <2 x double> poison, double %i.akn, i64 0
  %i.akp = shufflevector <2 x double> %i.ako, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akq = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahf
  %i.akr = load double, ptr %i.akq, align 1, !tbaa !8
  %i.aks = insertelement <2 x double> poison, double %i.akr, i64 0
  %i.akt = shufflevector <2 x double> %i.aks, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aku = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahh
  %i.akv = load double, ptr %i.aku, align 1, !tbaa !8
  %i.akw = insertelement <2 x double> poison, double %i.akv, i64 0
  %i.akx = shufflevector <2 x double> %i.akw, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aky = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahj
  %i.akz = load double, ptr %i.aky, align 1, !tbaa !8
  %i.ala = insertelement <2 x double> poison, double %i.akz, i64 0
  %i.alb = shufflevector <2 x double> %i.ala, <2 x double> poison, <8 x i32> zeroinitializer
  %i.alc = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahl
  %i.ald = load double, ptr %i.alc, align 1, !tbaa !8
  %i.ale = insertelement <2 x double> poison, double %i.ald, i64 0
  %i.alf = shufflevector <2 x double> %i.ale, <2 x double> poison, <8 x i32> zeroinitializer
  %i.alg = getelementptr [8 x i8], ptr %i.akl, i64 %i.ahn
  %i.alh = load double, ptr %i.alg, align 1, !tbaa !8
  %i.ali = insertelement <2 x double> poison, double %i.alh, i64 0
  %i.alj = shufflevector <2 x double> %i.ali, <2 x double> poison, <8 x i32> zeroinitializer
  %i.alk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.akk, <8 x double> %i.akp, <8 x double> %.028573485.epil.init)
  %i.all = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.akk, <8 x double> %i.akt, <8 x double> %.028583484.epil.init)
  %i.alm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.akk, <8 x double> %i.akx, <8 x double> %.028593483.epil.init)
end_hunk_0
begin_hunk_1_@dgemm_small_kernel_nn:bb.a
  %i.aoj = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3510.3, <8 x i1> %i.ahq, <8 x double> zeroinitializer) ; 2 uses
  %i.aok = getelementptr [8 x i8], ptr %6, i64 %i.aoh ; 2 uses
  %i.aol = getelementptr [8 x i8], ptr %i.aok, i64 %i.amk
  %i.aom = load double, ptr %i.aol, align 1, !tbaa !8
  %i.aon = insertelement <2 x double> poison, double %i.aom, i64 0
  %i.aoo = shufflevector <2 x double> %i.aon, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aop = getelementptr [8 x i8], ptr %i.aok, i64 %i.amm
  %i.aoq = load double, ptr %i.aop, align 1, !tbaa !8
  %i.aor = insertelement <2 x double> poison, double %i.aoq, i64 0
  %i.aos = shufflevector <2 x double> %i.aor, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aot = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aoj, <8 x double> %i.aoo, <8 x double> %i.aof) ; 3 uses
  %i.aou = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aoj, <8 x double> %i.aos, <8 x double> %i.aog) ; 3 uses
  %i.aov = add nuw nsw i64 %.1027653513, 4        ; 2 uses
  %niter4430.next.3 = add nuw nsw i64 %niter4430, 4 ; 2 uses
  %niter4430.ncmp.3 = icmp eq i64 %niter4430.next.3, %unroll_iter4429
  br i1 %niter4430.ncmp.3, label %._crit_edge3515.loopexit.unr-lcssa, label %.lr.ph3514.new, !llvm.loop !100

._crit_edge3515.loopexit.unr-lcssa:               ; preds = %.lr.ph3514.new
  br i1 %lcmp.mod4425.not, label %._crit_edge3515, label %.epil.preheader4422

.epil.preheader4422:                              ; preds = %._crit_edge3515.loopexit.unr-lcssa, %.lr.ph3514
  %.1027653513.epil.init = phi i64 [ 0, %.lr.ph3514 ], [ %i.aov, %._crit_edge3515.loopexit.unr-lcssa ]
  %.028793512.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3514 ], [ %i.aot, %._crit_edge3515.loopexit.unr-lcssa ]
  %.028803511.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3514 ], [ %i.aou, %._crit_edge3515.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4428)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader4422
  %.1027653513.epil = phi i64 [ %.1027653513.epil.init, %.epil.preheader4422 ], [ %i.apj, %bb.k ] ; 3 uses
  %.028793512.epil = phi <8 x double> [ %.028793512.epil.init, %.epil.preheader4422 ], [ %i.aph, %bb.k ]
  %.028803511.epil = phi <8 x double> [ %.028803511.epil.init, %.epil.preheader4422 ], [ %i.api, %bb.k ]
  %epil.iter4424 = phi i64 [ 0, %.epil.preheader4422 ], [ %epil.iter4424.next, %bb.k ]
  %i.aow = mul nsw i64 %.1027653513.epil, %4
  %gep3510.epil = getelementptr [8 x i8], ptr %invariant.gep3509, i64 %i.aow
  %i.aox = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3510.epil, <8 x i1> %i.ahq, <8 x double> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [8 x i8], ptr %6, i64 %.1027653513.epil ; 2 uses
  %i.aoz = getelementptr [8 x i8], ptr %i.aoy, i64 %i.amk
  %i.apa = load double, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <2 x double> poison, double %i.apa, i64 0
  %i.apc = shufflevector <2 x double> %i.apb, <2 x double> poison, <8 x i32> zeroinitializer
  %i.apd = getelementptr [8 x i8], ptr %i.aoy, i64 %i.amm
  %i.ape = load double, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <2 x double> poison, double %i.ape, i64 0
  %i.apg = shufflevector <2 x double> %i.apf, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aph = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aox, <8 x double> %i.apc, <8 x double> %.028793512.epil) ; 2 uses
  %i.api = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aox, <8 x double> %i.apg, <8 x double> %.028803511.epil) ; 2 uses
  %i.apj = add nuw nsw i64 %.1027653513.epil, 1
  %epil.iter4424.next = add i64 %epil.iter4424, 1 ; 2 uses
  %epil.iter4424.cmp.not = icmp eq i64 %epil.iter4424.next, %xtraiter4423
  br i1 %epil.iter4424.cmp.not, label %._crit_edge3515, label %bb.k, !llvm.loop !101

._crit_edge3515:                                  ; preds = %._crit_edge3515.loopexit.unr-lcssa, %bb.k, %.preheader2994.._crit_edge3515_crit_edge
  %.pre-phi3779 = phi i64 [ %.pre3778, %.preheader2994.._crit_edge3515_crit_edge ], [ %i.aml, %bb.k ], [ %i.aml, %._crit_edge3515.loopexit.unr-lcssa ]
  %.02880.lcssa = phi <8 x double> [ zeroinitializer, %.preheader2994.._crit_edge3515_crit_edge ], [ %i.aou, %._crit_edge3515.loopexit.unr-lcssa ], [ %i.api, %bb.k ]
  %.02879.lcssa = phi <8 x double> [ zeroinitializer, %.preheader2994.._crit_edge3515_crit_edge ], [ %i.aot, %._crit_edge3515.loopexit.unr-lcssa ], [ %i.aph, %bb.k ]
  %i.apk = fmul <8 x double> %i.k, %.02879.lcssa
  %i.apl = mul nsw i64 %.103522, %10
  %gep3519 = getelementptr [8 x i8], ptr %invariant.gep3495, i64 %i.apl ; 2 uses
  %i.apm = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3519, <8 x double> %i.m, i8 %i.agy, <8 x double> %i.apk) #9, !srcloc !102
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.apm, ptr align 1 %gep3519, <8 x i1> %i.ahq)
  %i.apn = fmul <8 x double> %i.k, %.02880.lcssa
  %i.apo = mul nsw i64 %.pre-phi3779, %10
  %gep3521 = getelementptr [8 x i8], ptr %invariant.gep3495, i64 %i.apo ; 2 uses
  %i.app = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3521, <8 x double> %i.m, i8 %i.agy, <8 x double> %i.apn) #9, !srcloc !103
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.app, ptr align 1 %gep3521, <8 x i1> %i.ahq)
  %i.apq = add nuw nsw i64 %.103522, 2            ; 3 uses
  %i.apr = icmp slt i64 %i.apq, %i.i
  br i1 %i.apr, label %.preheader2994, label %.preheader2993, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge3529
  %.113535 = phi i64 [ %.10.lcssa, %.preheader.lr.ph ], [ %i.ash, %._crit_edge3529 ] ; 3 uses
  br i1 %i.amo, label %.lr.ph3528, label %._crit_edge3529

.lr.ph3528:                                       ; preds = %.preheader
  %i.aps = mul nsw i64 %.113535, %7
  %invariant.gep3531 = getelementptr [8 x i8], ptr %6, i64 %i.aps ; 9 uses
  br i1 %i.amr, label %.epil.preheader4431, label %.lr.ph3528.new

.lr.ph3528.new:                                   ; preds = %.lr.ph3528, %.lr.ph3528.new
  %.1127663527 = phi i64 [ %i.arw, %.lr.ph3528.new ], [ 0, %.lr.ph3528 ] ; 10 uses
  %.028813526 = phi <8 x double> [ %i.arv, %.lr.ph3528.new ], [ zeroinitializer, %.lr.ph3528 ]
  %niter4438 = phi i64 [ %niter4438.next.7, %.lr.ph3528.new ], [ 0, %.lr.ph3528 ]
  %i.apt = mul nsw i64 %.1127663527, %4
  %gep3525 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.apt
  %i.apu = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %.1127663527
  %i.apv = load double, ptr %gep3532, align 1, !tbaa !8
  %i.apw = insertelement <2 x double> poison, double %i.apv, i64 0
  %i.apx = shufflevector <2 x double> %i.apw, <2 x double> poison, <8 x i32> zeroinitializer
  %i.apy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.apu, <8 x double> %i.apx, <8 x double> %.028813526)
  %i.apz = or disjoint i64 %.1127663527, 1        ; 2 uses
  %i.aqa = mul nsw i64 %i.apz, %4
  %gep3525.1 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.aqa
  %i.aqb = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.1, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.1 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.apz
  %i.aqc = load double, ptr %gep3532.1, align 1, !tbaa !8
  %i.aqd = insertelement <2 x double> poison, double %i.aqc, i64 0
  %i.aqe = shufflevector <2 x double> %i.aqd, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqb, <8 x double> %i.aqe, <8 x double> %i.apy)
  %i.aqg = or disjoint i64 %.1127663527, 2        ; 2 uses
  %i.aqh = mul nsw i64 %i.aqg, %4
  %gep3525.2 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.aqh
  %i.aqi = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.2, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.2 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.aqg
  %i.aqj = load double, ptr %gep3532.2, align 1, !tbaa !8
  %i.aqk = insertelement <2 x double> poison, double %i.aqj, i64 0
  %i.aql = shufflevector <2 x double> %i.aqk, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqi, <8 x double> %i.aql, <8 x double> %i.aqf)
  %i.aqn = or disjoint i64 %.1127663527, 3        ; 2 uses
  %i.aqo = mul nsw i64 %i.aqn, %4
  %gep3525.3 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.aqo
  %i.aqp = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.3, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.3 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.aqn
  %i.aqq = load double, ptr %gep3532.3, align 1, !tbaa !8
  %i.aqr = insertelement <2 x double> poison, double %i.aqq, i64 0
  %i.aqs = shufflevector <2 x double> %i.aqr, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqp, <8 x double> %i.aqs, <8 x double> %i.aqm)
  %i.aqu = or disjoint i64 %.1127663527, 4        ; 2 uses
  %i.aqv = mul nsw i64 %i.aqu, %4
  %gep3525.4 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.aqv
  %i.aqw = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.4, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.4 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.aqu
  %i.aqx = load double, ptr %gep3532.4, align 1, !tbaa !8
  %i.aqy = insertelement <2 x double> poison, double %i.aqx, i64 0
  %i.aqz = shufflevector <2 x double> %i.aqy, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ara = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqw, <8 x double> %i.aqz, <8 x double> %i.aqt)
  %i.arb = or disjoint i64 %.1127663527, 5        ; 2 uses
  %i.arc = mul nsw i64 %i.arb, %4
  %gep3525.5 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.arc
  %i.ard = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.5, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.5 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.arb
  %i.are = load double, ptr %gep3532.5, align 1, !tbaa !8
  %i.arf = insertelement <2 x double> poison, double %i.are, i64 0
  %i.arg = shufflevector <2 x double> %i.arf, <2 x double> poison, <8 x i32> zeroinitializer
  %i.arh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ard, <8 x double> %i.arg, <8 x double> %i.ara)
  %i.ari = or disjoint i64 %.1127663527, 6        ; 2 uses
  %i.arj = mul nsw i64 %i.ari, %4
  %gep3525.6 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.arj
  %i.ark = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.6, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.6 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.ari
  %i.arl = load double, ptr %gep3532.6, align 1, !tbaa !8
  %i.arm = insertelement <2 x double> poison, double %i.arl, i64 0
  %i.arn = shufflevector <2 x double> %i.arm, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aro = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ark, <8 x double> %i.arn, <8 x double> %i.arh)
  %i.arp = or disjoint i64 %.1127663527, 7        ; 2 uses
  %i.arq = mul nsw i64 %i.arp, %4
  %gep3525.7 = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.arq
  %i.arr = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.7, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.7 = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %i.arp
  %i.ars = load double, ptr %gep3532.7, align 1, !tbaa !8
  %i.art = insertelement <2 x double> poison, double %i.ars, i64 0
  %i.aru = shufflevector <2 x double> %i.art, <2 x double> poison, <8 x i32> zeroinitializer
  %i.arv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.arr, <8 x double> %i.aru, <8 x double> %i.aro) ; 3 uses
  %i.arw = add nuw nsw i64 %.1127663527, 8        ; 2 uses
  %niter4438.next.7 = add nuw nsw i64 %niter4438, 8 ; 2 uses
  %niter4438.ncmp.7 = icmp eq i64 %niter4438.next.7, %unroll_iter4437
  br i1 %niter4438.ncmp.7, label %._crit_edge3529.loopexit.unr-lcssa, label %.lr.ph3528.new, !llvm.loop !105

._crit_edge3529.loopexit.unr-lcssa:               ; preds = %.lr.ph3528.new
  br i1 %lcmp.mod4434.not, label %._crit_edge3529, label %.epil.preheader4431

.epil.preheader4431:                              ; preds = %._crit_edge3529.loopexit.unr-lcssa, %.lr.ph3528
  %.1127663527.epil.init = phi i64 [ 0, %.lr.ph3528 ], [ %i.arw, %._crit_edge3529.loopexit.unr-lcssa ]
  %.028813526.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3528 ], [ %i.arv, %._crit_edge3529.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4436)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4431
  %.1127663527.epil = phi i64 [ %.1127663527.epil.init, %.epil.preheader4431 ], [ %i.asd, %bb.l ] ; 3 uses
  %.028813526.epil = phi <8 x double> [ %.028813526.epil.init, %.epil.preheader4431 ], [ %i.asc, %bb.l ]
  %epil.iter4433 = phi i64 [ 0, %.epil.preheader4431 ], [ %epil.iter4433.next, %bb.l ]
  %i.arx = mul nsw i64 %.1127663527.epil, %4
  %gep3525.epil = getelementptr [8 x i8], ptr %invariant.gep3524, i64 %i.arx
  %i.ary = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3525.epil, <8 x i1> %i.amp, <8 x double> zeroinitializer)
  %gep3532.epil = getelementptr [8 x i8], ptr %invariant.gep3531, i64 %.1127663527.epil
  %i.arz = load double, ptr %gep3532.epil, align 1, !tbaa !8
  %i.asa = insertelement <2 x double> poison, double %i.arz, i64 0
  %i.asb = shufflevector <2 x double> %i.asa, <2 x double> poison, <8 x i32> zeroinitializer
  %i.asc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ary, <8 x double> %i.asb, <8 x double> %.028813526.epil) ; 2 uses
  %i.asd = add nuw nsw i64 %.1127663527.epil, 1
  %epil.iter4433.next = add i64 %epil.iter4433, 1 ; 2 uses
  %epil.iter4433.cmp.not = icmp eq i64 %epil.iter4433.next, %xtraiter4432
  br i1 %epil.iter4433.cmp.not, label %._crit_edge3529, label %bb.l, !llvm.loop !106

._crit_edge3529:                                  ; preds = %._crit_edge3529.loopexit.unr-lcssa, %bb.l, %.preheader
  %.02881.lcssa = phi <8 x double> [ zeroinitializer, %.preheader ], [ %i.arv, %._crit_edge3529.loopexit.unr-lcssa ], [ %i.asc, %bb.l ]
  %i.ase = fmul <8 x double> %i.k, %.02881.lcssa
  %i.asf = mul nsw i64 %.113535, %10
  %gep3534 = getelementptr [8 x i8], ptr %invariant.gep3495, i64 %i.asf ; 2 uses
  %i.asg = tail call <8 x double> asm "vfmadd231pd ($1), $2, $0 {$3}", "=v,r,v,^Yk,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3534, <8 x double> %i.m, i8 %i.agy, <8 x double> %i.ase) #9, !srcloc !107
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.asg, ptr align 1 %gep3534, <8 x i1> %i.amp)
  %i.ash = add i64 %.113535, 1                    ; 2 uses
  %exitcond3721.not = icmp eq i64 %i.ash, %1
  br i1 %exitcond3721.not, label %.loopexit, label %.preheader, !llvm.loop !108

.lr.ph3274:                                       ; preds = %bb.i
  %sext = shl i64 %i.ags, 32
  %i.asi = ashr exact i64 %sext, 29
  %i.asj = mul i64 %i.asi, %2
  %i.ask = tail call noalias ptr @malloc(i64 noundef %i.asj) #10 ; 27 uses
  %11 = and i64 %2, 9223372036854775800           ; 9 uses
  %i.asl = and i64 %2, 9223372036854775804
  %invariant.gep3270 = getelementptr [8 x i8], ptr %i.ask, i64 %2
  %12 = and i64 %i.ags, 4294967295
  %notmask = shl nsw i64 -1, %12
  %13 = trunc i64 %notmask to i8
  %14 = xor i8 %13, -1
  %i.asm = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 4 uses
  %i.asn = bitcast i8 %14 to <8 x i1>
  %i.aso = shufflevector <8 x i1> %i.asn, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.idx = mul nuw nsw i64 %2, 24
  %invariant.gep3276 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx
  %.idx2970 = shl nuw nsw i64 %2, 4
  %invariant.gep3278 = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.idx2970
  br label %bb.m

.preheader3018:                                   ; preds = %bb.r
  %15 = icmp slt i64 %i.atq, %2
  br i1 %15, label %.preheader3017.lr.ph, label %._crit_edge3284.split

.preheader3017.lr.ph:                             ; preds = %.preheader3018
  %i.asp = icmp sgt i32 %i.agt, 0
  %16 = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa
  br i1 %i.asp, label %.preheader3017.preheader, label %._crit_edge3284.split

.preheader3017.preheader:                         ; preds = %.preheader3017.lr.ph
  %wide.trip.count = and i64 %i.ags, 2147483647
  %i.asq = add nsw i64 %wide.trip.count, -1
  %xtraiter4403 = and i64 %i.ags, 7               ; 3 uses
  %i.asr = icmp ult i64 %i.asq, 7
  %unroll_iter4407 = and i64 %i.ags, 2147483640
  %lcmp.mod4405.not = icmp eq i64 %xtraiter4403, 0
  %lcmp.mod4406 = icmp ne i64 %xtraiter4403, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph3274, %bb.r
  %.1227673272 = phi i64 [ 0, %.lr.ph3274 ], [ %i.atq, %bb.r ] ; 9 uses
  %i.ass = mul nsw i64 %.1227673272, %4
  %i.ast = getelementptr [8 x i8], ptr %i.asm, i64 %i.ass
  %i.asu = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.ast, <4 x i1> %i.aso, <4 x double> zeroinitializer) ; 2 uses
  %i.asv = or disjoint i64 %.1227673272, 1
  %i.asw = mul nsw i64 %i.asv, %4
  %i.asx = getelementptr [8 x i8], ptr %i.asm, i64 %i.asw
  %i.asy = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.asx, <4 x i1> %i.aso, <4 x double> zeroinitializer) ; 2 uses
  %i.asz = or disjoint i64 %.1227673272, 2
  %i.ata = mul nsw i64 %i.asz, %4
  %i.atb = getelementptr [8 x i8], ptr %i.asm, i64 %i.ata
  %i.atc = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.atb, <4 x i1> %i.aso, <4 x double> zeroinitializer) ; 2 uses
  %i.atd = or disjoint i64 %.1227673272, 3
  %i.ate = mul nsw i64 %i.atd, %4
  %i.atf = getelementptr [8 x i8], ptr %i.asm, i64 %i.ate
  %i.atg = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.atf, <4 x i1> %i.aso, <4 x double> zeroinitializer) ; 2 uses
  %i.ath = shufflevector <4 x double> %i.asu, <4 x double> %i.asy, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.ati = shufflevector <4 x double> %i.asu, <4 x double> %i.asy, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.atj = shufflevector <4 x double> %i.atc, <4 x double> %i.atg, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.atk = shufflevector <4 x double> %i.atc, <4 x double> %i.atg, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.atl = shufflevector <4 x double> %i.ath, <4 x double> %i.atj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.atm = shufflevector <4 x double> %i.ati, <4 x double> %i.atk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.atn = shufflevector <4 x double> %i.ath, <4 x double> %i.atj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  switch i32 %i.agt, label %bb.r [
    i32 4, label %bb.n
    i32 3, label %bb.o
    i32 2, label %bb.p
    i32 1, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.ato = shufflevector <4 x double> %i.ati, <4 x double> %i.atk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %gep3277 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3276, i64 %.1227673272
  store <4 x double> %i.ato, ptr %gep3277, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep3279 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3278, i64 %.1227673272
  store <4 x double> %i.atn, ptr %gep3279, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep3271 = getelementptr [8 x i8], ptr %invariant.gep3270, i64 %.1227673272
  store <4 x double> %i.atm, ptr %gep3271, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %.1227673272
  store <4 x double> %i.atl, ptr %i.atp, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.atq = add nuw nsw i64 %.1227673272, 4        ; 4 uses
  %i.atr = icmp samesign ult i64 %i.atq, %i.asl
  br i1 %i.atr, label %bb.m, label %.preheader3018, !llvm.loop !109

iter.check:                                       ; preds = %.preheader3017.preheader, %._crit_edge3282
  %.1327683283 = phi i64 [ %i.atz, %._crit_edge3282 ], [ %i.atq, %.preheader3017.preheader ] ; 3 uses
  %i.ats = mul nsw i64 %.1327683283, %4
  %i.att = getelementptr [8 x i8], ptr %16, i64 %i.ats ; 9 uses
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %.1327683283 ; 9 uses
  br i1 %i.asr, label %.epil.preheader4402, label %iter.check.new

._crit_edge3282.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4405.not, label %._crit_edge3282, label %.epil.preheader4402

.epil.preheader4402:                              ; preds = %._crit_edge3282.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge3282.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4406)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader4402
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4402 ], [ %indvars.iv.next.epil, %bb.s ] ; 3 uses
  %epil.iter4404 = phi i64 [ 0, %.epil.preheader4402 ], [ %epil.iter4404.next, %bb.s ]
  %i.atv = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.epil
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !110
  %i.atx = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.atx
  store double %i.atw, ptr %i.aty, align 8, !tbaa !110
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4404.next = add i64 %epil.iter4404, 1 ; 2 uses
  %epil.iter4404.cmp.not = icmp eq i64 %epil.iter4404.next, %xtraiter4403
  br i1 %epil.iter4404.cmp.not, label %._crit_edge3282, label %bb.s, !llvm.loop !112

._crit_edge3282:                                  ; preds = %bb.s, %._crit_edge3282.unr-lcssa
  %i.atz = add nuw nsw i64 %.1327683283, 1        ; 2 uses
  %exitcond3704.not = icmp eq i64 %i.atz, %2
  br i1 %exitcond3704.not, label %._crit_edge3284.split, label %iter.check, !llvm.loop !113

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4408 = phi i64 [ %niter4408.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.aua = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !110
  %i.auc = mul nuw nsw i64 %2, %indvars.iv
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.auc
  store double %i.aub, ptr %i.aud, align 8, !tbaa !110
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aue = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !110
  %i.aug = mul nuw nsw i64 %2, %indvars.iv.next
  %i.auh = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.aug
  store double %i.auf, ptr %i.auh, align 8, !tbaa !110
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aui = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.1
  %i.auj = load double, ptr %i.aui, align 8, !tbaa !110
  %i.auk = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.auk
  store double %i.auj, ptr %i.aul, align 8, !tbaa !110
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aum = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.2
  %i.aun = load double, ptr %i.aum, align 8, !tbaa !110
  %i.auo = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.auo
  store double %i.aun, ptr %i.aup, align 8, !tbaa !110
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.auq = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.3
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !110
  %i.aus = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.aus
  store double %i.aur, ptr %i.aut, align 8, !tbaa !110
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.auu = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.4
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !110
  %i.auw = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.auw
  store double %i.auv, ptr %i.aux, align 8, !tbaa !110
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.auy = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.5
  %i.auz = load double, ptr %i.auy, align 8, !tbaa !110
  %i.ava = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.ava
  store double %i.auz, ptr %i.avb, align 8, !tbaa !110
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.avc = getelementptr [8 x i8], ptr %i.att, i64 %indvars.iv.next.6
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !110
  %i.ave = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.ave
  store double %i.avd, ptr %i.avf, align 8, !tbaa !110
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4408.next.7 = add i64 %niter4408, 8       ; 2 uses
  %niter4408.ncmp.7 = icmp eq i64 %niter4408.next.7, %unroll_iter4407
  br i1 %niter4408.ncmp.7, label %._crit_edge3282.unr-lcssa, label %iter.check.new, !llvm.loop !114

._crit_edge3284.split:                            ; preds = %._crit_edge3282, %.preheader3017.lr.ph, %.preheader3018
  %i.avg = insertelement <4 x double> poison, double %5, i64 0
  %i.avh = shufflevector <4 x double> %i.avg, <4 x double> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avi = insertelement <4 x double> poison, double %8, i64 0
  %i.avj = shufflevector <4 x double> %i.avi, <4 x double> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avk = insertelement <2 x i64> poison, i64 %10, i64 0
  %i.avl = insertelement <4 x i64> <i64 0, i64 poison, i64 poison, i64 poison>, i64 %10, i64 1
  %i.avm = shufflevector <2 x i64> %i.avk, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.avn = mul nsw <4 x i64> %i.avm, <i64 2, i64 3, i64 poison, i64 poison>
  %i.avo = shufflevector <4 x i64> %i.avl, <4 x i64> %i.avn, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 6 uses
  %i.avp = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.avp, label %.preheader3016.lr.ph, label %.preheader3010

.preheader3016.lr.ph:                             ; preds = %._crit_edge3284.split
  %i.avq = icmp sgt i64 %1, 3
  %i.avr = and i64 %2, 9223372036854775800        ; 19 uses
  %i.avs = and i64 %2, 7                          ; 2 uses
  %.not2968 = icmp eq i64 %i.avs, 0
  %notmask2969 = shl nsw i64 -1, %i.avs
  %i.avt = trunc nsw i64 %notmask2969 to i8
  %i.avu = xor i8 %i.avt, -1
  %i.avv = bitcast i8 %i.avu to <8 x i1>          ; 8 uses
  %invariant.gep4016.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep4018.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep4020.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep4022.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %i.avw = and i64 %2, 7                          ; 2 uses
  %.not2966 = icmp eq i64 %i.avw, 0
  %notmask2967 = shl nsw i64 -1, %i.avw
  %i.avx = trunc nsw i64 %notmask2967 to i8
  %i.avy = xor i8 %i.avx, -1
  %i.avz = bitcast i8 %i.avy to <8 x i1>          ; 6 uses
  %invariant.gep4024.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep4026.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %i.awa = and i64 %2, 7                          ; 2 uses
  %.not2964 = icmp eq i64 %i.awa, 0
  %notmask2965 = shl nsw i64 -1, %i.awa
  %i.awb = trunc nsw i64 %notmask2965 to i8
  %i.awc = xor i8 %i.awb, -1
  %i.awd = bitcast i8 %i.awc to <8 x i1>          ; 5 uses
  %invariant.gep4028.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  br label %.preheader3016

.preheader3016:                                   ; preds = %.preheader3016.lr.ph, %._crit_edge3372
  %indvars.iv3706 = phi i64 [ 0, %.preheader3016.lr.ph ], [ %indvars.iv.next3707, %._crit_edge3372 ] ; 13 uses
  %.33374 = phi i64 [ %.2.lcssa, %.preheader3016.lr.ph ], [ %i.bjk, %._crit_edge3372 ] ; 2 uses
  %invariant.gep3321 = getelementptr [8 x i8], ptr %9, i64 %.33374 ; 7 uses
  br i1 %i.avq, label %.preheader3013.lr.ph, label %.preheader3015

.preheader3013.lr.ph:                             ; preds = %.preheader3016
  %i.awe = mul nuw nsw i64 %2, %indvars.iv3706
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.awe ; 2 uses
  %i.awg = or disjoint i64 %indvars.iv3706, 1
  %i.awh = mul nuw nsw i64 %2, %i.awg
  %i.awi = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.awh ; 2 uses
  %i.awj = or disjoint i64 %indvars.iv3706, 2
  %i.awk = mul nuw nsw i64 %2, %i.awj
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.awk ; 2 uses
  %i.awm = or disjoint i64 %indvars.iv3706, 3
  %i.awn = mul nuw nsw i64 %2, %i.awm
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.awn ; 2 uses
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %i.avr
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %i.avr
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %i.avr
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %i.avr
  br label %.lr.ph3302

.preheader3010.loopexit:                          ; preds = %._crit_edge3372
  %i.awt = trunc nuw i64 %indvars.iv.next3707 to i32
  br label %.preheader3010

.preheader3010:                                   ; preds = %.preheader3010.loopexit, %._crit_edge3284.split
  %.02883.lcssa = phi i32 [ 0, %._crit_edge3284.split ], [ %i.awt, %.preheader3010.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge3284.split ], [ %i.bjk, %.preheader3010.loopexit ] ; 3 uses
  %i.awu = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.awu, label %.preheader3009.lr.ph, label %.preheader3003

.preheader3009.lr.ph:                             ; preds = %.preheader3010
  %i.awv = icmp sgt i64 %1, 3
  %i.aww = and i64 %2, 9223372036854775800        ; 13 uses
  %i.awx = zext i32 %.02883.lcssa to i64
  %i.awy = and i64 %2, 7                          ; 2 uses
  %.not2962 = icmp eq i64 %i.awy, 0
  %notmask2963 = shl nsw i64 -1, %i.awy
  %i.awz = trunc nsw i64 %notmask2963 to i8
  %i.axa = xor i8 %i.awz, -1
  %i.axb = bitcast i8 %i.axa to <8 x i1>          ; 6 uses
  %invariant.gep4030.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep4032.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep4034.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep4036.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axc = and i64 %2, 7                          ; 2 uses
  %.not2960 = icmp eq i64 %i.axc, 0
  %notmask2961 = shl nsw i64 -1, %i.axc
  %i.axd = trunc nsw i64 %notmask2961 to i8
  %i.axe = xor i8 %i.axd, -1
  %i.axf = bitcast i8 %i.axe to <8 x i1>          ; 4 uses
  %invariant.gep4038.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep4040.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axg = and i64 %2, 7                          ; 2 uses
  %.not2958 = icmp eq i64 %i.axg, 0
  %notmask2959 = shl nsw i64 -1, %i.axg
  %i.axh = trunc nsw i64 %notmask2959 to i8
  %i.axi = xor i8 %i.axh, -1
  %i.axj = bitcast i8 %i.axi to <8 x i1>          ; 3 uses
  %invariant.gep4042.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axk = insertelement <2 x double> poison, double %5, i64 0
  %i.axl = shufflevector <2 x double> %i.axk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axm = insertelement <2 x double> poison, double %8, i64 0
  %i.axn = shufflevector <2 x double> %i.axm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axo = insertelement <2 x double> poison, double %5, i64 0
  %i.axp = shufflevector <2 x double> %i.axo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axq = insertelement <2 x double> poison, double %8, i64 0
  %i.axr = shufflevector <2 x double> %i.axq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader3009

.preheader3015:                                   ; preds = %bb.v, %.preheader3016
  %.12.lcssa = phi i64 [ 0, %.preheader3016 ], [ %i.bdw, %bb.v ] ; 3 uses
  %i.axs = icmp slt i64 %.12.lcssa, %i.i
  br i1 %i.axs, label %.preheader3012.lr.ph, label %.preheader3014

.preheader3012.lr.ph:                             ; preds = %.preheader3015
  %i.axt = mul nuw nsw i64 %2, %indvars.iv3706
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.axt ; 2 uses
  %i.axv = or disjoint i64 %indvars.iv3706, 1
  %i.axw = mul nuw nsw i64 %2, %i.axv
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.axw ; 2 uses
  %i.axy = or disjoint i64 %indvars.iv3706, 2
  %i.axz = mul nuw nsw i64 %2, %i.axy
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.axz ; 2 uses
  %i.ayb = or disjoint i64 %indvars.iv3706, 3
  %i.ayc = mul nuw nsw i64 %2, %i.ayb
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.ayc ; 2 uses
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %i.avr
  %i.ayf = getelementptr inbounds nuw [8 x i8], ptr %i.axx, i64 %i.avr
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %i.aya, i64 %i.avr
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.ayd, i64 %i.avr
  br label %.lr.ph3340

.lr.ph3302:                                       ; preds = %bb.v, %.preheader3013.lr.ph
  %.123329 = phi i64 [ 0, %.preheader3013.lr.ph ], [ %i.bdw, %bb.v ] ; 13 uses
  %i.ayi = mul nsw i64 %.123329, %7
  %i.ayj = getelementptr [8 x i8], ptr %6, i64 %i.ayi
  %i.ayk = or disjoint i64 %.123329, 1
  %i.ayl = mul nsw i64 %i.ayk, %7
  %i.aym = getelementptr [8 x i8], ptr %6, i64 %i.ayl
  %i.ayn = or disjoint i64 %.123329, 2
  %i.ayo = mul nsw i64 %i.ayn, %7
  %i.ayp = getelementptr [8 x i8], ptr %6, i64 %i.ayo
  %i.ayq = or disjoint i64 %.123329, 3
  %i.ayr = mul nsw i64 %i.ayq, %7
  %i.ays = getelementptr [8 x i8], ptr %6, i64 %i.ayr
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph3302, %bb.t
  %.1427693301 = phi i64 [ 0, %.lr.ph3302 ], [ %i.azz, %bb.t ] ; 9 uses
  %.028943300 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azj, %bb.t ]
  %.028963299 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azk, %bb.t ]
  %.028983298 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azl, %bb.t ]
  %.029003297 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azm, %bb.t ]
  %.029023296 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azn, %bb.t ]
  %.029043295 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azo, %bb.t ]
  %.029063294 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azp, %bb.t ]
  %.029083293 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azq, %bb.t ]
  %.029103292 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azr, %bb.t ]
  %.029123291 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azs, %bb.t ]
  %.029143290 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azt, %bb.t ]
  %.029163289 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azu, %bb.t ]
  %.029183288 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azv, %bb.t ]
  %.029203287 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azw, %bb.t ]
  %.029223286 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azx, %bb.t ]
  %.029243285 = phi <8 x double> [ zeroinitializer, %.lr.ph3302 ], [ %i.azy, %bb.t ]
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %.1427693301
  %i.ayu = load <8 x double>, ptr %i.ayt, align 1, !tbaa !8 ; 4 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %.1427693301
  %i.ayw = load <8 x double>, ptr %i.ayv, align 1, !tbaa !8 ; 4 uses
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %.1427693301
  %i.ayy = load <8 x double>, ptr %i.ayx, align 1, !tbaa !8 ; 4 uses
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %.1427693301
  %i.aza = load <8 x double>, ptr %i.ayz, align 1, !tbaa !8 ; 4 uses
  %i.azb = getelementptr [8 x i8], ptr %i.ayj, i64 %.1427693301
  %i.azc = load <8 x double>, ptr %i.azb, align 1, !tbaa !8 ; 4 uses
  %i.azd = getelementptr [8 x i8], ptr %i.aym, i64 %.1427693301
  %i.aze = load <8 x double>, ptr %i.azd, align 1, !tbaa !8 ; 4 uses
  %i.azf = getelementptr [8 x i8], ptr %i.ayp, i64 %.1427693301
  %i.azg = load <8 x double>, ptr %i.azf, align 1, !tbaa !8 ; 4 uses
  %i.azh = getelementptr [8 x i8], ptr %i.ays, i64 %.1427693301
  %i.azi = load <8 x double>, ptr %i.azh, align 1, !tbaa !8 ; 4 uses
  %i.azj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.azc, <8 x double> %.028943300) ; 3 uses
  %i.azk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.azc, <8 x double> %.028963299) ; 3 uses
  %i.azl = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayy, <8 x double> %i.azc, <8 x double> %.028983298) ; 3 uses
  %i.azm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aza, <8 x double> %i.azc, <8 x double> %.029003297) ; 3 uses
  %i.azn = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.aze, <8 x double> %.029023296) ; 3 uses
  %i.azo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.aze, <8 x double> %.029043295) ; 3 uses
  %i.azp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayy, <8 x double> %i.aze, <8 x double> %.029063294) ; 3 uses
  %i.azq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aza, <8 x double> %i.aze, <8 x double> %.029083293) ; 3 uses
  %i.azr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.azg, <8 x double> %.029103292) ; 3 uses
  %i.azs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.azg, <8 x double> %.029123291) ; 3 uses
  %i.azt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayy, <8 x double> %i.azg, <8 x double> %.029143290) ; 3 uses
  %i.azu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aza, <8 x double> %i.azg, <8 x double> %.029163289) ; 3 uses
  %i.azv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.azi, <8 x double> %.029183288) ; 3 uses
  %i.azw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.azi, <8 x double> %.029203287) ; 3 uses
  %i.azx = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayy, <8 x double> %i.azi, <8 x double> %.029223286) ; 3 uses
  %i.azy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aza, <8 x double> %i.azi, <8 x double> %.029243285) ; 3 uses
  %i.azz = add nuw nsw i64 %.1427693301, 8        ; 2 uses
  %i.baa = icmp samesign ult i64 %i.azz, %11
  br i1 %i.baa, label %bb.t, label %._crit_edge3303, !llvm.loop !116

._crit_edge3303:                                  ; preds = %bb.t
  br i1 %.not2968, label %._crit_edge3303._crit_edge, label %bb.u

._crit_edge3303._crit_edge:                       ; preds = %._crit_edge3303
  %.pre3780 = or disjoint i64 %.123329, 1
  %.pre3782 = or disjoint i64 %.123329, 2
  %.pre3784 = or disjoint i64 %.123329, 3
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge3303
  %i.bab = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awp, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bac = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awq, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bad = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awr, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bae = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.aws, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.baf = mul nsw i64 %.123329, %7
  %gep4017.a = getelementptr [8 x i8], ptr %invariant.gep4016.a, i64 %i.baf
  %i.bag = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4017.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bah = or disjoint i64 %.123329, 1            ; 2 uses
  %i.bai = mul nsw i64 %i.bah, %7
  %gep4019.a = getelementptr [8 x i8], ptr %invariant.gep4018.a, i64 %i.bai
  %i.baj = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4019.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bak = or disjoint i64 %.123329, 2            ; 2 uses
  %i.bal = mul nsw i64 %i.bak, %7
  %gep4021.a = getelementptr [8 x i8], ptr %invariant.gep4020.a, i64 %i.bal
  %i.bam = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4021.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.ban = or disjoint i64 %.123329, 3            ; 2 uses
  %i.bao = mul nsw i64 %i.ban, %7
  %gep4023.a = getelementptr [8 x i8], ptr %invariant.gep4022.a, i64 %i.bao
  %i.bap = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4023.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.baq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bab, <8 x double> %i.bag, <8 x double> %i.azj)
  %i.bar = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bac, <8 x double> %i.bag, <8 x double> %i.azk)
  %i.bas = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bad, <8 x double> %i.bag, <8 x double> %i.azl)
  %i.bat = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bae, <8 x double> %i.bag, <8 x double> %i.azm)
  %i.bau = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bab, <8 x double> %i.baj, <8 x double> %i.azn)
  %i.bav = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bac, <8 x double> %i.baj, <8 x double> %i.azo)
  %i.baw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bad, <8 x double> %i.baj, <8 x double> %i.azp)
  %i.bax = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bae, <8 x double> %i.baj, <8 x double> %i.azq)
  %i.bay = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bab, <8 x double> %i.bam, <8 x double> %i.azr)
  %i.baz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bac, <8 x double> %i.bam, <8 x double> %i.azs)
  %i.bba = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bad, <8 x double> %i.bam, <8 x double> %i.azt)
  %i.bbb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bae, <8 x double> %i.bam, <8 x double> %i.azu)
  %i.bbc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bab, <8 x double> %i.bap, <8 x double> %i.azv)
  %i.bbd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bac, <8 x double> %i.bap, <8 x double> %i.azw)
  %i.bbe = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bad, <8 x double> %i.bap, <8 x double> %i.azx)
  %i.bbf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bae, <8 x double> %i.bap, <8 x double> %i.azy)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge3303._crit_edge, %bb.u
  %.pre-phi3785 = phi i64 [ %.pre3784, %._crit_edge3303._crit_edge ], [ %i.ban, %bb.u ]
  %.pre-phi3783 = phi i64 [ %.pre3782, %._crit_edge3303._crit_edge ], [ %i.bak, %bb.u ]
  %.pre-phi3781 = phi i64 [ %.pre3780, %._crit_edge3303._crit_edge ], [ %i.bah, %bb.u ]
  %.12925 = phi <8 x double> [ %i.azy, %._crit_edge3303._crit_edge ], [ %i.bbf, %bb.u ] ; 2 uses
  %.12923 = phi <8 x double> [ %i.azx, %._crit_edge3303._crit_edge ], [ %i.bbe, %bb.u ] ; 2 uses
  %.12921 = phi <8 x double> [ %i.azw, %._crit_edge3303._crit_edge ], [ %i.bbd, %bb.u ] ; 2 uses
  %.12919 = phi <8 x double> [ %i.azv, %._crit_edge3303._crit_edge ], [ %i.bbc, %bb.u ] ; 2 uses
  %.12917 = phi <8 x double> [ %i.azu, %._crit_edge3303._crit_edge ], [ %i.bbb, %bb.u ] ; 2 uses
  %.12915 = phi <8 x double> [ %i.azt, %._crit_edge3303._crit_edge ], [ %i.bba, %bb.u ] ; 2 uses
  %.12913 = phi <8 x double> [ %i.azs, %._crit_edge3303._crit_edge ], [ %i.baz, %bb.u ] ; 2 uses
  %.12911 = phi <8 x double> [ %i.azr, %._crit_edge3303._crit_edge ], [ %i.bay, %bb.u ] ; 2 uses
  %.12909 = phi <8 x double> [ %i.azq, %._crit_edge3303._crit_edge ], [ %i.bax, %bb.u ] ; 2 uses
  %.12907 = phi <8 x double> [ %i.azp, %._crit_edge3303._crit_edge ], [ %i.baw, %bb.u ] ; 2 uses
  %.12905 = phi <8 x double> [ %i.azo, %._crit_edge3303._crit_edge ], [ %i.bav, %bb.u ] ; 2 uses
  %.12903 = phi <8 x double> [ %i.azn, %._crit_edge3303._crit_edge ], [ %i.bau, %bb.u ] ; 2 uses
  %.12901 = phi <8 x double> [ %i.azm, %._crit_edge3303._crit_edge ], [ %i.bat, %bb.u ] ; 2 uses
  %.12899 = phi <8 x double> [ %i.azl, %._crit_edge3303._crit_edge ], [ %i.bas, %bb.u ] ; 2 uses
  %.12897 = phi <8 x double> [ %i.azk, %._crit_edge3303._crit_edge ], [ %i.bar, %bb.u ] ; 2 uses
  %.12895 = phi <8 x double> [ %i.azj, %._crit_edge3303._crit_edge ], [ %i.baq, %bb.u ] ; 2 uses
  %i.bbg = shufflevector <8 x double> %.12895, <8 x double> %.12897, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbh = shufflevector <8 x double> %.12895, <8 x double> %.12897, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbi = shufflevector <8 x double> %.12899, <8 x double> %.12901, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbj = shufflevector <8 x double> %.12899, <8 x double> %.12901, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbk = shufflevector <8 x double> %i.bbg, <8 x double> %i.bbi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bbl = shufflevector <8 x double> %i.bbh, <8 x double> %i.bbj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bbm = shufflevector <8 x double> %i.bbg, <8 x double> %i.bbi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bbn = shufflevector <8 x double> %i.bbh, <8 x double> %i.bbj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bbo = fadd <8 x double> %i.bbk, %i.bbl
  %i.bbp = fadd <8 x double> %i.bbm, %i.bbn
  %i.bbq = fadd <8 x double> %i.bbo, %i.bbp       ; 2 uses
  %i.bbr = shufflevector <8 x double> %i.bbq, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bbs = shufflevector <8 x double> %i.bbq, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bbt = fadd <4 x double> %i.bbr, %i.bbs
  %i.bbu = fmul <4 x double> %i.avh, %i.bbt
  %i.bbv = mul nsw i64 %.123329, %10
  %gep3322 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bbv ; 2 uses
  %i.bbw = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3322, <4 x double> %i.avj, <4 x double> %i.bbu) #9, !srcloc !117
  store <4 x double> %i.bbw, ptr %gep3322, align 1, !tbaa !8
  %i.bbx = shufflevector <8 x double> %.12903, <8 x double> %.12905, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bby = shufflevector <8 x double> %.12903, <8 x double> %.12905, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbz = shufflevector <8 x double> %.12907, <8 x double> %.12909, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bca = shufflevector <8 x double> %.12907, <8 x double> %.12909, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bcb = shufflevector <8 x double> %i.bbx, <8 x double> %i.bbz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bcc = shufflevector <8 x double> %i.bby, <8 x double> %i.bca, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bcd = shufflevector <8 x double> %i.bbx, <8 x double> %i.bbz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bce = shufflevector <8 x double> %i.bby, <8 x double> %i.bca, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bcf = fadd <8 x double> %i.bcb, %i.bcc
  %i.bcg = fadd <8 x double> %i.bcd, %i.bce
  %i.bch = fadd <8 x double> %i.bcf, %i.bcg       ; 2 uses
  %i.bci = shufflevector <8 x double> %i.bch, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bcj = shufflevector <8 x double> %i.bch, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bck = fadd <4 x double> %i.bci, %i.bcj
  %i.bcl = fmul <4 x double> %i.avh, %i.bck
  %i.bcm = mul nsw i64 %.pre-phi3781, %10
  %gep3324 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bcm ; 2 uses
  %i.bcn = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3324, <4 x double> %i.avj, <4 x double> %i.bcl) #9, !srcloc !118
  store <4 x double> %i.bcn, ptr %gep3324, align 1, !tbaa !8
  %i.bco = shufflevector <8 x double> %.12911, <8 x double> %.12913, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bcp = shufflevector <8 x double> %.12911, <8 x double> %.12913, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bcq = shufflevector <8 x double> %.12915, <8 x double> %.12917, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bcr = shufflevector <8 x double> %.12915, <8 x double> %.12917, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bcs = shufflevector <8 x double> %i.bco, <8 x double> %i.bcq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bct = shufflevector <8 x double> %i.bcp, <8 x double> %i.bcr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bcu = shufflevector <8 x double> %i.bco, <8 x double> %i.bcq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bcv = shufflevector <8 x double> %i.bcp, <8 x double> %i.bcr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bcw = fadd <8 x double> %i.bcs, %i.bct
  %i.bcx = fadd <8 x double> %i.bcu, %i.bcv
  %i.bcy = fadd <8 x double> %i.bcw, %i.bcx       ; 2 uses
  %i.bcz = shufflevector <8 x double> %i.bcy, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bda = shufflevector <8 x double> %i.bcy, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdb = fadd <4 x double> %i.bcz, %i.bda
  %i.bdc = fmul <4 x double> %i.avh, %i.bdb
  %i.bdd = mul nsw i64 %.pre-phi3783, %10
  %gep3326 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bdd ; 2 uses
  %i.bde = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3326, <4 x double> %i.avj, <4 x double> %i.bdc) #9, !srcloc !119
  store <4 x double> %i.bde, ptr %gep3326, align 1, !tbaa !8
  %i.bdf = shufflevector <8 x double> %.12919, <8 x double> %.12921, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bdg = shufflevector <8 x double> %.12919, <8 x double> %.12921, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bdh = shufflevector <8 x double> %.12923, <8 x double> %.12925, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bdi = shufflevector <8 x double> %.12923, <8 x double> %.12925, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bdj = shufflevector <8 x double> %i.bdf, <8 x double> %i.bdh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bdk = shufflevector <8 x double> %i.bdg, <8 x double> %i.bdi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bdl = shufflevector <8 x double> %i.bdf, <8 x double> %i.bdh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bdm = shufflevector <8 x double> %i.bdg, <8 x double> %i.bdi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bdn = fadd <8 x double> %i.bdj, %i.bdk
  %i.bdo = fadd <8 x double> %i.bdl, %i.bdm
  %i.bdp = fadd <8 x double> %i.bdn, %i.bdo       ; 2 uses
  %i.bdq = shufflevector <8 x double> %i.bdp, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdr = shufflevector <8 x double> %i.bdp, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bds = fadd <4 x double> %i.bdq, %i.bdr
  %i.bdt = fmul <4 x double> %i.avh, %i.bds
  %i.bdu = mul nsw i64 %.pre-phi3785, %10
  %gep3328 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bdu ; 2 uses
  %i.bdv = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3328, <4 x double> %i.avj, <4 x double> %i.bdt) #9, !srcloc !120
  store <4 x double> %i.bdv, ptr %gep3328, align 1, !tbaa !8
  %i.bdw = add nuw nsw i64 %.123329, 4            ; 3 uses
  %i.bdx = icmp slt i64 %i.bdw, %i.h
  br i1 %i.bdx, label %.lr.ph3302, label %.preheader3015, !llvm.loop !121

.preheader3014:                                   ; preds = %bb.y, %.preheader3015
  %.13.lcssa = phi i64 [ %.12.lcssa, %.preheader3015 ], [ %i.bho, %bb.y ] ; 2 uses
  %i.bdy = icmp slt i64 %.13.lcssa, %1
  br i1 %i.bdy, label %.preheader3011.lr.ph, label %._crit_edge3372

.preheader3011.lr.ph:                             ; preds = %.preheader3014
  %i.bdz = mul nuw nsw i64 %2, %indvars.iv3706
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bdz ; 2 uses
  %i.beb = or disjoint i64 %indvars.iv3706, 1
  %i.bec = mul nuw nsw i64 %2, %i.beb
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bec ; 2 uses
  %i.bee = or disjoint i64 %indvars.iv3706, 2
  %i.bef = mul nuw nsw i64 %2, %i.bee
  %i.beg = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bef ; 2 uses
  %i.beh = or disjoint i64 %indvars.iv3706, 3
  %i.bei = mul nuw nsw i64 %2, %i.beh
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bei ; 2 uses
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.bea, i64 %i.avr
  %i.bel = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %i.avr
  %i.bem = getelementptr inbounds nuw [8 x i8], ptr %i.beg, i64 %i.avr
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bej, i64 %i.avr
  br label %.lr.ph3362

.lr.ph3340:                                       ; preds = %bb.y, %.preheader3012.lr.ph
  %.133355 = phi i64 [ %.12.lcssa, %.preheader3012.lr.ph ], [ %i.bho, %bb.y ] ; 7 uses
  %i.beo = mul nsw i64 %.133355, %7
  %i.bep = getelementptr [8 x i8], ptr %6, i64 %i.beo
  %i.beq = add nuw nsw i64 %.133355, 1
  %i.ber = mul nsw i64 %i.beq, %7
  %i.bes = getelementptr [8 x i8], ptr %6, i64 %i.ber
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph3340, %bb.w
  %.1527703339 = phi i64 [ 0, %.lr.ph3340 ], [ %i.bfn, %bb.w ] ; 7 uses
  %.029263338 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bff, %bb.w ]
  %.029283337 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfg, %bb.w ]
  %.029303336 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfh, %bb.w ]
  %.029323335 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfi, %bb.w ]
  %.029343334 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfj, %bb.w ]
  %.029363333 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfk, %bb.w ]
  %.029383332 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfl, %bb.w ]
  %.029403331 = phi <8 x double> [ zeroinitializer, %.lr.ph3340 ], [ %i.bfm, %bb.w ]
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %.1527703339
  %i.beu = load <8 x double>, ptr %i.bet, align 1, !tbaa !8 ; 2 uses
  %i.bev = getelementptr inbounds nuw [8 x i8], ptr %i.axx, i64 %.1527703339
  %i.bew = load <8 x double>, ptr %i.bev, align 1, !tbaa !8 ; 2 uses
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr %i.aya, i64 %.1527703339
  %i.bey = load <8 x double>, ptr %i.bex, align 1, !tbaa !8 ; 2 uses
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr %i.ayd, i64 %.1527703339
  %i.bfa = load <8 x double>, ptr %i.bez, align 1, !tbaa !8 ; 2 uses
  %i.bfb = getelementptr [8 x i8], ptr %i.bep, i64 %.1527703339
  %i.bfc = load <8 x double>, ptr %i.bfb, align 1, !tbaa !8 ; 4 uses
  %i.bfd = getelementptr [8 x i8], ptr %i.bes, i64 %.1527703339
  %i.bfe = load <8 x double>, ptr %i.bfd, align 1, !tbaa !8 ; 4 uses
  %i.bff = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beu, <8 x double> %i.bfc, <8 x double> %.029263338) ; 3 uses
  %i.bfg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bew, <8 x double> %i.bfc, <8 x double> %.029283337) ; 3 uses
  %i.bfh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bey, <8 x double> %i.bfc, <8 x double> %.029303336) ; 3 uses
  %i.bfi = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfa, <8 x double> %i.bfc, <8 x double> %.029323335) ; 3 uses
  %i.bfj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beu, <8 x double> %i.bfe, <8 x double> %.029343334) ; 3 uses
  %i.bfk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bew, <8 x double> %i.bfe, <8 x double> %.029363333) ; 3 uses
  %i.bfl = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bey, <8 x double> %i.bfe, <8 x double> %.029383332) ; 3 uses
  %i.bfm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfa, <8 x double> %i.bfe, <8 x double> %.029403331) ; 3 uses
  %i.bfn = add nuw nsw i64 %.1527703339, 8        ; 2 uses
  %i.bfo = icmp samesign ult i64 %i.bfn, %11
  br i1 %i.bfo, label %bb.w, label %._crit_edge3341, !llvm.loop !122

._crit_edge3341:                                  ; preds = %bb.w
  br i1 %.not2966, label %._crit_edge3341._crit_edge, label %bb.x

._crit_edge3341._crit_edge:                       ; preds = %._crit_edge3341
  %.pre3786 = add nuw nsw i64 %.133355, 1
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge3341
  %i.bfp = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.aye, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfq = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayf, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfr = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayg, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfs = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayh, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bft = mul nsw i64 %.133355, %7
  %gep4025.a = getelementptr [8 x i8], ptr %invariant.gep4024.a, i64 %i.bft
  %i.bfu = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4025.a, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 4 uses
  %i.bfv = add nuw nsw i64 %.133355, 1            ; 2 uses
  %i.bfw = mul nsw i64 %i.bfv, %7
  %gep4027.a = getelementptr [8 x i8], ptr %invariant.gep4026.a, i64 %i.bfw
  %i.bfx = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4027.a, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 4 uses
  %i.bfy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfp, <8 x double> %i.bfu, <8 x double> %i.bff)
  %i.bfz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfq, <8 x double> %i.bfu, <8 x double> %i.bfg)
  %i.bga = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfr, <8 x double> %i.bfu, <8 x double> %i.bfh)
  %i.bgb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfs, <8 x double> %i.bfu, <8 x double> %i.bfi)
  %i.bgc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfp, <8 x double> %i.bfx, <8 x double> %i.bfj)
  %i.bgd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfq, <8 x double> %i.bfx, <8 x double> %i.bfk)
  %i.bge = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfr, <8 x double> %i.bfx, <8 x double> %i.bfl)
  %i.bgf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfs, <8 x double> %i.bfx, <8 x double> %i.bfm)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge3341._crit_edge, %bb.x
  %.pre-phi3787 = phi i64 [ %.pre3786, %._crit_edge3341._crit_edge ], [ %i.bfv, %bb.x ]
  %.12941 = phi <8 x double> [ %i.bfm, %._crit_edge3341._crit_edge ], [ %i.bgf, %bb.x ] ; 2 uses
  %.12939 = phi <8 x double> [ %i.bfl, %._crit_edge3341._crit_edge ], [ %i.bge, %bb.x ] ; 2 uses
  %.12937 = phi <8 x double> [ %i.bfk, %._crit_edge3341._crit_edge ], [ %i.bgd, %bb.x ] ; 2 uses
  %.12935 = phi <8 x double> [ %i.bfj, %._crit_edge3341._crit_edge ], [ %i.bgc, %bb.x ] ; 2 uses
  %.12933 = phi <8 x double> [ %i.bfi, %._crit_edge3341._crit_edge ], [ %i.bgb, %bb.x ] ; 2 uses
  %.12931 = phi <8 x double> [ %i.bfh, %._crit_edge3341._crit_edge ], [ %i.bga, %bb.x ] ; 2 uses
  %.12929 = phi <8 x double> [ %i.bfg, %._crit_edge3341._crit_edge ], [ %i.bfz, %bb.x ] ; 2 uses
  %.12927 = phi <8 x double> [ %i.bff, %._crit_edge3341._crit_edge ], [ %i.bfy, %bb.x ] ; 2 uses
  %i.bgg = shufflevector <8 x double> %.12927, <8 x double> %.12929, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgh = shufflevector <8 x double> %.12927, <8 x double> %.12929, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgi = shufflevector <8 x double> %.12931, <8 x double> %.12933, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgj = shufflevector <8 x double> %.12931, <8 x double> %.12933, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgk = shufflevector <8 x double> %i.bgg, <8 x double> %i.bgi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bgl = shufflevector <8 x double> %i.bgh, <8 x double> %i.bgj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bgm = shufflevector <8 x double> %i.bgg, <8 x double> %i.bgi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgn = shufflevector <8 x double> %i.bgh, <8 x double> %i.bgj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgo = fadd <8 x double> %i.bgk, %i.bgl
  %i.bgp = fadd <8 x double> %i.bgm, %i.bgn
  %i.bgq = fadd <8 x double> %i.bgo, %i.bgp       ; 2 uses
  %i.bgr = shufflevector <8 x double> %i.bgq, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgs = shufflevector <8 x double> %i.bgq, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgt = fadd <4 x double> %i.bgr, %i.bgs
  %i.bgu = fmul <4 x double> %i.avh, %i.bgt
  %i.bgv = mul nsw i64 %.133355, %10
  %gep3352 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bgv ; 2 uses
  %i.bgw = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3352, <4 x double> %i.avj, <4 x double> %i.bgu) #9, !srcloc !123
  store <4 x double> %i.bgw, ptr %gep3352, align 1, !tbaa !8
  %i.bgx = shufflevector <8 x double> %.12935, <8 x double> %.12937, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgy = shufflevector <8 x double> %.12935, <8 x double> %.12937, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgz = shufflevector <8 x double> %.12939, <8 x double> %.12941, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bha = shufflevector <8 x double> %.12939, <8 x double> %.12941, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bhb = shufflevector <8 x double> %i.bgx, <8 x double> %i.bgz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bhc = shufflevector <8 x double> %i.bgy, <8 x double> %i.bha, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bhd = shufflevector <8 x double> %i.bgx, <8 x double> %i.bgz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bhe = shufflevector <8 x double> %i.bgy, <8 x double> %i.bha, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bhf = fadd <8 x double> %i.bhb, %i.bhc
  %i.bhg = fadd <8 x double> %i.bhd, %i.bhe
  %i.bhh = fadd <8 x double> %i.bhf, %i.bhg       ; 2 uses
  %i.bhi = shufflevector <8 x double> %i.bhh, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bhj = shufflevector <8 x double> %i.bhh, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bhk = fadd <4 x double> %i.bhi, %i.bhj
  %i.bhl = fmul <4 x double> %i.avh, %i.bhk
  %i.bhm = mul nsw i64 %.pre-phi3787, %10
  %gep3354 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bhm ; 2 uses
  %i.bhn = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3354, <4 x double> %i.avj, <4 x double> %i.bhl) #9, !srcloc !124
  store <4 x double> %i.bhn, ptr %gep3354, align 1, !tbaa !8
  %i.bho = add nuw nsw i64 %.133355, 2            ; 3 uses
  %i.bhp = icmp slt i64 %i.bho, %i.i
  br i1 %i.bhp, label %.lr.ph3340, label %.preheader3014, !llvm.loop !125

.lr.ph3362:                                       ; preds = %bb.ab, %.preheader3011.lr.ph
  %.143371 = phi i64 [ %.13.lcssa, %.preheader3011.lr.ph ], [ %i.bjj, %bb.ab ] ; 4 uses
  %i.bhq = mul nsw i64 %.143371, %7
  %i.bhr = getelementptr [8 x i8], ptr %6, i64 %i.bhq
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph3362, %bb.z
  %.1627713361 = phi i64 [ 0, %.lr.ph3362 ], [ %i.big, %bb.z ] ; 6 uses
  %.028863360 = phi <8 x double> [ zeroinitializer, %.lr.ph3362 ], [ %i.bif, %bb.z ]
  %.028883359 = phi <8 x double> [ zeroinitializer, %.lr.ph3362 ], [ %i.bie, %bb.z ]
  %.028903358 = phi <8 x double> [ zeroinitializer, %.lr.ph3362 ], [ %i.bid, %bb.z ]
  %.028923357 = phi <8 x double> [ zeroinitializer, %.lr.ph3362 ], [ %i.bic, %bb.z ]
  %i.bhs = getelementptr inbounds nuw [8 x i8], ptr %i.bea, i64 %.1627713361
  %i.bht = load <8 x double>, ptr %i.bhs, align 1, !tbaa !8
  %i.bhu = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %.1627713361
  %i.bhv = load <8 x double>, ptr %i.bhu, align 1, !tbaa !8
  %i.bhw = getelementptr inbounds nuw [8 x i8], ptr %i.beg, i64 %.1627713361
  %i.bhx = load <8 x double>, ptr %i.bhw, align 1, !tbaa !8
  %i.bhy = getelementptr inbounds nuw [8 x i8], ptr %i.bej, i64 %.1627713361
  %i.bhz = load <8 x double>, ptr %i.bhy, align 1, !tbaa !8
  %i.bia = getelementptr [8 x i8], ptr %i.bhr, i64 %.1627713361
  %i.bib = load <8 x double>, ptr %i.bia, align 1, !tbaa !8 ; 4 uses
  %i.bic = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bht, <8 x double> %i.bib, <8 x double> %.028923357) ; 3 uses
  %i.bid = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhv, <8 x double> %i.bib, <8 x double> %.028903358) ; 3 uses
  %i.bie = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhx, <8 x double> %i.bib, <8 x double> %.028883359) ; 3 uses
  %i.bif = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhz, <8 x double> %i.bib, <8 x double> %.028863360) ; 3 uses
  %i.big = add nuw nsw i64 %.1627713361, 8        ; 2 uses
  %i.bih = icmp samesign ult i64 %i.big, %11
  br i1 %i.bih, label %bb.z, label %._crit_edge3363, !llvm.loop !126

._crit_edge3363:                                  ; preds = %bb.z
  br i1 %.not2964, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge3363
  %i.bii = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bek, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bij = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bel, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bik = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bem, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bil = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ben, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bim = mul nsw i64 %.143371, %7
  %gep4029.a = getelementptr [8 x i8], ptr %invariant.gep4028.a, i64 %i.bim
  %i.bin = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4029.a, <8 x i1> %i.awd, <8 x double> zeroinitializer) ; 4 uses
  %i.bio = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bii, <8 x double> %i.bin, <8 x double> %i.bic)
  %i.bip = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bij, <8 x double> %i.bin, <8 x double> %i.bid)
  %i.biq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bik, <8 x double> %i.bin, <8 x double> %i.bie)
  %i.bir = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bil, <8 x double> %i.bin, <8 x double> %i.bif)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge3363
  %.12893 = phi <8 x double> [ %i.bio, %bb.aa ], [ %i.bic, %._crit_edge3363 ] ; 2 uses
  %.12891 = phi <8 x double> [ %i.bip, %bb.aa ], [ %i.bid, %._crit_edge3363 ] ; 2 uses
  %.12889 = phi <8 x double> [ %i.biq, %bb.aa ], [ %i.bie, %._crit_edge3363 ] ; 2 uses
  %.12887 = phi <8 x double> [ %i.bir, %bb.aa ], [ %i.bif, %._crit_edge3363 ] ; 2 uses
  %i.bis = shufflevector <8 x double> %.12893, <8 x double> %.12891, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bit = shufflevector <8 x double> %.12893, <8 x double> %.12891, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.biu = shufflevector <8 x double> %.12889, <8 x double> %.12887, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.biv = shufflevector <8 x double> %.12889, <8 x double> %.12887, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.biw = shufflevector <8 x double> %i.bis, <8 x double> %i.biu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bix = shufflevector <8 x double> %i.bit, <8 x double> %i.biv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.biy = shufflevector <8 x double> %i.bis, <8 x double> %i.biu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.biz = shufflevector <8 x double> %i.bit, <8 x double> %i.biv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bja = fadd <8 x double> %i.biw, %i.bix
  %i.bjb = fadd <8 x double> %i.biy, %i.biz
  %i.bjc = fadd <8 x double> %i.bja, %i.bjb       ; 2 uses
  %i.bjd = shufflevector <8 x double> %i.bjc, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bje = shufflevector <8 x double> %i.bjc, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bjf = fadd <4 x double> %i.bjd, %i.bje
  %i.bjg = fmul <4 x double> %i.avh, %i.bjf
  %i.bjh = mul nsw i64 %.143371, %10
  %gep3370 = getelementptr [8 x i8], ptr %invariant.gep3321, i64 %i.bjh ; 2 uses
  %i.bji = tail call <4 x double> asm "vfmadd231pd ($1), $2, $0", "=v,r,v,0,~{dirflag},~{fpsr},~{flags}"(ptr %gep3370, <4 x double> %i.avj, <4 x double> %i.bjg) #9, !srcloc !127
  store <4 x double> %i.bji, ptr %gep3370, align 1, !tbaa !8
  %i.bjj = add i64 %.143371, 1                    ; 2 uses
  %exitcond3705.not = icmp eq i64 %i.bjj, %1
  br i1 %exitcond3705.not, label %._crit_edge3372, label %.lr.ph3362, !llvm.loop !128

._crit_edge3372:                                  ; preds = %bb.ab, %.preheader3014
  %i.bjk = add nuw nsw i64 %.33374, 4             ; 3 uses
  %indvars.iv.next3707 = add nuw nsw i64 %indvars.iv3706, 4 ; 2 uses
  %i.bjl = icmp slt i64 %i.bjk, %i.d
  br i1 %i.bjl, label %.preheader3016, label %.preheader3010.loopexit, !llvm.loop !129

.preheader3009:                                   ; preds = %.preheader3009.lr.ph, %._crit_edge3430
  %indvars.iv3710 = phi i64 [ %i.awx, %.preheader3009.lr.ph ], [ %indvars.iv.next3711, %._crit_edge3430 ] ; 7 uses
  %.43432 = phi i64 [ %.3.lcssa, %.preheader3009.lr.ph ], [ %i.brl, %._crit_edge3430 ] ; 2 uses
  %invariant.gep3397 = getelementptr [8 x i8], ptr %9, i64 %.43432 ; 4 uses
  br i1 %i.awv, label %.preheader3006.lr.ph, label %.preheader3008

.preheader3006.lr.ph:                             ; preds = %.preheader3009
  %i.bjm = mul nuw nsw i64 %2, %indvars.iv3710
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bjm ; 2 uses
  %i.bjo = or disjoint i64 %indvars.iv3710, 1
  %i.bjp = mul nuw nsw i64 %2, %i.bjo
  %i.bjq = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bjp ; 2 uses
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr %i.bjn, i64 %i.aww
  %i.bjs = getelementptr inbounds nuw [8 x i8], ptr %i.bjq, i64 %i.aww
  br label %.lr.ph3386

.preheader3003.loopexit:                          ; preds = %._crit_edge3430
  %i.bjt = trunc nuw i64 %indvars.iv.next3711 to i32
  br label %.preheader3003

.preheader3003:                                   ; preds = %.preheader3003.loopexit, %.preheader3010
  %.12884.lcssa = phi i32 [ %.02883.lcssa, %.preheader3010 ], [ %i.bjt, %.preheader3003.loopexit ]
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader3010 ], [ %i.brl, %.preheader3003.loopexit ] ; 2 uses
  %i.bju = icmp slt i64 %.4.lcssa, %0
  br i1 %i.bju, label %.preheader3002.lr.ph, label %._crit_edge3477

.preheader3002.lr.ph:                             ; preds = %.preheader3003
  %i.bjv = icmp sgt i64 %1, 3
  %i.bjw = and i64 %2, 9223372036854775800        ; 10 uses
  %i.bjx = zext i32 %.12884.lcssa to i64
  %i.bjy = and i64 %2, 7                          ; 2 uses
  %.not2956 = icmp eq i64 %i.bjy, 0
  %notmask2957 = shl nsw i64 -1, %i.bjy
  %i.bjz = trunc nsw i64 %notmask2957 to i8
  %i.bka = xor i8 %i.bjz, -1
  %i.bkb = bitcast i8 %i.bka to <8 x i1>          ; 5 uses
  %invariant.gep4044.a = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %invariant.gep4046.a = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %invariant.gep4048.a = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %invariant.gep4050.a = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %i.bkc = and i64 %2, 7                          ; 2 uses
  %.not2954 = icmp eq i64 %i.bkc, 0
  %notmask2955 = shl nsw i64 -1, %i.bkc
  %i.bkd = trunc nsw i64 %notmask2955 to i8
  %i.bke = xor i8 %i.bkd, -1
  %i.bkf = bitcast i8 %i.bke to <8 x i1>          ; 3 uses
  %invariant.gep4052 = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %invariant.gep4054 = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  %i.bkg = and i64 %2, 7                          ; 2 uses
  %.not2952 = icmp eq i64 %i.bkg, 0
  %notmask2953 = shl nsw i64 -1, %i.bkg
  %i.bkh = trunc nsw i64 %notmask2953 to i8
  %i.bki = xor i8 %i.bkh, -1
  %i.bkj = bitcast i8 %i.bki to <8 x i1>          ; 2 uses
  %invariant.gep4056 = getelementptr [8 x i8], ptr %6, i64 %i.bjw
  br label %.preheader3002

.preheader3008:                                   ; preds = %bb.ae, %.preheader3009
  %.15.lcssa = phi i64 [ 0, %.preheader3009 ], [ %i.boe, %bb.ae ] ; 3 uses
  %i.bkk = icmp slt i64 %.15.lcssa, %i.i
  br i1 %i.bkk, label %.preheader3005.lr.ph, label %.preheader3007

.preheader3005.lr.ph:                             ; preds = %.preheader3008
  %i.bkl = mul nuw nsw i64 %2, %indvars.iv3710
  %i.bkm = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bkl ; 2 uses
  %i.bkn = or disjoint i64 %indvars.iv3710, 1
  %i.bko = mul nuw nsw i64 %2, %i.bkn
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bko ; 2 uses
  %i.bkq = getelementptr inbounds nuw [8 x i8], ptr %i.bkm, i64 %i.aww
  %i.bkr = getelementptr inbounds nuw [8 x i8], ptr %i.bkp, i64 %i.aww
  br label %.lr.ph3406

.lr.ph3386:                                       ; preds = %bb.ae, %.preheader3006.lr.ph
  %.153399 = phi i64 [ 0, %.preheader3006.lr.ph ], [ %i.boe, %bb.ae ] ; 10 uses
  %i.bks = mul nsw i64 %.153399, %7
  %i.bkt = getelementptr [8 x i8], ptr %6, i64 %i.bks
  %i.bku = or disjoint i64 %.153399, 1
  %i.bkv = mul nsw i64 %i.bku, %7
  %i.bkw = getelementptr [8 x i8], ptr %6, i64 %i.bkv
  %i.bkx = or disjoint i64 %.153399, 2
  %i.bky = mul nsw i64 %i.bkx, %7
  %i.bkz = getelementptr [8 x i8], ptr %6, i64 %i.bky
  %i.bla = or disjoint i64 %.153399, 3
  %i.blb = mul nsw i64 %i.bla, %7
  %i.blc = getelementptr [8 x i8], ptr %6, i64 %i.blb
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph3386, %bb.ac
  %.1727723385 = phi i64 [ 0, %.lr.ph3386 ], [ %i.blx, %bb.ac ] ; 7 uses
  %.028613384 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blw, %bb.ac ]
  %.028633383 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blv, %bb.ac ]
  %.028653382 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blu, %bb.ac ]
  %.028673381 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blt, %bb.ac ]
  %.028693380 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.bls, %bb.ac ]
  %.028713379 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blr, %bb.ac ]
  %.028733378 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blq, %bb.ac ]
  %.028753377 = phi <8 x double> [ zeroinitializer, %.lr.ph3386 ], [ %i.blp, %bb.ac ]
  %i.bld = getelementptr inbounds nuw [8 x i8], ptr %i.bjn, i64 %.1727723385
  %i.ble = load <8 x double>, ptr %i.bld, align 1, !tbaa !8 ; 4 uses
  %i.blf = getelementptr inbounds nuw [8 x i8], ptr %i.bjq, i64 %.1727723385
  %i.blg = load <8 x double>, ptr %i.blf, align 1, !tbaa !8 ; 4 uses
  %i.blh = getelementptr [8 x i8], ptr %i.bkt, i64 %.1727723385
  %i.bli = load <8 x double>, ptr %i.blh, align 1, !tbaa !8 ; 2 uses
  %i.blj = getelementptr [8 x i8], ptr %i.bkw, i64 %.1727723385
  %i.blk = load <8 x double>, ptr %i.blj, align 1, !tbaa !8 ; 2 uses
  %i.bll = getelementptr [8 x i8], ptr %i.bkz, i64 %.1727723385
  %i.blm = load <8 x double>, ptr %i.bll, align 1, !tbaa !8 ; 2 uses
  %i.bln = getelementptr [8 x i8], ptr %i.blc, i64 %.1727723385
  %i.blo = load <8 x double>, ptr %i.bln, align 1, !tbaa !8 ; 2 uses
  %i.blp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ble, <8 x double> %i.bli, <8 x double> %.028753377) ; 3 uses
  %i.blq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blg, <8 x double> %i.bli, <8 x double> %.028733378) ; 3 uses
  %i.blr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ble, <8 x double> %i.blk, <8 x double> %.028713379) ; 3 uses
  %i.bls = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blg, <8 x double> %i.blk, <8 x double> %.028693380) ; 3 uses
  %i.blt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ble, <8 x double> %i.blm, <8 x double> %.028673381) ; 3 uses
  %i.blu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blg, <8 x double> %i.blm, <8 x double> %.028653382) ; 3 uses
  %i.blv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ble, <8 x double> %i.blo, <8 x double> %.028633383) ; 3 uses
  %i.blw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blg, <8 x double> %i.blo, <8 x double> %.028613384) ; 3 uses
  %i.blx = add nuw nsw i64 %.1727723385, 8        ; 2 uses
  %i.bly = icmp samesign ult i64 %i.blx, %11
  br i1 %i.bly, label %bb.ac, label %._crit_edge3387, !llvm.loop !130

._crit_edge3387:                                  ; preds = %bb.ac
  br i1 %.not2962, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge3387
  %i.blz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bjr, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 4 uses
  %i.bma = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bjs, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 4 uses
  %i.bmb = mul nsw i64 %.153399, %7
  %gep4031.a = getelementptr [8 x i8], ptr %invariant.gep4030.a, i64 %i.bmb
  %i.bmc = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4031.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bmd = or disjoint i64 %.153399, 1
  %i.bme = mul nsw i64 %i.bmd, %7
  %gep4033.a = getelementptr [8 x i8], ptr %invariant.gep4032.a, i64 %i.bme
  %i.bmf = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4033.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bmg = or disjoint i64 %.153399, 2
  %i.bmh = mul nsw i64 %i.bmg, %7
  %gep4035.a = getelementptr [8 x i8], ptr %invariant.gep4034.a, i64 %i.bmh
  %i.bmi = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4035.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bmj = or disjoint i64 %.153399, 3
  %i.bmk = mul nsw i64 %i.bmj, %7
  %gep4037.a = getelementptr [8 x i8], ptr %invariant.gep4036.a, i64 %i.bmk
  %i.bml = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4037.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bmm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blz, <8 x double> %i.bmc, <8 x double> %i.blp)
  %i.bmn = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bma, <8 x double> %i.bmc, <8 x double> %i.blq)
  %i.bmo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blz, <8 x double> %i.bmf, <8 x double> %i.blr)
  %i.bmp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bma, <8 x double> %i.bmf, <8 x double> %i.bls)
  %i.bmq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blz, <8 x double> %i.bmi, <8 x double> %i.blt)
  %i.bmr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bma, <8 x double> %i.bmi, <8 x double> %i.blu)
  %i.bms = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blz, <8 x double> %i.bml, <8 x double> %i.blv)
  %i.bmt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bma, <8 x double> %i.bml, <8 x double> %i.blw)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge3387
  %.12876 = phi <8 x double> [ %i.bmm, %bb.ad ], [ %i.blp, %._crit_edge3387 ] ; 2 uses
  %.12874 = phi <8 x double> [ %i.bmn, %bb.ad ], [ %i.blq, %._crit_edge3387 ] ; 2 uses
  %.12872 = phi <8 x double> [ %i.bmo, %bb.ad ], [ %i.blr, %._crit_edge3387 ] ; 2 uses
  %.12870 = phi <8 x double> [ %i.bmp, %bb.ad ], [ %i.bls, %._crit_edge3387 ] ; 2 uses
  %.12868 = phi <8 x double> [ %i.bmq, %bb.ad ], [ %i.blt, %._crit_edge3387 ] ; 2 uses
  %.12866 = phi <8 x double> [ %i.bmr, %bb.ad ], [ %i.blu, %._crit_edge3387 ] ; 2 uses
  %.12864 = phi <8 x double> [ %i.bms, %bb.ad ], [ %i.blv, %._crit_edge3387 ] ; 2 uses
  %.12862 = phi <8 x double> [ %i.bmt, %bb.ad ], [ %i.blw, %._crit_edge3387 ] ; 2 uses
  %i.bmu = shufflevector <8 x double> %.12876, <8 x double> %.12872, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bmv = shufflevector <8 x double> %.12876, <8 x double> %.12872, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bmw = shufflevector <8 x double> %.12868, <8 x double> %.12864, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bmx = shufflevector <8 x double> %.12868, <8 x double> %.12864, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bmy = shufflevector <8 x double> %i.bmu, <8 x double> %i.bmw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bmz = shufflevector <8 x double> %i.bmv, <8 x double> %i.bmx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bna = shufflevector <8 x double> %i.bmu, <8 x double> %i.bmw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bnb = shufflevector <8 x double> %i.bmv, <8 x double> %i.bmx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bnc = fadd <8 x double> %i.bmy, %i.bmz
  %i.bnd = fadd <8 x double> %i.bna, %i.bnb
  %i.bne = fadd <8 x double> %i.bnc, %i.bnd       ; 2 uses
  %i.bnf = shufflevector <8 x double> %i.bne, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bng = shufflevector <8 x double> %i.bne, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnh = fadd <4 x double> %i.bnf, %i.bng
  %i.bni = fmul <4 x double> %i.avh, %i.bnh
  %i.bnj = mul nsw i64 %.153399, %10
  %gep3398 = getelementptr [8 x i8], ptr %invariant.gep3397, i64 %i.bnj ; 3 uses
  %i.bnk = tail call <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double> zeroinitializer, ptr %gep3398, <4 x i64> %i.avo, <4 x double> splat (double -nan(0x7FFFFFFFFFFFF)), i8 8)
  %i.bnl = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.bnk, <4 x double> %i.avj, <4 x double> %i.bni)
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %gep3398, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.bnl, i32 8)
  %i.bnm = shufflevector <8 x double> %.12874, <8 x double> %.12870, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bnn = shufflevector <8 x double> %.12874, <8 x double> %.12870, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bno = shufflevector <8 x double> %.12866, <8 x double> %.12862, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bnp = shufflevector <8 x double> %.12866, <8 x double> %.12862, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bnq = shufflevector <8 x double> %i.bnm, <8 x double> %i.bno, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bnr = shufflevector <8 x double> %i.bnn, <8 x double> %i.bnp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bns = shufflevector <8 x double> %i.bnm, <8 x double> %i.bno, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bnt = shufflevector <8 x double> %i.bnn, <8 x double> %i.bnp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bnu = fadd <8 x double> %i.bnq, %i.bnr
  %i.bnv = fadd <8 x double> %i.bns, %i.bnt
  %i.bnw = fadd <8 x double> %i.bnu, %i.bnv       ; 2 uses
  %i.bnx = shufflevector <8 x double> %i.bnw, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bny = shufflevector <8 x double> %i.bnw, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnz = fadd <4 x double> %i.bnx, %i.bny
  %i.boa = fmul <4 x double> %i.avh, %i.bnz
  %i.bob = getelementptr i8, ptr %gep3398, i64 8  ; 2 uses
  %i.boc = tail call <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double> zeroinitializer, ptr %i.bob, <4 x i64> %i.avo, <4 x double> splat (double -nan(0x7FFFFFFFFFFFF)), i8 8)
  %i.bod = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.boc, <4 x double> %i.avj, <4 x double> %i.boa)
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %i.bob, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.bod, i32 8)
  %i.boe = add nuw nsw i64 %.153399, 4            ; 3 uses
  %i.bof = icmp slt i64 %i.boe, %i.h
  br i1 %i.bof, label %.lr.ph3386, label %.preheader3008, !llvm.loop !131

.preheader3007:                                   ; preds = %bb.ah, %.preheader3008
  %.16.lcssa = phi i64 [ %.15.lcssa, %.preheader3008 ], [ %i.bqi, %bb.ah ] ; 2 uses
  %i.bog = icmp slt i64 %.16.lcssa, %1
  br i1 %i.bog, label %.preheader3004.lr.ph, label %._crit_edge3430

.preheader3004.lr.ph:                             ; preds = %.preheader3007
  %i.boh = mul nuw nsw i64 %2, %indvars.iv3710
  %i.boi = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.boh ; 2 uses
  %i.boj = or disjoint i64 %indvars.iv3710, 1
  %i.bok = mul nuw nsw i64 %2, %i.boj
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bok ; 2 uses
  %i.bom = getelementptr inbounds nuw [8 x i8], ptr %i.boi, i64 %i.aww
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.bol, i64 %i.aww
  br label %.lr.ph3422

.lr.ph3406:                                       ; preds = %bb.ah, %.preheader3005.lr.ph
  %.163417 = phi i64 [ %.15.lcssa, %.preheader3005.lr.ph ], [ %i.bqi, %bb.ah ] ; 7 uses
  %i.boo = mul nsw i64 %.163417, %7
  %i.bop = getelementptr [8 x i8], ptr %6, i64 %i.boo
  %i.boq = add nuw nsw i64 %.163417, 1
  %i.bor = mul nsw i64 %i.boq, %7
  %i.bos = getelementptr [8 x i8], ptr %6, i64 %i.bor
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph3406, %bb.af
  %.1827733405 = phi i64 [ 0, %.lr.ph3406 ], [ %i.bpf, %bb.af ] ; 5 uses
  %.028243404 = phi <8 x double> [ zeroinitializer, %.lr.ph3406 ], [ %i.bpe, %bb.af ]
  %.028263403 = phi <8 x double> [ zeroinitializer, %.lr.ph3406 ], [ %i.bpd, %bb.af ]
  %.028283402 = phi <8 x double> [ zeroinitializer, %.lr.ph3406 ], [ %i.bpc, %bb.af ]
  %.028303401 = phi <8 x double> [ zeroinitializer, %.lr.ph3406 ], [ %i.bpb, %bb.af ]
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %i.bkm, i64 %.1827733405
  %i.bou = load <8 x double>, ptr %i.bot, align 1, !tbaa !8 ; 2 uses
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %i.bkp, i64 %.1827733405
  %i.bow = load <8 x double>, ptr %i.bov, align 1, !tbaa !8 ; 2 uses
  %i.box = getelementptr [8 x i8], ptr %i.bop, i64 %.1827733405
  %i.boy = load <8 x double>, ptr %i.box, align 1, !tbaa !8 ; 2 uses
  %i.boz = getelementptr [8 x i8], ptr %i.bos, i64 %.1827733405
  %i.bpa = load <8 x double>, ptr %i.boz, align 1, !tbaa !8 ; 2 uses
  %i.bpb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bou, <8 x double> %i.boy, <8 x double> %.028303401) ; 3 uses
  %i.bpc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bow, <8 x double> %i.boy, <8 x double> %.028283402) ; 3 uses
  %i.bpd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bou, <8 x double> %i.bpa, <8 x double> %.028263403) ; 3 uses
  %i.bpe = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bow, <8 x double> %i.bpa, <8 x double> %.028243404) ; 3 uses
  %i.bpf = add nuw nsw i64 %.1827733405, 8        ; 2 uses
  %i.bpg = icmp samesign ult i64 %i.bpf, %11
  br i1 %i.bpg, label %bb.af, label %._crit_edge3407, !llvm.loop !132

._crit_edge3407:                                  ; preds = %bb.af
  br i1 %.not2960, label %._crit_edge3407._crit_edge, label %bb.ag

._crit_edge3407._crit_edge:                       ; preds = %._crit_edge3407
  %.pre3788 = add nuw nsw i64 %.163417, 1
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge3407
  %i.bph = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bkq, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bpi = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bkr, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bpj = mul nsw i64 %.163417, %7
  %gep4039.a = getelementptr [8 x i8], ptr %invariant.gep4038.a, i64 %i.bpj
  %i.bpk = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4039.a, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bpl = add nuw nsw i64 %.163417, 1            ; 2 uses
  %i.bpm = mul nsw i64 %i.bpl, %7
  %gep4041.a = getelementptr [8 x i8], ptr %invariant.gep4040.a, i64 %i.bpm
  %i.bpn = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4041.a, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bpo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bph, <8 x double> %i.bpk, <8 x double> %i.bpb)
  %i.bpp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bpi, <8 x double> %i.bpk, <8 x double> %i.bpc)
  %i.bpq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bph, <8 x double> %i.bpn, <8 x double> %i.bpd)
  %i.bpr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bpi, <8 x double> %i.bpn, <8 x double> %i.bpe)
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge3407._crit_edge, %bb.ag
  %.pre-phi3789 = phi i64 [ %.pre3788, %._crit_edge3407._crit_edge ], [ %i.bpl, %bb.ag ]
  %.12831 = phi <8 x double> [ %i.bpb, %._crit_edge3407._crit_edge ], [ %i.bpo, %bb.ag ]
  %.12829 = phi <8 x double> [ %i.bpc, %._crit_edge3407._crit_edge ], [ %i.bpp, %bb.ag ]
  %.12827 = phi <8 x double> [ %i.bpd, %._crit_edge3407._crit_edge ], [ %i.bpq, %bb.ag ]
  %.12825 = phi <8 x double> [ %i.bpe, %._crit_edge3407._crit_edge ], [ %i.bpr, %bb.ag ]
  %i.bps = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12831)
  %i.bpt = mul nsw i64 %.163417, %10
  %gep3414 = getelementptr [8 x i8], ptr %invariant.gep3397, i64 %i.bpt ; 2 uses
  %i.bpu = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12829)
  %i.bpv = load <2 x double>, ptr %gep3414, align 8, !tbaa !110
  %i.bpw = fmul <2 x double> %i.axn, %i.bpv
  %i.bpx = insertelement <2 x double> poison, double %i.bps, i64 0
  %i.bpy = insertelement <2 x double> %i.bpx, double %i.bpu, i64 1
  %i.bpz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axl, <2 x double> %i.bpy, <2 x double> %i.bpw)
  store <2 x double> %i.bpz, ptr %gep3414, align 8, !tbaa !110
  %i.bqa = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12827)
  %i.bqb = mul nsw i64 %.pre-phi3789, %10
  %gep3416 = getelementptr [8 x i8], ptr %invariant.gep3397, i64 %i.bqb ; 2 uses
  %i.bqc = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12825)
  %i.bqd = load <2 x double>, ptr %gep3416, align 8, !tbaa !110
  %i.bqe = fmul <2 x double> %i.axn, %i.bqd
  %i.bqf = insertelement <2 x double> poison, double %i.bqa, i64 0
  %i.bqg = insertelement <2 x double> %i.bqf, double %i.bqc, i64 1
  %i.bqh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axl, <2 x double> %i.bqg, <2 x double> %i.bqe)
  store <2 x double> %i.bqh, ptr %gep3416, align 8, !tbaa !110
  %i.bqi = add nuw nsw i64 %.163417, 2            ; 3 uses
  %i.bqj = icmp slt i64 %i.bqi, %i.i
  br i1 %i.bqj, label %.lr.ph3406, label %.preheader3007, !llvm.loop !133

.lr.ph3422:                                       ; preds = %bb.ak, %.preheader3004.lr.ph
  %.173429 = phi i64 [ %.16.lcssa, %.preheader3004.lr.ph ], [ %i.brk, %bb.ak ] ; 4 uses
  %i.bqk = mul nsw i64 %.173429, %7
  %i.bql = getelementptr [8 x i8], ptr %6, i64 %i.bqk
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph3422, %bb.ai
  %.1927743421 = phi i64 [ 0, %.lr.ph3422 ], [ %i.bqu, %bb.ai ] ; 4 uses
  %.028123420 = phi <8 x double> [ zeroinitializer, %.lr.ph3422 ], [ %i.bqt, %bb.ai ]
  %.028143419 = phi <8 x double> [ zeroinitializer, %.lr.ph3422 ], [ %i.bqs, %bb.ai ]
  %i.bqm = getelementptr inbounds nuw [8 x i8], ptr %i.boi, i64 %.1927743421
  %i.bqn = load <8 x double>, ptr %i.bqm, align 1, !tbaa !8
  %i.bqo = getelementptr inbounds nuw [8 x i8], ptr %i.bol, i64 %.1927743421
  %i.bqp = load <8 x double>, ptr %i.bqo, align 1, !tbaa !8
  %i.bqq = getelementptr [8 x i8], ptr %i.bql, i64 %.1927743421
  %i.bqr = load <8 x double>, ptr %i.bqq, align 1, !tbaa !8 ; 2 uses
  %i.bqs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqn, <8 x double> %i.bqr, <8 x double> %.028143419) ; 3 uses
  %i.bqt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqp, <8 x double> %i.bqr, <8 x double> %.028123420) ; 3 uses
  %i.bqu = add nuw nsw i64 %.1927743421, 8        ; 2 uses
  %i.bqv = icmp samesign ult i64 %i.bqu, %11
  br i1 %i.bqv, label %bb.ai, label %._crit_edge3423, !llvm.loop !134

._crit_edge3423:                                  ; preds = %bb.ai
  br i1 %.not2958, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge3423
  %i.bqw = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bom, <8 x i1> %i.axj, <8 x double> zeroinitializer)
  %i.bqx = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bon, <8 x i1> %i.axj, <8 x double> zeroinitializer)
  %i.bqy = mul nsw i64 %.173429, %7
  %gep4043.a = getelementptr [8 x i8], ptr %invariant.gep4042.a, i64 %i.bqy
  %i.bqz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4043.a, <8 x i1> %i.axj, <8 x double> zeroinitializer) ; 2 uses
  %i.bra = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqw, <8 x double> %i.bqz, <8 x double> %i.bqs)
  %i.brb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqx, <8 x double> %i.bqz, <8 x double> %i.bqt)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge3423
  %.12815 = phi <8 x double> [ %i.bra, %bb.aj ], [ %i.bqs, %._crit_edge3423 ]
  %.12813 = phi <8 x double> [ %i.brb, %bb.aj ], [ %i.bqt, %._crit_edge3423 ]
  %i.brc = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12815)
  %i.brd = mul nsw i64 %.173429, %10
  %gep3428 = getelementptr [8 x i8], ptr %invariant.gep3397, i64 %i.brd ; 2 uses
  %i.bre = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12813)
  %i.brf = load <2 x double>, ptr %gep3428, align 8, !tbaa !110
  %i.brg = fmul <2 x double> %i.axr, %i.brf
  %i.brh = insertelement <2 x double> poison, double %i.brc, i64 0
  %i.bri = insertelement <2 x double> %i.brh, double %i.bre, i64 1
  %i.brj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axp, <2 x double> %i.bri, <2 x double> %i.brg)
  store <2 x double> %i.brj, ptr %gep3428, align 8, !tbaa !110
  %i.brk = add nuw nsw i64 %.173429, 1            ; 2 uses
  %exitcond3709.not = icmp eq i64 %i.brk, %1
  br i1 %exitcond3709.not, label %._crit_edge3430, label %.lr.ph3422, !llvm.loop !135

._crit_edge3430:                                  ; preds = %bb.ak, %.preheader3007
  %i.brl = add nuw nsw i64 %.43432, 2             ; 3 uses
  %indvars.iv.next3711 = add nuw nsw i64 %indvars.iv3710, 2 ; 2 uses
  %i.brm = icmp slt i64 %i.brl, %i.e
  br i1 %i.brm, label %.preheader3009, label %.preheader3003.loopexit, !llvm.loop !136

.preheader3002:                                   ; preds = %.preheader3002.lr.ph, %._crit_edge3474.a
  %indvars.iv3714 = phi i64 [ %i.bjx, %.preheader3002.lr.ph ], [ %indvars.iv.next3715, %._crit_edge3474.a ] ; 4 uses
  %.53476 = phi i64 [ %.4.lcssa, %.preheader3002.lr.ph ], [ %i.bwl, %._crit_edge3474.a ] ; 2 uses
  %invariant.gep3447 = getelementptr [8 x i8], ptr %9, i64 %.53476 ; 4 uses
  br i1 %i.bjv, label %.preheader2999.lr.ph, label %.preheader3001

.preheader2999.lr.ph:                             ; preds = %.preheader3002
  %i.brn = mul nuw nsw i64 %2, %indvars.iv3714
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.brn ; 2 uses
  %i.brp = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %i.bjw
  br label %.lr.ph3440

.preheader3001:                                   ; preds = %bb.an, %.preheader3002
  %.18.lcssa = phi i64 [ 0, %.preheader3002 ], [ %i.bud, %bb.an ] ; 3 uses
  %i.brq = icmp slt i64 %.18.lcssa, %i.i
  br i1 %i.brq, label %.preheader2998.lr.ph, label %.preheader3000

.preheader2998.lr.ph:                             ; preds = %.preheader3001
  %i.brr = mul nuw nsw i64 %2, %indvars.iv3714
  %i.brs = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.brr ; 2 uses
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.brs, i64 %i.bjw
  br label %.lr.ph3454

.lr.ph3440:                                       ; preds = %bb.an, %.preheader2999.lr.ph
  %.183449 = phi i64 [ 0, %.preheader2999.lr.ph ], [ %i.bud, %bb.an ] ; 10 uses
  %i.bru = mul nsw i64 %.183449, %7
  %i.brv = getelementptr [8 x i8], ptr %6, i64 %i.bru
  %i.brw = or disjoint i64 %.183449, 1
  %i.brx = mul nsw i64 %i.brw, %7
  %i.bry = getelementptr [8 x i8], ptr %6, i64 %i.brx
  %i.brz = or disjoint i64 %.183449, 2
  %i.bsa = mul nsw i64 %i.brz, %7
  %i.bsb = getelementptr [8 x i8], ptr %6, i64 %i.bsa
  %i.bsc = or disjoint i64 %.183449, 3
  %i.bsd = mul nsw i64 %i.bsc, %7
  %i.bse = getelementptr [8 x i8], ptr %6, i64 %i.bsd
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph3440, %bb.al
  %.2027753439 = phi i64 [ 0, %.lr.ph3440 ], [ %i.bst, %bb.al ] ; 6 uses
  %.027983438 = phi <8 x double> [ zeroinitializer, %.lr.ph3440 ], [ %i.bss, %bb.al ]
  %.028003437 = phi <8 x double> [ zeroinitializer, %.lr.ph3440 ], [ %i.bsr, %bb.al ]
  %.028023436 = phi <8 x double> [ zeroinitializer, %.lr.ph3440 ], [ %i.bsq, %bb.al ]
  %.028043435 = phi <8 x double> [ zeroinitializer, %.lr.ph3440 ], [ %i.bsp, %bb.al ]
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %.2027753439
  %i.bsg = load <8 x double>, ptr %i.bsf, align 1, !tbaa !8 ; 4 uses
  %i.bsh = getelementptr [8 x i8], ptr %i.brv, i64 %.2027753439
  %i.bsi = load <8 x double>, ptr %i.bsh, align 1, !tbaa !8
  %i.bsj = getelementptr [8 x i8], ptr %i.bry, i64 %.2027753439
  %i.bsk = load <8 x double>, ptr %i.bsj, align 1, !tbaa !8
  %i.bsl = getelementptr [8 x i8], ptr %i.bsb, i64 %.2027753439
  %i.bsm = load <8 x double>, ptr %i.bsl, align 1, !tbaa !8
  %i.bsn = getelementptr [8 x i8], ptr %i.bse, i64 %.2027753439
  %i.bso = load <8 x double>, ptr %i.bsn, align 1, !tbaa !8
  %i.bsp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsg, <8 x double> %i.bsi, <8 x double> %.028043435) ; 3 uses
  %i.bsq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsg, <8 x double> %i.bsk, <8 x double> %.028023436) ; 3 uses
  %i.bsr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsg, <8 x double> %i.bsm, <8 x double> %.028003437) ; 3 uses
  %i.bss = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsg, <8 x double> %i.bso, <8 x double> %.027983438) ; 3 uses
  %i.bst = add nuw nsw i64 %.2027753439, 8        ; 2 uses
  %i.bsu = icmp samesign ult i64 %i.bst, %11
  br i1 %i.bsu, label %bb.al, label %._crit_edge3441, !llvm.loop !137

._crit_edge3441:                                  ; preds = %bb.al
  br i1 %.not2956, label %bb.an, label %bb.am

bb.am:                                            ; preds = %._crit_edge3441
  %i.bsv = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.brp, <8 x i1> %i.bkb, <8 x double> zeroinitializer) ; 4 uses
  %i.bsw = mul nsw i64 %.183449, %7
  %gep4045.a = getelementptr [8 x i8], ptr %invariant.gep4044.a, i64 %i.bsw
  %i.bsx = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4045.a, <8 x i1> %i.bkb, <8 x double> zeroinitializer)
  %i.bsy = or disjoint i64 %.183449, 1
  %i.bsz = mul nsw i64 %i.bsy, %7
  %gep4047.a = getelementptr [8 x i8], ptr %invariant.gep4046.a, i64 %i.bsz
  %i.bta = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4047.a, <8 x i1> %i.bkb, <8 x double> zeroinitializer)
  %i.btb = or disjoint i64 %.183449, 2
  %i.btc = mul nsw i64 %i.btb, %7
  %gep4049.a = getelementptr [8 x i8], ptr %invariant.gep4048.a, i64 %i.btc
  %i.btd = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4049.a, <8 x i1> %i.bkb, <8 x double> zeroinitializer)
  %i.bte = or disjoint i64 %.183449, 3
  %i.btf = mul nsw i64 %i.bte, %7
  %gep4051.a = getelementptr [8 x i8], ptr %invariant.gep4050.a, i64 %i.btf
  %i.btg = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4051.a, <8 x i1> %i.bkb, <8 x double> zeroinitializer)
  %i.bth = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsv, <8 x double> %i.bsx, <8 x double> %i.bsp)
  %i.bti = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsv, <8 x double> %i.bta, <8 x double> %i.bsq)
  %i.btj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsv, <8 x double> %i.btd, <8 x double> %i.bsr)
  %i.btk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsv, <8 x double> %i.btg, <8 x double> %i.bss)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge3441
  %.12805 = phi <8 x double> [ %i.bth, %bb.am ], [ %i.bsp, %._crit_edge3441 ] ; 2 uses
  %.12803 = phi <8 x double> [ %i.bti, %bb.am ], [ %i.bsq, %._crit_edge3441 ] ; 2 uses
  %.12801 = phi <8 x double> [ %i.btj, %bb.am ], [ %i.bsr, %._crit_edge3441 ] ; 2 uses
  %.12799 = phi <8 x double> [ %i.btk, %bb.am ], [ %i.bss, %._crit_edge3441 ] ; 2 uses
  %i.btl = shufflevector <8 x double> %.12805, <8 x double> %.12803, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.btm = shufflevector <8 x double> %.12805, <8 x double> %.12803, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.btn = shufflevector <8 x double> %.12801, <8 x double> %.12799, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bto = shufflevector <8 x double> %.12801, <8 x double> %.12799, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.btp = shufflevector <8 x double> %i.btl, <8 x double> %i.btn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.btq = shufflevector <8 x double> %i.btm, <8 x double> %i.bto, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.btr = shufflevector <8 x double> %i.btl, <8 x double> %i.btn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bts = shufflevector <8 x double> %i.btm, <8 x double> %i.bto, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.btt = fadd <8 x double> %i.btp, %i.btq
  %i.btu = fadd <8 x double> %i.btr, %i.bts
  %i.btv = fadd <8 x double> %i.btt, %i.btu       ; 2 uses
  %i.btw = shufflevector <8 x double> %i.btv, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btx = shufflevector <8 x double> %i.btv, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bty = fadd <4 x double> %i.btw, %i.btx
  %i.btz = fmul <4 x double> %i.avh, %i.bty
  %i.bua = mul nsw i64 %.183449, %10
  %gep3448 = getelementptr [8 x i8], ptr %invariant.gep3447, i64 %i.bua ; 2 uses
  %i.bub = tail call <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double> zeroinitializer, ptr %gep3448, <4 x i64> %i.avo, <4 x double> splat (double -nan(0x7FFFFFFFFFFFF)), i8 8)
  %i.buc = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %i.bub, <4 x double> %i.avj, <4 x double> %i.btz)
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %gep3448, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.buc, i32 8)
  %i.bud = add nuw nsw i64 %.183449, 4            ; 3 uses
  %i.bue = icmp slt i64 %i.bud, %i.h
  br i1 %i.bue, label %.lr.ph3440, label %.preheader3001, !llvm.loop !138

.preheader3000:                                   ; preds = %bb.aq, %.preheader3001
  %.19.lcssa = phi i64 [ %.18.lcssa, %.preheader3001 ], [ %i.bvq, %bb.aq ] ; 2 uses
  %i.buf = icmp slt i64 %.19.lcssa, %1
  br i1 %i.buf, label %.preheader2997.lr.ph, label %._crit_edge3474.a

.preheader2997.lr.ph:                             ; preds = %.preheader3000
  %i.bug = mul nuw nsw i64 %2, %indvars.iv3714
  %i.buh = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.bug ; 2 uses
  %i.bui = getelementptr inbounds nuw [8 x i8], ptr %i.buh, i64 %i.bjw
  br label %.lr.ph3467

.lr.ph3454:                                       ; preds = %bb.aq, %.preheader2998.lr.ph
  %.193463 = phi i64 [ %.18.lcssa, %.preheader2998.lr.ph ], [ %i.bvq, %bb.aq ] ; 7 uses
  %i.buj = mul nsw i64 %.193463, %7
  %i.buk = getelementptr [8 x i8], ptr %6, i64 %i.buj
  %i.bul = add nuw nsw i64 %.193463, 1
  %i.bum = mul nsw i64 %i.bul, %7
  %i.bun = getelementptr [8 x i8], ptr %6, i64 %i.bum
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph3454, %bb.ao
  %.213453 = phi i64 [ 0, %.lr.ph3454 ], [ %i.buw, %bb.ao ] ; 4 uses
  %.027783452 = phi <8 x double> [ zeroinitializer, %.lr.ph3454 ], [ %i.buv, %bb.ao ]
  %.027803451 = phi <8 x double> [ zeroinitializer, %.lr.ph3454 ], [ %i.buu, %bb.ao ]
  %i.buo = getelementptr inbounds nuw [8 x i8], ptr %i.brs, i64 %.213453
  %i.bup = load <8 x double>, ptr %i.buo, align 1, !tbaa !8 ; 2 uses
  %i.buq = getelementptr [8 x i8], ptr %i.buk, i64 %.213453
  %i.bur = load <8 x double>, ptr %i.buq, align 1, !tbaa !8
  %i.bus = getelementptr [8 x i8], ptr %i.bun, i64 %.213453
  %i.but = load <8 x double>, ptr %i.bus, align 1, !tbaa !8
  %i.buu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bup, <8 x double> %i.bur, <8 x double> %.027803451) ; 3 uses
  %i.buv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bup, <8 x double> %i.but, <8 x double> %.027783452) ; 3 uses
  %i.buw = add nuw nsw i64 %.213453, 8            ; 2 uses
  %i.bux = icmp samesign ult i64 %i.buw, %11
  br i1 %i.bux, label %bb.ao, label %._crit_edge3455, !llvm.loop !139

._crit_edge3455:                                  ; preds = %bb.ao
  br i1 %.not2954, label %._crit_edge3455._crit_edge, label %bb.ap

._crit_edge3455._crit_edge:                       ; preds = %._crit_edge3455
  %.pre3790 = add nuw nsw i64 %.193463, 1
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge3455
  %i.buy = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.brt, <8 x i1> %i.bkf, <8 x double> zeroinitializer) ; 2 uses
  %i.buz = mul nsw i64 %.193463, %7
  %gep4053 = getelementptr [8 x i8], ptr %invariant.gep4052, i64 %i.buz
  %i.bva = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4053, <8 x i1> %i.bkf, <8 x double> zeroinitializer)
  %i.bvb = add nuw nsw i64 %.193463, 1            ; 2 uses
  %i.bvc = mul nsw i64 %i.bvb, %7
  %gep4055 = getelementptr [8 x i8], ptr %invariant.gep4054, i64 %i.bvc
  %i.bvd = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4055, <8 x i1> %i.bkf, <8 x double> zeroinitializer)
  %i.bve = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.buy, <8 x double> %i.bva, <8 x double> %i.buu)
  %i.bvf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.buy, <8 x double> %i.bvd, <8 x double> %i.buv)
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge3455._crit_edge, %bb.ap
  %.pre-phi3791 = phi i64 [ %.pre3790, %._crit_edge3455._crit_edge ], [ %i.bvb, %bb.ap ]
  %.12781 = phi <8 x double> [ %i.buu, %._crit_edge3455._crit_edge ], [ %i.bve, %bb.ap ]
  %.12779 = phi <8 x double> [ %i.buv, %._crit_edge3455._crit_edge ], [ %i.bvf, %bb.ap ]
  %i.bvg = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12781)
  %i.bvh = mul nsw i64 %.193463, %10
  %gep3460 = getelementptr [8 x i8], ptr %invariant.gep3447, i64 %i.bvh ; 2 uses
  %i.bvi = load double, ptr %gep3460, align 8, !tbaa !110
  %i.bvj = fmul double %8, %i.bvi
  %i.bvk = tail call double @llvm.fmuladd.f64(double %5, double %i.bvg, double %i.bvj)
  store double %i.bvk, ptr %gep3460, align 8, !tbaa !110
  %i.bvl = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12779)
  %i.bvm = mul nsw i64 %.pre-phi3791, %10
  %gep3462 = getelementptr [8 x i8], ptr %invariant.gep3447, i64 %i.bvm ; 2 uses
  %i.bvn = load double, ptr %gep3462, align 8, !tbaa !110
  %i.bvo = fmul double %8, %i.bvn
  %i.bvp = tail call double @llvm.fmuladd.f64(double %5, double %i.bvl, double %i.bvo)
  store double %i.bvp, ptr %gep3462, align 8, !tbaa !110
  %i.bvq = add nuw nsw i64 %.193463, 2            ; 3 uses
  %i.bvr = icmp slt i64 %i.bvq, %i.i
  br i1 %i.bvr, label %.lr.ph3454, label %.preheader3000, !llvm.loop !140

.lr.ph3467:                                       ; preds = %bb.at, %.preheader2997.lr.ph
  %.203473 = phi i64 [ %.19.lcssa, %.preheader2997.lr.ph ], [ %i.bwk, %bb.at ] ; 4 uses
  %i.bvs = mul nsw i64 %.203473, %7
  %i.bvt = getelementptr [8 x i8], ptr %6, i64 %i.bvs
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph3467, %bb.ar
  %.223466 = phi i64 [ 0, %.lr.ph3467 ], [ %i.bvz, %bb.ar ] ; 3 uses
  %.027763465 = phi <8 x double> [ zeroinitializer, %.lr.ph3467 ], [ %i.bvy, %bb.ar ]
  %i.bvu = getelementptr inbounds nuw [8 x i8], ptr %i.buh, i64 %.223466
  %i.bvv = load <8 x double>, ptr %i.bvu, align 1, !tbaa !8
  %i.bvw = getelementptr [8 x i8], ptr %i.bvt, i64 %.223466
  %i.bvx = load <8 x double>, ptr %i.bvw, align 1, !tbaa !8
  %i.bvy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bvv, <8 x double> %i.bvx, <8 x double> %.027763465) ; 3 uses
  %i.bvz = add nuw nsw i64 %.223466, 8            ; 2 uses
  %i.bwa = icmp samesign ult i64 %i.bvz, %11
  br i1 %i.bwa, label %bb.ar, label %._crit_edge3468, !llvm.loop !141

._crit_edge3468:                                  ; preds = %bb.ar
  br i1 %.not2952, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge3468
  %i.bwb = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bui, <8 x i1> %i.bkj, <8 x double> zeroinitializer)
  %i.bwc = mul nsw i64 %.203473, %7
  %gep4057 = getelementptr [8 x i8], ptr %invariant.gep4056, i64 %i.bwc
  %i.bwd = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep4057, <8 x i1> %i.bkj, <8 x double> zeroinitializer)
  %i.bwe = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bwb, <8 x double> %i.bwd, <8 x double> %i.bvy)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge3468
  %.12777 = phi <8 x double> [ %i.bwe, %bb.as ], [ %i.bvy, %._crit_edge3468 ]
  %i.bwf = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12777)
  %i.bwg = mul nsw i64 %.203473, %10
  %gep3472 = getelementptr [8 x i8], ptr %invariant.gep3447, i64 %i.bwg ; 2 uses
  %i.bwh = load double, ptr %gep3472, align 8, !tbaa !110
  %i.bwi = fmul double %8, %i.bwh
  %i.bwj = tail call double @llvm.fmuladd.f64(double %5, double %i.bwf, double %i.bwi)
  store double %i.bwj, ptr %gep3472, align 8, !tbaa !110
  %i.bwk = add nuw nsw i64 %.203473, 1            ; 2 uses
  %exitcond3713.not = icmp eq i64 %i.bwk, %1
  br i1 %exitcond3713.not, label %._crit_edge3474.a, label %.lr.ph3467, !llvm.loop !142

._crit_edge3474.a:                                ; preds = %bb.at, %.preheader3000
  %i.bwl = add i64 %.53476, 1                     ; 2 uses
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 1
  %exitcond3717.not = icmp eq i64 %i.bwl, %0
  br i1 %exitcond3717.not, label %._crit_edge3477, label %.preheader3002, !llvm.loop !143

._crit_edge3477:                                  ; preds = %._crit_edge3474.a, %.preheader3003
  tail call void @free(ptr noundef %i.ask) #3
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge3529, %.preheader2993, %._crit_edge3477, %._crit_edge3268
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double>, ptr, <4 x i64>, <4 x double>, i8 immarg) #2

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatterdiv4.df(ptr, <4 x i1>, <4 x i64>, <4 x double>, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fma.v8f64(<8 x double>, <8 x double>, <8 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x double> @llvm.masked.load.v8f64.p0(ptr captures(none), <8 x i1>, <8 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f64.p0(<8 x double>, ptr captures(none), <8 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fma.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v8f64(double, <8 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 2153592710}
!12 = !{i64 2153592988}
!13 = !{i64 2153593266}
!14 = !{i64 2153593544}
!15 = !{i64 2153593822}
!16 = !{i64 2153594100}
!17 = !{i64 2153594378}
!18 = !{i64 2153594656}
!19 = !{i64 2153594934}
!20 = !{i64 2153595212}
!21 = !{i64 2153595490}
!22 = !{i64 2153595768}
!23 = !{i64 2153596046}
!24 = !{i64 2153596324}
!25 = !{i64 2153596602}
!26 = !{i64 2153596880}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{i64 2153598970}
!30 = !{i64 2153599248}
!31 = !{i64 2153599526}
!32 = !{i64 2153599804}
!33 = !{i64 2153600082}
!34 = !{i64 2153600360}
!35 = !{i64 2153600638}
!36 = !{i64 2153600916}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{i64 2153602238}
!42 = !{i64 2153602516}
!43 = !{i64 2153602794}
!44 = !{i64 2153603072}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{i64 2153610225}
!49 = !{i64 2153610503}
!50 = !{i64 2153610781}
!51 = !{i64 2153611059}
!52 = !{i64 2153611337}
!53 = !{i64 2153611615}
!54 = !{i64 2153611893}
!55 = !{i64 2153612171}
!56 = !{i64 2153612449}
!57 = !{i64 2153612727}
!58 = !{i64 2153613005}
!59 = !{i64 2153613283}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !40}
!63 = !{i64 2153614591}
!64 = !{i64 2153614869}
!65 = !{i64 2153615147}
!66 = !{i64 2153615425}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !40}
!70 = !{i64 2153616287}
!71 = !{i64 2153616565}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = !{i64 2153618622}
!76 = !{i64 2153618900}
!77 = !{i64 2153619178}
!78 = !{i64 2153619456}
!79 = !{i64 2153619734}
!80 = !{i64 2153620012}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !40}
!84 = !{i64 2153621839}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !40}
!88 = !{i64 2153620929}
!89 = !{i64 2153621207}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{i64 2153627969}
!94 = !{i64 2153628277}
!95 = !{i64 2153628585}
!96 = !{i64 2153628893}
!97 = !{i64 2153629201}
!98 = !{i64 2153629509}
!99 = distinct !{!99, !10}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !40}
!102 = !{i64 2153630468}
!103 = !{i64 2153630776}
!104 = distinct !{!104, !10}
end_hunk_1
