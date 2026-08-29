Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_small_kernel_b0_nn?download=true
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dgemm_small_kernel_b0_nn:bb.a
  %i.acq = sub i64 %1, %.82759.ph
  %xtraiter3993 = and i64 %i.acq, 7               ; 2 uses
  %lcmp.mod3994.not = icmp eq i64 %xtraiter3993, 0
  br i1 %lcmp.mod3994.not, label %.preheader2513.prol.loopexit, label %.preheader2513.prol

.preheader2513.prol:                              ; preds = %.preheader2513.preheader, %.preheader2513.prol
  %.82759.prol = phi i64 [ %i.acs, %.preheader2513.prol ], [ %.82759.ph, %.preheader2513.preheader ] ; 2 uses
  %prol.iter3995 = phi i64 [ %prol.iter3995.next, %.preheader2513.prol ], [ 0, %.preheader2513.preheader ]
  %i.acr = mul nsw i64 %.82759.prol, %9
  %gep2758.prol = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.acr
  store <8 x double> %i.kv, ptr %gep2758.prol, align 1, !tbaa !8
  %i.acs = add nuw nsw i64 %.82759.prol, 1        ; 2 uses
  %prol.iter3995.next = add i64 %prol.iter3995, 1 ; 2 uses
  %prol.iter3995.cmp.not = icmp eq i64 %prol.iter3995.next, %xtraiter3993
  br i1 %prol.iter3995.cmp.not, label %.preheader2513.prol.loopexit, label %.preheader2513.prol, !llvm.loop !35

.preheader2513.prol.loopexit:                     ; preds = %.preheader2513.prol, %.preheader2513.preheader
  %.82759.unr = phi i64 [ %.82759.ph, %.preheader2513.preheader ], [ %i.acs, %.preheader2513.prol ]
  %i.act = sub i64 %.82759.ph, %1
  %i.acu = icmp ugt i64 %i.act, -8
  br i1 %i.acu, label %._crit_edge2760, label %.preheader2513

.preheader2513.us:                                ; preds = %.preheader2513.lr.ph, %._crit_edge2753.us
  %.82759.us = phi i64 [ %i.afj, %._crit_edge2753.us ], [ %.7.lcssa, %.preheader2513.lr.ph ] ; 3 uses
  %i.acv = mul nsw i64 %.82759.us, %7
  %invariant.gep2755.us = getelementptr [8 x i8], ptr %6, i64 %i.acv ; 9 uses
  br i1 %i.kz, label %.epil.preheader3996, label %.preheader2513.us.new

.preheader2513.us.new:                            ; preds = %.preheader2513.us, %.preheader2513.us.new
  %.822682751.us = phi i64 [ %i.aez, %.preheader2513.us.new ], [ 0, %.preheader2513.us ] ; 10 uses
  %.023612750.us = phi <8 x double> [ %i.aey, %.preheader2513.us.new ], [ zeroinitializer, %.preheader2513.us ]
  %niter4003 = phi i64 [ %niter4003.next.7, %.preheader2513.us.new ], [ 0, %.preheader2513.us ]
  %i.acw = mul nsw i64 %.822682751.us, %4
  %gep2749.us = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.acw
  %i.acx = load <8 x double>, ptr %gep2749.us, align 1, !tbaa !8
  %gep2756.us = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %.822682751.us
  %i.acy = load double, ptr %gep2756.us, align 1, !tbaa !8
  %i.acz = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.ada = shufflevector <2 x double> %i.acz, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.acx, <8 x double> %i.ada, <8 x double> %.023612750.us)
  %i.adc = or disjoint i64 %.822682751.us, 1      ; 2 uses
  %i.add = mul nsw i64 %i.adc, %4
  %gep2749.us.1 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.add
  %i.ade = load <8 x double>, ptr %gep2749.us.1, align 1, !tbaa !8
  %gep2756.us.1 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.adc
  %i.adf = load double, ptr %gep2756.us.1, align 1, !tbaa !8
  %i.adg = insertelement <2 x double> poison, double %i.adf, i64 0
  %i.adh = shufflevector <2 x double> %i.adg, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adi = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ade, <8 x double> %i.adh, <8 x double> %i.adb)
  %i.adj = or disjoint i64 %.822682751.us, 2      ; 2 uses
  %i.adk = mul nsw i64 %i.adj, %4
  %gep2749.us.2 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.adk
  %i.adl = load <8 x double>, ptr %gep2749.us.2, align 1, !tbaa !8
  %gep2756.us.2 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.adj
  %i.adm = load double, ptr %gep2756.us.2, align 1, !tbaa !8
  %i.adn = insertelement <2 x double> poison, double %i.adm, i64 0
  %i.ado = shufflevector <2 x double> %i.adn, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.adl, <8 x double> %i.ado, <8 x double> %i.adi)
  %i.adq = or disjoint i64 %.822682751.us, 3      ; 2 uses
  %i.adr = mul nsw i64 %i.adq, %4
  %gep2749.us.3 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.adr
  %i.ads = load <8 x double>, ptr %gep2749.us.3, align 1, !tbaa !8
  %gep2756.us.3 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.adq
  %i.adt = load double, ptr %gep2756.us.3, align 1, !tbaa !8
  %i.adu = insertelement <2 x double> poison, double %i.adt, i64 0
  %i.adv = shufflevector <2 x double> %i.adu, <2 x double> poison, <8 x i32> zeroinitializer
  %i.adw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ads, <8 x double> %i.adv, <8 x double> %i.adp)
  %i.adx = or disjoint i64 %.822682751.us, 4      ; 2 uses
  %i.ady = mul nsw i64 %i.adx, %4
  %gep2749.us.4 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.ady
  %i.adz = load <8 x double>, ptr %gep2749.us.4, align 1, !tbaa !8
  %gep2756.us.4 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.adx
  %i.aea = load double, ptr %gep2756.us.4, align 1, !tbaa !8
  %i.aeb = insertelement <2 x double> poison, double %i.aea, i64 0
  %i.aec = shufflevector <2 x double> %i.aeb, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aed = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.adz, <8 x double> %i.aec, <8 x double> %i.adw)
  %i.aee = or disjoint i64 %.822682751.us, 5      ; 2 uses
  %i.aef = mul nsw i64 %i.aee, %4
  %gep2749.us.5 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.aef
  %i.aeg = load <8 x double>, ptr %gep2749.us.5, align 1, !tbaa !8
  %gep2756.us.5 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.aee
  %i.aeh = load double, ptr %gep2756.us.5, align 1, !tbaa !8
  %i.aei = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.aej = shufflevector <2 x double> %i.aei, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aek = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aeg, <8 x double> %i.aej, <8 x double> %i.aed)
  %i.ael = or disjoint i64 %.822682751.us, 6      ; 2 uses
  %i.aem = mul nsw i64 %i.ael, %4
  %gep2749.us.6 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.aem
  %i.aen = load <8 x double>, ptr %gep2749.us.6, align 1, !tbaa !8
  %gep2756.us.6 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.ael
  %i.aeo = load double, ptr %gep2756.us.6, align 1, !tbaa !8
  %i.aep = insertelement <2 x double> poison, double %i.aeo, i64 0
  %i.aeq = shufflevector <2 x double> %i.aep, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aer = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aen, <8 x double> %i.aeq, <8 x double> %i.aek)
  %i.aes = or disjoint i64 %.822682751.us, 7      ; 2 uses
  %i.aet = mul nsw i64 %i.aes, %4
  %gep2749.us.7 = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.aet
  %i.aeu = load <8 x double>, ptr %gep2749.us.7, align 1, !tbaa !8
  %gep2756.us.7 = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %i.aes
  %i.aev = load double, ptr %gep2756.us.7, align 1, !tbaa !8
  %i.aew = insertelement <2 x double> poison, double %i.aev, i64 0
  %i.aex = shufflevector <2 x double> %i.aew, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aey = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aeu, <8 x double> %i.aex, <8 x double> %i.aer) ; 3 uses
  %i.aez = add nuw nsw i64 %.822682751.us, 8      ; 2 uses
  %niter4003.next.7 = add nuw nsw i64 %niter4003, 8 ; 2 uses
  %niter4003.ncmp.7 = icmp eq i64 %niter4003.next.7, %unroll_iter4002
  br i1 %niter4003.ncmp.7, label %._crit_edge2753.us.unr-lcssa, label %.preheader2513.us.new, !llvm.loop !36

._crit_edge2753.us.unr-lcssa:                     ; preds = %.preheader2513.us.new
  br i1 %lcmp.mod3999.not, label %._crit_edge2753.us, label %.epil.preheader3996

.epil.preheader3996:                              ; preds = %._crit_edge2753.us.unr-lcssa, %.preheader2513.us
  %.822682751.us.epil.init = phi i64 [ 0, %.preheader2513.us ], [ %i.aez, %._crit_edge2753.us.unr-lcssa ]
  %.023612750.us.epil.init = phi <8 x double> [ zeroinitializer, %.preheader2513.us ], [ %i.aey, %._crit_edge2753.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4001)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader3996
  %.822682751.us.epil = phi i64 [ %.822682751.us.epil.init, %.epil.preheader3996 ], [ %i.afg, %bb.h ] ; 3 uses
  %.023612750.us.epil = phi <8 x double> [ %.023612750.us.epil.init, %.epil.preheader3996 ], [ %i.aff, %bb.h ]
  %epil.iter3998 = phi i64 [ 0, %.epil.preheader3996 ], [ %epil.iter3998.next, %bb.h ]
  %i.afa = mul nsw i64 %.822682751.us.epil, %4
  %gep2749.us.epil = getelementptr [8 x i8], ptr %invariant.gep2748, i64 %i.afa
  %i.afb = load <8 x double>, ptr %gep2749.us.epil, align 1, !tbaa !8
  %gep2756.us.epil = getelementptr [8 x i8], ptr %invariant.gep2755.us, i64 %.822682751.us.epil
  %i.afc = load double, ptr %gep2756.us.epil, align 1, !tbaa !8
  %i.afd = insertelement <2 x double> poison, double %i.afc, i64 0
  %i.afe = shufflevector <2 x double> %i.afd, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aff = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.afb, <8 x double> %i.afe, <8 x double> %.023612750.us.epil) ; 2 uses
  %i.afg = add nuw nsw i64 %.822682751.us.epil, 1
  %epil.iter3998.next = add i64 %epil.iter3998, 1 ; 2 uses
  %epil.iter3998.cmp.not = icmp eq i64 %epil.iter3998.next, %xtraiter3997
  br i1 %epil.iter3998.cmp.not, label %._crit_edge2753.us, label %bb.h, !llvm.loop !37

._crit_edge2753.us:                               ; preds = %bb.h, %._crit_edge2753.us.unr-lcssa
  %.lcssa3871 = phi <8 x double> [ %i.aey, %._crit_edge2753.us.unr-lcssa ], [ %i.aff, %bb.h ]
  %i.afh = fmul <8 x double> %i.k, %.lcssa3871
  %i.afi = mul nsw i64 %.82759.us, %9
  %gep2758.us = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afi
  store <8 x double> %i.afh, ptr %gep2758.us, align 1, !tbaa !8
  %i.afj = add nuw nsw i64 %.82759.us, 1          ; 2 uses
  %exitcond3202.not = icmp eq i64 %i.afj, %1
  br i1 %exitcond3202.not, label %._crit_edge2760, label %.preheader2513.us, !llvm.loop !38

.preheader2514:                                   ; preds = %.preheader2514.lr.ph, %.preheader2514
  %.72746 = phi i64 [ %i.afn, %.preheader2514 ], [ %.6.lcssa, %.preheader2514.lr.ph ] ; 3 uses
  %i.afk = mul nsw i64 %.72746, %9
  %gep2743 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afk
  store <8 x double> %i.kv, ptr %gep2743, align 1, !tbaa !8
  %i.afl = add nuw nsw i64 %.72746, 1
  %i.afm = mul nsw i64 %i.afl, %9
  %gep2745 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afm
  store <8 x double> %i.kv, ptr %gep2745, align 1, !tbaa !8
  %i.afn = add nuw nsw i64 %.72746, 2             ; 4 uses
  %i.afo = icmp slt i64 %i.afn, %i.i
  br i1 %i.afo, label %.preheader2514, label %.preheader2516.thread, !llvm.loop !32

.preheader2513:                                   ; preds = %.preheader2513.prol.loopexit, %.preheader2513
  %.82759 = phi i64 [ %i.age, %.preheader2513 ], [ %.82759.unr, %.preheader2513.prol.loopexit ] ; 9 uses
  %i.afp = mul nsw i64 %.82759, %9
  %gep2758 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afp
  store <8 x double> %i.kv, ptr %gep2758, align 1, !tbaa !8
  %i.afq = add nuw nsw i64 %.82759, 1
  %i.afr = mul nsw i64 %i.afq, %9
  %gep2758.1 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afr
  store <8 x double> %i.kv, ptr %gep2758.1, align 1, !tbaa !8
  %i.afs = add nuw nsw i64 %.82759, 2
  %i.aft = mul nsw i64 %i.afs, %9
  %gep2758.2 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.aft
  store <8 x double> %i.kv, ptr %gep2758.2, align 1, !tbaa !8
  %i.afu = add nuw nsw i64 %.82759, 3
  %i.afv = mul nsw i64 %i.afu, %9
  %gep2758.3 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afv
  store <8 x double> %i.kv, ptr %gep2758.3, align 1, !tbaa !8
  %i.afw = add nuw nsw i64 %.82759, 4
  %i.afx = mul nsw i64 %i.afw, %9
  %gep2758.4 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afx
  store <8 x double> %i.kv, ptr %gep2758.4, align 1, !tbaa !8
  %i.afy = add nuw nsw i64 %.82759, 5
  %i.afz = mul nsw i64 %i.afy, %9
  %gep2758.5 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.afz
  store <8 x double> %i.kv, ptr %gep2758.5, align 1, !tbaa !8
  %i.aga = add nuw nsw i64 %.82759, 6
  %i.agb = mul nsw i64 %i.aga, %9
  %gep2758.6 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.agb
  store <8 x double> %i.kv, ptr %gep2758.6, align 1, !tbaa !8
  %i.agc = add nuw nsw i64 %.82759, 7
  %i.agd = mul nsw i64 %i.agc, %9
  %gep2758.7 = getelementptr [8 x i8], ptr %invariant.gep2719, i64 %i.agd
  store <8 x double> %i.kv, ptr %gep2758.7, align 1, !tbaa !8
  %i.age = add nuw nsw i64 %.82759, 8             ; 2 uses
  %exitcond3200.not.7 = icmp eq i64 %i.age, %1
  br i1 %exitcond3200.not.7, label %._crit_edge2760, label %.preheader2513, !llvm.loop !38

._crit_edge2760:                                  ; preds = %.preheader2513.prol.loopexit, %.preheader2513, %._crit_edge2753.us, %.preheader2516.thread, %.preheader2516
  %i.agf = add nuw nsw i64 %.22761, 8             ; 3 uses
  %i.agg = icmp slt i64 %i.agf, %i.c
  br i1 %i.agg, label %.preheader2518, label %._crit_edge2762, !llvm.loop !39

._crit_edge2762:                                  ; preds = %._crit_edge2760, %.preheader2519
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader2519 ], [ %i.agf, %._crit_edge2760 ] ; 9 uses
  %i.agh = sub nsw i64 %0, %.2.lcssa              ; 7 uses
  %i.agi = trunc i64 %i.agh to i32                ; 4 uses
  %.not = icmp eq i32 %i.agi, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge2762
  %i.agj = icmp sgt i32 %i.agi, 4
  %i.agk = icmp slt i64 %2, 16
  %or.cond = or i1 %i.agk, %i.agj
  br i1 %or.cond, label %bb.j, label %.lr.ph2768

bb.j:                                             ; preds = %bb.i
  %i.agl = and i64 %i.agh, 4294967295
  %notmask2476 = shl nsw i64 -1, %i.agl
  %i.agm = trunc i64 %notmask2476 to i8
  %i.agn = xor i8 %i.agm, -1                      ; 3 uses
  %invariant.gep2989 = getelementptr [8 x i8], ptr %8, i64 %.2.lcssa ; 18 uses
  %i.ago = icmp sgt i64 %i.g, 0
  br i1 %i.ago, label %.preheader2490.lr.ph, label %.preheader2489

.preheader2490.lr.ph:                             ; preds = %bb.j
  %invariant.gep2972 = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 3 uses
  %i.agp = icmp sgt i64 %2, 0
  %i.agq = bitcast i8 %i.agn to <8 x i1>          ; 9 uses
  %xtraiter4015 = and i64 %2, 1
  %i.agr = icmp eq i64 %2, 1
  %unroll_iter4025 = and i64 %2, 9223372036854775806
  %lcmp.mod4017.not = icmp eq i64 %xtraiter4015, 0
  %lcmp.mod4024 = trunc i64 %2 to i1
  br label %.preheader2490

.preheader2490:                                   ; preds = %.preheader2490.lr.ph, %._crit_edge2982
  %.93001 = phi i64 [ 0, %.preheader2490.lr.ph ], [ %i.alr, %._crit_edge2982 ] ; 13 uses
  br i1 %i.agp, label %.lr.ph2981, label %.preheader2490.._crit_edge2982_crit_edge

.preheader2490.._crit_edge2982_crit_edge:         ; preds = %.preheader2490
  %.pre3344 = or disjoint i64 %.93001, 1
  %.pre3346 = add nuw nsw i64 %.93001, 2
  %.pre3348 = add nuw nsw i64 %.93001, 3
  %.pre3350 = add nuw nsw i64 %.93001, 4
  %.pre3352 = add nuw nsw i64 %.93001, 5
  br label %._crit_edge2982

.lr.ph2981:                                       ; preds = %.preheader2490
  %i.ags = mul nsw i64 %.93001, %7                ; 3 uses
  %i.agt = or disjoint i64 %.93001, 1             ; 3 uses
  %i.agu = mul nsw i64 %i.agt, %7                 ; 3 uses
  %i.agv = add nuw nsw i64 %.93001, 2             ; 3 uses
  %i.agw = mul nsw i64 %i.agv, %7                 ; 3 uses
  %i.agx = add nuw nsw i64 %.93001, 3             ; 3 uses
  %i.agy = mul nsw i64 %i.agx, %7                 ; 3 uses
  %i.agz = add nuw nsw i64 %.93001, 4             ; 3 uses
  %i.aha = mul nsw i64 %i.agz, %7                 ; 3 uses
  %i.ahb = add nuw nsw i64 %.93001, 5             ; 3 uses
  %i.ahc = mul nsw i64 %i.ahb, %7                 ; 3 uses
  br i1 %i.agr, label %.epil.preheader4014, label %.lr.ph2981.new

.preheader2489:                                   ; preds = %._crit_edge2982, %bb.j
  %.9.lcssa = phi i64 [ 0, %bb.j ], [ %i.alr, %._crit_edge2982 ] ; 3 uses
  %i.ahd = icmp slt i64 %.9.lcssa, %i.i
  br i1 %i.ahd, label %.preheader2488.lr.ph, label %.preheader2487

.preheader2488.lr.ph:                             ; preds = %.preheader2489
  %invariant.gep3003 = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 5 uses
  %i.ahe = icmp sgt i64 %2, 0
  %i.ahf = bitcast i8 %i.agn to <8 x i1>          ; 7 uses
  %i.ahg = add i64 %2, -1
  %xtraiter4028 = and i64 %2, 3                   ; 3 uses
  %i.ahh = icmp ult i64 %i.ahg, 3
  %unroll_iter4034 = and i64 %2, 9223372036854775804
  %lcmp.mod4030.not = icmp eq i64 %xtraiter4028, 0
  %lcmp.mod4033 = icmp ne i64 %xtraiter4028, 0
  br label %.preheader2488

.lr.ph2981.new:                                   ; preds = %.lr.ph2981, %.lr.ph2981.new
  %.922692980 = phi i64 [ %i.ajx, %.lr.ph2981.new ], [ 0, %.lr.ph2981 ] ; 4 uses
  %.023622979 = phi <8 x double> [ %i.ajr, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %.023632978 = phi <8 x double> [ %i.ajs, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %.023642977 = phi <8 x double> [ %i.ajt, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %.023652976 = phi <8 x double> [ %i.aju, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %.023662975 = phi <8 x double> [ %i.ajv, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %.023832974 = phi <8 x double> [ %i.ajw, %.lr.ph2981.new ], [ zeroinitializer, %.lr.ph2981 ]
  %niter4026 = phi i64 [ %niter4026.next.1, %.lr.ph2981.new ], [ 0, %.lr.ph2981 ]
  %i.ahi = mul nsw i64 %.922692980, %4
  %gep2973 = getelementptr [8 x i8], ptr %invariant.gep2972, i64 %i.ahi
  %i.ahj = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep2973, <8 x i1> %i.agq, <8 x double> zeroinitializer) ; 6 uses
  %i.ahk = getelementptr [8 x i8], ptr %6, i64 %.922692980 ; 6 uses
  %i.ahl = getelementptr [8 x i8], ptr %i.ahk, i64 %i.ags
  %i.ahm = load double, ptr %i.ahl, align 1, !tbaa !8
  %i.ahn = insertelement <2 x double> poison, double %i.ahm, i64 0
  %i.aho = shufflevector <2 x double> %i.ahn, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ahp = getelementptr [8 x i8], ptr %i.ahk, i64 %i.agu
  %i.ahq = load double, ptr %i.ahp, align 1, !tbaa !8
  %i.ahr = insertelement <2 x double> poison, double %i.ahq, i64 0
  %i.ahs = shufflevector <2 x double> %i.ahr, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aht = getelementptr [8 x i8], ptr %i.ahk, i64 %i.agw
  %i.ahu = load double, ptr %i.aht, align 1, !tbaa !8
  %i.ahv = insertelement <2 x double> poison, double %i.ahu, i64 0
  %i.ahw = shufflevector <2 x double> %i.ahv, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ahx = getelementptr [8 x i8], ptr %i.ahk, i64 %i.agy
  %i.ahy = load double, ptr %i.ahx, align 1, !tbaa !8
  %i.ahz = insertelement <2 x double> poison, double %i.ahy, i64 0
  %i.aia = shufflevector <2 x double> %i.ahz, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aib = getelementptr [8 x i8], ptr %i.ahk, i64 %i.aha
  %i.aic = load double, ptr %i.aib, align 1, !tbaa !8
  %i.aid = insertelement <2 x double> poison, double %i.aic, i64 0
  %i.aie = shufflevector <2 x double> %i.aid, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aif = getelementptr [8 x i8], ptr %i.ahk, i64 %i.ahc
  %i.aig = load double, ptr %i.aif, align 1, !tbaa !8
  %i.aih = insertelement <2 x double> poison, double %i.aig, i64 0
  %i.aii = shufflevector <2 x double> %i.aih, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aij = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.aho, <8 x double> %.023622979)
  %i.aik = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.ahs, <8 x double> %.023632978)
  %i.ail = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.ahw, <8 x double> %.023642977)
  %i.aim = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.aia, <8 x double> %.023652976)
  %i.ain = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.aie, <8 x double> %.023662975)
  %i.aio = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ahj, <8 x double> %i.aii, <8 x double> %.023832974)
  %i.aip = or disjoint i64 %.922692980, 1         ; 2 uses
  %i.aiq = mul nsw i64 %i.aip, %4
  %gep2973.1 = getelementptr [8 x i8], ptr %invariant.gep2972, i64 %i.aiq
  %i.air = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep2973.1, <8 x i1> %i.agq, <8 x double> zeroinitializer) ; 6 uses
  %i.ais = getelementptr [8 x i8], ptr %6, i64 %i.aip ; 6 uses
  %i.ait = getelementptr [8 x i8], ptr %i.ais, i64 %i.ags
  %i.aiu = load double, ptr %i.ait, align 1, !tbaa !8
  %i.aiv = insertelement <2 x double> poison, double %i.aiu, i64 0
  %i.aiw = shufflevector <2 x double> %i.aiv, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aix = getelementptr [8 x i8], ptr %i.ais, i64 %i.agu
  %i.aiy = load double, ptr %i.aix, align 1, !tbaa !8
  %i.aiz = insertelement <2 x double> poison, double %i.aiy, i64 0
  %i.aja = shufflevector <2 x double> %i.aiz, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajb = getelementptr [8 x i8], ptr %i.ais, i64 %i.agw
  %i.ajc = load double, ptr %i.ajb, align 1, !tbaa !8
  %i.ajd = insertelement <2 x double> poison, double %i.ajc, i64 0
  %i.aje = shufflevector <2 x double> %i.ajd, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajf = getelementptr [8 x i8], ptr %i.ais, i64 %i.agy
  %i.ajg = load double, ptr %i.ajf, align 1, !tbaa !8
  %i.ajh = insertelement <2 x double> poison, double %i.ajg, i64 0
  %i.aji = shufflevector <2 x double> %i.ajh, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajj = getelementptr [8 x i8], ptr %i.ais, i64 %i.aha
  %i.ajk = load double, ptr %i.ajj, align 1, !tbaa !8
  %i.ajl = insertelement <2 x double> poison, double %i.ajk, i64 0
  %i.ajm = shufflevector <2 x double> %i.ajl, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajn = getelementptr [8 x i8], ptr %i.ais, i64 %i.ahc
  %i.ajo = load double, ptr %i.ajn, align 1, !tbaa !8
  %i.ajp = insertelement <2 x double> poison, double %i.ajo, i64 0
  %i.ajq = shufflevector <2 x double> %i.ajp, <2 x double> poison, <8 x i32> zeroinitializer
  %i.ajr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.aiw, <8 x double> %i.aij) ; 3 uses
  %i.ajs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.aja, <8 x double> %i.aik) ; 3 uses
  %i.ajt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.aje, <8 x double> %i.ail) ; 3 uses
  %i.aju = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.aji, <8 x double> %i.aim) ; 3 uses
  %i.ajv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.ajm, <8 x double> %i.ain) ; 3 uses
  %i.ajw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.air, <8 x double> %i.ajq, <8 x double> %i.aio) ; 3 uses
  %i.ajx = add nuw nsw i64 %.922692980, 2         ; 2 uses
  %niter4026.next.1 = add nuw nsw i64 %niter4026, 2 ; 2 uses
  %niter4026.ncmp.1 = icmp eq i64 %niter4026.next.1, %unroll_iter4025
  br i1 %niter4026.ncmp.1, label %._crit_edge2982.loopexit.unr-lcssa, label %.lr.ph2981.new, !llvm.loop !40

._crit_edge2982.loopexit.unr-lcssa:               ; preds = %.lr.ph2981.new
  br i1 %lcmp.mod4017.not, label %._crit_edge2982, label %.epil.preheader4014

.epil.preheader4014:                              ; preds = %._crit_edge2982.loopexit.unr-lcssa, %.lr.ph2981
  %.922692980.epil.init = phi i64 [ 0, %.lr.ph2981 ], [ %i.ajx, %._crit_edge2982.loopexit.unr-lcssa ] ; 2 uses
  %.023622979.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.ajr, %._crit_edge2982.loopexit.unr-lcssa ]
  %.023632978.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.ajs, %._crit_edge2982.loopexit.unr-lcssa ]
  %.023642977.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.ajt, %._crit_edge2982.loopexit.unr-lcssa ]
  %.023652976.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.aju, %._crit_edge2982.loopexit.unr-lcssa ]
  %.023662975.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.ajv, %._crit_edge2982.loopexit.unr-lcssa ]
  %.023832974.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph2981 ], [ %i.ajw, %._crit_edge2982.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4024)
  %i.ajy = mul nsw i64 %.922692980.epil.init, %4
  %gep2973.epil = getelementptr [8 x i8], ptr %invariant.gep2972, i64 %i.ajy
  %i.ajz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep2973.epil, <8 x i1> %i.agq, <8 x double> zeroinitializer) ; 6 uses
  %i.aka = getelementptr [8 x i8], ptr %6, i64 %.922692980.epil.init ; 6 uses
  %i.akb = getelementptr [8 x i8], ptr %i.aka, i64 %i.ags
  %i.akc = load double, ptr %i.akb, align 1, !tbaa !8
  %i.akd = insertelement <2 x double> poison, double %i.akc, i64 0
  %i.ake = shufflevector <2 x double> %i.akd, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akf = getelementptr [8 x i8], ptr %i.aka, i64 %i.agu
  %i.akg = load double, ptr %i.akf, align 1, !tbaa !8
  %i.akh = insertelement <2 x double> poison, double %i.akg, i64 0
  %i.aki = shufflevector <2 x double> %i.akh, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akj = getelementptr [8 x i8], ptr %i.aka, i64 %i.agw
  %i.akk = load double, ptr %i.akj, align 1, !tbaa !8
  %i.akl = insertelement <2 x double> poison, double %i.akk, i64 0
  %i.akm = shufflevector <2 x double> %i.akl, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akn = getelementptr [8 x i8], ptr %i.aka, i64 %i.agy
  %i.ako = load double, ptr %i.akn, align 1, !tbaa !8
  %i.akp = insertelement <2 x double> poison, double %i.ako, i64 0
  %i.akq = shufflevector <2 x double> %i.akp, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akr = getelementptr [8 x i8], ptr %i.aka, i64 %i.aha
  %i.aks = load double, ptr %i.akr, align 1, !tbaa !8
  %i.akt = insertelement <2 x double> poison, double %i.aks, i64 0
  %i.aku = shufflevector <2 x double> %i.akt, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akv = getelementptr [8 x i8], ptr %i.aka, i64 %i.ahc
  %i.akw = load double, ptr %i.akv, align 1, !tbaa !8
  %i.akx = insertelement <2 x double> poison, double %i.akw, i64 0
  %i.aky = shufflevector <2 x double> %i.akx, <2 x double> poison, <8 x i32> zeroinitializer
  %i.akz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajz, <8 x double> %i.ake, <8 x double> %.023622979.epil.init)
  %i.ala = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajz, <8 x double> %i.aki, <8 x double> %.023632978.epil.init)
  %i.alb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ajz, <8 x double> %i.akm, <8 x double> %.023642977.epil.init)
end_hunk_0
begin_hunk_1_@dgemm_small_kernel_b0_nn:bb.a
  %i.aom = add nuw nsw i64 %.1122713021.us.epil, 1
  %epil.iter4041.next = add i64 %epil.iter4041, 1 ; 2 uses
  %epil.iter4041.cmp.not = icmp eq i64 %epil.iter4041.next, %xtraiter4040
  br i1 %epil.iter4041.cmp.not, label %._crit_edge3023.us, label %bb.k, !llvm.loop !43

._crit_edge3023.us:                               ; preds = %bb.k, %._crit_edge3023.us.unr-lcssa
  %.lcssa = phi <8 x double> [ %i.aoe, %._crit_edge3023.us.unr-lcssa ], [ %i.aol, %bb.k ]
  %i.aon = fmul <8 x double> %i.k, %.lcssa
  %i.aoo = mul nsw i64 %.113029.us, %9
  %gep3028.us = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.aoo
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aon, ptr align 1 %gep3028.us, <8 x i1> %i.aly)
  %i.aop = add nuw nsw i64 %.113029.us, 1         ; 2 uses
  %exitcond3223.not = icmp eq i64 %i.aop, %1
  br i1 %exitcond3223.not, label %.loopexit, label %.preheader.us, !llvm.loop !44

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aoq = fmul <8 x double> %i.k, zeroinitializer ; 9 uses
  %i.aor = sub i64 %1, %.10.lcssa
  %xtraiter4036 = and i64 %i.aor, 7               ; 2 uses
  %lcmp.mod4037.not = icmp eq i64 %xtraiter4036, 0
  br i1 %lcmp.mod4037.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.lr.ph.split, %.preheader.prol
  %.113029.prol = phi i64 [ %i.aot, %.preheader.prol ], [ %.10.lcssa, %.preheader.lr.ph.split ] ; 2 uses
  %prol.iter4038 = phi i64 [ %prol.iter4038.next, %.preheader.prol ], [ 0, %.preheader.lr.ph.split ]
  %i.aos = mul nsw i64 %.113029.prol, %9
  %gep3028.prol = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.aos
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.prol, <8 x i1> %i.aly)
  %i.aot = add nuw nsw i64 %.113029.prol, 1       ; 2 uses
  %prol.iter4038.next = add i64 %prol.iter4038, 1 ; 2 uses
  %prol.iter4038.cmp.not = icmp eq i64 %prol.iter4038.next, %xtraiter4036
  br i1 %prol.iter4038.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !45

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.lr.ph.split
  %.113029.unr = phi i64 [ %.10.lcssa, %.preheader.lr.ph.split ], [ %i.aot, %.preheader.prol ]
  %i.aou = sub i64 %.10.lcssa, %1
  %i.aov = icmp ugt i64 %i.aou, -8
  br i1 %i.aov, label %.loopexit, label %.preheader

.lr.ph3008.new:                                   ; preds = %.lr.ph3008, %.lr.ph3008.new
  %.1022703007 = phi i64 [ %i.aqz, %.lr.ph3008.new ], [ 0, %.lr.ph3008 ] ; 6 uses
  %.023843006 = phi <8 x double> [ %i.aqx, %.lr.ph3008.new ], [ zeroinitializer, %.lr.ph3008 ]
  %.023853005 = phi <8 x double> [ %i.aqy, %.lr.ph3008.new ], [ zeroinitializer, %.lr.ph3008 ]
  %niter4035 = phi i64 [ %niter4035.next.3, %.lr.ph3008.new ], [ 0, %.lr.ph3008 ]
  %i.aow = mul nsw i64 %.1022703007, %4
  %gep3004 = getelementptr [8 x i8], ptr %invariant.gep3003, i64 %i.aow
  %i.aox = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3004, <8 x i1> %i.ahf, <8 x double> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [8 x i8], ptr %6, i64 %.1022703007 ; 2 uses
  %i.aoz = getelementptr [8 x i8], ptr %i.aoy, i64 %i.alt
  %i.apa = load double, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <2 x double> poison, double %i.apa, i64 0
  %i.apc = shufflevector <2 x double> %i.apb, <2 x double> poison, <8 x i32> zeroinitializer
  %i.apd = getelementptr [8 x i8], ptr %i.aoy, i64 %i.alv
  %i.ape = load double, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <2 x double> poison, double %i.ape, i64 0
  %i.apg = shufflevector <2 x double> %i.apf, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aph = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aox, <8 x double> %i.apc, <8 x double> %.023843006)
  %i.api = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aox, <8 x double> %i.apg, <8 x double> %.023853005)
  %i.apj = or disjoint i64 %.1022703007, 1        ; 2 uses
  %i.apk = mul nsw i64 %i.apj, %4
  %gep3004.1 = getelementptr [8 x i8], ptr %invariant.gep3003, i64 %i.apk
  %i.apl = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3004.1, <8 x i1> %i.ahf, <8 x double> zeroinitializer) ; 2 uses
  %i.apm = getelementptr [8 x i8], ptr %6, i64 %i.apj ; 2 uses
  %i.apn = getelementptr [8 x i8], ptr %i.apm, i64 %i.alt
  %i.apo = load double, ptr %i.apn, align 1, !tbaa !8
  %i.app = insertelement <2 x double> poison, double %i.apo, i64 0
  %i.apq = shufflevector <2 x double> %i.app, <2 x double> poison, <8 x i32> zeroinitializer
  %i.apr = getelementptr [8 x i8], ptr %i.apm, i64 %i.alv
  %i.aps = load double, ptr %i.apr, align 1, !tbaa !8
  %i.apt = insertelement <2 x double> poison, double %i.aps, i64 0
  %i.apu = shufflevector <2 x double> %i.apt, <2 x double> poison, <8 x i32> zeroinitializer
  %i.apv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.apl, <8 x double> %i.apq, <8 x double> %i.aph)
  %i.apw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.apl, <8 x double> %i.apu, <8 x double> %i.api)
  %i.apx = or disjoint i64 %.1022703007, 2        ; 2 uses
  %i.apy = mul nsw i64 %i.apx, %4
  %gep3004.2 = getelementptr [8 x i8], ptr %invariant.gep3003, i64 %i.apy
  %i.apz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3004.2, <8 x i1> %i.ahf, <8 x double> zeroinitializer) ; 2 uses
  %i.aqa = getelementptr [8 x i8], ptr %6, i64 %i.apx ; 2 uses
  %i.aqb = getelementptr [8 x i8], ptr %i.aqa, i64 %i.alt
  %i.aqc = load double, ptr %i.aqb, align 1, !tbaa !8
  %i.aqd = insertelement <2 x double> poison, double %i.aqc, i64 0
  %i.aqe = shufflevector <2 x double> %i.aqd, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqf = getelementptr [8 x i8], ptr %i.aqa, i64 %i.alv
  %i.aqg = load double, ptr %i.aqf, align 1, !tbaa !8
  %i.aqh = insertelement <2 x double> poison, double %i.aqg, i64 0
  %i.aqi = shufflevector <2 x double> %i.aqh, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.apz, <8 x double> %i.aqe, <8 x double> %i.apv)
  %i.aqk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.apz, <8 x double> %i.aqi, <8 x double> %i.apw)
  %i.aql = or disjoint i64 %.1022703007, 3        ; 2 uses
  %i.aqm = mul nsw i64 %i.aql, %4
  %gep3004.3 = getelementptr [8 x i8], ptr %invariant.gep3003, i64 %i.aqm
  %i.aqn = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3004.3, <8 x i1> %i.ahf, <8 x double> zeroinitializer) ; 2 uses
  %i.aqo = getelementptr [8 x i8], ptr %6, i64 %i.aql ; 2 uses
  %i.aqp = getelementptr [8 x i8], ptr %i.aqo, i64 %i.alt
  %i.aqq = load double, ptr %i.aqp, align 1, !tbaa !8
  %i.aqr = insertelement <2 x double> poison, double %i.aqq, i64 0
  %i.aqs = shufflevector <2 x double> %i.aqr, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqt = getelementptr [8 x i8], ptr %i.aqo, i64 %i.alv
  %i.aqu = load double, ptr %i.aqt, align 1, !tbaa !8
  %i.aqv = insertelement <2 x double> poison, double %i.aqu, i64 0
  %i.aqw = shufflevector <2 x double> %i.aqv, <2 x double> poison, <8 x i32> zeroinitializer
  %i.aqx = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqn, <8 x double> %i.aqs, <8 x double> %i.aqj) ; 3 uses
  %i.aqy = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.aqn, <8 x double> %i.aqw, <8 x double> %i.aqk) ; 3 uses
  %i.aqz = add nuw nsw i64 %.1022703007, 4        ; 2 uses
  %niter4035.next.3 = add nuw nsw i64 %niter4035, 4 ; 2 uses
  %niter4035.ncmp.3 = icmp eq i64 %niter4035.next.3, %unroll_iter4034
  br i1 %niter4035.ncmp.3, label %._crit_edge3009.loopexit.unr-lcssa, label %.lr.ph3008.new, !llvm.loop !46

._crit_edge3009.loopexit.unr-lcssa:               ; preds = %.lr.ph3008.new
  br i1 %lcmp.mod4030.not, label %._crit_edge3009, label %.epil.preheader4027

.epil.preheader4027:                              ; preds = %._crit_edge3009.loopexit.unr-lcssa, %.lr.ph3008
  %.1022703007.epil.init = phi i64 [ 0, %.lr.ph3008 ], [ %i.aqz, %._crit_edge3009.loopexit.unr-lcssa ]
  %.023843006.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3008 ], [ %i.aqx, %._crit_edge3009.loopexit.unr-lcssa ]
  %.023853005.epil.init = phi <8 x double> [ zeroinitializer, %.lr.ph3008 ], [ %i.aqy, %._crit_edge3009.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4033)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4027
  %.1022703007.epil = phi i64 [ %.1022703007.epil.init, %.epil.preheader4027 ], [ %i.arn, %bb.l ] ; 3 uses
  %.023843006.epil = phi <8 x double> [ %.023843006.epil.init, %.epil.preheader4027 ], [ %i.arl, %bb.l ]
  %.023853005.epil = phi <8 x double> [ %.023853005.epil.init, %.epil.preheader4027 ], [ %i.arm, %bb.l ]
  %epil.iter4029 = phi i64 [ 0, %.epil.preheader4027 ], [ %epil.iter4029.next, %bb.l ]
  %i.ara = mul nsw i64 %.1022703007.epil, %4
  %gep3004.epil = getelementptr [8 x i8], ptr %invariant.gep3003, i64 %i.ara
  %i.arb = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3004.epil, <8 x i1> %i.ahf, <8 x double> zeroinitializer) ; 2 uses
  %i.arc = getelementptr [8 x i8], ptr %6, i64 %.1022703007.epil ; 2 uses
  %i.ard = getelementptr [8 x i8], ptr %i.arc, i64 %i.alt
  %i.are = load double, ptr %i.ard, align 1, !tbaa !8
  %i.arf = insertelement <2 x double> poison, double %i.are, i64 0
  %i.arg = shufflevector <2 x double> %i.arf, <2 x double> poison, <8 x i32> zeroinitializer
  %i.arh = getelementptr [8 x i8], ptr %i.arc, i64 %i.alv
  %i.ari = load double, ptr %i.arh, align 1, !tbaa !8
  %i.arj = insertelement <2 x double> poison, double %i.ari, i64 0
  %i.ark = shufflevector <2 x double> %i.arj, <2 x double> poison, <8 x i32> zeroinitializer
  %i.arl = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.arb, <8 x double> %i.arg, <8 x double> %.023843006.epil) ; 2 uses
  %i.arm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.arb, <8 x double> %i.ark, <8 x double> %.023853005.epil) ; 2 uses
  %i.arn = add nuw nsw i64 %.1022703007.epil, 1
  %epil.iter4029.next = add i64 %epil.iter4029, 1 ; 2 uses
  %epil.iter4029.cmp.not = icmp eq i64 %epil.iter4029.next, %xtraiter4028
  br i1 %epil.iter4029.cmp.not, label %._crit_edge3009, label %bb.l, !llvm.loop !47

._crit_edge3009:                                  ; preds = %._crit_edge3009.loopexit.unr-lcssa, %bb.l, %.preheader2488.._crit_edge3009_crit_edge
  %.pre-phi3355 = phi i64 [ %.pre3354, %.preheader2488.._crit_edge3009_crit_edge ], [ %i.alu, %bb.l ], [ %i.alu, %._crit_edge3009.loopexit.unr-lcssa ]
  %.02385.lcssa = phi <8 x double> [ zeroinitializer, %.preheader2488.._crit_edge3009_crit_edge ], [ %i.aqy, %._crit_edge3009.loopexit.unr-lcssa ], [ %i.arm, %bb.l ]
  %.02384.lcssa = phi <8 x double> [ zeroinitializer, %.preheader2488.._crit_edge3009_crit_edge ], [ %i.aqx, %._crit_edge3009.loopexit.unr-lcssa ], [ %i.arl, %bb.l ]
  %i.aro = fmul <8 x double> %i.k, %.02384.lcssa
  %i.arp = mul nsw i64 %.103016, %9
  %gep3013 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.arp
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aro, ptr align 1 %gep3013, <8 x i1> %i.ahf)
  %i.arq = fmul <8 x double> %i.k, %.02385.lcssa
  %i.arr = mul nsw i64 %.pre-phi3355, %9
  %gep3015 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.arr
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.arq, ptr align 1 %gep3015, <8 x i1> %i.ahf)
  %i.ars = add nuw nsw i64 %.103016, 2            ; 3 uses
  %i.art = icmp slt i64 %i.ars, %i.i
  br i1 %i.art, label %.preheader2488, label %.preheader2487, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.113029 = phi i64 [ %i.asj, %.preheader ], [ %.113029.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.aru = mul nsw i64 %.113029, %9
  %gep3028 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.aru
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028, <8 x i1> %i.aly)
  %i.arv = add nuw nsw i64 %.113029, 1
  %i.arw = mul nsw i64 %i.arv, %9
  %gep3028.1 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.arw
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.1, <8 x i1> %i.aly)
  %i.arx = add nuw nsw i64 %.113029, 2
  %i.ary = mul nsw i64 %i.arx, %9
  %gep3028.2 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.ary
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.2, <8 x i1> %i.aly)
  %i.arz = add nuw nsw i64 %.113029, 3
  %i.asa = mul nsw i64 %i.arz, %9
  %gep3028.3 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.asa
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.3, <8 x i1> %i.aly)
  %i.asb = add nuw nsw i64 %.113029, 4
  %i.asc = mul nsw i64 %i.asb, %9
  %gep3028.4 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.asc
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.4, <8 x i1> %i.aly)
  %i.asd = add nuw nsw i64 %.113029, 5
  %i.ase = mul nsw i64 %i.asd, %9
  %gep3028.5 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.ase
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.5, <8 x i1> %i.aly)
  %i.asf = add nuw nsw i64 %.113029, 6
  %i.asg = mul nsw i64 %i.asf, %9
  %gep3028.6 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.asg
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.6, <8 x i1> %i.aly)
  %i.ash = add nuw nsw i64 %.113029, 7
  %i.asi = mul nsw i64 %i.ash, %9
  %gep3028.7 = getelementptr [8 x i8], ptr %invariant.gep2989, i64 %i.asi
  tail call void @llvm.masked.store.v8f64.p0(<8 x double> %i.aoq, ptr align 1 %gep3028.7, <8 x i1> %i.aly)
  %i.asj = add nuw nsw i64 %.113029, 8            ; 2 uses
  %exitcond3221.not.7 = icmp eq i64 %i.asj, %1
  br i1 %exitcond3221.not.7, label %.loopexit, label %.preheader, !llvm.loop !44

.lr.ph2768:                                       ; preds = %bb.i
  %sext = shl i64 %i.agh, 32
  %i.ask = ashr exact i64 %sext, 29
  %i.asl = mul i64 %i.ask, %2
  %i.asm = tail call noalias ptr @malloc(i64 noundef %i.asl) #8 ; 27 uses
  %i.asn = and i64 %i.agh, 4294967295
  %notmask = shl nsw i64 -1, %i.asn
  %10 = trunc i64 %notmask to i8
  %11 = xor i8 %10, -1
  %12 = and i64 %2, 9223372036854775804
  %invariant.gep2764 = getelementptr [8 x i8], ptr %i.asm, i64 %2
  %i.aso = getelementptr [8 x i8], ptr %3, i64 %.2.lcssa ; 5 uses
  %i.asp = bitcast i8 %11 to <8 x i1>
  %i.asq = shufflevector <8 x i1> %i.asp, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.idx = mul nuw nsw i64 %2, 24
  %invariant.gep2770 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx
  %.idx2475 = shl nuw nsw i64 %2, 4
  %invariant.gep2772 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2475
  br label %bb.m

.preheader2511.lr.ph:                             ; preds = %bb.r
  %13 = and i64 %2, 9223372036854775800           ; 11 uses
  %14 = icmp slt i64 %i.ats, %2
  %i.asr = icmp sgt i32 %i.agi, 0
  %or.cond3638 = and i1 %14, %i.asr
  br i1 %or.cond3638, label %.preheader2511.preheader, label %._crit_edge2778.split

.preheader2511.preheader:                         ; preds = %.preheader2511.lr.ph
  %wide.trip.count = and i64 %i.agh, 2147483647
  %i.ass = add nsw i64 %wide.trip.count, -1
  %xtraiter4005 = and i64 %i.agh, 7               ; 3 uses
  %i.ast = icmp ult i64 %i.ass, 7
  %unroll_iter4009 = and i64 %i.agh, 2147483640
  %lcmp.mod4007.not.a = icmp eq i64 %xtraiter4005, 0
  %lcmp.mod4008 = icmp ne i64 %xtraiter4005, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph2768, %bb.r
  %.1222722766 = phi i64 [ 0, %.lr.ph2768 ], [ %i.ats, %bb.r ] ; 9 uses
  %i.asu = mul nsw i64 %.1222722766, %4
  %i.asv = getelementptr [8 x i8], ptr %i.aso, i64 %i.asu
  %i.asw = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.asv, <4 x i1> %i.asq, <4 x double> zeroinitializer) ; 2 uses
  %i.asx = or disjoint i64 %.1222722766, 1
  %i.asy = mul nsw i64 %i.asx, %4
  %i.asz = getelementptr [8 x i8], ptr %i.aso, i64 %i.asy
  %i.ata = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.asz, <4 x i1> %i.asq, <4 x double> zeroinitializer) ; 2 uses
  %i.atb = or disjoint i64 %.1222722766, 2
  %i.atc = mul nsw i64 %i.atb, %4
  %i.atd = getelementptr [8 x i8], ptr %i.aso, i64 %i.atc
  %i.ate = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.atd, <4 x i1> %i.asq, <4 x double> zeroinitializer) ; 2 uses
  %i.atf = or disjoint i64 %.1222722766, 3
  %i.atg = mul nsw i64 %i.atf, %4
  %i.ath = getelementptr [8 x i8], ptr %i.aso, i64 %i.atg
  %i.ati = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 1 %i.ath, <4 x i1> %i.asq, <4 x double> zeroinitializer) ; 2 uses
  %i.atj = shufflevector <4 x double> %i.asw, <4 x double> %i.ata, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.atk = shufflevector <4 x double> %i.asw, <4 x double> %i.ata, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.atl = shufflevector <4 x double> %i.ate, <4 x double> %i.ati, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.atm = shufflevector <4 x double> %i.ate, <4 x double> %i.ati, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.atn = shufflevector <4 x double> %i.atj, <4 x double> %i.atl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ato = shufflevector <4 x double> %i.atk, <4 x double> %i.atm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.atp = shufflevector <4 x double> %i.atj, <4 x double> %i.atl, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  switch i32 %i.agi, label %bb.r [
    i32 4, label %bb.n
    i32 3, label %bb.o
    i32 2, label %bb.p
    i32 1, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.atq = shufflevector <4 x double> %i.atk, <4 x double> %i.atm, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %gep2771 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2770, i64 %.1222722766
  store <4 x double> %i.atq, ptr %gep2771, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep2773 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2772, i64 %.1222722766
  store <4 x double> %i.atp, ptr %gep2773, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep2765 = getelementptr [8 x i8], ptr %invariant.gep2764, i64 %.1222722766
  store <4 x double> %i.ato, ptr %gep2765, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %.1222722766
  store <4 x double> %i.atn, ptr %i.atr, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.ats = add nuw nsw i64 %.1222722766, 4        ; 4 uses
  %i.att = icmp samesign ult i64 %i.ats, %12
  br i1 %i.att, label %bb.m, label %.preheader2511.lr.ph, !llvm.loop !49

iter.check:                                       ; preds = %.preheader2511.preheader, %._crit_edge2776
  %.1322732777 = phi i64 [ %i.aub, %._crit_edge2776 ], [ %i.ats, %.preheader2511.preheader ] ; 3 uses
  %i.atu = mul nsw i64 %.1322732777, %4
  %i.atv = getelementptr [8 x i8], ptr %i.aso, i64 %i.atu ; 9 uses
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %.1322732777 ; 9 uses
  br i1 %i.ast, label %.epil.preheader4004, label %iter.check.new

._crit_edge2776.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4007.not.a, label %._crit_edge2776, label %.epil.preheader4004

.epil.preheader4004:                              ; preds = %._crit_edge2776.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge2776.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4008)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader4004
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4004 ], [ %indvars.iv.next.epil, %bb.s ] ; 3 uses
  %epil.iter4006 = phi i64 [ 0, %.epil.preheader4004 ], [ %epil.iter4006.next, %bb.s ]
  %i.atx = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.epil
  %i.aty = load double, ptr %i.atx, align 8, !tbaa !50
  %i.atz = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.aua = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.atz
  store double %i.aty, ptr %i.aua, align 8, !tbaa !50
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4006.next = add i64 %epil.iter4006, 1 ; 2 uses
  %epil.iter4006.cmp.not = icmp eq i64 %epil.iter4006.next, %xtraiter4005
  br i1 %epil.iter4006.cmp.not, label %._crit_edge2776, label %bb.s, !llvm.loop !52

._crit_edge2776:                                  ; preds = %bb.s, %._crit_edge2776.unr-lcssa
  %i.aub = add nuw nsw i64 %.1322732777, 1        ; 2 uses
  %15 = icmp slt i64 %i.aub, %2
  br i1 %15, label %iter.check, label %._crit_edge2778.split, !llvm.loop !53

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4010 = phi i64 [ %niter4010.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.auc = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv
  %i.aud = load double, ptr %i.auc, align 8, !tbaa !50
  %i.aue = mul nuw nsw i64 %2, %indvars.iv
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.aue
  store double %i.aud, ptr %i.auf, align 8, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aug = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next
  %i.auh = load double, ptr %i.aug, align 8, !tbaa !50
  %i.aui = mul nuw nsw i64 %2, %indvars.iv.next
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.aui
  store double %i.auh, ptr %i.auj, align 8, !tbaa !50
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.auk = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.1
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !50
  %i.aum = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.aum
  store double %i.aul, ptr %i.aun, align 8, !tbaa !50
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.auo = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.2
  %i.aup = load double, ptr %i.auo, align 8, !tbaa !50
  %i.auq = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.auq
  store double %i.aup, ptr %i.aur, align 8, !tbaa !50
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.aus = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.3
  %i.aut = load double, ptr %i.aus, align 8, !tbaa !50
  %i.auu = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.auu
  store double %i.aut, ptr %i.auv, align 8, !tbaa !50
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.auw = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.4
  %i.aux = load double, ptr %i.auw, align 8, !tbaa !50
  %i.auy = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.auy
  store double %i.aux, ptr %i.auz, align 8, !tbaa !50
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.ava = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.5
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !50
  %i.avc = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.avc
  store double %i.avb, ptr %i.avd, align 8, !tbaa !50
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.ave = getelementptr [8 x i8], ptr %i.atv, i64 %indvars.iv.next.6
  %i.avf = load double, ptr %i.ave, align 8, !tbaa !50
  %i.avg = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.avg
  store double %i.avf, ptr %i.avh, align 8, !tbaa !50
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4010.next.7 = add i64 %niter4010, 8       ; 2 uses
  %niter4010.ncmp.7 = icmp eq i64 %niter4010.next.7, %unroll_iter4009
  br i1 %niter4010.ncmp.7, label %._crit_edge2776.unr-lcssa, label %iter.check.new, !llvm.loop !54

._crit_edge2778.split:                            ; preds = %._crit_edge2776, %.preheader2511.lr.ph
  %i.avi = insertelement <4 x double> poison, double %5, i64 0
  %i.avj = shufflevector <4 x double> %i.avi, <4 x double> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.avk = insertelement <2 x i64> poison, i64 %9, i64 0
  %i.avl = insertelement <4 x i64> <i64 0, i64 poison, i64 poison, i64 poison>, i64 %9, i64 1
  %i.avm = shufflevector <2 x i64> %i.avk, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.avn = mul nsw <4 x i64> %i.avm, <i64 2, i64 3, i64 poison, i64 poison>
  %i.avo = shufflevector <4 x i64> %i.avl, <4 x i64> %i.avn, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.avp = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.avp, label %.preheader2510.lr.ph, label %.preheader2504

.preheader2510.lr.ph:                             ; preds = %._crit_edge2778.split
  %i.avq = icmp sgt i64 %1, 3
  %i.avr = and i64 %2, 9223372036854775800        ; 19 uses
  %i.avs = and i64 %2, 7                          ; 2 uses
  %.not2473 = icmp eq i64 %i.avs, 0
  %notmask2474 = shl nsw i64 -1, %i.avs
  %i.avt = trunc nsw i64 %notmask2474 to i8
  %i.avu = xor i8 %i.avt, -1
  %i.avv = bitcast i8 %i.avu to <8 x i1>          ; 8 uses
  %invariant.gep3602.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep3604.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep3606.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep3608.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %i.avw = and i64 %2, 7                          ; 2 uses
  %.not2471 = icmp eq i64 %i.avw, 0
  %notmask2472 = shl nsw i64 -1, %i.avw
  %i.avx = trunc nsw i64 %notmask2472 to i8
  %i.avy = xor i8 %i.avx, -1
  %i.avz = bitcast i8 %i.avy to <8 x i1>          ; 6 uses
  %invariant.gep3610.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %invariant.gep3612.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  %i.awa = and i64 %2, 7                          ; 2 uses
  %.not2469 = icmp eq i64 %i.awa, 0
  %notmask2470 = shl nsw i64 -1, %i.awa
  %i.awb = trunc nsw i64 %notmask2470 to i8
  %i.awc = xor i8 %i.awb, -1
  %i.awd = bitcast i8 %i.awc to <8 x i1>          ; 5 uses
  %invariant.gep3614.a = getelementptr [8 x i8], ptr %6, i64 %i.avr
  br label %.preheader2510

.preheader2510:                                   ; preds = %.preheader2510.lr.ph, %._crit_edge2866
  %indvars.iv3207 = phi i64 [ 0, %.preheader2510.lr.ph ], [ %indvars.iv.next3208, %._crit_edge2866 ] ; 13 uses
  %.32868 = phi i64 [ %.2.lcssa, %.preheader2510.lr.ph ], [ %i.biz, %._crit_edge2866 ] ; 2 uses
  %invariant.gep2815 = getelementptr [8 x i8], ptr %8, i64 %.32868 ; 7 uses
  br i1 %i.avq, label %.preheader2507.lr.ph, label %.preheader2509

.preheader2507.lr.ph:                             ; preds = %.preheader2510
  %i.awe = mul nuw nsw i64 %2, %indvars.iv3207
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.awe ; 2 uses
  %i.awg = or disjoint i64 %indvars.iv3207, 1
  %i.awh = mul nuw nsw i64 %2, %i.awg
  %i.awi = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.awh ; 2 uses
  %i.awj = or disjoint i64 %indvars.iv3207, 2
  %i.awk = mul nuw nsw i64 %2, %i.awj
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.awk ; 2 uses
  %i.awm = or disjoint i64 %indvars.iv3207, 3
  %i.awn = mul nuw nsw i64 %2, %i.awm
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.awn ; 2 uses
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %i.avr
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %i.avr
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %i.avr
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %i.avr
  br label %.lr.ph2796

.preheader2504.loopexit:                          ; preds = %._crit_edge2866
  %i.awt = trunc nuw i64 %indvars.iv.next3208 to i32
  br label %.preheader2504

.preheader2504:                                   ; preds = %.preheader2504.loopexit, %._crit_edge2778.split
  %.02388.lcssa = phi i32 [ 0, %._crit_edge2778.split ], [ %i.awt, %.preheader2504.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge2778.split ], [ %i.biz, %.preheader2504.loopexit ] ; 3 uses
  %i.awu = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.awu, label %.preheader2503.lr.ph, label %.preheader2497

.preheader2503.lr.ph:                             ; preds = %.preheader2504
  %i.awv = icmp sgt i64 %1, 3
  %i.aww = and i64 %2, 9223372036854775800        ; 13 uses
  %i.awx = zext i32 %.02388.lcssa to i64
  %i.awy = and i64 %2, 7                          ; 2 uses
  %.not2467 = icmp eq i64 %i.awy, 0
  %notmask2468 = shl nsw i64 -1, %i.awy
  %i.awz = trunc nsw i64 %notmask2468 to i8
  %i.axa = xor i8 %i.awz, -1
  %i.axb = bitcast i8 %i.axa to <8 x i1>          ; 6 uses
  %invariant.gep3616.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep3618.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep3620.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep3622.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axc = and i64 %2, 7                          ; 2 uses
  %.not2465 = icmp eq i64 %i.axc, 0
  %notmask2466 = shl nsw i64 -1, %i.axc
  %i.axd = trunc nsw i64 %notmask2466 to i8
  %i.axe = xor i8 %i.axd, -1
  %i.axf = bitcast i8 %i.axe to <8 x i1>          ; 4 uses
  %invariant.gep3624.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %invariant.gep3626.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axg = and i64 %2, 7                          ; 2 uses
  %.not2463 = icmp eq i64 %i.axg, 0
  %notmask2464 = shl nsw i64 -1, %i.axg
  %i.axh = trunc nsw i64 %notmask2464 to i8
  %i.axi = xor i8 %i.axh, -1
  %i.axj = bitcast i8 %i.axi to <8 x i1>          ; 3 uses
  %invariant.gep3628.a = getelementptr [8 x i8], ptr %6, i64 %i.aww
  %i.axk = insertelement <2 x double> poison, double %5, i64 0
  %i.axl = shufflevector <2 x double> %i.axk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axm = insertelement <2 x double> poison, double %5, i64 0
  %i.axn = shufflevector <2 x double> %i.axm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader2503

.preheader2509:                                   ; preds = %bb.v, %.preheader2510
  %.12.lcssa = phi i64 [ 0, %.preheader2510 ], [ %i.bdo, %bb.v ] ; 3 uses
  %i.axo = icmp slt i64 %.12.lcssa, %i.i
  br i1 %i.axo, label %.preheader2506.lr.ph, label %.preheader2508

.preheader2506.lr.ph:                             ; preds = %.preheader2509
  %i.axp = mul nuw nsw i64 %2, %indvars.iv3207
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.axp ; 2 uses
  %i.axr = or disjoint i64 %indvars.iv3207, 1
  %i.axs = mul nuw nsw i64 %2, %i.axr
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.axs ; 2 uses
  %i.axu = or disjoint i64 %indvars.iv3207, 2
  %i.axv = mul nuw nsw i64 %2, %i.axu
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.axv ; 2 uses
  %i.axx = or disjoint i64 %indvars.iv3207, 3
  %i.axy = mul nuw nsw i64 %2, %i.axx
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.axy ; 2 uses
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %i.axq, i64 %i.avr
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.axt, i64 %i.avr
  %i.ayc = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %i.avr
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %i.avr
  br label %.lr.ph2834

.lr.ph2796:                                       ; preds = %bb.v, %.preheader2507.lr.ph
  %.122823 = phi i64 [ 0, %.preheader2507.lr.ph ], [ %i.bdo, %bb.v ] ; 13 uses
  %i.aye = mul nsw i64 %.122823, %7
  %i.ayf = getelementptr [8 x i8], ptr %6, i64 %i.aye
  %i.ayg = or disjoint i64 %.122823, 1
  %i.ayh = mul nsw i64 %i.ayg, %7
  %i.ayi = getelementptr [8 x i8], ptr %6, i64 %i.ayh
  %i.ayj = or disjoint i64 %.122823, 2
  %i.ayk = mul nsw i64 %i.ayj, %7
  %i.ayl = getelementptr [8 x i8], ptr %6, i64 %i.ayk
  %i.aym = or disjoint i64 %.122823, 3
  %i.ayn = mul nsw i64 %i.aym, %7
  %i.ayo = getelementptr [8 x i8], ptr %6, i64 %i.ayn
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph2796, %bb.t
  %.1422742795 = phi i64 [ 0, %.lr.ph2796 ], [ %i.azv, %bb.t ] ; 9 uses
  %.023992794 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azf, %bb.t ]
  %.024012793 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azg, %bb.t ]
  %.024032792 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azh, %bb.t ]
  %.024052791 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azi, %bb.t ]
  %.024072790 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azj, %bb.t ]
  %.024092789 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azk, %bb.t ]
  %.024112788 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azl, %bb.t ]
  %.024132787 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azm, %bb.t ]
  %.024152786 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azn, %bb.t ]
  %.024172785 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azo, %bb.t ]
  %.024192784 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azp, %bb.t ]
  %.024212783 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azq, %bb.t ]
  %.024232782 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azr, %bb.t ]
  %.024252781 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azs, %bb.t ]
  %.024272780 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azt, %bb.t ]
  %.024292779 = phi <8 x double> [ zeroinitializer, %.lr.ph2796 ], [ %i.azu, %bb.t ]
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %.1422742795
  %i.ayq = load <8 x double>, ptr %i.ayp, align 1, !tbaa !8 ; 4 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.awi, i64 %.1422742795
  %i.ays = load <8 x double>, ptr %i.ayr, align 1, !tbaa !8 ; 4 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %.1422742795
  %i.ayu = load <8 x double>, ptr %i.ayt, align 1, !tbaa !8 ; 4 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %.1422742795
  %i.ayw = load <8 x double>, ptr %i.ayv, align 1, !tbaa !8 ; 4 uses
  %i.ayx = getelementptr [8 x i8], ptr %i.ayf, i64 %.1422742795
  %i.ayy = load <8 x double>, ptr %i.ayx, align 1, !tbaa !8 ; 4 uses
  %i.ayz = getelementptr [8 x i8], ptr %i.ayi, i64 %.1422742795
  %i.aza = load <8 x double>, ptr %i.ayz, align 1, !tbaa !8 ; 4 uses
  %i.azb = getelementptr [8 x i8], ptr %i.ayl, i64 %.1422742795
  %i.azc = load <8 x double>, ptr %i.azb, align 1, !tbaa !8 ; 4 uses
  %i.azd = getelementptr [8 x i8], ptr %i.ayo, i64 %.1422742795
  %i.aze = load <8 x double>, ptr %i.azd, align 1, !tbaa !8 ; 4 uses
  %i.azf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayq, <8 x double> %i.ayy, <8 x double> %.023992794) ; 3 uses
  %i.azg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ays, <8 x double> %i.ayy, <8 x double> %.024012793) ; 3 uses
  %i.azh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.ayy, <8 x double> %.024032792) ; 3 uses
  %i.azi = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.ayy, <8 x double> %.024052791) ; 3 uses
  %i.azj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayq, <8 x double> %i.aza, <8 x double> %.024072790) ; 3 uses
  %i.azk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ays, <8 x double> %i.aza, <8 x double> %.024092789) ; 3 uses
  %i.azl = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.aza, <8 x double> %.024112788) ; 3 uses
  %i.azm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.aza, <8 x double> %.024132787) ; 3 uses
  %i.azn = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayq, <8 x double> %i.azc, <8 x double> %.024152786) ; 3 uses
  %i.azo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ays, <8 x double> %i.azc, <8 x double> %.024172785) ; 3 uses
  %i.azp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.azc, <8 x double> %.024192784) ; 3 uses
  %i.azq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.azc, <8 x double> %.024212783) ; 3 uses
  %i.azr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayq, <8 x double> %i.aze, <8 x double> %.024232782) ; 3 uses
  %i.azs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ays, <8 x double> %i.aze, <8 x double> %.024252781) ; 3 uses
  %i.azt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayu, <8 x double> %i.aze, <8 x double> %.024272780) ; 3 uses
  %i.azu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.ayw, <8 x double> %i.aze, <8 x double> %.024292779) ; 3 uses
  %i.azv = add nuw nsw i64 %.1422742795, 8        ; 2 uses
  %i.azw = icmp samesign ult i64 %i.azv, %13
  br i1 %i.azw, label %bb.t, label %._crit_edge2797, !llvm.loop !56

._crit_edge2797:                                  ; preds = %bb.t
  br i1 %.not2473, label %._crit_edge2797._crit_edge, label %bb.u

._crit_edge2797._crit_edge:                       ; preds = %._crit_edge2797
  %.pre3356 = or disjoint i64 %.122823, 1
  %.pre3358 = or disjoint i64 %.122823, 2
  %.pre3360 = or disjoint i64 %.122823, 3
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge2797
  %i.azx = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awp, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.azy = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awq, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.azz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.awr, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.baa = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.aws, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bab = mul nsw i64 %.122823, %7
  %gep3603.a = getelementptr [8 x i8], ptr %invariant.gep3602.a, i64 %i.bab
  %i.bac = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3603.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bad = or disjoint i64 %.122823, 1            ; 2 uses
  %i.bae = mul nsw i64 %i.bad, %7
  %gep3605.a = getelementptr [8 x i8], ptr %invariant.gep3604.a, i64 %i.bae
  %i.baf = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3605.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bag = or disjoint i64 %.122823, 2            ; 2 uses
  %i.bah = mul nsw i64 %i.bag, %7
  %gep3607.a = getelementptr [8 x i8], ptr %invariant.gep3606.a, i64 %i.bah
  %i.bai = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3607.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.baj = or disjoint i64 %.122823, 3            ; 2 uses
  %i.bak = mul nsw i64 %i.baj, %7
  %gep3609.a = getelementptr [8 x i8], ptr %invariant.gep3608.a, i64 %i.bak
  %i.bal = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3609.a, <8 x i1> %i.avv, <8 x double> zeroinitializer) ; 4 uses
  %i.bam = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azx, <8 x double> %i.bac, <8 x double> %i.azf)
  %i.ban = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azy, <8 x double> %i.bac, <8 x double> %i.azg)
  %i.bao = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azz, <8 x double> %i.bac, <8 x double> %i.azh)
  %i.bap = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.baa, <8 x double> %i.bac, <8 x double> %i.azi)
  %i.baq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azx, <8 x double> %i.baf, <8 x double> %i.azj)
  %i.bar = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azy, <8 x double> %i.baf, <8 x double> %i.azk)
  %i.bas = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azz, <8 x double> %i.baf, <8 x double> %i.azl)
  %i.bat = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.baa, <8 x double> %i.baf, <8 x double> %i.azm)
  %i.bau = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azx, <8 x double> %i.bai, <8 x double> %i.azn)
  %i.bav = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azy, <8 x double> %i.bai, <8 x double> %i.azo)
  %i.baw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azz, <8 x double> %i.bai, <8 x double> %i.azp)
  %i.bax = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.baa, <8 x double> %i.bai, <8 x double> %i.azq)
  %i.bay = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azx, <8 x double> %i.bal, <8 x double> %i.azr)
  %i.baz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azy, <8 x double> %i.bal, <8 x double> %i.azs)
  %i.bba = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.azz, <8 x double> %i.bal, <8 x double> %i.azt)
  %i.bbb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.baa, <8 x double> %i.bal, <8 x double> %i.azu)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge2797._crit_edge, %bb.u
  %.pre-phi3361 = phi i64 [ %.pre3360, %._crit_edge2797._crit_edge ], [ %i.baj, %bb.u ]
  %.pre-phi3359 = phi i64 [ %.pre3358, %._crit_edge2797._crit_edge ], [ %i.bag, %bb.u ]
  %.pre-phi3357 = phi i64 [ %.pre3356, %._crit_edge2797._crit_edge ], [ %i.bad, %bb.u ]
  %.12430 = phi <8 x double> [ %i.azu, %._crit_edge2797._crit_edge ], [ %i.bbb, %bb.u ] ; 2 uses
  %.12428 = phi <8 x double> [ %i.azt, %._crit_edge2797._crit_edge ], [ %i.bba, %bb.u ] ; 2 uses
  %.12426 = phi <8 x double> [ %i.azs, %._crit_edge2797._crit_edge ], [ %i.baz, %bb.u ] ; 2 uses
  %.12424 = phi <8 x double> [ %i.azr, %._crit_edge2797._crit_edge ], [ %i.bay, %bb.u ] ; 2 uses
  %.12422 = phi <8 x double> [ %i.azq, %._crit_edge2797._crit_edge ], [ %i.bax, %bb.u ] ; 2 uses
  %.12420 = phi <8 x double> [ %i.azp, %._crit_edge2797._crit_edge ], [ %i.baw, %bb.u ] ; 2 uses
  %.12418 = phi <8 x double> [ %i.azo, %._crit_edge2797._crit_edge ], [ %i.bav, %bb.u ] ; 2 uses
  %.12416 = phi <8 x double> [ %i.azn, %._crit_edge2797._crit_edge ], [ %i.bau, %bb.u ] ; 2 uses
  %.12414 = phi <8 x double> [ %i.azm, %._crit_edge2797._crit_edge ], [ %i.bat, %bb.u ] ; 2 uses
  %.12412 = phi <8 x double> [ %i.azl, %._crit_edge2797._crit_edge ], [ %i.bas, %bb.u ] ; 2 uses
  %.12410 = phi <8 x double> [ %i.azk, %._crit_edge2797._crit_edge ], [ %i.bar, %bb.u ] ; 2 uses
  %.12408 = phi <8 x double> [ %i.azj, %._crit_edge2797._crit_edge ], [ %i.baq, %bb.u ] ; 2 uses
  %.12406 = phi <8 x double> [ %i.azi, %._crit_edge2797._crit_edge ], [ %i.bap, %bb.u ] ; 2 uses
  %.12404 = phi <8 x double> [ %i.azh, %._crit_edge2797._crit_edge ], [ %i.bao, %bb.u ] ; 2 uses
  %.12402 = phi <8 x double> [ %i.azg, %._crit_edge2797._crit_edge ], [ %i.ban, %bb.u ] ; 2 uses
  %.12400 = phi <8 x double> [ %i.azf, %._crit_edge2797._crit_edge ], [ %i.bam, %bb.u ] ; 2 uses
  %i.bbc = shufflevector <8 x double> %.12400, <8 x double> %.12402, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbd = shufflevector <8 x double> %.12400, <8 x double> %.12402, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbe = shufflevector <8 x double> %.12404, <8 x double> %.12406, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbf = shufflevector <8 x double> %.12404, <8 x double> %.12406, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbg = shufflevector <8 x double> %i.bbc, <8 x double> %i.bbe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bbh = shufflevector <8 x double> %i.bbd, <8 x double> %i.bbf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bbi = shufflevector <8 x double> %i.bbc, <8 x double> %i.bbe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bbj = shufflevector <8 x double> %i.bbd, <8 x double> %i.bbf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bbk = fadd <8 x double> %i.bbg, %i.bbh
  %i.bbl = fadd <8 x double> %i.bbi, %i.bbj
  %i.bbm = fadd <8 x double> %i.bbk, %i.bbl       ; 2 uses
  %i.bbn = shufflevector <8 x double> %i.bbm, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bbo = shufflevector <8 x double> %i.bbm, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bbp = fadd <4 x double> %i.bbn, %i.bbo
  %i.bbq = fmul <4 x double> %i.avj, %i.bbp
  %i.bbr = mul nsw i64 %.122823, %9
  %gep2816 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bbr
  store <4 x double> %i.bbq, ptr %gep2816, align 1, !tbaa !8
  %i.bbs = shufflevector <8 x double> %.12408, <8 x double> %.12410, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbt = shufflevector <8 x double> %.12408, <8 x double> %.12410, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbu = shufflevector <8 x double> %.12412, <8 x double> %.12414, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bbv = shufflevector <8 x double> %.12412, <8 x double> %.12414, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bbw = shufflevector <8 x double> %i.bbs, <8 x double> %i.bbu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bbx = shufflevector <8 x double> %i.bbt, <8 x double> %i.bbv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bby = shufflevector <8 x double> %i.bbs, <8 x double> %i.bbu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bbz = shufflevector <8 x double> %i.bbt, <8 x double> %i.bbv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bca = fadd <8 x double> %i.bbw, %i.bbx
  %i.bcb = fadd <8 x double> %i.bby, %i.bbz
  %i.bcc = fadd <8 x double> %i.bca, %i.bcb       ; 2 uses
  %i.bcd = shufflevector <8 x double> %i.bcc, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bce = shufflevector <8 x double> %i.bcc, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcf = fadd <4 x double> %i.bcd, %i.bce
  %i.bcg = fmul <4 x double> %i.avj, %i.bcf
  %i.bch = mul nsw i64 %.pre-phi3357, %9
  %gep2818 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bch
  store <4 x double> %i.bcg, ptr %gep2818, align 1, !tbaa !8
  %i.bci = shufflevector <8 x double> %.12416, <8 x double> %.12418, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bcj = shufflevector <8 x double> %.12416, <8 x double> %.12418, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bck = shufflevector <8 x double> %.12420, <8 x double> %.12422, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bcl = shufflevector <8 x double> %.12420, <8 x double> %.12422, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bcm = shufflevector <8 x double> %i.bci, <8 x double> %i.bck, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bcn = shufflevector <8 x double> %i.bcj, <8 x double> %i.bcl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bco = shufflevector <8 x double> %i.bci, <8 x double> %i.bck, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bcp = shufflevector <8 x double> %i.bcj, <8 x double> %i.bcl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bcq = fadd <8 x double> %i.bcm, %i.bcn
  %i.bcr = fadd <8 x double> %i.bco, %i.bcp
  %i.bcs = fadd <8 x double> %i.bcq, %i.bcr       ; 2 uses
  %i.bct = shufflevector <8 x double> %i.bcs, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bcu = shufflevector <8 x double> %i.bcs, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcv = fadd <4 x double> %i.bct, %i.bcu
  %i.bcw = fmul <4 x double> %i.avj, %i.bcv
  %i.bcx = mul nsw i64 %.pre-phi3359, %9
  %gep2820 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bcx
  store <4 x double> %i.bcw, ptr %gep2820, align 1, !tbaa !8
  %i.bcy = shufflevector <8 x double> %.12424, <8 x double> %.12426, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bcz = shufflevector <8 x double> %.12424, <8 x double> %.12426, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bda = shufflevector <8 x double> %.12428, <8 x double> %.12430, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bdb = shufflevector <8 x double> %.12428, <8 x double> %.12430, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bdc = shufflevector <8 x double> %i.bcy, <8 x double> %i.bda, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bdd = shufflevector <8 x double> %i.bcz, <8 x double> %i.bdb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bde = shufflevector <8 x double> %i.bcy, <8 x double> %i.bda, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bdf = shufflevector <8 x double> %i.bcz, <8 x double> %i.bdb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bdg = fadd <8 x double> %i.bdc, %i.bdd
  %i.bdh = fadd <8 x double> %i.bde, %i.bdf
  %i.bdi = fadd <8 x double> %i.bdg, %i.bdh       ; 2 uses
  %i.bdj = shufflevector <8 x double> %i.bdi, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdk = shufflevector <8 x double> %i.bdi, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdl = fadd <4 x double> %i.bdj, %i.bdk
  %i.bdm = fmul <4 x double> %i.avj, %i.bdl
  %i.bdn = mul nsw i64 %.pre-phi3361, %9
  %gep2822 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bdn
  store <4 x double> %i.bdm, ptr %gep2822, align 1, !tbaa !8
  %i.bdo = add nuw nsw i64 %.122823, 4            ; 3 uses
  %i.bdp = icmp slt i64 %i.bdo, %i.h
  br i1 %i.bdp, label %.lr.ph2796, label %.preheader2509, !llvm.loop !57

.preheader2508:                                   ; preds = %bb.y, %.preheader2509
  %.13.lcssa = phi i64 [ %.12.lcssa, %.preheader2509 ], [ %i.bhe, %bb.y ] ; 2 uses
  %i.bdq = icmp slt i64 %.13.lcssa, %1
  br i1 %i.bdq, label %.preheader2505.lr.ph, label %._crit_edge2866

.preheader2505.lr.ph:                             ; preds = %.preheader2508
  %i.bdr = mul nuw nsw i64 %2, %indvars.iv3207
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bdr ; 2 uses
  %i.bdt = or disjoint i64 %indvars.iv3207, 1
  %i.bdu = mul nuw nsw i64 %2, %i.bdt
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bdu ; 2 uses
  %i.bdw = or disjoint i64 %indvars.iv3207, 2
  %i.bdx = mul nuw nsw i64 %2, %i.bdw
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bdx ; 2 uses
  %i.bdz = or disjoint i64 %indvars.iv3207, 3
  %i.bea = mul nuw nsw i64 %2, %i.bdz
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bea ; 2 uses
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.bds, i64 %i.avr
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %i.avr
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %i.bdy, i64 %i.avr
  %i.bef = getelementptr inbounds nuw [8 x i8], ptr %i.beb, i64 %i.avr
  br label %.lr.ph2856

.lr.ph2834:                                       ; preds = %bb.y, %.preheader2506.lr.ph
  %.132849 = phi i64 [ %.12.lcssa, %.preheader2506.lr.ph ], [ %i.bhe, %bb.y ] ; 7 uses
  %i.beg = mul nsw i64 %.132849, %7
  %i.beh = getelementptr [8 x i8], ptr %6, i64 %i.beg
  %i.bei = add nuw nsw i64 %.132849, 1
  %i.bej = mul nsw i64 %i.bei, %7
  %i.bek = getelementptr [8 x i8], ptr %6, i64 %i.bej
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph2834, %bb.w
  %.1522752833 = phi i64 [ 0, %.lr.ph2834 ], [ %i.bff, %bb.w ] ; 7 uses
  %.024312832 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bex, %bb.w ]
  %.024332831 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bey, %bb.w ]
  %.024352830 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bez, %bb.w ]
  %.024372829 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bfa, %bb.w ]
  %.024392828 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bfb, %bb.w ]
  %.024412827 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bfc, %bb.w ]
  %.024432826 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bfd, %bb.w ]
  %.024452825 = phi <8 x double> [ zeroinitializer, %.lr.ph2834 ], [ %i.bfe, %bb.w ]
  %i.bel = getelementptr inbounds nuw [8 x i8], ptr %i.axq, i64 %.1522752833
  %i.bem = load <8 x double>, ptr %i.bel, align 1, !tbaa !8 ; 2 uses
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.axt, i64 %.1522752833
  %i.beo = load <8 x double>, ptr %i.ben, align 1, !tbaa !8 ; 2 uses
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %.1522752833
  %i.beq = load <8 x double>, ptr %i.bep, align 1, !tbaa !8 ; 2 uses
  %i.ber = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %.1522752833
  %i.bes = load <8 x double>, ptr %i.ber, align 1, !tbaa !8 ; 2 uses
  %i.bet = getelementptr [8 x i8], ptr %i.beh, i64 %.1522752833
  %i.beu = load <8 x double>, ptr %i.bet, align 1, !tbaa !8 ; 4 uses
  %i.bev = getelementptr [8 x i8], ptr %i.bek, i64 %.1522752833
  %i.bew = load <8 x double>, ptr %i.bev, align 1, !tbaa !8 ; 4 uses
  %i.bex = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bem, <8 x double> %i.beu, <8 x double> %.024312832) ; 3 uses
  %i.bey = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beo, <8 x double> %i.beu, <8 x double> %.024332831) ; 3 uses
  %i.bez = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beq, <8 x double> %i.beu, <8 x double> %.024352830) ; 3 uses
  %i.bfa = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bes, <8 x double> %i.beu, <8 x double> %.024372829) ; 3 uses
  %i.bfb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bem, <8 x double> %i.bew, <8 x double> %.024392828) ; 3 uses
  %i.bfc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beo, <8 x double> %i.bew, <8 x double> %.024412827) ; 3 uses
  %i.bfd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.beq, <8 x double> %i.bew, <8 x double> %.024432826) ; 3 uses
  %i.bfe = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bes, <8 x double> %i.bew, <8 x double> %.024452825) ; 3 uses
  %i.bff = add nuw nsw i64 %.1522752833, 8        ; 2 uses
  %i.bfg = icmp samesign ult i64 %i.bff, %13
  br i1 %i.bfg, label %bb.w, label %._crit_edge2835, !llvm.loop !58

._crit_edge2835:                                  ; preds = %bb.w
  br i1 %.not2471, label %._crit_edge2835._crit_edge, label %bb.x

._crit_edge2835._crit_edge:                       ; preds = %._crit_edge2835
  %.pre3362 = add nuw nsw i64 %.132849, 1
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge2835
  %i.bfh = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.aya, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfi = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayb, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfj = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayc, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfk = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.ayd, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 2 uses
  %i.bfl = mul nsw i64 %.132849, %7
  %gep3611.a = getelementptr [8 x i8], ptr %invariant.gep3610.a, i64 %i.bfl
  %i.bfm = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3611.a, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 4 uses
  %i.bfn = add nuw nsw i64 %.132849, 1            ; 2 uses
  %i.bfo = mul nsw i64 %i.bfn, %7
  %gep3613.a = getelementptr [8 x i8], ptr %invariant.gep3612.a, i64 %i.bfo
  %i.bfp = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3613.a, <8 x i1> %i.avz, <8 x double> zeroinitializer) ; 4 uses
  %i.bfq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfh, <8 x double> %i.bfm, <8 x double> %i.bex)
  %i.bfr = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfi, <8 x double> %i.bfm, <8 x double> %i.bey)
  %i.bfs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfj, <8 x double> %i.bfm, <8 x double> %i.bez)
  %i.bft = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfk, <8 x double> %i.bfm, <8 x double> %i.bfa)
  %i.bfu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfh, <8 x double> %i.bfp, <8 x double> %i.bfb)
  %i.bfv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfi, <8 x double> %i.bfp, <8 x double> %i.bfc)
  %i.bfw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfj, <8 x double> %i.bfp, <8 x double> %i.bfd)
  %i.bfx = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bfk, <8 x double> %i.bfp, <8 x double> %i.bfe)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge2835._crit_edge, %bb.x
  %.pre-phi3363 = phi i64 [ %.pre3362, %._crit_edge2835._crit_edge ], [ %i.bfn, %bb.x ]
  %.12446 = phi <8 x double> [ %i.bfe, %._crit_edge2835._crit_edge ], [ %i.bfx, %bb.x ] ; 2 uses
  %.12444 = phi <8 x double> [ %i.bfd, %._crit_edge2835._crit_edge ], [ %i.bfw, %bb.x ] ; 2 uses
  %.12442 = phi <8 x double> [ %i.bfc, %._crit_edge2835._crit_edge ], [ %i.bfv, %bb.x ] ; 2 uses
  %.12440 = phi <8 x double> [ %i.bfb, %._crit_edge2835._crit_edge ], [ %i.bfu, %bb.x ] ; 2 uses
  %.12438 = phi <8 x double> [ %i.bfa, %._crit_edge2835._crit_edge ], [ %i.bft, %bb.x ] ; 2 uses
  %.12436 = phi <8 x double> [ %i.bez, %._crit_edge2835._crit_edge ], [ %i.bfs, %bb.x ] ; 2 uses
  %.12434 = phi <8 x double> [ %i.bey, %._crit_edge2835._crit_edge ], [ %i.bfr, %bb.x ] ; 2 uses
  %.12432 = phi <8 x double> [ %i.bex, %._crit_edge2835._crit_edge ], [ %i.bfq, %bb.x ] ; 2 uses
  %i.bfy = shufflevector <8 x double> %.12432, <8 x double> %.12434, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bfz = shufflevector <8 x double> %.12432, <8 x double> %.12434, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bga = shufflevector <8 x double> %.12436, <8 x double> %.12438, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgb = shufflevector <8 x double> %.12436, <8 x double> %.12438, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgc = shufflevector <8 x double> %i.bfy, <8 x double> %i.bga, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bgd = shufflevector <8 x double> %i.bfz, <8 x double> %i.bgb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bge = shufflevector <8 x double> %i.bfy, <8 x double> %i.bga, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgf = shufflevector <8 x double> %i.bfz, <8 x double> %i.bgb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgg = fadd <8 x double> %i.bgc, %i.bgd
  %i.bgh = fadd <8 x double> %i.bge, %i.bgf
  %i.bgi = fadd <8 x double> %i.bgg, %i.bgh       ; 2 uses
  %i.bgj = shufflevector <8 x double> %i.bgi, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgk = shufflevector <8 x double> %i.bgi, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgl = fadd <4 x double> %i.bgj, %i.bgk
  %i.bgm = fmul <4 x double> %i.avj, %i.bgl
  %i.bgn = mul nsw i64 %.132849, %9
  %gep2846 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bgn
  store <4 x double> %i.bgm, ptr %gep2846, align 1, !tbaa !8
  %i.bgo = shufflevector <8 x double> %.12440, <8 x double> %.12442, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgp = shufflevector <8 x double> %.12440, <8 x double> %.12442, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgq = shufflevector <8 x double> %.12444, <8 x double> %.12446, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bgr = shufflevector <8 x double> %.12444, <8 x double> %.12446, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bgs = shufflevector <8 x double> %i.bgo, <8 x double> %i.bgq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bgt = shufflevector <8 x double> %i.bgp, <8 x double> %i.bgr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bgu = shufflevector <8 x double> %i.bgo, <8 x double> %i.bgq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgv = shufflevector <8 x double> %i.bgp, <8 x double> %i.bgr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bgw = fadd <8 x double> %i.bgs, %i.bgt
  %i.bgx = fadd <8 x double> %i.bgu, %i.bgv
  %i.bgy = fadd <8 x double> %i.bgw, %i.bgx       ; 2 uses
  %i.bgz = shufflevector <8 x double> %i.bgy, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bha = shufflevector <8 x double> %i.bgy, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bhb = fadd <4 x double> %i.bgz, %i.bha
  %i.bhc = fmul <4 x double> %i.avj, %i.bhb
  %i.bhd = mul nsw i64 %.pre-phi3363, %9
  %gep2848 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bhd
  store <4 x double> %i.bhc, ptr %gep2848, align 1, !tbaa !8
  %i.bhe = add nuw nsw i64 %.132849, 2            ; 3 uses
  %i.bhf = icmp slt i64 %i.bhe, %i.i
  br i1 %i.bhf, label %.lr.ph2834, label %.preheader2508, !llvm.loop !59

.lr.ph2856:                                       ; preds = %bb.ab, %.preheader2505.lr.ph
  %.142865 = phi i64 [ %.13.lcssa, %.preheader2505.lr.ph ], [ %i.biy, %bb.ab ] ; 4 uses
  %i.bhg = mul nsw i64 %.142865, %7
  %i.bhh = getelementptr [8 x i8], ptr %6, i64 %i.bhg
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph2856, %bb.z
  %.1622762855 = phi i64 [ 0, %.lr.ph2856 ], [ %i.bhw, %bb.z ] ; 6 uses
  %.023912854 = phi <8 x double> [ zeroinitializer, %.lr.ph2856 ], [ %i.bhv, %bb.z ]
  %.023932853 = phi <8 x double> [ zeroinitializer, %.lr.ph2856 ], [ %i.bhu, %bb.z ]
  %.023952852 = phi <8 x double> [ zeroinitializer, %.lr.ph2856 ], [ %i.bht, %bb.z ]
  %.023972851 = phi <8 x double> [ zeroinitializer, %.lr.ph2856 ], [ %i.bhs, %bb.z ]
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bds, i64 %.1622762855
  %i.bhj = load <8 x double>, ptr %i.bhi, align 1, !tbaa !8
  %i.bhk = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %.1622762855
  %i.bhl = load <8 x double>, ptr %i.bhk, align 1, !tbaa !8
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bdy, i64 %.1622762855
  %i.bhn = load <8 x double>, ptr %i.bhm, align 1, !tbaa !8
  %i.bho = getelementptr inbounds nuw [8 x i8], ptr %i.beb, i64 %.1622762855
  %i.bhp = load <8 x double>, ptr %i.bho, align 1, !tbaa !8
  %i.bhq = getelementptr [8 x i8], ptr %i.bhh, i64 %.1622762855
  %i.bhr = load <8 x double>, ptr %i.bhq, align 1, !tbaa !8 ; 4 uses
  %i.bhs = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhj, <8 x double> %i.bhr, <8 x double> %.023972851) ; 3 uses
  %i.bht = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhl, <8 x double> %i.bhr, <8 x double> %.023952852) ; 3 uses
  %i.bhu = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhn, <8 x double> %i.bhr, <8 x double> %.023932853) ; 3 uses
  %i.bhv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhp, <8 x double> %i.bhr, <8 x double> %.023912854) ; 3 uses
  %i.bhw = add nuw nsw i64 %.1622762855, 8        ; 2 uses
  %i.bhx = icmp samesign ult i64 %i.bhw, %13
  br i1 %i.bhx, label %bb.z, label %._crit_edge2857, !llvm.loop !60

._crit_edge2857:                                  ; preds = %bb.z
  br i1 %.not2469, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge2857
  %i.bhy = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bec, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bhz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bed, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bia = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bee, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bib = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bef, <8 x i1> %i.awd, <8 x double> zeroinitializer)
  %i.bic = mul nsw i64 %.142865, %7
  %gep3615.a = getelementptr [8 x i8], ptr %invariant.gep3614.a, i64 %i.bic
  %i.bid = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3615.a, <8 x i1> %i.awd, <8 x double> zeroinitializer) ; 4 uses
  %i.bie = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhy, <8 x double> %i.bid, <8 x double> %i.bhs)
  %i.bif = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bhz, <8 x double> %i.bid, <8 x double> %i.bht)
  %i.big = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bia, <8 x double> %i.bid, <8 x double> %i.bhu)
  %i.bih = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bib, <8 x double> %i.bid, <8 x double> %i.bhv)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge2857
  %.12398 = phi <8 x double> [ %i.bie, %bb.aa ], [ %i.bhs, %._crit_edge2857 ] ; 2 uses
  %.12396 = phi <8 x double> [ %i.bif, %bb.aa ], [ %i.bht, %._crit_edge2857 ] ; 2 uses
  %.12394 = phi <8 x double> [ %i.big, %bb.aa ], [ %i.bhu, %._crit_edge2857 ] ; 2 uses
  %.12392 = phi <8 x double> [ %i.bih, %bb.aa ], [ %i.bhv, %._crit_edge2857 ] ; 2 uses
  %i.bii = shufflevector <8 x double> %.12398, <8 x double> %.12396, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bij = shufflevector <8 x double> %.12398, <8 x double> %.12396, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bik = shufflevector <8 x double> %.12394, <8 x double> %.12392, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bil = shufflevector <8 x double> %.12394, <8 x double> %.12392, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bim = shufflevector <8 x double> %i.bii, <8 x double> %i.bik, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bin = shufflevector <8 x double> %i.bij, <8 x double> %i.bil, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bio = shufflevector <8 x double> %i.bii, <8 x double> %i.bik, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bip = shufflevector <8 x double> %i.bij, <8 x double> %i.bil, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.biq = fadd <8 x double> %i.bim, %i.bin
  %i.bir = fadd <8 x double> %i.bio, %i.bip
  %i.bis = fadd <8 x double> %i.biq, %i.bir       ; 2 uses
  %i.bit = shufflevector <8 x double> %i.bis, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.biu = shufflevector <8 x double> %i.bis, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.biv = fadd <4 x double> %i.bit, %i.biu
  %i.biw = fmul <4 x double> %i.avj, %i.biv
  %i.bix = mul nsw i64 %.142865, %9
  %gep2864 = getelementptr [8 x i8], ptr %invariant.gep2815, i64 %i.bix
  store <4 x double> %i.biw, ptr %gep2864, align 1, !tbaa !8
  %i.biy = add nuw nsw i64 %.142865, 1            ; 2 uses
  %exitcond3206.not = icmp eq i64 %i.biy, %1
  br i1 %exitcond3206.not, label %._crit_edge2866, label %.lr.ph2856, !llvm.loop !61

._crit_edge2866:                                  ; preds = %bb.ab, %.preheader2508
  %i.biz = add nuw nsw i64 %.32868, 4             ; 3 uses
  %indvars.iv.next3208 = add nuw nsw i64 %indvars.iv3207, 4 ; 2 uses
  %i.bja = icmp slt i64 %i.biz, %i.d
  br i1 %i.bja, label %.preheader2510, label %.preheader2504.loopexit, !llvm.loop !62

.preheader2503:                                   ; preds = %.preheader2503.lr.ph, %._crit_edge2924
  %indvars.iv3211 = phi i64 [ %i.awx, %.preheader2503.lr.ph ], [ %indvars.iv.next3212, %._crit_edge2924 ] ; 7 uses
  %.42926 = phi i64 [ %.3.lcssa, %.preheader2503.lr.ph ], [ %i.bqq, %._crit_edge2924 ] ; 2 uses
  %invariant.gep2891 = getelementptr [8 x i8], ptr %8, i64 %.42926 ; 4 uses
  br i1 %i.awv, label %.preheader2500.lr.ph, label %.preheader2502

.preheader2500.lr.ph:                             ; preds = %.preheader2503
  %i.bjb = mul nuw nsw i64 %2, %indvars.iv3211
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bjb ; 2 uses
  %i.bjd = or disjoint i64 %indvars.iv3211, 1
  %i.bje = mul nuw nsw i64 %2, %i.bjd
  %i.bjf = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bje ; 2 uses
  %i.bjg = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %i.aww
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %i.bjf, i64 %i.aww
  br label %.lr.ph2880

.preheader2497.loopexit:                          ; preds = %._crit_edge2924
  %i.bji = trunc nuw i64 %indvars.iv.next3212 to i32
  br label %.preheader2497

.preheader2497:                                   ; preds = %.preheader2497.loopexit, %.preheader2504
  %.12389.lcssa = phi i32 [ %.02388.lcssa, %.preheader2504 ], [ %i.bji, %.preheader2497.loopexit ]
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader2504 ], [ %i.bqq, %.preheader2497.loopexit ] ; 2 uses
  %i.bjj = icmp slt i64 %.4.lcssa, %0
  br i1 %i.bjj, label %.preheader2496.lr.ph, label %._crit_edge2971

.preheader2496.lr.ph:                             ; preds = %.preheader2497
  %i.bjk = icmp sgt i64 %1, 3
  %i.bjl = and i64 %2, 9223372036854775800        ; 10 uses
  %i.bjm = zext i32 %.12389.lcssa to i64
  %i.bjn = and i64 %2, 7                          ; 2 uses
  %.not2461 = icmp eq i64 %i.bjn, 0
  %notmask2462 = shl nsw i64 -1, %i.bjn
  %i.bjo = trunc nsw i64 %notmask2462 to i8
  %i.bjp = xor i8 %i.bjo, -1
  %i.bjq = bitcast i8 %i.bjp to <8 x i1>          ; 5 uses
  %invariant.gep3630.a = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %invariant.gep3632.a = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %invariant.gep3634.a = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %invariant.gep3636.a = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %i.bjr = and i64 %2, 7                          ; 2 uses
  %.not2459 = icmp eq i64 %i.bjr, 0
  %notmask2460 = shl nsw i64 -1, %i.bjr
  %i.bjs = trunc nsw i64 %notmask2460 to i8
  %i.bjt = xor i8 %i.bjs, -1
  %i.bju = bitcast i8 %i.bjt to <8 x i1>          ; 3 uses
  %invariant.gep3638 = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %invariant.gep3640 = getelementptr [8 x i8], ptr %6, i64 %i.bjl
  %i.bjv = and i64 %2, 7                          ; 2 uses
  %.not2457 = icmp eq i64 %i.bjv, 0               ; 3 uses
  %notmask2458 = shl nsw i64 -1, %i.bjv
  %i.bjw = trunc nsw i64 %notmask2458 to i8
  %i.bjx = xor i8 %i.bjw, -1
  %i.bjy = bitcast i8 %i.bjx to <8 x i1>          ; 6 uses
  %invariant.gep3642 = getelementptr [8 x i8], ptr %6, i64 %i.bjl ; 3 uses
  br label %.preheader2496

.preheader2502:                                   ; preds = %bb.ae, %.preheader2503
  %.15.lcssa = phi i64 [ 0, %.preheader2503 ], [ %i.bnp, %bb.ae ] ; 3 uses
  %i.bjz = icmp slt i64 %.15.lcssa, %i.i
  br i1 %i.bjz, label %.preheader2499.lr.ph, label %.preheader2501

.preheader2499.lr.ph:                             ; preds = %.preheader2502
  %i.bka = mul nuw nsw i64 %2, %indvars.iv3211
  %i.bkb = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bka ; 2 uses
  %i.bkc = or disjoint i64 %indvars.iv3211, 1
  %i.bkd = mul nuw nsw i64 %2, %i.bkc
  %i.bke = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bkd ; 2 uses
  %i.bkf = getelementptr inbounds nuw [8 x i8], ptr %i.bkb, i64 %i.aww
  %i.bkg = getelementptr inbounds nuw [8 x i8], ptr %i.bke, i64 %i.aww
  br label %.lr.ph2900

.lr.ph2880:                                       ; preds = %bb.ae, %.preheader2500.lr.ph
  %.152893 = phi i64 [ 0, %.preheader2500.lr.ph ], [ %i.bnp, %bb.ae ] ; 10 uses
  %i.bkh = mul nsw i64 %.152893, %7
  %i.bki = getelementptr [8 x i8], ptr %6, i64 %i.bkh
  %i.bkj = or disjoint i64 %.152893, 1
  %i.bkk = mul nsw i64 %i.bkj, %7
  %i.bkl = getelementptr [8 x i8], ptr %6, i64 %i.bkk
  %i.bkm = or disjoint i64 %.152893, 2
  %i.bkn = mul nsw i64 %i.bkm, %7
  %i.bko = getelementptr [8 x i8], ptr %6, i64 %i.bkn
  %i.bkp = or disjoint i64 %.152893, 3
  %i.bkq = mul nsw i64 %i.bkp, %7
  %i.bkr = getelementptr [8 x i8], ptr %6, i64 %i.bkq
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph2880, %bb.ac
  %.1722772879 = phi i64 [ 0, %.lr.ph2880 ], [ %i.blm, %bb.ac ] ; 7 uses
  %.023672878 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.bll, %bb.ac ]
  %.023692877 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.blk, %bb.ac ]
  %.023712876 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.blj, %bb.ac ]
  %.023732875 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.bli, %bb.ac ]
  %.023752874 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.blh, %bb.ac ]
  %.023772873 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.blg, %bb.ac ]
  %.023792872 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.blf, %bb.ac ]
  %.023812871 = phi <8 x double> [ zeroinitializer, %.lr.ph2880 ], [ %i.ble, %bb.ac ]
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %.1722772879
  %i.bkt = load <8 x double>, ptr %i.bks, align 1, !tbaa !8 ; 4 uses
  %i.bku = getelementptr inbounds nuw [8 x i8], ptr %i.bjf, i64 %.1722772879
  %i.bkv = load <8 x double>, ptr %i.bku, align 1, !tbaa !8 ; 4 uses
  %i.bkw = getelementptr [8 x i8], ptr %i.bki, i64 %.1722772879
  %i.bkx = load <8 x double>, ptr %i.bkw, align 1, !tbaa !8 ; 2 uses
  %i.bky = getelementptr [8 x i8], ptr %i.bkl, i64 %.1722772879
  %i.bkz = load <8 x double>, ptr %i.bky, align 1, !tbaa !8 ; 2 uses
  %i.bla = getelementptr [8 x i8], ptr %i.bko, i64 %.1722772879
  %i.blb = load <8 x double>, ptr %i.bla, align 1, !tbaa !8 ; 2 uses
  %i.blc = getelementptr [8 x i8], ptr %i.bkr, i64 %.1722772879
  %i.bld = load <8 x double>, ptr %i.blc, align 1, !tbaa !8 ; 2 uses
  %i.ble = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkt, <8 x double> %i.bkx, <8 x double> %.023812871) ; 3 uses
  %i.blf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkv, <8 x double> %i.bkx, <8 x double> %.023792872) ; 3 uses
  %i.blg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkt, <8 x double> %i.bkz, <8 x double> %.023772873) ; 3 uses
  %i.blh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkv, <8 x double> %i.bkz, <8 x double> %.023752874) ; 3 uses
  %i.bli = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkt, <8 x double> %i.blb, <8 x double> %.023732875) ; 3 uses
  %i.blj = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkv, <8 x double> %i.blb, <8 x double> %.023712876) ; 3 uses
  %i.blk = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkt, <8 x double> %i.bld, <8 x double> %.023692877) ; 3 uses
  %i.bll = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bkv, <8 x double> %i.bld, <8 x double> %.023672878) ; 3 uses
  %i.blm = add nuw nsw i64 %.1722772879, 8        ; 2 uses
  %i.bln = icmp samesign ult i64 %i.blm, %13
  br i1 %i.bln, label %bb.ac, label %._crit_edge2881, !llvm.loop !63

._crit_edge2881:                                  ; preds = %bb.ac
  br i1 %.not2467, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge2881
  %i.blo = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bjg, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 4 uses
  %i.blp = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bjh, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 4 uses
  %i.blq = mul nsw i64 %.152893, %7
  %gep3617.a = getelementptr [8 x i8], ptr %invariant.gep3616.a, i64 %i.blq
  %i.blr = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3617.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bls = or disjoint i64 %.152893, 1
  %i.blt = mul nsw i64 %i.bls, %7
  %gep3619.a = getelementptr [8 x i8], ptr %invariant.gep3618.a, i64 %i.blt
  %i.blu = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3619.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.blv = or disjoint i64 %.152893, 2
  %i.blw = mul nsw i64 %i.blv, %7
  %gep3621.a = getelementptr [8 x i8], ptr %invariant.gep3620.a, i64 %i.blw
  %i.blx = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3621.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bly = or disjoint i64 %.152893, 3
  %i.blz = mul nsw i64 %i.bly, %7
  %gep3623.a = getelementptr [8 x i8], ptr %invariant.gep3622.a, i64 %i.blz
  %i.bma = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3623.a, <8 x i1> %i.axb, <8 x double> zeroinitializer) ; 2 uses
  %i.bmb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blo, <8 x double> %i.blr, <8 x double> %i.ble)
  %i.bmc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blp, <8 x double> %i.blr, <8 x double> %i.blf)
  %i.bmd = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blo, <8 x double> %i.blu, <8 x double> %i.blg)
  %i.bme = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blp, <8 x double> %i.blu, <8 x double> %i.blh)
  %i.bmf = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blo, <8 x double> %i.blx, <8 x double> %i.bli)
  %i.bmg = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blp, <8 x double> %i.blx, <8 x double> %i.blj)
  %i.bmh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blo, <8 x double> %i.bma, <8 x double> %i.blk)
  %i.bmi = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.blp, <8 x double> %i.bma, <8 x double> %i.bll)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge2881
  %.12382 = phi <8 x double> [ %i.bmb, %bb.ad ], [ %i.ble, %._crit_edge2881 ] ; 2 uses
  %.12380 = phi <8 x double> [ %i.bmc, %bb.ad ], [ %i.blf, %._crit_edge2881 ] ; 2 uses
  %.12378 = phi <8 x double> [ %i.bmd, %bb.ad ], [ %i.blg, %._crit_edge2881 ] ; 2 uses
  %.12376 = phi <8 x double> [ %i.bme, %bb.ad ], [ %i.blh, %._crit_edge2881 ] ; 2 uses
  %.12374 = phi <8 x double> [ %i.bmf, %bb.ad ], [ %i.bli, %._crit_edge2881 ] ; 2 uses
  %.12372 = phi <8 x double> [ %i.bmg, %bb.ad ], [ %i.blj, %._crit_edge2881 ] ; 2 uses
  %.12370 = phi <8 x double> [ %i.bmh, %bb.ad ], [ %i.blk, %._crit_edge2881 ] ; 2 uses
  %.12368 = phi <8 x double> [ %i.bmi, %bb.ad ], [ %i.bll, %._crit_edge2881 ] ; 2 uses
  %i.bmj = shufflevector <8 x double> %.12382, <8 x double> %.12378, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bmk = shufflevector <8 x double> %.12382, <8 x double> %.12378, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bml = shufflevector <8 x double> %.12374, <8 x double> %.12370, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bmm = shufflevector <8 x double> %.12374, <8 x double> %.12370, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bmn = shufflevector <8 x double> %i.bmj, <8 x double> %i.bml, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bmo = shufflevector <8 x double> %i.bmk, <8 x double> %i.bmm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bmp = shufflevector <8 x double> %i.bmj, <8 x double> %i.bml, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bmq = shufflevector <8 x double> %i.bmk, <8 x double> %i.bmm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bmr = fadd <8 x double> %i.bmn, %i.bmo
  %i.bms = fadd <8 x double> %i.bmp, %i.bmq
  %i.bmt = fadd <8 x double> %i.bmr, %i.bms       ; 2 uses
  %i.bmu = shufflevector <8 x double> %i.bmt, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmv = shufflevector <8 x double> %i.bmt, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmw = fadd <4 x double> %i.bmu, %i.bmv
  %i.bmx = fmul <4 x double> %i.avj, %i.bmw
  %i.bmy = mul nsw i64 %.152893, %9
  %gep2892 = getelementptr [8 x i8], ptr %invariant.gep2891, i64 %i.bmy ; 2 uses
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %gep2892, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.bmx, i32 8)
  %i.bmz = shufflevector <8 x double> %.12380, <8 x double> %.12376, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bna = shufflevector <8 x double> %.12380, <8 x double> %.12376, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bnb = shufflevector <8 x double> %.12372, <8 x double> %.12368, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bnc = shufflevector <8 x double> %.12372, <8 x double> %.12368, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bnd = shufflevector <8 x double> %i.bmz, <8 x double> %i.bnb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bne = shufflevector <8 x double> %i.bna, <8 x double> %i.bnc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bnf = shufflevector <8 x double> %i.bmz, <8 x double> %i.bnb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bng = shufflevector <8 x double> %i.bna, <8 x double> %i.bnc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bnh = fadd <8 x double> %i.bnd, %i.bne
  %i.bni = fadd <8 x double> %i.bnf, %i.bng
  %i.bnj = fadd <8 x double> %i.bnh, %i.bni       ; 2 uses
  %i.bnk = shufflevector <8 x double> %i.bnj, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnl = shufflevector <8 x double> %i.bnj, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnm = fadd <4 x double> %i.bnk, %i.bnl
  %i.bnn = fmul <4 x double> %i.avj, %i.bnm
  %i.bno = getelementptr i8, ptr %gep2892, i64 8
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %i.bno, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.bnn, i32 8)
  %i.bnp = add nuw nsw i64 %.152893, 4            ; 3 uses
  %i.bnq = icmp slt i64 %i.bnp, %i.h
  br i1 %i.bnq, label %.lr.ph2880, label %.preheader2502, !llvm.loop !64

.preheader2501:                                   ; preds = %bb.ah, %.preheader2502
  %.16.lcssa = phi i64 [ %.15.lcssa, %.preheader2502 ], [ %i.bpp, %bb.ah ] ; 2 uses
  %i.bnr = icmp slt i64 %.16.lcssa, %1
  br i1 %i.bnr, label %.preheader2498.lr.ph, label %._crit_edge2924

.preheader2498.lr.ph:                             ; preds = %.preheader2501
  %i.bns = mul nuw nsw i64 %2, %indvars.iv3211
  %i.bnt = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bns ; 2 uses
  %i.bnu = or disjoint i64 %indvars.iv3211, 1
  %i.bnv = mul nuw nsw i64 %2, %i.bnu
  %i.bnw = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bnv ; 2 uses
  %i.bnx = getelementptr inbounds nuw [8 x i8], ptr %i.bnt, i64 %i.aww
  %i.bny = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %i.aww
  br label %.lr.ph2916

.lr.ph2900:                                       ; preds = %bb.ah, %.preheader2499.lr.ph
  %.162911 = phi i64 [ %.15.lcssa, %.preheader2499.lr.ph ], [ %i.bpp, %bb.ah ] ; 7 uses
  %i.bnz = mul nsw i64 %.162911, %7
  %i.boa = getelementptr [8 x i8], ptr %6, i64 %i.bnz
  %i.bob = add nuw nsw i64 %.162911, 1
  %i.boc = mul nsw i64 %i.bob, %7
  %i.bod = getelementptr [8 x i8], ptr %6, i64 %i.boc
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph2900, %bb.af
  %.1822782899 = phi i64 [ 0, %.lr.ph2900 ], [ %i.boq, %bb.af ] ; 5 uses
  %.023302898 = phi <8 x double> [ zeroinitializer, %.lr.ph2900 ], [ %i.bop, %bb.af ]
  %.023322897 = phi <8 x double> [ zeroinitializer, %.lr.ph2900 ], [ %i.boo, %bb.af ]
  %.023342896 = phi <8 x double> [ zeroinitializer, %.lr.ph2900 ], [ %i.bon, %bb.af ]
  %.023362895 = phi <8 x double> [ zeroinitializer, %.lr.ph2900 ], [ %i.bom, %bb.af ]
  %i.boe = getelementptr inbounds nuw [8 x i8], ptr %i.bkb, i64 %.1822782899
  %i.bof = load <8 x double>, ptr %i.boe, align 1, !tbaa !8 ; 2 uses
  %i.bog = getelementptr inbounds nuw [8 x i8], ptr %i.bke, i64 %.1822782899
  %i.boh = load <8 x double>, ptr %i.bog, align 1, !tbaa !8 ; 2 uses
  %i.boi = getelementptr [8 x i8], ptr %i.boa, i64 %.1822782899
  %i.boj = load <8 x double>, ptr %i.boi, align 1, !tbaa !8 ; 2 uses
  %i.bok = getelementptr [8 x i8], ptr %i.bod, i64 %.1822782899
  %i.bol = load <8 x double>, ptr %i.bok, align 1, !tbaa !8 ; 2 uses
  %i.bom = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bof, <8 x double> %i.boj, <8 x double> %.023362895) ; 3 uses
  %i.bon = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.boh, <8 x double> %i.boj, <8 x double> %.023342896) ; 3 uses
  %i.boo = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bof, <8 x double> %i.bol, <8 x double> %.023322897) ; 3 uses
  %i.bop = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.boh, <8 x double> %i.bol, <8 x double> %.023302898) ; 3 uses
  %i.boq = add nuw nsw i64 %.1822782899, 8        ; 2 uses
  %i.bor = icmp samesign ult i64 %i.boq, %13
  br i1 %i.bor, label %bb.af, label %._crit_edge2901, !llvm.loop !65

._crit_edge2901:                                  ; preds = %bb.af
  br i1 %.not2465, label %._crit_edge2901._crit_edge, label %bb.ag

._crit_edge2901._crit_edge:                       ; preds = %._crit_edge2901
  %.pre3364 = add nuw nsw i64 %.162911, 1
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge2901
  %i.bos = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bkf, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bot = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bkg, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bou = mul nsw i64 %.162911, %7
  %gep3625.a = getelementptr [8 x i8], ptr %invariant.gep3624.a, i64 %i.bou
  %i.bov = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3625.a, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.bow = add nuw nsw i64 %.162911, 1            ; 2 uses
  %i.box = mul nsw i64 %i.bow, %7
  %gep3627.a = getelementptr [8 x i8], ptr %invariant.gep3626.a, i64 %i.box
  %i.boy = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3627.a, <8 x i1> %i.axf, <8 x double> zeroinitializer) ; 2 uses
  %i.boz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bos, <8 x double> %i.bov, <8 x double> %i.bom)
  %i.bpa = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bot, <8 x double> %i.bov, <8 x double> %i.bon)
  %i.bpb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bos, <8 x double> %i.boy, <8 x double> %i.boo)
  %i.bpc = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bot, <8 x double> %i.boy, <8 x double> %i.bop)
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge2901._crit_edge, %bb.ag
  %.pre-phi3365 = phi i64 [ %.pre3364, %._crit_edge2901._crit_edge ], [ %i.bow, %bb.ag ]
  %.12337 = phi <8 x double> [ %i.bom, %._crit_edge2901._crit_edge ], [ %i.boz, %bb.ag ]
  %.12335 = phi <8 x double> [ %i.bon, %._crit_edge2901._crit_edge ], [ %i.bpa, %bb.ag ]
  %.12333 = phi <8 x double> [ %i.boo, %._crit_edge2901._crit_edge ], [ %i.bpb, %bb.ag ]
  %.12331 = phi <8 x double> [ %i.bop, %._crit_edge2901._crit_edge ], [ %i.bpc, %bb.ag ]
  %i.bpd = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12337)
  %i.bpe = mul nsw i64 %.162911, %9
  %gep2908 = getelementptr [8 x i8], ptr %invariant.gep2891, i64 %i.bpe
  %i.bpf = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12335)
  %i.bpg = insertelement <2 x double> poison, double %i.bpd, i64 0
  %i.bph = insertelement <2 x double> %i.bpg, double %i.bpf, i64 1
  %i.bpi = fmul <2 x double> %i.axl, %i.bph
  store <2 x double> %i.bpi, ptr %gep2908, align 8, !tbaa !50
  %i.bpj = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12333)
  %i.bpk = mul nsw i64 %.pre-phi3365, %9
  %gep2910 = getelementptr [8 x i8], ptr %invariant.gep2891, i64 %i.bpk
  %i.bpl = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12331)
  %i.bpm = insertelement <2 x double> poison, double %i.bpj, i64 0
  %i.bpn = insertelement <2 x double> %i.bpm, double %i.bpl, i64 1
  %i.bpo = fmul <2 x double> %i.axl, %i.bpn
  store <2 x double> %i.bpo, ptr %gep2910, align 8, !tbaa !50
  %i.bpp = add nuw nsw i64 %.162911, 2            ; 3 uses
  %i.bpq = icmp slt i64 %i.bpp, %i.i
  br i1 %i.bpq, label %.lr.ph2900, label %.preheader2501, !llvm.loop !66

.lr.ph2916:                                       ; preds = %bb.ak, %.preheader2498.lr.ph
  %.172923 = phi i64 [ %.16.lcssa, %.preheader2498.lr.ph ], [ %i.bqp, %bb.ak ] ; 4 uses
  %i.bpr = mul nsw i64 %.172923, %7
  %i.bps = getelementptr [8 x i8], ptr %6, i64 %i.bpr
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph2916, %bb.ai
  %.1922792915 = phi i64 [ 0, %.lr.ph2916 ], [ %i.bqb, %bb.ai ] ; 4 uses
  %.023182914 = phi <8 x double> [ zeroinitializer, %.lr.ph2916 ], [ %i.bqa, %bb.ai ]
  %.023202913 = phi <8 x double> [ zeroinitializer, %.lr.ph2916 ], [ %i.bpz, %bb.ai ]
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.bnt, i64 %.1922792915
  %i.bpu = load <8 x double>, ptr %i.bpt, align 1, !tbaa !8
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %.1922792915
  %i.bpw = load <8 x double>, ptr %i.bpv, align 1, !tbaa !8
  %i.bpx = getelementptr [8 x i8], ptr %i.bps, i64 %.1922792915
  %i.bpy = load <8 x double>, ptr %i.bpx, align 1, !tbaa !8 ; 2 uses
  %i.bpz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bpu, <8 x double> %i.bpy, <8 x double> %.023202913) ; 3 uses
  %i.bqa = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bpw, <8 x double> %i.bpy, <8 x double> %.023182914) ; 3 uses
  %i.bqb = add nuw nsw i64 %.1922792915, 8        ; 2 uses
  %i.bqc = icmp samesign ult i64 %i.bqb, %13
  br i1 %i.bqc, label %bb.ai, label %._crit_edge2917, !llvm.loop !67

._crit_edge2917:                                  ; preds = %bb.ai
  br i1 %.not2463, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge2917
  %i.bqd = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bnx, <8 x i1> %i.axj, <8 x double> zeroinitializer)
  %i.bqe = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bny, <8 x i1> %i.axj, <8 x double> zeroinitializer)
  %i.bqf = mul nsw i64 %.172923, %7
  %gep3629.a = getelementptr [8 x i8], ptr %invariant.gep3628.a, i64 %i.bqf
  %i.bqg = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3629.a, <8 x i1> %i.axj, <8 x double> zeroinitializer) ; 2 uses
  %i.bqh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqd, <8 x double> %i.bqg, <8 x double> %i.bpz)
  %i.bqi = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bqe, <8 x double> %i.bqg, <8 x double> %i.bqa)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge2917
  %.12321 = phi <8 x double> [ %i.bqh, %bb.aj ], [ %i.bpz, %._crit_edge2917 ]
  %.12319 = phi <8 x double> [ %i.bqi, %bb.aj ], [ %i.bqa, %._crit_edge2917 ]
  %i.bqj = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12321)
  %i.bqk = mul nsw i64 %.172923, %9
  %gep2922 = getelementptr [8 x i8], ptr %invariant.gep2891, i64 %i.bqk
  %i.bql = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12319)
  %i.bqm = insertelement <2 x double> poison, double %i.bqj, i64 0
  %i.bqn = insertelement <2 x double> %i.bqm, double %i.bql, i64 1
  %i.bqo = fmul <2 x double> %i.axn, %i.bqn
  store <2 x double> %i.bqo, ptr %gep2922, align 8, !tbaa !50
  %i.bqp = add nuw nsw i64 %.172923, 1            ; 2 uses
  %exitcond3210.not = icmp eq i64 %i.bqp, %1
  br i1 %exitcond3210.not, label %._crit_edge2924, label %.lr.ph2916, !llvm.loop !68

._crit_edge2924:                                  ; preds = %bb.ak, %.preheader2501
  %i.bqq = add nuw nsw i64 %.42926, 2             ; 3 uses
  %indvars.iv.next3212 = add nuw nsw i64 %indvars.iv3211, 2 ; 2 uses
  %i.bqr = icmp slt i64 %i.bqq, %i.e
  br i1 %i.bqr, label %.preheader2503, label %.preheader2497.loopexit, !llvm.loop !69

.preheader2496:                                   ; preds = %.preheader2496.lr.ph, %._crit_edge2968.a
  %indvars.iv3215 = phi i64 [ %i.bjm, %.preheader2496.lr.ph ], [ %indvars.iv.next3216, %._crit_edge2968.a ] ; 4 uses
  %.52970 = phi i64 [ %.4.lcssa, %.preheader2496.lr.ph ], [ %i.bws, %._crit_edge2968.a ] ; 2 uses
  %invariant.gep2941 = getelementptr [8 x i8], ptr %8, i64 %.52970 ; 6 uses
  br i1 %i.bjk, label %.preheader2493.lr.ph, label %.preheader2495

.preheader2493.lr.ph:                             ; preds = %.preheader2496
  %i.bqs = mul nuw nsw i64 %2, %indvars.iv3215
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bqs ; 2 uses
  %i.bqu = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %i.bjl
  br label %.lr.ph2934

.preheader2495:                                   ; preds = %bb.an, %.preheader2496
  %.18.lcssa = phi i64 [ 0, %.preheader2496 ], [ %i.btg, %bb.an ] ; 3 uses
  %i.bqv = icmp slt i64 %.18.lcssa, %i.i
  br i1 %i.bqv, label %.preheader2492.lr.ph, label %.preheader2494

.preheader2492.lr.ph:                             ; preds = %.preheader2495
  %i.bqw = mul nuw nsw i64 %2, %indvars.iv3215
  %i.bqx = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.bqw ; 2 uses
  %i.bqy = getelementptr inbounds nuw [8 x i8], ptr %i.bqx, i64 %i.bjl
  br label %.lr.ph2948

.lr.ph2934:                                       ; preds = %bb.an, %.preheader2493.lr.ph
  %.182943 = phi i64 [ 0, %.preheader2493.lr.ph ], [ %i.btg, %bb.an ] ; 10 uses
  %i.bqz = mul nsw i64 %.182943, %7
  %i.bra = getelementptr [8 x i8], ptr %6, i64 %i.bqz
  %i.brb = or disjoint i64 %.182943, 1
  %i.brc = mul nsw i64 %i.brb, %7
  %i.brd = getelementptr [8 x i8], ptr %6, i64 %i.brc
  %i.bre = or disjoint i64 %.182943, 2
  %i.brf = mul nsw i64 %i.bre, %7
  %i.brg = getelementptr [8 x i8], ptr %6, i64 %i.brf
  %i.brh = or disjoint i64 %.182943, 3
  %i.bri = mul nsw i64 %i.brh, %7
  %i.brj = getelementptr [8 x i8], ptr %6, i64 %i.bri
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph2934, %bb.al
  %.2022802933 = phi i64 [ 0, %.lr.ph2934 ], [ %i.bry, %bb.al ] ; 6 uses
  %.023042932 = phi <8 x double> [ zeroinitializer, %.lr.ph2934 ], [ %i.brx, %bb.al ]
  %.023062931 = phi <8 x double> [ zeroinitializer, %.lr.ph2934 ], [ %i.brw, %bb.al ]
  %.023082930 = phi <8 x double> [ zeroinitializer, %.lr.ph2934 ], [ %i.brv, %bb.al ]
  %.023102929 = phi <8 x double> [ zeroinitializer, %.lr.ph2934 ], [ %i.bru, %bb.al ]
  %i.brk = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %.2022802933
  %i.brl = load <8 x double>, ptr %i.brk, align 1, !tbaa !8 ; 4 uses
  %i.brm = getelementptr [8 x i8], ptr %i.bra, i64 %.2022802933
  %i.brn = load <8 x double>, ptr %i.brm, align 1, !tbaa !8
  %i.bro = getelementptr [8 x i8], ptr %i.brd, i64 %.2022802933
  %i.brp = load <8 x double>, ptr %i.bro, align 1, !tbaa !8
  %i.brq = getelementptr [8 x i8], ptr %i.brg, i64 %.2022802933
  %i.brr = load <8 x double>, ptr %i.brq, align 1, !tbaa !8
  %i.brs = getelementptr [8 x i8], ptr %i.brj, i64 %.2022802933
  %i.brt = load <8 x double>, ptr %i.brs, align 1, !tbaa !8
  %i.bru = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.brl, <8 x double> %i.brn, <8 x double> %.023102929) ; 3 uses
  %i.brv = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.brl, <8 x double> %i.brp, <8 x double> %.023082930) ; 3 uses
  %i.brw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.brl, <8 x double> %i.brr, <8 x double> %.023062931) ; 3 uses
  %i.brx = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.brl, <8 x double> %i.brt, <8 x double> %.023042932) ; 3 uses
  %i.bry = add nuw nsw i64 %.2022802933, 8        ; 2 uses
  %i.brz = icmp samesign ult i64 %i.bry, %13
  br i1 %i.brz, label %bb.al, label %._crit_edge2935, !llvm.loop !70

._crit_edge2935:                                  ; preds = %bb.al
  br i1 %.not2461, label %bb.an, label %bb.am

bb.am:                                            ; preds = %._crit_edge2935
  %i.bsa = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bqu, <8 x i1> %i.bjq, <8 x double> zeroinitializer) ; 4 uses
  %i.bsb = mul nsw i64 %.182943, %7
  %gep3631.a = getelementptr [8 x i8], ptr %invariant.gep3630.a, i64 %i.bsb
  %i.bsc = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3631.a, <8 x i1> %i.bjq, <8 x double> zeroinitializer)
  %i.bsd = or disjoint i64 %.182943, 1
  %i.bse = mul nsw i64 %i.bsd, %7
  %gep3633.a = getelementptr [8 x i8], ptr %invariant.gep3632.a, i64 %i.bse
  %i.bsf = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3633.a, <8 x i1> %i.bjq, <8 x double> zeroinitializer)
  %i.bsg = or disjoint i64 %.182943, 2
  %i.bsh = mul nsw i64 %i.bsg, %7
  %gep3635.a = getelementptr [8 x i8], ptr %invariant.gep3634.a, i64 %i.bsh
  %i.bsi = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3635.a, <8 x i1> %i.bjq, <8 x double> zeroinitializer)
  %i.bsj = or disjoint i64 %.182943, 3
  %i.bsk = mul nsw i64 %i.bsj, %7
  %gep3637.a = getelementptr [8 x i8], ptr %invariant.gep3636.a, i64 %i.bsk
  %i.bsl = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3637.a, <8 x i1> %i.bjq, <8 x double> zeroinitializer)
  %i.bsm = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsa, <8 x double> %i.bsc, <8 x double> %i.bru)
  %i.bsn = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsa, <8 x double> %i.bsf, <8 x double> %i.brv)
  %i.bso = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsa, <8 x double> %i.bsi, <8 x double> %i.brw)
  %i.bsp = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bsa, <8 x double> %i.bsl, <8 x double> %i.brx)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge2935
  %.12311 = phi <8 x double> [ %i.bsm, %bb.am ], [ %i.bru, %._crit_edge2935 ] ; 2 uses
  %.12309 = phi <8 x double> [ %i.bsn, %bb.am ], [ %i.brv, %._crit_edge2935 ] ; 2 uses
  %.12307 = phi <8 x double> [ %i.bso, %bb.am ], [ %i.brw, %._crit_edge2935 ] ; 2 uses
  %.12305 = phi <8 x double> [ %i.bsp, %bb.am ], [ %i.brx, %._crit_edge2935 ] ; 2 uses
  %i.bsq = shufflevector <8 x double> %.12311, <8 x double> %.12309, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bsr = shufflevector <8 x double> %.12311, <8 x double> %.12309, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bss = shufflevector <8 x double> %.12307, <8 x double> %.12305, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14> ; 2 uses
  %i.bst = shufflevector <8 x double> %.12307, <8 x double> %.12305, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15> ; 2 uses
  %i.bsu = shufflevector <8 x double> %i.bsq, <8 x double> %i.bss, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bsv = shufflevector <8 x double> %i.bsr, <8 x double> %i.bst, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.bsw = shufflevector <8 x double> %i.bsq, <8 x double> %i.bss, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bsx = shufflevector <8 x double> %i.bsr, <8 x double> %i.bst, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.bsy = fadd <8 x double> %i.bsu, %i.bsv
  %i.bsz = fadd <8 x double> %i.bsw, %i.bsx
  %i.bta = fadd <8 x double> %i.bsy, %i.bsz       ; 2 uses
  %i.btb = shufflevector <8 x double> %i.bta, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btc = shufflevector <8 x double> %i.bta, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.btd = fadd <4 x double> %i.btb, %i.btc
  %i.bte = fmul <4 x double> %i.avj, %i.btd
  %i.btf = mul nsw i64 %.182943, %9
  %gep2942 = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.btf
  tail call void @llvm.x86.avx512.mask.scatterdiv4.df(ptr %gep2942, <4 x i1> splat (i1 true), <4 x i64> %i.avo, <4 x double> %i.bte, i32 8)
  %i.btg = add nuw nsw i64 %.182943, 4            ; 3 uses
  %i.bth = icmp slt i64 %i.btg, %i.h
  br i1 %i.bth, label %.lr.ph2934, label %.preheader2495, !llvm.loop !71

.preheader2494:                                   ; preds = %bb.as, %.preheader2495
  %.19.lcssa = phi i64 [ %.18.lcssa, %.preheader2495 ], [ %i.bvi, %bb.as ] ; 8 uses
  %i.bti = icmp slt i64 %.19.lcssa, %1
  br i1 %i.bti, label %.preheader2491.lr.ph, label %._crit_edge2968.a

.preheader2491.lr.ph:                             ; preds = %.preheader2494
  %i.btj = mul nuw nsw i64 %2, %indvars.iv3215
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.btj ; 4 uses
  %i.btl = getelementptr inbounds nuw [8 x i8], ptr %i.btk, i64 %i.bjl ; 3 uses
  %i.btm = sub i64 %1, %.19.lcssa
  %.neg = add i64 %.19.lcssa, 1
  %xtraiter4011 = and i64 %i.btm, 1
  %lcmp.mod4012.not = icmp eq i64 %xtraiter4011, 0
  br i1 %lcmp.mod4012.not, label %.lr.ph2961.prol.loopexit, label %.lr.ph2961.prol

.lr.ph2961.prol:                                  ; preds = %.preheader2491.lr.ph
  %i.btn = mul nsw i64 %.19.lcssa, %7
  %i.bto = getelementptr [8 x i8], ptr %6, i64 %i.btn
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph2961.prol
  %.222960.prol = phi i64 [ 0, %.lr.ph2961.prol ], [ %i.btu, %bb.ao ] ; 3 uses
  %.022812959.prol = phi <8 x double> [ zeroinitializer, %.lr.ph2961.prol ], [ %i.btt, %bb.ao ]
  %i.btp = getelementptr inbounds nuw [8 x i8], ptr %i.btk, i64 %.222960.prol
  %i.btq = load <8 x double>, ptr %i.btp, align 1, !tbaa !8
  %i.btr = getelementptr [8 x i8], ptr %i.bto, i64 %.222960.prol
  %i.bts = load <8 x double>, ptr %i.btr, align 1, !tbaa !8
  %i.btt = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.btq, <8 x double> %i.bts, <8 x double> %.022812959.prol) ; 3 uses
  %i.btu = add nuw nsw i64 %.222960.prol, 8       ; 2 uses
  %i.btv = icmp samesign ult i64 %i.btu, %13
  br i1 %i.btv, label %bb.ao, label %._crit_edge2962.prol, !llvm.loop !72

._crit_edge2962.prol:                             ; preds = %bb.ao
  br i1 %.not2457, label %.lr.ph2961.prol.loopexit.unr-lcssa, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge2962.prol
  %i.btw = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.btl, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.btx = mul nsw i64 %.19.lcssa, %7
  %gep3643.prol = getelementptr [8 x i8], ptr %invariant.gep3642, i64 %i.btx
  %i.bty = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3643.prol, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.btz = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.btw, <8 x double> %i.bty, <8 x double> %i.btt)
  br label %.lr.ph2961.prol.loopexit.unr-lcssa

.lr.ph2961.prol.loopexit.unr-lcssa:               ; preds = %bb.ap, %._crit_edge2962.prol
  %.12282.prol = phi <8 x double> [ %i.btz, %bb.ap ], [ %i.btt, %._crit_edge2962.prol ]
  %i.bua = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12282.prol)
  %i.bub = fmul double %5, %i.bua
  %i.buc = mul nsw i64 %.19.lcssa, %9
  %gep2966.prol = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.buc
  store double %i.bub, ptr %gep2966.prol, align 8, !tbaa !50
  %i.bud = add nuw nsw i64 %.19.lcssa, 1
  br label %.lr.ph2961.prol.loopexit

.lr.ph2961.prol.loopexit:                         ; preds = %.lr.ph2961.prol.loopexit.unr-lcssa, %.preheader2491.lr.ph
  %.202967.unr = phi i64 [ %.19.lcssa, %.preheader2491.lr.ph ], [ %i.bud, %.lr.ph2961.prol.loopexit.unr-lcssa ]
  %i.bue = icmp eq i64 %1, %.neg
  br i1 %i.bue, label %._crit_edge2968.a, label %.lr.ph2961

.lr.ph2948:                                       ; preds = %bb.as, %.preheader2492.lr.ph
  %.192957 = phi i64 [ %.18.lcssa, %.preheader2492.lr.ph ], [ %i.bvi, %bb.as ] ; 7 uses
  %i.buf = mul nsw i64 %.192957, %7
  %i.bug = getelementptr [8 x i8], ptr %6, i64 %i.buf
  %i.buh = add nuw nsw i64 %.192957, 1
  %i.bui = mul nsw i64 %i.buh, %7
  %i.buj = getelementptr [8 x i8], ptr %6, i64 %i.bui
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph2948, %bb.aq
  %.212947 = phi i64 [ 0, %.lr.ph2948 ], [ %i.bus, %bb.aq ] ; 4 uses
  %.022832946 = phi <8 x double> [ zeroinitializer, %.lr.ph2948 ], [ %i.bur, %bb.aq ]
  %.022852945 = phi <8 x double> [ zeroinitializer, %.lr.ph2948 ], [ %i.buq, %bb.aq ]
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr %i.bqx, i64 %.212947
  %i.bul = load <8 x double>, ptr %i.buk, align 1, !tbaa !8 ; 2 uses
  %i.bum = getelementptr [8 x i8], ptr %i.bug, i64 %.212947
  %i.bun = load <8 x double>, ptr %i.bum, align 1, !tbaa !8
  %i.buo = getelementptr [8 x i8], ptr %i.buj, i64 %.212947
  %i.bup = load <8 x double>, ptr %i.buo, align 1, !tbaa !8
  %i.buq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bul, <8 x double> %i.bun, <8 x double> %.022852945) ; 3 uses
  %i.bur = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bul, <8 x double> %i.bup, <8 x double> %.022832946) ; 3 uses
  %i.bus = add nuw nsw i64 %.212947, 8            ; 2 uses
  %i.but = icmp samesign ult i64 %i.bus, %13
  br i1 %i.but, label %bb.aq, label %._crit_edge2949, !llvm.loop !73

._crit_edge2949:                                  ; preds = %bb.aq
  br i1 %.not2459, label %._crit_edge2949._crit_edge, label %bb.ar

._crit_edge2949._crit_edge:                       ; preds = %._crit_edge2949
  %.pre3366 = add nuw nsw i64 %.192957, 1
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge2949
  %i.buu = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.bqy, <8 x i1> %i.bju, <8 x double> zeroinitializer) ; 2 uses
  %i.buv = mul nsw i64 %.192957, %7
  %gep3639 = getelementptr [8 x i8], ptr %invariant.gep3638, i64 %i.buv
  %i.buw = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3639, <8 x i1> %i.bju, <8 x double> zeroinitializer)
  %i.bux = add nuw nsw i64 %.192957, 1            ; 2 uses
  %i.buy = mul nsw i64 %i.bux, %7
  %gep3641 = getelementptr [8 x i8], ptr %invariant.gep3640, i64 %i.buy
  %i.buz = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3641, <8 x i1> %i.bju, <8 x double> zeroinitializer)
  %i.bva = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.buu, <8 x double> %i.buw, <8 x double> %i.buq)
  %i.bvb = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.buu, <8 x double> %i.buz, <8 x double> %i.bur)
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge2949._crit_edge, %bb.ar
  %.pre-phi3367 = phi i64 [ %.pre3366, %._crit_edge2949._crit_edge ], [ %i.bux, %bb.ar ]
  %.12286 = phi <8 x double> [ %i.buq, %._crit_edge2949._crit_edge ], [ %i.bva, %bb.ar ]
  %.12284 = phi <8 x double> [ %i.bur, %._crit_edge2949._crit_edge ], [ %i.bvb, %bb.ar ]
  %i.bvc = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12286)
  %i.bvd = fmul double %5, %i.bvc
  %i.bve = mul nsw i64 %.192957, %9
  %gep2954 = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.bve
  store double %i.bvd, ptr %gep2954, align 8, !tbaa !50
  %i.bvf = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12284)
  %i.bvg = fmul double %5, %i.bvf
  %i.bvh = mul nsw i64 %.pre-phi3367, %9
  %gep2956 = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.bvh
  store double %i.bvg, ptr %gep2956, align 8, !tbaa !50
  %i.bvi = add nuw nsw i64 %.192957, 2            ; 3 uses
  %i.bvj = icmp slt i64 %i.bvi, %i.i
  br i1 %i.bvj, label %.lr.ph2948, label %.preheader2494, !llvm.loop !74

.lr.ph2961:                                       ; preds = %.lr.ph2961.prol.loopexit, %bb.ax
  %.202967 = phi i64 [ %i.bwr, %bb.ax ], [ %.202967.unr, %.lr.ph2961.prol.loopexit ] ; 5 uses
  %i.bvk = mul nsw i64 %.202967, %7
  %i.bvl = getelementptr [8 x i8], ptr %6, i64 %i.bvk
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph2961, %bb.at
  %.222960 = phi i64 [ 0, %.lr.ph2961 ], [ %i.bvr, %bb.at ] ; 3 uses
  %.022812959 = phi <8 x double> [ zeroinitializer, %.lr.ph2961 ], [ %i.bvq, %bb.at ]
  %i.bvm = getelementptr inbounds nuw [8 x i8], ptr %i.btk, i64 %.222960
  %i.bvn = load <8 x double>, ptr %i.bvm, align 1, !tbaa !8
  %i.bvo = getelementptr [8 x i8], ptr %i.bvl, i64 %.222960
  %i.bvp = load <8 x double>, ptr %i.bvo, align 1, !tbaa !8
  %i.bvq = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bvn, <8 x double> %i.bvp, <8 x double> %.022812959) ; 3 uses
  %i.bvr = add nuw nsw i64 %.222960, 8            ; 2 uses
  %i.bvs = icmp samesign ult i64 %i.bvr, %13
  br i1 %i.bvs, label %bb.at, label %._crit_edge2962, !llvm.loop !72

._crit_edge2962:                                  ; preds = %bb.at
  br i1 %.not2457, label %.lr.ph2961.1, label %bb.au

bb.au:                                            ; preds = %._crit_edge2962
  %i.bvt = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.btl, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.bvu = mul nsw i64 %.202967, %7
  %gep3643 = getelementptr [8 x i8], ptr %invariant.gep3642, i64 %i.bvu
  %i.bvv = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3643, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.bvw = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bvt, <8 x double> %i.bvv, <8 x double> %i.bvq)
  br label %.lr.ph2961.1

.lr.ph2961.1:                                     ; preds = %bb.au, %._crit_edge2962
  %.12282 = phi <8 x double> [ %i.bvw, %bb.au ], [ %i.bvq, %._crit_edge2962 ]
  %i.bvx = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12282)
  %i.bvy = fmul double %5, %i.bvx
  %i.bvz = mul nsw i64 %.202967, %9
  %gep2966 = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.bvz
  store double %i.bvy, ptr %gep2966, align 8, !tbaa !50
  %i.bwa = add nuw nsw i64 %.202967, 1            ; 3 uses
  %i.bwb = mul nsw i64 %i.bwa, %7
  %i.bwc = getelementptr [8 x i8], ptr %6, i64 %i.bwb
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph2961.1
  %.222960.1 = phi i64 [ 0, %.lr.ph2961.1 ], [ %i.bwi, %bb.av ] ; 3 uses
  %.022812959.1 = phi <8 x double> [ zeroinitializer, %.lr.ph2961.1 ], [ %i.bwh, %bb.av ]
  %i.bwd = getelementptr inbounds nuw [8 x i8], ptr %i.btk, i64 %.222960.1
  %i.bwe = load <8 x double>, ptr %i.bwd, align 1, !tbaa !8
  %i.bwf = getelementptr [8 x i8], ptr %i.bwc, i64 %.222960.1
  %i.bwg = load <8 x double>, ptr %i.bwf, align 1, !tbaa !8
  %i.bwh = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bwe, <8 x double> %i.bwg, <8 x double> %.022812959.1) ; 3 uses
  %i.bwi = add nuw nsw i64 %.222960.1, 8          ; 2 uses
  %i.bwj = icmp samesign ult i64 %i.bwi, %13
  br i1 %i.bwj, label %bb.av, label %._crit_edge2962.1, !llvm.loop !72

._crit_edge2962.1:                                ; preds = %bb.av
  br i1 %.not2457, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge2962.1
  %i.bwk = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %i.btl, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.bwl = mul nsw i64 %i.bwa, %7
  %gep3643.1 = getelementptr [8 x i8], ptr %invariant.gep3642, i64 %i.bwl
  %i.bwm = tail call <8 x double> @llvm.masked.load.v8f64.p0(ptr align 1 %gep3643.1, <8 x i1> %i.bjy, <8 x double> zeroinitializer)
  %i.bwn = tail call <8 x double> @llvm.fma.v8f64(<8 x double> %i.bwk, <8 x double> %i.bwm, <8 x double> %i.bwh)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge2962.1
  %.12282.1 = phi <8 x double> [ %i.bwn, %bb.aw ], [ %i.bwh, %._crit_edge2962.1 ]
  %i.bwo = tail call reassoc double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %.12282.1)
  %i.bwp = fmul double %5, %i.bwo
  %i.bwq = mul nsw i64 %i.bwa, %9
  %gep2966.1 = getelementptr [8 x i8], ptr %invariant.gep2941, i64 %i.bwq
  store double %i.bwp, ptr %gep2966.1, align 8, !tbaa !50
  %i.bwr = add nuw nsw i64 %.202967, 2            ; 2 uses
  %exitcond3214.not.1 = icmp eq i64 %i.bwr, %1
  br i1 %exitcond3214.not.1, label %._crit_edge2968.a, label %.lr.ph2961, !llvm.loop !75

._crit_edge2968.a:                                ; preds = %.lr.ph2961.prol.loopexit, %bb.ax, %.preheader2494
  %i.bws = add i64 %.52970, 1                     ; 2 uses
  %indvars.iv.next3216 = add nuw nsw i64 %indvars.iv3215, 1
  %exitcond3218.not = icmp eq i64 %i.bws, %0
  br i1 %exitcond3218.not, label %._crit_edge2971, label %.preheader2496, !llvm.loop !76

._crit_edge2971:                                  ; preds = %._crit_edge2968.a, %.preheader2497
  tail call void @free(ptr noundef %i.asm) #2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %._crit_edge3023.us, %.preheader2487, %._crit_edge2971, %._crit_edge2762
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatterdiv4.df(ptr, <4 x i1>, <4 x i64>, <4 x double>, i32 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fma.v8f64(<8 x double>, <8 x double>, <8 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x double> @llvm.masked.load.v8f64.p0(ptr captures(none), <8 x i1>, <8 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f64.p0(<8 x double>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v8f64(double, <8 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !6, i64 0}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10, !55}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
end_hunk_1
