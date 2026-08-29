Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_small_kernel_b0_nn?download=true
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sgemm_small_kernel_b0_nn:bb.a
  %i.acq = sub i64 %1, %.82898.ph
  %xtraiter4140 = and i64 %i.acq, 7               ; 2 uses
  %lcmp.mod4141.not = icmp eq i64 %xtraiter4140, 0
  br i1 %lcmp.mod4141.not, label %.preheader2652.prol.loopexit, label %.preheader2652.prol

.preheader2652.prol:                              ; preds = %.preheader2652.preheader, %.preheader2652.prol
  %.82898.prol = phi i64 [ %i.acs, %.preheader2652.prol ], [ %.82898.ph, %.preheader2652.preheader ] ; 2 uses
  %prol.iter4142 = phi i64 [ %prol.iter4142.next, %.preheader2652.prol ], [ 0, %.preheader2652.preheader ]
  %i.acr = mul nsw i64 %.82898.prol, %9
  %gep2897.prol = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.acr
  store <16 x float> %i.kv, ptr %gep2897.prol, align 1, !tbaa !8
  %i.acs = add nuw nsw i64 %.82898.prol, 1        ; 2 uses
  %prol.iter4142.next = add i64 %prol.iter4142, 1 ; 2 uses
  %prol.iter4142.cmp.not = icmp eq i64 %prol.iter4142.next, %xtraiter4140
  br i1 %prol.iter4142.cmp.not, label %.preheader2652.prol.loopexit, label %.preheader2652.prol, !llvm.loop !35

.preheader2652.prol.loopexit:                     ; preds = %.preheader2652.prol, %.preheader2652.preheader
  %.82898.unr = phi i64 [ %.82898.ph, %.preheader2652.preheader ], [ %i.acs, %.preheader2652.prol ]
  %i.act = sub i64 %.82898.ph, %1
  %i.acu = icmp ugt i64 %i.act, -8
  br i1 %i.acu, label %._crit_edge2899, label %.preheader2652

.preheader2652.us:                                ; preds = %.preheader2652.lr.ph, %._crit_edge2892.us
  %.82898.us = phi i64 [ %i.afj, %._crit_edge2892.us ], [ %.7.lcssa, %.preheader2652.lr.ph ] ; 3 uses
  %i.acv = mul nsw i64 %.82898.us, %7
  %invariant.gep2894.us = getelementptr [4 x i8], ptr %6, i64 %i.acv ; 9 uses
  br i1 %i.kz, label %.epil.preheader4143, label %.preheader2652.us.new

.preheader2652.us.new:                            ; preds = %.preheader2652.us, %.preheader2652.us.new
  %.824032890.us = phi i64 [ %i.aez, %.preheader2652.us.new ], [ 0, %.preheader2652.us ] ; 10 uses
  %.024962889.us = phi <16 x float> [ %i.aey, %.preheader2652.us.new ], [ zeroinitializer, %.preheader2652.us ]
  %niter4150 = phi i64 [ %niter4150.next.7, %.preheader2652.us.new ], [ 0, %.preheader2652.us ]
  %i.acw = mul nsw i64 %.824032890.us, %4
  %gep2888.us = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.acw
  %i.acx = load <16 x float>, ptr %gep2888.us, align 1, !tbaa !8
  %gep2895.us = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %.824032890.us
  %i.acy = load float, ptr %gep2895.us, align 1, !tbaa !8
  %i.acz = insertelement <4 x float> poison, float %i.acy, i64 0
  %i.ada = shufflevector <4 x float> %i.acz, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acx, <16 x float> %i.ada, <16 x float> %.024962889.us)
  %i.adc = or disjoint i64 %.824032890.us, 1      ; 2 uses
  %i.add = mul nsw i64 %i.adc, %4
  %gep2888.us.1 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.add
  %i.ade = load <16 x float>, ptr %gep2888.us.1, align 1, !tbaa !8
  %gep2895.us.1 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.adc
  %i.adf = load float, ptr %gep2895.us.1, align 1, !tbaa !8
  %i.adg = insertelement <4 x float> poison, float %i.adf, i64 0
  %i.adh = shufflevector <4 x float> %i.adg, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adi = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ade, <16 x float> %i.adh, <16 x float> %i.adb)
  %i.adj = or disjoint i64 %.824032890.us, 2      ; 2 uses
  %i.adk = mul nsw i64 %i.adj, %4
  %gep2888.us.2 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.adk
  %i.adl = load <16 x float>, ptr %gep2888.us.2, align 1, !tbaa !8
  %gep2895.us.2 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.adj
  %i.adm = load float, ptr %gep2895.us.2, align 1, !tbaa !8
  %i.adn = insertelement <4 x float> poison, float %i.adm, i64 0
  %i.ado = shufflevector <4 x float> %i.adn, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.adl, <16 x float> %i.ado, <16 x float> %i.adi)
  %i.adq = or disjoint i64 %.824032890.us, 3      ; 2 uses
  %i.adr = mul nsw i64 %i.adq, %4
  %gep2888.us.3 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.adr
  %i.ads = load <16 x float>, ptr %gep2888.us.3, align 1, !tbaa !8
  %gep2895.us.3 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.adq
  %i.adt = load float, ptr %gep2895.us.3, align 1, !tbaa !8
  %i.adu = insertelement <4 x float> poison, float %i.adt, i64 0
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> poison, <16 x i32> zeroinitializer
  %i.adw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ads, <16 x float> %i.adv, <16 x float> %i.adp)
  %i.adx = or disjoint i64 %.824032890.us, 4      ; 2 uses
  %i.ady = mul nsw i64 %i.adx, %4
  %gep2888.us.4 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.ady
  %i.adz = load <16 x float>, ptr %gep2888.us.4, align 1, !tbaa !8
  %gep2895.us.4 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.adx
  %i.aea = load float, ptr %gep2895.us.4, align 1, !tbaa !8
  %i.aeb = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aec = shufflevector <4 x float> %i.aeb, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aed = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.adz, <16 x float> %i.aec, <16 x float> %i.adw)
  %i.aee = or disjoint i64 %.824032890.us, 5      ; 2 uses
  %i.aef = mul nsw i64 %i.aee, %4
  %gep2888.us.5 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.aef
  %i.aeg = load <16 x float>, ptr %gep2888.us.5, align 1, !tbaa !8
  %gep2895.us.5 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.aee
  %i.aeh = load float, ptr %gep2895.us.5, align 1, !tbaa !8
  %i.aei = insertelement <4 x float> poison, float %i.aeh, i64 0
  %i.aej = shufflevector <4 x float> %i.aei, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aek = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aeg, <16 x float> %i.aej, <16 x float> %i.aed)
  %i.ael = or disjoint i64 %.824032890.us, 6      ; 2 uses
  %i.aem = mul nsw i64 %i.ael, %4
  %gep2888.us.6 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.aem
  %i.aen = load <16 x float>, ptr %gep2888.us.6, align 1, !tbaa !8
  %gep2895.us.6 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.ael
  %i.aeo = load float, ptr %gep2895.us.6, align 1, !tbaa !8
  %i.aep = insertelement <4 x float> poison, float %i.aeo, i64 0
  %i.aeq = shufflevector <4 x float> %i.aep, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aer = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aen, <16 x float> %i.aeq, <16 x float> %i.aek)
  %i.aes = or disjoint i64 %.824032890.us, 7      ; 2 uses
  %i.aet = mul nsw i64 %i.aes, %4
  %gep2888.us.7 = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.aet
  %i.aeu = load <16 x float>, ptr %gep2888.us.7, align 1, !tbaa !8
  %gep2895.us.7 = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %i.aes
  %i.aev = load float, ptr %gep2895.us.7, align 1, !tbaa !8
  %i.aew = insertelement <4 x float> poison, float %i.aev, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aey = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aeu, <16 x float> %i.aex, <16 x float> %i.aer) ; 3 uses
  %i.aez = add nuw nsw i64 %.824032890.us, 8      ; 2 uses
  %niter4150.next.7 = add nuw nsw i64 %niter4150, 8 ; 2 uses
  %niter4150.ncmp.7 = icmp eq i64 %niter4150.next.7, %unroll_iter4149
  br i1 %niter4150.ncmp.7, label %._crit_edge2892.us.unr-lcssa, label %.preheader2652.us.new, !llvm.loop !36

._crit_edge2892.us.unr-lcssa:                     ; preds = %.preheader2652.us.new
  br i1 %lcmp.mod4146.not, label %._crit_edge2892.us, label %.epil.preheader4143

.epil.preheader4143:                              ; preds = %._crit_edge2892.us.unr-lcssa, %.preheader2652.us
  %.824032890.us.epil.init = phi i64 [ 0, %.preheader2652.us ], [ %i.aez, %._crit_edge2892.us.unr-lcssa ]
  %.024962889.us.epil.init = phi <16 x float> [ zeroinitializer, %.preheader2652.us ], [ %i.aey, %._crit_edge2892.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4148)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader4143
  %.824032890.us.epil = phi i64 [ %.824032890.us.epil.init, %.epil.preheader4143 ], [ %i.afg, %bb.h ] ; 3 uses
  %.024962889.us.epil = phi <16 x float> [ %.024962889.us.epil.init, %.epil.preheader4143 ], [ %i.aff, %bb.h ]
  %epil.iter4145 = phi i64 [ 0, %.epil.preheader4143 ], [ %epil.iter4145.next, %bb.h ]
  %i.afa = mul nsw i64 %.824032890.us.epil, %4
  %gep2888.us.epil = getelementptr [4 x i8], ptr %invariant.gep2887, i64 %i.afa
  %i.afb = load <16 x float>, ptr %gep2888.us.epil, align 1, !tbaa !8
  %gep2895.us.epil = getelementptr [4 x i8], ptr %invariant.gep2894.us, i64 %.824032890.us.epil
  %i.afc = load float, ptr %gep2895.us.epil, align 1, !tbaa !8
  %i.afd = insertelement <4 x float> poison, float %i.afc, i64 0
  %i.afe = shufflevector <4 x float> %i.afd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aff = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.afb, <16 x float> %i.afe, <16 x float> %.024962889.us.epil) ; 2 uses
  %i.afg = add nuw nsw i64 %.824032890.us.epil, 1
  %epil.iter4145.next = add i64 %epil.iter4145, 1 ; 2 uses
  %epil.iter4145.cmp.not = icmp eq i64 %epil.iter4145.next, %xtraiter4144
  br i1 %epil.iter4145.cmp.not, label %._crit_edge2892.us, label %bb.h, !llvm.loop !37

._crit_edge2892.us:                               ; preds = %bb.h, %._crit_edge2892.us.unr-lcssa
  %.lcssa4018 = phi <16 x float> [ %i.aey, %._crit_edge2892.us.unr-lcssa ], [ %i.aff, %bb.h ]
  %i.afh = fmul <16 x float> %i.k, %.lcssa4018
  %i.afi = mul nsw i64 %.82898.us, %9
  %gep2897.us = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afi
  store <16 x float> %i.afh, ptr %gep2897.us, align 1, !tbaa !8
  %i.afj = add nuw nsw i64 %.82898.us, 1          ; 2 uses
  %exitcond3349.not = icmp eq i64 %i.afj, %1
  br i1 %exitcond3349.not, label %._crit_edge2899, label %.preheader2652.us, !llvm.loop !38

.preheader2653:                                   ; preds = %.preheader2653.lr.ph, %.preheader2653
  %.72885 = phi i64 [ %i.afn, %.preheader2653 ], [ %.6.lcssa, %.preheader2653.lr.ph ] ; 3 uses
  %i.afk = mul nsw i64 %.72885, %9
  %gep2882 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afk
  store <16 x float> %i.kv, ptr %gep2882, align 1, !tbaa !8
  %i.afl = add nuw nsw i64 %.72885, 1
  %i.afm = mul nsw i64 %i.afl, %9
  %gep2884 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afm
  store <16 x float> %i.kv, ptr %gep2884, align 1, !tbaa !8
  %i.afn = add nuw nsw i64 %.72885, 2             ; 4 uses
  %i.afo = icmp slt i64 %i.afn, %i.i
  br i1 %i.afo, label %.preheader2653, label %.preheader2655.thread, !llvm.loop !32

.preheader2652:                                   ; preds = %.preheader2652.prol.loopexit, %.preheader2652
  %.82898 = phi i64 [ %i.age, %.preheader2652 ], [ %.82898.unr, %.preheader2652.prol.loopexit ] ; 9 uses
  %i.afp = mul nsw i64 %.82898, %9
  %gep2897 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afp
  store <16 x float> %i.kv, ptr %gep2897, align 1, !tbaa !8
  %i.afq = add nuw nsw i64 %.82898, 1
  %i.afr = mul nsw i64 %i.afq, %9
  %gep2897.1 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afr
  store <16 x float> %i.kv, ptr %gep2897.1, align 1, !tbaa !8
  %i.afs = add nuw nsw i64 %.82898, 2
  %i.aft = mul nsw i64 %i.afs, %9
  %gep2897.2 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.aft
  store <16 x float> %i.kv, ptr %gep2897.2, align 1, !tbaa !8
  %i.afu = add nuw nsw i64 %.82898, 3
  %i.afv = mul nsw i64 %i.afu, %9
  %gep2897.3 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afv
  store <16 x float> %i.kv, ptr %gep2897.3, align 1, !tbaa !8
  %i.afw = add nuw nsw i64 %.82898, 4
  %i.afx = mul nsw i64 %i.afw, %9
  %gep2897.4 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afx
  store <16 x float> %i.kv, ptr %gep2897.4, align 1, !tbaa !8
  %i.afy = add nuw nsw i64 %.82898, 5
  %i.afz = mul nsw i64 %i.afy, %9
  %gep2897.5 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.afz
  store <16 x float> %i.kv, ptr %gep2897.5, align 1, !tbaa !8
  %i.aga = add nuw nsw i64 %.82898, 6
  %i.agb = mul nsw i64 %i.aga, %9
  %gep2897.6 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.agb
  store <16 x float> %i.kv, ptr %gep2897.6, align 1, !tbaa !8
  %i.agc = add nuw nsw i64 %.82898, 7
  %i.agd = mul nsw i64 %i.agc, %9
  %gep2897.7 = getelementptr [4 x i8], ptr %invariant.gep2858, i64 %i.agd
  store <16 x float> %i.kv, ptr %gep2897.7, align 1, !tbaa !8
  %i.age = add nuw nsw i64 %.82898, 8             ; 2 uses
  %exitcond3347.not.7 = icmp eq i64 %i.age, %1
  br i1 %exitcond3347.not.7, label %._crit_edge2899, label %.preheader2652, !llvm.loop !38

._crit_edge2899:                                  ; preds = %.preheader2652.prol.loopexit, %.preheader2652, %._crit_edge2892.us, %.preheader2655.thread, %.preheader2655
  %i.agf = add nuw nsw i64 %.22900, 16            ; 3 uses
  %i.agg = icmp slt i64 %i.agf, %i.c
  br i1 %i.agg, label %.preheader2657, label %._crit_edge2901, !llvm.loop !39

._crit_edge2901:                                  ; preds = %._crit_edge2899, %.preheader2658
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader2658 ], [ %i.agf, %._crit_edge2899 ] ; 10 uses
  %i.agh = sub nsw i64 %0, %.2.lcssa              ; 7 uses
  %i.agi = trunc i64 %i.agh to i32                ; 4 uses
  %.not = icmp eq i32 %i.agi, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge2901
  %i.agj = icmp sgt i32 %i.agi, 8
  %i.agk = icmp slt i64 %2, 32
  %or.cond = or i1 %i.agk, %i.agj
  br i1 %or.cond, label %bb.j, label %.lr.ph2907

bb.j:                                             ; preds = %bb.i
  %i.agl = and i64 %i.agh, 4294967295
  %notmask2615 = shl nsw i64 -1, %i.agl
  %i.agm = trunc i64 %notmask2615 to i16
  %i.agn = xor i16 %i.agm, -1                     ; 3 uses
  %invariant.gep3136 = getelementptr [4 x i8], ptr %8, i64 %.2.lcssa ; 18 uses
  %i.ago = icmp sgt i64 %i.g, 0
  br i1 %i.ago, label %.preheader2629.lr.ph, label %.preheader2628

.preheader2629.lr.ph:                             ; preds = %bb.j
  %invariant.gep3119 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 3 uses
  %i.agp = icmp sgt i64 %2, 0
  %i.agq = bitcast i16 %i.agn to <16 x i1>        ; 9 uses
  %xtraiter4162 = and i64 %2, 1
  %i.agr = icmp eq i64 %2, 1
  %unroll_iter4172 = and i64 %2, 9223372036854775806
  %lcmp.mod4164.not = icmp eq i64 %xtraiter4162, 0
  %lcmp.mod4171 = trunc i64 %2 to i1
  br label %.preheader2629

.preheader2629:                                   ; preds = %.preheader2629.lr.ph, %._crit_edge3129
  %.93148 = phi i64 [ 0, %.preheader2629.lr.ph ], [ %i.alr, %._crit_edge3129 ] ; 13 uses
  br i1 %i.agp, label %.lr.ph3128, label %.preheader2629.._crit_edge3129_crit_edge

.preheader2629.._crit_edge3129_crit_edge:         ; preds = %.preheader2629
  %.pre3491 = or disjoint i64 %.93148, 1
  %.pre3493 = add nuw nsw i64 %.93148, 2
  %.pre3495 = add nuw nsw i64 %.93148, 3
  %.pre3497 = add nuw nsw i64 %.93148, 4
  %.pre3499 = add nuw nsw i64 %.93148, 5
  br label %._crit_edge3129

.lr.ph3128:                                       ; preds = %.preheader2629
  %i.ags = mul nsw i64 %.93148, %7                ; 3 uses
  %i.agt = or disjoint i64 %.93148, 1             ; 3 uses
  %i.agu = mul nsw i64 %i.agt, %7                 ; 3 uses
  %i.agv = add nuw nsw i64 %.93148, 2             ; 3 uses
  %i.agw = mul nsw i64 %i.agv, %7                 ; 3 uses
  %i.agx = add nuw nsw i64 %.93148, 3             ; 3 uses
  %i.agy = mul nsw i64 %i.agx, %7                 ; 3 uses
  %i.agz = add nuw nsw i64 %.93148, 4             ; 3 uses
  %i.aha = mul nsw i64 %i.agz, %7                 ; 3 uses
  %i.ahb = add nuw nsw i64 %.93148, 5             ; 3 uses
  %i.ahc = mul nsw i64 %i.ahb, %7                 ; 3 uses
  br i1 %i.agr, label %.epil.preheader4161, label %.lr.ph3128.new

.preheader2628:                                   ; preds = %._crit_edge3129, %bb.j
  %.9.lcssa = phi i64 [ 0, %bb.j ], [ %i.alr, %._crit_edge3129 ] ; 3 uses
  %i.ahd = icmp slt i64 %.9.lcssa, %i.i
  br i1 %i.ahd, label %.preheader2627.lr.ph, label %.preheader2626

.preheader2627.lr.ph:                             ; preds = %.preheader2628
  %invariant.gep3150 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 5 uses
  %i.ahe = icmp sgt i64 %2, 0
  %i.ahf = bitcast i16 %i.agn to <16 x i1>        ; 7 uses
  %i.ahg = add i64 %2, -1
  %xtraiter4175 = and i64 %2, 3                   ; 3 uses
  %i.ahh = icmp ult i64 %i.ahg, 3
  %unroll_iter4181 = and i64 %2, 9223372036854775804
  %lcmp.mod4177.not = icmp eq i64 %xtraiter4175, 0
  %lcmp.mod4180 = icmp ne i64 %xtraiter4175, 0
  br label %.preheader2627

.lr.ph3128.new:                                   ; preds = %.lr.ph3128, %.lr.ph3128.new
  %.924043127 = phi i64 [ %i.ajx, %.lr.ph3128.new ], [ 0, %.lr.ph3128 ] ; 4 uses
  %.024973126 = phi <16 x float> [ %i.ajr, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %.024983125 = phi <16 x float> [ %i.ajs, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %.024993124 = phi <16 x float> [ %i.ajt, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %.025003123 = phi <16 x float> [ %i.aju, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %.025013122 = phi <16 x float> [ %i.ajv, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %.025023121 = phi <16 x float> [ %i.ajw, %.lr.ph3128.new ], [ zeroinitializer, %.lr.ph3128 ]
  %niter4173 = phi i64 [ %niter4173.next.1, %.lr.ph3128.new ], [ 0, %.lr.ph3128 ]
  %i.ahi = mul nsw i64 %.924043127, %4
  %gep3120 = getelementptr [4 x i8], ptr %invariant.gep3119, i64 %i.ahi
  %i.ahj = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3120, <16 x i1> %i.agq, <16 x float> zeroinitializer) ; 6 uses
  %i.ahk = getelementptr [4 x i8], ptr %6, i64 %.924043127 ; 6 uses
  %i.ahl = getelementptr [4 x i8], ptr %i.ahk, i64 %i.ags
  %i.ahm = load float, ptr %i.ahl, align 1, !tbaa !8
  %i.ahn = insertelement <4 x float> poison, float %i.ahm, i64 0
  %i.aho = shufflevector <4 x float> %i.ahn, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ahp = getelementptr [4 x i8], ptr %i.ahk, i64 %i.agu
  %i.ahq = load float, ptr %i.ahp, align 1, !tbaa !8
  %i.ahr = insertelement <4 x float> poison, float %i.ahq, i64 0
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aht = getelementptr [4 x i8], ptr %i.ahk, i64 %i.agw
  %i.ahu = load float, ptr %i.aht, align 1, !tbaa !8
  %i.ahv = insertelement <4 x float> poison, float %i.ahu, i64 0
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ahx = getelementptr [4 x i8], ptr %i.ahk, i64 %i.agy
  %i.ahy = load float, ptr %i.ahx, align 1, !tbaa !8
  %i.ahz = insertelement <4 x float> poison, float %i.ahy, i64 0
  %i.aia = shufflevector <4 x float> %i.ahz, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aib = getelementptr [4 x i8], ptr %i.ahk, i64 %i.aha
  %i.aic = load float, ptr %i.aib, align 1, !tbaa !8
  %i.aid = insertelement <4 x float> poison, float %i.aic, i64 0
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aif = getelementptr [4 x i8], ptr %i.ahk, i64 %i.ahc
  %i.aig = load float, ptr %i.aif, align 1, !tbaa !8
  %i.aih = insertelement <4 x float> poison, float %i.aig, i64 0
  %i.aii = shufflevector <4 x float> %i.aih, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aij = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.aho, <16 x float> %.024973126)
  %i.aik = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.ahs, <16 x float> %.024983125)
  %i.ail = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.ahw, <16 x float> %.024993124)
  %i.aim = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.aia, <16 x float> %.025003123)
  %i.ain = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.aie, <16 x float> %.025013122)
  %i.aio = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahj, <16 x float> %i.aii, <16 x float> %.025023121)
  %i.aip = or disjoint i64 %.924043127, 1         ; 2 uses
  %i.aiq = mul nsw i64 %i.aip, %4
  %gep3120.1 = getelementptr [4 x i8], ptr %invariant.gep3119, i64 %i.aiq
  %i.air = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3120.1, <16 x i1> %i.agq, <16 x float> zeroinitializer) ; 6 uses
  %i.ais = getelementptr [4 x i8], ptr %6, i64 %i.aip ; 6 uses
  %i.ait = getelementptr [4 x i8], ptr %i.ais, i64 %i.ags
  %i.aiu = load float, ptr %i.ait, align 1, !tbaa !8
  %i.aiv = insertelement <4 x float> poison, float %i.aiu, i64 0
  %i.aiw = shufflevector <4 x float> %i.aiv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aix = getelementptr [4 x i8], ptr %i.ais, i64 %i.agu
  %i.aiy = load float, ptr %i.aix, align 1, !tbaa !8
  %i.aiz = insertelement <4 x float> poison, float %i.aiy, i64 0
  %i.aja = shufflevector <4 x float> %i.aiz, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajb = getelementptr [4 x i8], ptr %i.ais, i64 %i.agw
  %i.ajc = load float, ptr %i.ajb, align 1, !tbaa !8
  %i.ajd = insertelement <4 x float> poison, float %i.ajc, i64 0
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajf = getelementptr [4 x i8], ptr %i.ais, i64 %i.agy
  %i.ajg = load float, ptr %i.ajf, align 1, !tbaa !8
  %i.ajh = insertelement <4 x float> poison, float %i.ajg, i64 0
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajj = getelementptr [4 x i8], ptr %i.ais, i64 %i.aha
  %i.ajk = load float, ptr %i.ajj, align 1, !tbaa !8
  %i.ajl = insertelement <4 x float> poison, float %i.ajk, i64 0
  %i.ajm = shufflevector <4 x float> %i.ajl, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajn = getelementptr [4 x i8], ptr %i.ais, i64 %i.ahc
  %i.ajo = load float, ptr %i.ajn, align 1, !tbaa !8
  %i.ajp = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajq = shufflevector <4 x float> %i.ajp, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ajr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.aiw, <16 x float> %i.aij) ; 3 uses
  %i.ajs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.aja, <16 x float> %i.aik) ; 3 uses
  %i.ajt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.aje, <16 x float> %i.ail) ; 3 uses
  %i.aju = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.aji, <16 x float> %i.aim) ; 3 uses
  %i.ajv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.ajm, <16 x float> %i.ain) ; 3 uses
  %i.ajw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.air, <16 x float> %i.ajq, <16 x float> %i.aio) ; 3 uses
  %i.ajx = add nuw nsw i64 %.924043127, 2         ; 2 uses
  %niter4173.next.1 = add nuw nsw i64 %niter4173, 2 ; 2 uses
  %niter4173.ncmp.1 = icmp eq i64 %niter4173.next.1, %unroll_iter4172
  br i1 %niter4173.ncmp.1, label %._crit_edge3129.loopexit.unr-lcssa, label %.lr.ph3128.new, !llvm.loop !40

._crit_edge3129.loopexit.unr-lcssa:               ; preds = %.lr.ph3128.new
  br i1 %lcmp.mod4164.not, label %._crit_edge3129, label %.epil.preheader4161

.epil.preheader4161:                              ; preds = %._crit_edge3129.loopexit.unr-lcssa, %.lr.ph3128
  %.924043127.epil.init = phi i64 [ 0, %.lr.ph3128 ], [ %i.ajx, %._crit_edge3129.loopexit.unr-lcssa ] ; 2 uses
  %.024973126.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.ajr, %._crit_edge3129.loopexit.unr-lcssa ]
  %.024983125.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.ajs, %._crit_edge3129.loopexit.unr-lcssa ]
  %.024993124.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.ajt, %._crit_edge3129.loopexit.unr-lcssa ]
  %.025003123.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.aju, %._crit_edge3129.loopexit.unr-lcssa ]
  %.025013122.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.ajv, %._crit_edge3129.loopexit.unr-lcssa ]
  %.025023121.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3128 ], [ %i.ajw, %._crit_edge3129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4171)
  %i.ajy = mul nsw i64 %.924043127.epil.init, %4
  %gep3120.epil = getelementptr [4 x i8], ptr %invariant.gep3119, i64 %i.ajy
  %i.ajz = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3120.epil, <16 x i1> %i.agq, <16 x float> zeroinitializer) ; 6 uses
  %i.aka = getelementptr [4 x i8], ptr %6, i64 %.924043127.epil.init ; 6 uses
  %i.akb = getelementptr [4 x i8], ptr %i.aka, i64 %i.ags
  %i.akc = load float, ptr %i.akb, align 1, !tbaa !8
  %i.akd = insertelement <4 x float> poison, float %i.akc, i64 0
  %i.ake = shufflevector <4 x float> %i.akd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akf = getelementptr [4 x i8], ptr %i.aka, i64 %i.agu
  %i.akg = load float, ptr %i.akf, align 1, !tbaa !8
  %i.akh = insertelement <4 x float> poison, float %i.akg, i64 0
  %i.aki = shufflevector <4 x float> %i.akh, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akj = getelementptr [4 x i8], ptr %i.aka, i64 %i.agw
  %i.akk = load float, ptr %i.akj, align 1, !tbaa !8
  %i.akl = insertelement <4 x float> poison, float %i.akk, i64 0
  %i.akm = shufflevector <4 x float> %i.akl, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akn = getelementptr [4 x i8], ptr %i.aka, i64 %i.agy
  %i.ako = load float, ptr %i.akn, align 1, !tbaa !8
  %i.akp = insertelement <4 x float> poison, float %i.ako, i64 0
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akr = getelementptr [4 x i8], ptr %i.aka, i64 %i.aha
  %i.aks = load float, ptr %i.akr, align 1, !tbaa !8
  %i.akt = insertelement <4 x float> poison, float %i.aks, i64 0
  %i.aku = shufflevector <4 x float> %i.akt, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akv = getelementptr [4 x i8], ptr %i.aka, i64 %i.ahc
  %i.akw = load float, ptr %i.akv, align 1, !tbaa !8
  %i.akx = insertelement <4 x float> poison, float %i.akw, i64 0
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajz, <16 x float> %i.ake, <16 x float> %.024973126.epil.init)
  %i.ala = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajz, <16 x float> %i.aki, <16 x float> %.024983125.epil.init)
  %i.alb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajz, <16 x float> %i.akm, <16 x float> %.024993124.epil.init)
end_hunk_0
begin_hunk_1_@sgemm_small_kernel_b0_nn:bb.a
  %i.aom = add nuw nsw i64 %.1124063168.us.epil, 1
  %epil.iter4188.next = add i64 %epil.iter4188, 1 ; 2 uses
  %epil.iter4188.cmp.not = icmp eq i64 %epil.iter4188.next, %xtraiter4187
  br i1 %epil.iter4188.cmp.not, label %._crit_edge3170.us, label %bb.k, !llvm.loop !43

._crit_edge3170.us:                               ; preds = %bb.k, %._crit_edge3170.us.unr-lcssa
  %.lcssa = phi <16 x float> [ %i.aoe, %._crit_edge3170.us.unr-lcssa ], [ %i.aol, %bb.k ]
  %i.aon = fmul <16 x float> %i.k, %.lcssa
  %i.aoo = mul nsw i64 %.113176.us, %9
  %gep3175.us = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.aoo
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aon, ptr align 1 %gep3175.us, <16 x i1> %i.aly)
  %i.aop = add nuw nsw i64 %.113176.us, 1         ; 2 uses
  %exitcond3370.not = icmp eq i64 %i.aop, %1
  br i1 %exitcond3370.not, label %.loopexit, label %.preheader.us, !llvm.loop !44

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aoq = fmul <16 x float> %i.k, zeroinitializer ; 9 uses
  %i.aor = sub i64 %1, %.10.lcssa
  %xtraiter4183 = and i64 %i.aor, 7               ; 2 uses
  %lcmp.mod4184.not = icmp eq i64 %xtraiter4183, 0
  br i1 %lcmp.mod4184.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.lr.ph.split, %.preheader.prol
  %.113176.prol = phi i64 [ %i.aot, %.preheader.prol ], [ %.10.lcssa, %.preheader.lr.ph.split ] ; 2 uses
  %prol.iter4185 = phi i64 [ %prol.iter4185.next, %.preheader.prol ], [ 0, %.preheader.lr.ph.split ]
  %i.aos = mul nsw i64 %.113176.prol, %9
  %gep3175.prol = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.aos
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.prol, <16 x i1> %i.aly)
  %i.aot = add nuw nsw i64 %.113176.prol, 1       ; 2 uses
  %prol.iter4185.next = add i64 %prol.iter4185, 1 ; 2 uses
  %prol.iter4185.cmp.not = icmp eq i64 %prol.iter4185.next, %xtraiter4183
  br i1 %prol.iter4185.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !45

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.lr.ph.split
  %.113176.unr = phi i64 [ %.10.lcssa, %.preheader.lr.ph.split ], [ %i.aot, %.preheader.prol ]
  %i.aou = sub i64 %.10.lcssa, %1
  %i.aov = icmp ugt i64 %i.aou, -8
  br i1 %i.aov, label %.loopexit, label %.preheader

.lr.ph3155.new:                                   ; preds = %.lr.ph3155, %.lr.ph3155.new
  %.1024053154 = phi i64 [ %i.aqz, %.lr.ph3155.new ], [ 0, %.lr.ph3155 ] ; 6 uses
  %.025033153 = phi <16 x float> [ %i.aqx, %.lr.ph3155.new ], [ zeroinitializer, %.lr.ph3155 ]
  %.025043152 = phi <16 x float> [ %i.aqy, %.lr.ph3155.new ], [ zeroinitializer, %.lr.ph3155 ]
  %niter4182 = phi i64 [ %niter4182.next.3, %.lr.ph3155.new ], [ 0, %.lr.ph3155 ]
  %i.aow = mul nsw i64 %.1024053154, %4
  %gep3151 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.aow
  %i.aox = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aoy = getelementptr [4 x i8], ptr %6, i64 %.1024053154 ; 2 uses
  %i.aoz = getelementptr [4 x i8], ptr %i.aoy, i64 %i.alt
  %i.apa = load float, ptr %i.aoz, align 1, !tbaa !8
  %i.apb = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apd = getelementptr [4 x i8], ptr %i.aoy, i64 %i.alv
  %i.ape = load float, ptr %i.apd, align 1, !tbaa !8
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aph = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apc, <16 x float> %.025033153)
  %i.api = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.apg, <16 x float> %.025043152)
  %i.apj = or disjoint i64 %.1024053154, 1        ; 2 uses
  %i.apk = mul nsw i64 %i.apj, %4
  %gep3151.1 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.apk
  %i.apl = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.1, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.apm = getelementptr [4 x i8], ptr %6, i64 %i.apj ; 2 uses
  %i.apn = getelementptr [4 x i8], ptr %i.apm, i64 %i.alt
  %i.apo = load float, ptr %i.apn, align 1, !tbaa !8
  %i.app = insertelement <4 x float> poison, float %i.apo, i64 0
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apr = getelementptr [4 x i8], ptr %i.apm, i64 %i.alv
  %i.aps = load float, ptr %i.apr, align 1, !tbaa !8
  %i.apt = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <16 x i32> zeroinitializer
  %i.apv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.apq, <16 x float> %i.aph)
  %i.apw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.apu, <16 x float> %i.api)
  %i.apx = or disjoint i64 %.1024053154, 2        ; 2 uses
  %i.apy = mul nsw i64 %i.apx, %4
  %gep3151.2 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.apy
  %i.apz = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.2, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aqa = getelementptr [4 x i8], ptr %6, i64 %i.apx ; 2 uses
  %i.aqb = getelementptr [4 x i8], ptr %i.aqa, i64 %i.alt
  %i.aqc = load float, ptr %i.aqb, align 1, !tbaa !8
  %i.aqd = insertelement <4 x float> poison, float %i.aqc, i64 0
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqf = getelementptr [4 x i8], ptr %i.aqa, i64 %i.alv
  %i.aqg = load float, ptr %i.aqf, align 1, !tbaa !8
  %i.aqh = insertelement <4 x float> poison, float %i.aqg, i64 0
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.aqe, <16 x float> %i.apv)
  %i.aqk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.aqi, <16 x float> %i.apw)
  %i.aql = or disjoint i64 %.1024053154, 3        ; 2 uses
  %i.aqm = mul nsw i64 %i.aql, %4
  %gep3151.3 = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.aqm
  %i.aqn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.3, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.aqo = getelementptr [4 x i8], ptr %6, i64 %i.aql ; 2 uses
  %i.aqp = getelementptr [4 x i8], ptr %i.aqo, i64 %i.alt
  %i.aqq = load float, ptr %i.aqp, align 1, !tbaa !8
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqt = getelementptr [4 x i8], ptr %i.aqo, i64 %i.alv
  %i.aqu = load float, ptr %i.aqt, align 1, !tbaa !8
  %i.aqv = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.aqw = shufflevector <4 x float> %i.aqv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aqx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqn, <16 x float> %i.aqs, <16 x float> %i.aqj) ; 3 uses
  %i.aqy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqn, <16 x float> %i.aqw, <16 x float> %i.aqk) ; 3 uses
  %i.aqz = add nuw nsw i64 %.1024053154, 4        ; 2 uses
  %niter4182.next.3 = add nuw nsw i64 %niter4182, 4 ; 2 uses
  %niter4182.ncmp.3 = icmp eq i64 %niter4182.next.3, %unroll_iter4181
  br i1 %niter4182.ncmp.3, label %._crit_edge3156.loopexit.unr-lcssa, label %.lr.ph3155.new, !llvm.loop !46

._crit_edge3156.loopexit.unr-lcssa:               ; preds = %.lr.ph3155.new
  br i1 %lcmp.mod4177.not, label %._crit_edge3156, label %.epil.preheader4174

.epil.preheader4174:                              ; preds = %._crit_edge3156.loopexit.unr-lcssa, %.lr.ph3155
  %.1024053154.epil.init = phi i64 [ 0, %.lr.ph3155 ], [ %i.aqz, %._crit_edge3156.loopexit.unr-lcssa ]
  %.025033153.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3155 ], [ %i.aqx, %._crit_edge3156.loopexit.unr-lcssa ]
  %.025043152.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph3155 ], [ %i.aqy, %._crit_edge3156.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4180)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader4174
  %.1024053154.epil = phi i64 [ %.1024053154.epil.init, %.epil.preheader4174 ], [ %i.arn, %bb.l ] ; 3 uses
  %.025033153.epil = phi <16 x float> [ %.025033153.epil.init, %.epil.preheader4174 ], [ %i.arl, %bb.l ]
  %.025043152.epil = phi <16 x float> [ %.025043152.epil.init, %.epil.preheader4174 ], [ %i.arm, %bb.l ]
  %epil.iter4176 = phi i64 [ 0, %.epil.preheader4174 ], [ %epil.iter4176.next, %bb.l ]
  %i.ara = mul nsw i64 %.1024053154.epil, %4
  %gep3151.epil = getelementptr [4 x i8], ptr %invariant.gep3150, i64 %i.ara
  %i.arb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3151.epil, <16 x i1> %i.ahf, <16 x float> zeroinitializer) ; 2 uses
  %i.arc = getelementptr [4 x i8], ptr %6, i64 %.1024053154.epil ; 2 uses
  %i.ard = getelementptr [4 x i8], ptr %i.arc, i64 %i.alt
  %i.are = load float, ptr %i.ard, align 1, !tbaa !8
  %i.arf = insertelement <4 x float> poison, float %i.are, i64 0
  %i.arg = shufflevector <4 x float> %i.arf, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arh = getelementptr [4 x i8], ptr %i.arc, i64 %i.alv
  %i.ari = load float, ptr %i.arh, align 1, !tbaa !8
  %i.arj = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> poison, <16 x i32> zeroinitializer
  %i.arl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arb, <16 x float> %i.arg, <16 x float> %.025033153.epil) ; 2 uses
  %i.arm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.arb, <16 x float> %i.ark, <16 x float> %.025043152.epil) ; 2 uses
  %i.arn = add nuw nsw i64 %.1024053154.epil, 1
  %epil.iter4176.next = add i64 %epil.iter4176, 1 ; 2 uses
  %epil.iter4176.cmp.not = icmp eq i64 %epil.iter4176.next, %xtraiter4175
  br i1 %epil.iter4176.cmp.not, label %._crit_edge3156, label %bb.l, !llvm.loop !47

._crit_edge3156:                                  ; preds = %._crit_edge3156.loopexit.unr-lcssa, %bb.l, %.preheader2627.._crit_edge3156_crit_edge
  %.pre-phi3502 = phi i64 [ %.pre3501, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.alu, %bb.l ], [ %i.alu, %._crit_edge3156.loopexit.unr-lcssa ]
  %.02504.lcssa = phi <16 x float> [ zeroinitializer, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.aqy, %._crit_edge3156.loopexit.unr-lcssa ], [ %i.arm, %bb.l ]
  %.02503.lcssa = phi <16 x float> [ zeroinitializer, %.preheader2627.._crit_edge3156_crit_edge ], [ %i.aqx, %._crit_edge3156.loopexit.unr-lcssa ], [ %i.arl, %bb.l ]
  %i.aro = fmul <16 x float> %i.k, %.02503.lcssa
  %i.arp = mul nsw i64 %.103163, %9
  %gep3160 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arp
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aro, ptr align 1 %gep3160, <16 x i1> %i.ahf)
  %i.arq = fmul <16 x float> %i.k, %.02504.lcssa
  %i.arr = mul nsw i64 %.pre-phi3502, %9
  %gep3162 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arr
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.arq, ptr align 1 %gep3162, <16 x i1> %i.ahf)
  %i.ars = add nuw nsw i64 %.103163, 2            ; 3 uses
  %i.art = icmp slt i64 %i.ars, %i.i
  br i1 %i.art, label %.preheader2627, label %.preheader2626, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.113176 = phi i64 [ %i.asj, %.preheader ], [ %.113176.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.aru = mul nsw i64 %.113176, %9
  %gep3175 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.aru
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175, <16 x i1> %i.aly)
  %i.arv = add nuw nsw i64 %.113176, 1
  %i.arw = mul nsw i64 %i.arv, %9
  %gep3175.1 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.arw
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.1, <16 x i1> %i.aly)
  %i.arx = add nuw nsw i64 %.113176, 2
  %i.ary = mul nsw i64 %i.arx, %9
  %gep3175.2 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.ary
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.2, <16 x i1> %i.aly)
  %i.arz = add nuw nsw i64 %.113176, 3
  %i.asa = mul nsw i64 %i.arz, %9
  %gep3175.3 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asa
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.3, <16 x i1> %i.aly)
  %i.asb = add nuw nsw i64 %.113176, 4
  %i.asc = mul nsw i64 %i.asb, %9
  %gep3175.4 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asc
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.4, <16 x i1> %i.aly)
  %i.asd = add nuw nsw i64 %.113176, 5
  %i.ase = mul nsw i64 %i.asd, %9
  %gep3175.5 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.ase
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.5, <16 x i1> %i.aly)
  %i.asf = add nuw nsw i64 %.113176, 6
  %i.asg = mul nsw i64 %i.asf, %9
  %gep3175.6 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asg
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.6, <16 x i1> %i.aly)
  %i.ash = add nuw nsw i64 %.113176, 7
  %i.asi = mul nsw i64 %i.ash, %9
  %gep3175.7 = getelementptr [4 x i8], ptr %invariant.gep3136, i64 %i.asi
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.aoq, ptr align 1 %gep3175.7, <16 x i1> %i.aly)
  %i.asj = add nuw nsw i64 %.113176, 8            ; 2 uses
  %exitcond3368.not.7 = icmp eq i64 %i.asj, %1
  br i1 %exitcond3368.not.7, label %.loopexit, label %.preheader, !llvm.loop !44

.lr.ph2907:                                       ; preds = %bb.i
  %sext = shl i64 %i.agh, 32
  %i.ask = ashr exact i64 %sext, 30
  %i.asl = mul i64 %i.ask, %2
  %i.asm = tail call noalias ptr @malloc(i64 noundef %i.asl) #8 ; 31 uses
  %10 = and i64 %2, 9223372036854775792           ; 11 uses
  %i.asn = and i64 %2, 9223372036854775800
  %invariant.gep2903 = getelementptr [4 x i8], ptr %i.asm, i64 %2
  %11 = and i64 %i.agh, 4294967295
  %notmask = shl nsw i64 -1, %11
  %12 = trunc i64 %notmask to i8
  %13 = xor i8 %12, -1
  %i.aso = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa ; 8 uses
  %i.asp = bitcast i8 %13 to <8 x i1>             ; 8 uses
  %.idx = mul nuw nsw i64 %2, 28
  %invariant.gep2909 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx
  %.idx2610 = mul nuw nsw i64 %2, 24
  %invariant.gep2911 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2610
  %.idx2611 = mul nuw nsw i64 %2, 20
  %invariant.gep2913 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2611
  %.idx2612 = shl nsw i64 %2, 4
  %invariant.gep2915 = getelementptr i8, ptr %i.asm, i64 %.idx2612
  %.idx2613 = mul nuw nsw i64 %2, 12
  %invariant.gep2917 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2613
  %.idx2614 = shl nuw nsw i64 %2, 3
  %invariant.gep2919 = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.idx2614
  br label %bb.m

.preheader2651:                                   ; preds = %bb.v
  %14 = icmp slt i64 %i.aux, %2
  br i1 %14, label %.preheader2650.lr.ph, label %._crit_edge2925.split

.preheader2650.lr.ph:                             ; preds = %.preheader2651
  %i.asq = icmp sgt i32 %i.agi, 0
  %15 = getelementptr [4 x i8], ptr %3, i64 %.2.lcssa
  br i1 %i.asq, label %.preheader2650.preheader, label %._crit_edge2925.split

.preheader2650.preheader:                         ; preds = %.preheader2650.lr.ph
  %wide.trip.count = and i64 %i.agh, 2147483647
  %i.asr = add nsw i64 %wide.trip.count, -1
  %xtraiter4152 = and i64 %i.agh, 7               ; 3 uses
  %i.ass = icmp ult i64 %i.asr, 7
  %unroll_iter4156 = and i64 %i.agh, 2147483640
  %lcmp.mod4154.not.a = icmp eq i64 %xtraiter4152, 0
  %lcmp.mod4155 = icmp ne i64 %xtraiter4152, 0
  br label %iter.check

bb.m:                                             ; preds = %.lr.ph2907, %bb.v
  %.1224072905 = phi i64 [ 0, %.lr.ph2907 ], [ %i.aux, %bb.v ] ; 17 uses
  %i.ast = mul nsw i64 %.1224072905, %4
  %i.asu = getelementptr [4 x i8], ptr %i.aso, i64 %i.ast
  %i.asv = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.asu, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.asw = or disjoint i64 %.1224072905, 1
  %i.asx = mul nsw i64 %i.asw, %4
  %i.asy = getelementptr [4 x i8], ptr %i.aso, i64 %i.asx
  %i.asz = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.asy, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.ata = or disjoint i64 %.1224072905, 2
  %i.atb = mul nsw i64 %i.ata, %4
  %i.atc = getelementptr [4 x i8], ptr %i.aso, i64 %i.atb
  %i.atd = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atc, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.ate = or disjoint i64 %.1224072905, 3
  %i.atf = mul nsw i64 %i.ate, %4
  %i.atg = getelementptr [4 x i8], ptr %i.aso, i64 %i.atf
  %i.ath = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atg, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.ati = or disjoint i64 %.1224072905, 4
  %i.atj = mul nsw i64 %i.ati, %4
  %i.atk = getelementptr [4 x i8], ptr %i.aso, i64 %i.atj
  %i.atl = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atk, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.atm = or disjoint i64 %.1224072905, 5
  %i.atn = mul nsw i64 %i.atm, %4
  %i.ato = getelementptr [4 x i8], ptr %i.aso, i64 %i.atn
  %i.atp = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ato, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.atq = or disjoint i64 %.1224072905, 6
  %i.atr = mul nsw i64 %i.atq, %4
  %i.ats = getelementptr [4 x i8], ptr %i.aso, i64 %i.atr
  %i.att = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.ats, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.atu = or disjoint i64 %.1224072905, 7
  %i.atv = mul nsw i64 %i.atu, %4
  %i.atw = getelementptr [4 x i8], ptr %i.aso, i64 %i.atv
  %i.atx = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 1 %i.atw, <8 x i1> %i.asp, <8 x float> zeroinitializer) ; 2 uses
  %i.aty = shufflevector <8 x float> %i.asv, <8 x float> %i.asz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atz = shufflevector <8 x float> %i.asv, <8 x float> %i.asz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aua = shufflevector <8 x float> %i.atd, <8 x float> %i.ath, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aub = shufflevector <8 x float> %i.atd, <8 x float> %i.ath, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.auc = shufflevector <8 x float> %i.atl, <8 x float> %i.atp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aud = shufflevector <8 x float> %i.atl, <8 x float> %i.atp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aue = shufflevector <8 x float> %i.att, <8 x float> %i.atx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.auf = shufflevector <8 x float> %i.att, <8 x float> %i.atx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aug = shufflevector <8 x float> %i.aty, <8 x float> %i.aua, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.auh = shufflevector <8 x float> %i.aty, <8 x float> %i.aua, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aui = shufflevector <8 x float> %i.atz, <8 x float> %i.aub, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.auj = shufflevector <8 x float> %i.atz, <8 x float> %i.aub, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auk = shufflevector <8 x float> %i.auc, <8 x float> %i.aue, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aul = shufflevector <8 x float> %i.auc, <8 x float> %i.aue, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aum = shufflevector <8 x float> %i.aud, <8 x float> %i.auf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aun = shufflevector <8 x float> %i.aud, <8 x float> %i.auf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.auo = shufflevector <8 x float> %i.aug, <8 x float> %i.auk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aup = shufflevector <8 x float> %i.auh, <8 x float> %i.aul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.auq = shufflevector <8 x float> %i.aui, <8 x float> %i.aum, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aur = shufflevector <8 x float> %i.auj, <8 x float> %i.aun, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aus = shufflevector <8 x float> %i.aug, <8 x float> %i.auk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aut = shufflevector <8 x float> %i.auh, <8 x float> %i.aul, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.auu = shufflevector <8 x float> %i.aui, <8 x float> %i.aum, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  switch i32 %i.agi, label %bb.v [
    i32 8, label %bb.n
    i32 7, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.auv = shufflevector <8 x float> %i.auj, <8 x float> %i.aun, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %gep2910 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2909, i64 %.1224072905
  store <8 x float> %i.auv, ptr %gep2910, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %gep2912 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2911, i64 %.1224072905
  store <8 x float> %i.auu, ptr %gep2912, align 1, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %gep2914 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2913, i64 %.1224072905
  store <8 x float> %i.aut, ptr %gep2914, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %gep2916 = getelementptr [4 x i8], ptr %invariant.gep2915, i64 %.1224072905
  store <8 x float> %i.aus, ptr %gep2916, align 1, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %gep2918 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2917, i64 %.1224072905
  store <8 x float> %i.aur, ptr %gep2918, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %gep2920 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2919, i64 %.1224072905
  store <8 x float> %i.auq, ptr %gep2920, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %gep2904 = getelementptr [4 x i8], ptr %invariant.gep2903, i64 %.1224072905
  store <8 x float> %i.aup, ptr %gep2904, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.1224072905
  store <8 x float> %i.auo, ptr %i.auw, align 1, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %i.aux = add nuw nsw i64 %.1224072905, 8        ; 4 uses
  %i.auy = icmp samesign ult i64 %i.aux, %i.asn
  br i1 %i.auy, label %bb.m, label %.preheader2651, !llvm.loop !49

iter.check:                                       ; preds = %.preheader2650.preheader, %._crit_edge2923
  %.1324082924 = phi i64 [ %i.avg, %._crit_edge2923 ], [ %i.aux, %.preheader2650.preheader ] ; 3 uses
  %i.auz = mul nsw i64 %.1324082924, %4
  %i.ava = getelementptr [4 x i8], ptr %15, i64 %i.auz ; 9 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.1324082924 ; 9 uses
  br i1 %i.ass, label %.epil.preheader4151, label %iter.check.new

._crit_edge2923.unr-lcssa:                        ; preds = %iter.check.new
  br i1 %lcmp.mod4154.not.a, label %._crit_edge2923, label %.epil.preheader4151

.epil.preheader4151:                              ; preds = %._crit_edge2923.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.7, %._crit_edge2923.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4155)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader4151
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader4151 ], [ %indvars.iv.next.epil, %bb.w ] ; 3 uses
  %epil.iter4153 = phi i64 [ 0, %.epil.preheader4151 ], [ %epil.iter4153.next, %bb.w ]
  %i.avc = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.epil
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !50
  %i.ave = mul nuw nsw i64 %2, %indvars.iv.epil
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.ave
  store float %i.avd, ptr %i.avf, align 4, !tbaa !50
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter4153.next = add i64 %epil.iter4153, 1 ; 2 uses
  %epil.iter4153.cmp.not = icmp eq i64 %epil.iter4153.next, %xtraiter4152
  br i1 %epil.iter4153.cmp.not, label %._crit_edge2923, label %bb.w, !llvm.loop !52

._crit_edge2923:                                  ; preds = %bb.w, %._crit_edge2923.unr-lcssa
  %i.avg = add nuw nsw i64 %.1324082924, 1        ; 2 uses
  %exitcond3352.not = icmp eq i64 %i.avg, %2
  br i1 %exitcond3352.not, label %._crit_edge2925.split, label %iter.check, !llvm.loop !53

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %iter.check.new ], [ 0, %iter.check ] ; 10 uses
  %niter4157 = phi i64 [ %niter4157.next.7, %iter.check.new ], [ 0, %iter.check ]
  %i.avh = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !50
  %i.avj = mul nuw nsw i64 %2, %indvars.iv
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avj
  store float %i.avi, ptr %i.avk, align 4, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.avl = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !50
  %i.avn = mul nuw nsw i64 %2, %indvars.iv.next
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avn
  store float %i.avm, ptr %i.avo, align 4, !tbaa !50
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.avp = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.1
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !50
  %i.avr = mul nuw nsw i64 %2, %indvars.iv.next.1
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avr
  store float %i.avq, ptr %i.avs, align 4, !tbaa !50
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.avt = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.2
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !50
  %i.avv = mul nuw nsw i64 %2, %indvars.iv.next.2
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avv
  store float %i.avu, ptr %i.avw, align 4, !tbaa !50
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.avx = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.3
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !50
  %i.avz = mul nuw nsw i64 %2, %indvars.iv.next.3
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avz
  store float %i.avy, ptr %i.awa, align 4, !tbaa !50
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.awb = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.4
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !50
  %i.awd = mul nuw nsw i64 %2, %indvars.iv.next.4
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.awd
  store float %i.awc, ptr %i.awe, align 4, !tbaa !50
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.awf = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.5
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !50
  %i.awh = mul nuw nsw i64 %2, %indvars.iv.next.5
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.awh
  store float %i.awg, ptr %i.awi, align 4, !tbaa !50
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.awj = getelementptr [4 x i8], ptr %i.ava, i64 %indvars.iv.next.6
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !50
  %i.awl = mul nuw nsw i64 %2, %indvars.iv.next.6
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.awl
  store float %i.awk, ptr %i.awm, align 4, !tbaa !50
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter4157.next.7 = add i64 %niter4157, 8       ; 2 uses
  %niter4157.ncmp.7 = icmp eq i64 %niter4157.next.7, %unroll_iter4156
  br i1 %niter4157.ncmp.7, label %._crit_edge2923.unr-lcssa, label %iter.check.new, !llvm.loop !54

._crit_edge2925.split:                            ; preds = %._crit_edge2923, %.preheader2650.lr.ph, %.preheader2651
  %i.awn = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.awo = trunc i64 %9 to i32                    ; 3 uses
  %i.awp = mul i32 %i.awo, 3
  %i.awq = shl i32 %i.awo, 1
  %i.awr = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.awo, i64 1
  %i.aws = insertelement <4 x i32> %i.awr, i32 %i.awq, i64 2
  %i.awt = insertelement <4 x i32> %i.aws, i32 %i.awp, i64 3 ; 3 uses
  %i.awu = icmp slt i64 %.2.lcssa, %i.d
  br i1 %i.awu, label %.preheader2649.lr.ph, label %.preheader2643

.preheader2649.lr.ph:                             ; preds = %._crit_edge2925.split
  %i.awv = icmp sgt i64 %1, 3
  %i.aww = and i64 %2, 9223372036854775792        ; 19 uses
  %i.awx = and i64 %2, 15                         ; 2 uses
  %.not2608 = icmp eq i64 %i.awx, 0
  %notmask2609 = shl nsw i64 -1, %i.awx
  %i.awy = trunc nsw i64 %notmask2609 to i16
  %i.awz = xor i16 %i.awy, -1
  %i.axa = bitcast i16 %i.awz to <16 x i1>        ; 8 uses
  %invariant.gep3749.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %invariant.gep3751.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %invariant.gep3753.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %invariant.gep3755.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %i.axb = and i64 %2, 15                         ; 2 uses
  %.not2606 = icmp eq i64 %i.axb, 0
  %notmask2607 = shl nsw i64 -1, %i.axb
  %i.axc = trunc nsw i64 %notmask2607 to i16
  %i.axd = xor i16 %i.axc, -1
  %i.axe = bitcast i16 %i.axd to <16 x i1>        ; 6 uses
  %invariant.gep3757.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %invariant.gep3759.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  %i.axf = and i64 %2, 15                         ; 2 uses
  %.not2604 = icmp eq i64 %i.axf, 0
  %notmask2605 = shl nsw i64 -1, %i.axf
  %i.axg = trunc nsw i64 %notmask2605 to i16
  %i.axh = xor i16 %i.axg, -1
  %i.axi = bitcast i16 %i.axh to <16 x i1>        ; 5 uses
  %invariant.gep3761.a = getelementptr [4 x i8], ptr %6, i64 %i.aww
  br label %.preheader2649

.preheader2649:                                   ; preds = %.preheader2649.lr.ph, %._crit_edge3013
  %indvars.iv3354 = phi i64 [ 0, %.preheader2649.lr.ph ], [ %indvars.iv.next3355, %._crit_edge3013 ] ; 13 uses
  %.33015 = phi i64 [ %.2.lcssa, %.preheader2649.lr.ph ], [ %i.blg, %._crit_edge3013 ] ; 2 uses
  %invariant.gep2962 = getelementptr [4 x i8], ptr %8, i64 %.33015 ; 7 uses
  br i1 %i.awv, label %.preheader2646.lr.ph, label %.preheader2648

.preheader2646.lr.ph:                             ; preds = %.preheader2649
  %i.axj = mul nuw nsw i64 %2, %indvars.iv3354
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axj ; 2 uses
  %i.axl = or disjoint i64 %indvars.iv3354, 1
  %i.axm = mul nuw nsw i64 %2, %i.axl
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axm ; 2 uses
  %i.axo = or disjoint i64 %indvars.iv3354, 2
  %i.axp = mul nuw nsw i64 %2, %i.axo
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axp ; 2 uses
  %i.axr = or disjoint i64 %indvars.iv3354, 3
  %i.axs = mul nuw nsw i64 %2, %i.axr
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.axs ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %i.aww
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.aww
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %i.aww
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.aww
  br label %.lr.ph2943

.preheader2643.loopexit:                          ; preds = %._crit_edge3013
  %i.axy = trunc nuw i64 %indvars.iv.next3355 to i32
  br label %.preheader2643

.preheader2643:                                   ; preds = %.preheader2643.loopexit, %._crit_edge2925.split
  %.02523.lcssa = phi i32 [ 0, %._crit_edge2925.split ], [ %i.axy, %.preheader2643.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2.lcssa, %._crit_edge2925.split ], [ %i.blg, %.preheader2643.loopexit ] ; 3 uses
  %i.axz = icmp slt i64 %.3.lcssa, %i.e
  br i1 %i.axz, label %.preheader2642.lr.ph, label %.preheader2636

.preheader2642.lr.ph:                             ; preds = %.preheader2643
  %i.aya = icmp sgt i64 %1, 3
  %i.ayb = and i64 %2, 9223372036854775792        ; 13 uses
  %i.ayc = zext i32 %.02523.lcssa to i64
  %i.ayd = and i64 %2, 15                         ; 2 uses
  %.not2602 = icmp eq i64 %i.ayd, 0
  %notmask2603 = shl nsw i64 -1, %i.ayd
  %i.aye = trunc nsw i64 %notmask2603 to i16
  %i.ayf = xor i16 %i.aye, -1
  %i.ayg = bitcast i16 %i.ayf to <16 x i1>        ; 6 uses
  %invariant.gep3763.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %invariant.gep3765.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %invariant.gep3767.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %invariant.gep3769.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %i.ayh = and i64 %2, 15                         ; 2 uses
  %.not2600 = icmp eq i64 %i.ayh, 0
  %notmask2601 = shl nsw i64 -1, %i.ayh
  %i.ayi = trunc nsw i64 %notmask2601 to i16
  %i.ayj = xor i16 %i.ayi, -1
  %i.ayk = bitcast i16 %i.ayj to <16 x i1>        ; 4 uses
  %invariant.gep3771.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %invariant.gep3773.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %i.ayl = and i64 %2, 15                         ; 2 uses
  %.not2598 = icmp eq i64 %i.ayl, 0
  %notmask2599 = shl nsw i64 -1, %i.ayl
  %i.aym = trunc nsw i64 %notmask2599 to i16
  %i.ayn = xor i16 %i.aym, -1
  %i.ayo = bitcast i16 %i.ayn to <16 x i1>        ; 3 uses
  %invariant.gep3775.a = getelementptr [4 x i8], ptr %6, i64 %i.ayb
  %i.ayp = insertelement <2 x float> poison, float %5, i64 0
  %i.ayq = shufflevector <2 x float> %i.ayp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ayr = insertelement <2 x float> poison, float %5, i64 0
  %i.ays = shufflevector <2 x float> %i.ayr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader2642

.preheader2648:                                   ; preds = %bb.z, %.preheader2649
  %.12.lcssa = phi i64 [ 0, %.preheader2649 ], [ %i.bfj, %bb.z ] ; 3 uses
  %i.ayt = icmp slt i64 %.12.lcssa, %i.i
  br i1 %i.ayt, label %.preheader2645.lr.ph, label %.preheader2647

.preheader2645.lr.ph:                             ; preds = %.preheader2648
  %i.ayu = mul nuw nsw i64 %2, %indvars.iv3354
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.ayu ; 2 uses
  %i.ayw = or disjoint i64 %indvars.iv3354, 1
  %i.ayx = mul nuw nsw i64 %2, %i.ayw
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.ayx ; 2 uses
  %i.ayz = or disjoint i64 %indvars.iv3354, 2
  %i.aza = mul nuw nsw i64 %2, %i.ayz
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.aza ; 2 uses
  %i.azc = or disjoint i64 %indvars.iv3354, 3
  %i.azd = mul nuw nsw i64 %2, %i.azc
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.azd ; 2 uses
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.ayv, i64 %i.aww
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %i.aww
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.aww
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %i.aww
  br label %.lr.ph2981

.lr.ph2943:                                       ; preds = %bb.z, %.preheader2646.lr.ph
  %.122970 = phi i64 [ 0, %.preheader2646.lr.ph ], [ %i.bfj, %bb.z ] ; 13 uses
  %i.azj = mul nsw i64 %.122970, %7
  %i.azk = getelementptr [4 x i8], ptr %6, i64 %i.azj
  %i.azl = or disjoint i64 %.122970, 1
  %i.azm = mul nsw i64 %i.azl, %7
  %i.azn = getelementptr [4 x i8], ptr %6, i64 %i.azm
  %i.azo = or disjoint i64 %.122970, 2
  %i.azp = mul nsw i64 %i.azo, %7
  %i.azq = getelementptr [4 x i8], ptr %6, i64 %i.azp
  %i.azr = or disjoint i64 %.122970, 3
  %i.azs = mul nsw i64 %i.azr, %7
  %i.azt = getelementptr [4 x i8], ptr %6, i64 %i.azs
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph2943, %bb.x
  %.1424092942 = phi i64 [ 0, %.lr.ph2943 ], [ %i.bba, %bb.x ] ; 9 uses
  %.025342941 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bak, %bb.x ]
  %.025362940 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bal, %bb.x ]
  %.025382939 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bam, %bb.x ]
  %.025402938 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.ban, %bb.x ]
  %.025422937 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bao, %bb.x ]
  %.025442936 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bap, %bb.x ]
  %.025462935 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.baq, %bb.x ]
  %.025482934 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bar, %bb.x ]
  %.025502933 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bas, %bb.x ]
  %.025522932 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bat, %bb.x ]
  %.025542931 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bau, %bb.x ]
  %.025562930 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bav, %bb.x ]
  %.025582929 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.baw, %bb.x ]
  %.025602928 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bax, %bb.x ]
  %.025622927 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.bay, %bb.x ]
  %.025642926 = phi <16 x float> [ zeroinitializer, %.lr.ph2943 ], [ %i.baz, %bb.x ]
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %.1424092942
  %i.azv = load <16 x float>, ptr %i.azu, align 1, !tbaa !8 ; 4 uses
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %.1424092942
  %i.azx = load <16 x float>, ptr %i.azw, align 1, !tbaa !8 ; 4 uses
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %.1424092942
  %i.azz = load <16 x float>, ptr %i.azy, align 1, !tbaa !8 ; 4 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %.1424092942
  %i.bab = load <16 x float>, ptr %i.baa, align 1, !tbaa !8 ; 4 uses
  %i.bac = getelementptr [4 x i8], ptr %i.azk, i64 %.1424092942
  %i.bad = load <16 x float>, ptr %i.bac, align 1, !tbaa !8 ; 4 uses
  %i.bae = getelementptr [4 x i8], ptr %i.azn, i64 %.1424092942
  %i.baf = load <16 x float>, ptr %i.bae, align 1, !tbaa !8 ; 4 uses
  %i.bag = getelementptr [4 x i8], ptr %i.azq, i64 %.1424092942
  %i.bah = load <16 x float>, ptr %i.bag, align 1, !tbaa !8 ; 4 uses
  %i.bai = getelementptr [4 x i8], ptr %i.azt, i64 %.1424092942
  %i.baj = load <16 x float>, ptr %i.bai, align 1, !tbaa !8 ; 4 uses
  %i.bak = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azv, <16 x float> %i.bad, <16 x float> %.025342941) ; 3 uses
  %i.bal = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azx, <16 x float> %i.bad, <16 x float> %.025362940) ; 3 uses
  %i.bam = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.bad, <16 x float> %.025382939) ; 3 uses
  %i.ban = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bab, <16 x float> %i.bad, <16 x float> %.025402938) ; 3 uses
  %i.bao = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azv, <16 x float> %i.baf, <16 x float> %.025422937) ; 3 uses
  %i.bap = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azx, <16 x float> %i.baf, <16 x float> %.025442936) ; 3 uses
  %i.baq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.baf, <16 x float> %.025462935) ; 3 uses
  %i.bar = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bab, <16 x float> %i.baf, <16 x float> %.025482934) ; 3 uses
  %i.bas = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azv, <16 x float> %i.bah, <16 x float> %.025502933) ; 3 uses
  %i.bat = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azx, <16 x float> %i.bah, <16 x float> %.025522932) ; 3 uses
  %i.bau = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.bah, <16 x float> %.025542931) ; 3 uses
  %i.bav = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bab, <16 x float> %i.bah, <16 x float> %.025562930) ; 3 uses
  %i.baw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azv, <16 x float> %i.baj, <16 x float> %.025582929) ; 3 uses
  %i.bax = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azx, <16 x float> %i.baj, <16 x float> %.025602928) ; 3 uses
  %i.bay = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azz, <16 x float> %i.baj, <16 x float> %.025622927) ; 3 uses
  %i.baz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bab, <16 x float> %i.baj, <16 x float> %.025642926) ; 3 uses
  %i.bba = add nuw nsw i64 %.1424092942, 16       ; 2 uses
  %i.bbb = icmp samesign ult i64 %i.bba, %10
  br i1 %i.bbb, label %bb.x, label %._crit_edge2944, !llvm.loop !56

._crit_edge2944:                                  ; preds = %bb.x
  br i1 %.not2608, label %._crit_edge2944._crit_edge, label %bb.y

._crit_edge2944._crit_edge:                       ; preds = %._crit_edge2944
  %.pre3503 = or disjoint i64 %.122970, 1
  %.pre3505 = or disjoint i64 %.122970, 2
  %.pre3507 = or disjoint i64 %.122970, 3
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge2944
  %i.bbc = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axu, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbd = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axv, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbe = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axw, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbf = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.axx, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbg = mul nsw i64 %.122970, %7
  %gep3750.a = getelementptr [4 x i8], ptr %invariant.gep3749.a, i64 %i.bbg
  %i.bbh = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3750.a, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbi = or disjoint i64 %.122970, 1            ; 2 uses
  %i.bbj = mul nsw i64 %i.bbi, %7
  %gep3752.a = getelementptr [4 x i8], ptr %invariant.gep3751.a, i64 %i.bbj
  %i.bbk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3752.a, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbl = or disjoint i64 %.122970, 2            ; 2 uses
  %i.bbm = mul nsw i64 %i.bbl, %7
  %gep3754.a = getelementptr [4 x i8], ptr %invariant.gep3753.a, i64 %i.bbm
  %i.bbn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3754.a, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbo = or disjoint i64 %.122970, 3            ; 2 uses
  %i.bbp = mul nsw i64 %i.bbo, %7
  %gep3756.a = getelementptr [4 x i8], ptr %invariant.gep3755.a, i64 %i.bbp
  %i.bbq = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3756.a, <16 x i1> %i.axa, <16 x float> zeroinitializer) ; 4 uses
  %i.bbr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbc, <16 x float> %i.bbh, <16 x float> %i.bak)
  %i.bbs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbd, <16 x float> %i.bbh, <16 x float> %i.bal)
  %i.bbt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbe, <16 x float> %i.bbh, <16 x float> %i.bam)
  %i.bbu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbh, <16 x float> %i.ban)
  %i.bbv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbc, <16 x float> %i.bbk, <16 x float> %i.bao)
  %i.bbw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbd, <16 x float> %i.bbk, <16 x float> %i.bap)
  %i.bbx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbe, <16 x float> %i.bbk, <16 x float> %i.baq)
  %i.bby = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbk, <16 x float> %i.bar)
  %i.bbz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbc, <16 x float> %i.bbn, <16 x float> %i.bas)
  %i.bca = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbd, <16 x float> %i.bbn, <16 x float> %i.bat)
  %i.bcb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbe, <16 x float> %i.bbn, <16 x float> %i.bau)
  %i.bcc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbn, <16 x float> %i.bav)
  %i.bcd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbc, <16 x float> %i.bbq, <16 x float> %i.baw)
  %i.bce = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbd, <16 x float> %i.bbq, <16 x float> %i.bax)
  %i.bcf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbe, <16 x float> %i.bbq, <16 x float> %i.bay)
  %i.bcg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbf, <16 x float> %i.bbq, <16 x float> %i.baz)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge2944._crit_edge, %bb.y
  %.pre-phi3508 = phi i64 [ %.pre3507, %._crit_edge2944._crit_edge ], [ %i.bbo, %bb.y ]
  %.pre-phi3506 = phi i64 [ %.pre3505, %._crit_edge2944._crit_edge ], [ %i.bbl, %bb.y ]
  %.pre-phi3504 = phi i64 [ %.pre3503, %._crit_edge2944._crit_edge ], [ %i.bbi, %bb.y ]
  %.12565 = phi <16 x float> [ %i.baz, %._crit_edge2944._crit_edge ], [ %i.bcg, %bb.y ] ; 2 uses
  %.12563 = phi <16 x float> [ %i.bay, %._crit_edge2944._crit_edge ], [ %i.bcf, %bb.y ] ; 2 uses
  %.12561 = phi <16 x float> [ %i.bax, %._crit_edge2944._crit_edge ], [ %i.bce, %bb.y ] ; 2 uses
  %.12559 = phi <16 x float> [ %i.baw, %._crit_edge2944._crit_edge ], [ %i.bcd, %bb.y ] ; 2 uses
  %.12557 = phi <16 x float> [ %i.bav, %._crit_edge2944._crit_edge ], [ %i.bcc, %bb.y ] ; 2 uses
  %.12555 = phi <16 x float> [ %i.bau, %._crit_edge2944._crit_edge ], [ %i.bcb, %bb.y ] ; 2 uses
  %.12553 = phi <16 x float> [ %i.bat, %._crit_edge2944._crit_edge ], [ %i.bca, %bb.y ] ; 2 uses
  %.12551 = phi <16 x float> [ %i.bas, %._crit_edge2944._crit_edge ], [ %i.bbz, %bb.y ] ; 2 uses
  %.12549 = phi <16 x float> [ %i.bar, %._crit_edge2944._crit_edge ], [ %i.bby, %bb.y ] ; 2 uses
  %.12547 = phi <16 x float> [ %i.baq, %._crit_edge2944._crit_edge ], [ %i.bbx, %bb.y ] ; 2 uses
  %.12545 = phi <16 x float> [ %i.bap, %._crit_edge2944._crit_edge ], [ %i.bbw, %bb.y ] ; 2 uses
  %.12543 = phi <16 x float> [ %i.bao, %._crit_edge2944._crit_edge ], [ %i.bbv, %bb.y ] ; 2 uses
  %.12541 = phi <16 x float> [ %i.ban, %._crit_edge2944._crit_edge ], [ %i.bbu, %bb.y ] ; 2 uses
  %.12539 = phi <16 x float> [ %i.bam, %._crit_edge2944._crit_edge ], [ %i.bbt, %bb.y ] ; 2 uses
  %.12537 = phi <16 x float> [ %i.bal, %._crit_edge2944._crit_edge ], [ %i.bbs, %bb.y ] ; 2 uses
  %.12535 = phi <16 x float> [ %i.bak, %._crit_edge2944._crit_edge ], [ %i.bbr, %bb.y ] ; 2 uses
  %i.bch = shufflevector <16 x float> %.12535, <16 x float> %.12537, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bci = shufflevector <16 x float> %.12535, <16 x float> %.12537, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcj = shufflevector <16 x float> %.12539, <16 x float> %.12541, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bck = shufflevector <16 x float> %.12539, <16 x float> %.12541, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcl = shufflevector <16 x float> %i.bch, <16 x float> %i.bcj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bcm = shufflevector <16 x float> %i.bch, <16 x float> %i.bcj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bcn = shufflevector <16 x float> %i.bci, <16 x float> %i.bck, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bco = shufflevector <16 x float> %i.bci, <16 x float> %i.bck, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bcp = fadd <16 x float> %i.bcl, %i.bcm
  %i.bcq = fadd <16 x float> %i.bcn, %i.bco
  %i.bcr = fadd <16 x float> %i.bcp, %i.bcq       ; 4 uses
  %i.bcs = shufflevector <16 x float> %i.bcr, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bct = shufflevector <16 x float> %i.bcr, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcu = shufflevector <16 x float> %i.bcr, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bcv = shufflevector <16 x float> %i.bcr, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bcw = fadd <4 x float> %i.bcs, %i.bct
  %i.bcx = fadd <4 x float> %i.bcu, %i.bcv
  %i.bcy = fadd <4 x float> %i.bcw, %i.bcx
  %i.bcz = fmul <4 x float> %i.awn, %i.bcy
  %i.bda = mul nsw i64 %.122970, %9
  %gep2963 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.bda
  store <4 x float> %i.bcz, ptr %gep2963, align 1
  %i.bdb = shufflevector <16 x float> %.12543, <16 x float> %.12545, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bdc = shufflevector <16 x float> %.12543, <16 x float> %.12545, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdd = shufflevector <16 x float> %.12547, <16 x float> %.12549, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bde = shufflevector <16 x float> %.12547, <16 x float> %.12549, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdf = shufflevector <16 x float> %i.bdb, <16 x float> %i.bdd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bdg = shufflevector <16 x float> %i.bdb, <16 x float> %i.bdd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bdh = shufflevector <16 x float> %i.bdc, <16 x float> %i.bde, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bdi = shufflevector <16 x float> %i.bdc, <16 x float> %i.bde, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bdj = fadd <16 x float> %i.bdf, %i.bdg
  %i.bdk = fadd <16 x float> %i.bdh, %i.bdi
  %i.bdl = fadd <16 x float> %i.bdj, %i.bdk       ; 4 uses
  %i.bdm = shufflevector <16 x float> %i.bdl, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdn = shufflevector <16 x float> %i.bdl, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdo = shufflevector <16 x float> %i.bdl, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bdp = shufflevector <16 x float> %i.bdl, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bdq = fadd <4 x float> %i.bdm, %i.bdn
  %i.bdr = fadd <4 x float> %i.bdo, %i.bdp
  %i.bds = fadd <4 x float> %i.bdq, %i.bdr
  %i.bdt = fmul <4 x float> %i.awn, %i.bds
  %i.bdu = mul nsw i64 %.pre-phi3504, %9
  %gep2965 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.bdu
  store <4 x float> %i.bdt, ptr %gep2965, align 1
  %i.bdv = shufflevector <16 x float> %.12551, <16 x float> %.12553, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bdw = shufflevector <16 x float> %.12551, <16 x float> %.12553, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdx = shufflevector <16 x float> %.12555, <16 x float> %.12557, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bdy = shufflevector <16 x float> %.12555, <16 x float> %.12557, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdz = shufflevector <16 x float> %i.bdv, <16 x float> %i.bdx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bea = shufflevector <16 x float> %i.bdv, <16 x float> %i.bdx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.beb = shufflevector <16 x float> %i.bdw, <16 x float> %i.bdy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bec = shufflevector <16 x float> %i.bdw, <16 x float> %i.bdy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bed = fadd <16 x float> %i.bdz, %i.bea
  %i.bee = fadd <16 x float> %i.beb, %i.bec
  %i.bef = fadd <16 x float> %i.bed, %i.bee       ; 4 uses
  %i.beg = shufflevector <16 x float> %i.bef, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.beh = shufflevector <16 x float> %i.bef, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bei = shufflevector <16 x float> %i.bef, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bej = shufflevector <16 x float> %i.bef, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bek = fadd <4 x float> %i.beg, %i.beh
  %i.bel = fadd <4 x float> %i.bei, %i.bej
  %i.bem = fadd <4 x float> %i.bek, %i.bel
  %i.ben = fmul <4 x float> %i.awn, %i.bem
  %i.beo = mul nsw i64 %.pre-phi3506, %9
  %gep2967 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.beo
  store <4 x float> %i.ben, ptr %gep2967, align 1
  %i.bep = shufflevector <16 x float> %.12559, <16 x float> %.12561, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.beq = shufflevector <16 x float> %.12559, <16 x float> %.12561, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ber = shufflevector <16 x float> %.12563, <16 x float> %.12565, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bes = shufflevector <16 x float> %.12563, <16 x float> %.12565, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bet = shufflevector <16 x float> %i.bep, <16 x float> %i.ber, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.beu = shufflevector <16 x float> %i.bep, <16 x float> %i.ber, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bev = shufflevector <16 x float> %i.beq, <16 x float> %i.bes, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bew = shufflevector <16 x float> %i.beq, <16 x float> %i.bes, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bex = fadd <16 x float> %i.bet, %i.beu
  %i.bey = fadd <16 x float> %i.bev, %i.bew
  %i.bez = fadd <16 x float> %i.bex, %i.bey       ; 4 uses
  %i.bfa = shufflevector <16 x float> %i.bez, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bfb = shufflevector <16 x float> %i.bez, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bfc = shufflevector <16 x float> %i.bez, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bfd = shufflevector <16 x float> %i.bez, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bfe = fadd <4 x float> %i.bfa, %i.bfb
  %i.bff = fadd <4 x float> %i.bfc, %i.bfd
  %i.bfg = fadd <4 x float> %i.bfe, %i.bff
  %i.bfh = fmul <4 x float> %i.awn, %i.bfg
  %i.bfi = mul nsw i64 %.pre-phi3508, %9
  %gep2969 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.bfi
  store <4 x float> %i.bfh, ptr %gep2969, align 1
  %i.bfj = add nuw nsw i64 %.122970, 4            ; 3 uses
  %i.bfk = icmp slt i64 %i.bfj, %i.h
  br i1 %i.bfk, label %.lr.ph2943, label %.preheader2648, !llvm.loop !57

.preheader2647:                                   ; preds = %bb.ac, %.preheader2648
  %.13.lcssa = phi i64 [ %.12.lcssa, %.preheader2648 ], [ %i.bjh, %bb.ac ] ; 2 uses
  %i.bfl = icmp slt i64 %.13.lcssa, %1
  br i1 %i.bfl, label %.preheader2644.lr.ph, label %._crit_edge3013

.preheader2644.lr.ph:                             ; preds = %.preheader2647
  %i.bfm = mul nuw nsw i64 %2, %indvars.iv3354
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bfm ; 2 uses
  %i.bfo = or disjoint i64 %indvars.iv3354, 1
  %i.bfp = mul nuw nsw i64 %2, %i.bfo
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bfp ; 2 uses
  %i.bfr = or disjoint i64 %indvars.iv3354, 2
  %i.bfs = mul nuw nsw i64 %2, %i.bfr
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bfs ; 2 uses
  %i.bfu = or disjoint i64 %indvars.iv3354, 3
  %i.bfv = mul nuw nsw i64 %2, %i.bfu
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bfv ; 2 uses
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfn, i64 %i.aww
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bfq, i64 %i.aww
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bft, i64 %i.aww
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.bfw, i64 %i.aww
  br label %.lr.ph3003

.lr.ph2981:                                       ; preds = %bb.ac, %.preheader2645.lr.ph
  %.132996 = phi i64 [ %.12.lcssa, %.preheader2645.lr.ph ], [ %i.bjh, %bb.ac ] ; 7 uses
  %i.bgb = mul nsw i64 %.132996, %7
  %i.bgc = getelementptr [4 x i8], ptr %6, i64 %i.bgb
  %i.bgd = add nuw nsw i64 %.132996, 1
  %i.bge = mul nsw i64 %i.bgd, %7
  %i.bgf = getelementptr [4 x i8], ptr %6, i64 %i.bge
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph2981, %bb.aa
  %.1524102980 = phi i64 [ 0, %.lr.ph2981 ], [ %i.bha, %bb.aa ] ; 7 uses
  %.025662979 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgs, %bb.aa ]
  %.025682978 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgt, %bb.aa ]
  %.025702977 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgu, %bb.aa ]
  %.025722976 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgv, %bb.aa ]
  %.025742975 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgw, %bb.aa ]
  %.025762974 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgx, %bb.aa ]
  %.025782973 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgy, %bb.aa ]
  %.025802972 = phi <16 x float> [ zeroinitializer, %.lr.ph2981 ], [ %i.bgz, %bb.aa ]
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.ayv, i64 %.1524102980
  %i.bgh = load <16 x float>, ptr %i.bgg, align 1, !tbaa !8 ; 2 uses
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %.1524102980
  %i.bgj = load <16 x float>, ptr %i.bgi, align 1, !tbaa !8 ; 2 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %.1524102980
  %i.bgl = load <16 x float>, ptr %i.bgk, align 1, !tbaa !8 ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %.1524102980
  %i.bgn = load <16 x float>, ptr %i.bgm, align 1, !tbaa !8 ; 2 uses
  %i.bgo = getelementptr [4 x i8], ptr %i.bgc, i64 %.1524102980
  %i.bgp = load <16 x float>, ptr %i.bgo, align 1, !tbaa !8 ; 4 uses
  %i.bgq = getelementptr [4 x i8], ptr %i.bgf, i64 %.1524102980
  %i.bgr = load <16 x float>, ptr %i.bgq, align 1, !tbaa !8 ; 4 uses
  %i.bgs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgh, <16 x float> %i.bgp, <16 x float> %.025662979) ; 3 uses
  %i.bgt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgj, <16 x float> %i.bgp, <16 x float> %.025682978) ; 3 uses
  %i.bgu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgl, <16 x float> %i.bgp, <16 x float> %.025702977) ; 3 uses
  %i.bgv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgn, <16 x float> %i.bgp, <16 x float> %.025722976) ; 3 uses
  %i.bgw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgh, <16 x float> %i.bgr, <16 x float> %.025742975) ; 3 uses
  %i.bgx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgj, <16 x float> %i.bgr, <16 x float> %.025762974) ; 3 uses
  %i.bgy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgl, <16 x float> %i.bgr, <16 x float> %.025782973) ; 3 uses
  %i.bgz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgn, <16 x float> %i.bgr, <16 x float> %.025802972) ; 3 uses
  %i.bha = add nuw nsw i64 %.1524102980, 16       ; 2 uses
  %i.bhb = icmp samesign ult i64 %i.bha, %10
  br i1 %i.bhb, label %bb.aa, label %._crit_edge2982, !llvm.loop !58

._crit_edge2982:                                  ; preds = %bb.aa
  br i1 %.not2606, label %._crit_edge2982._crit_edge, label %bb.ab

._crit_edge2982._crit_edge:                       ; preds = %._crit_edge2982
  %.pre3509 = add nuw nsw i64 %.132996, 1
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge2982
  %i.bhc = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azf, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 2 uses
  %i.bhd = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azg, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 2 uses
  %i.bhe = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azh, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 2 uses
  %i.bhf = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.azi, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 2 uses
  %i.bhg = mul nsw i64 %.132996, %7
  %gep3758.a = getelementptr [4 x i8], ptr %invariant.gep3757.a, i64 %i.bhg
  %i.bhh = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3758.a, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 4 uses
  %i.bhi = add nuw nsw i64 %.132996, 1            ; 2 uses
  %i.bhj = mul nsw i64 %i.bhi, %7
  %gep3760.a = getelementptr [4 x i8], ptr %invariant.gep3759.a, i64 %i.bhj
  %i.bhk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3760.a, <16 x i1> %i.axe, <16 x float> zeroinitializer) ; 4 uses
  %i.bhl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhc, <16 x float> %i.bhh, <16 x float> %i.bgs)
  %i.bhm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhd, <16 x float> %i.bhh, <16 x float> %i.bgt)
  %i.bhn = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhe, <16 x float> %i.bhh, <16 x float> %i.bgu)
  %i.bho = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhf, <16 x float> %i.bhh, <16 x float> %i.bgv)
  %i.bhp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhc, <16 x float> %i.bhk, <16 x float> %i.bgw)
  %i.bhq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhd, <16 x float> %i.bhk, <16 x float> %i.bgx)
  %i.bhr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhe, <16 x float> %i.bhk, <16 x float> %i.bgy)
  %i.bhs = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhf, <16 x float> %i.bhk, <16 x float> %i.bgz)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge2982._crit_edge, %bb.ab
  %.pre-phi3510 = phi i64 [ %.pre3509, %._crit_edge2982._crit_edge ], [ %i.bhi, %bb.ab ]
  %.12581 = phi <16 x float> [ %i.bgz, %._crit_edge2982._crit_edge ], [ %i.bhs, %bb.ab ] ; 2 uses
  %.12579 = phi <16 x float> [ %i.bgy, %._crit_edge2982._crit_edge ], [ %i.bhr, %bb.ab ] ; 2 uses
  %.12577 = phi <16 x float> [ %i.bgx, %._crit_edge2982._crit_edge ], [ %i.bhq, %bb.ab ] ; 2 uses
  %.12575 = phi <16 x float> [ %i.bgw, %._crit_edge2982._crit_edge ], [ %i.bhp, %bb.ab ] ; 2 uses
  %.12573 = phi <16 x float> [ %i.bgv, %._crit_edge2982._crit_edge ], [ %i.bho, %bb.ab ] ; 2 uses
  %.12571 = phi <16 x float> [ %i.bgu, %._crit_edge2982._crit_edge ], [ %i.bhn, %bb.ab ] ; 2 uses
  %.12569 = phi <16 x float> [ %i.bgt, %._crit_edge2982._crit_edge ], [ %i.bhm, %bb.ab ] ; 2 uses
  %.12567 = phi <16 x float> [ %i.bgs, %._crit_edge2982._crit_edge ], [ %i.bhl, %bb.ab ] ; 2 uses
  %i.bht = shufflevector <16 x float> %.12567, <16 x float> %.12569, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bhu = shufflevector <16 x float> %.12567, <16 x float> %.12569, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bhv = shufflevector <16 x float> %.12571, <16 x float> %.12573, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bhw = shufflevector <16 x float> %.12571, <16 x float> %.12573, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bhx = shufflevector <16 x float> %i.bht, <16 x float> %i.bhv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bhy = shufflevector <16 x float> %i.bht, <16 x float> %i.bhv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bhz = shufflevector <16 x float> %i.bhu, <16 x float> %i.bhw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bia = shufflevector <16 x float> %i.bhu, <16 x float> %i.bhw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bib = fadd <16 x float> %i.bhx, %i.bhy
  %i.bic = fadd <16 x float> %i.bhz, %i.bia
  %i.bid = fadd <16 x float> %i.bib, %i.bic       ; 4 uses
  %i.bie = shufflevector <16 x float> %i.bid, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bif = shufflevector <16 x float> %i.bid, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.big = shufflevector <16 x float> %i.bid, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bih = shufflevector <16 x float> %i.bid, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bii = fadd <4 x float> %i.bie, %i.bif
  %i.bij = fadd <4 x float> %i.big, %i.bih
  %i.bik = fadd <4 x float> %i.bii, %i.bij
  %i.bil = fmul <4 x float> %i.awn, %i.bik
  %i.bim = mul nsw i64 %.132996, %9
  %gep2993 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.bim
  store <4 x float> %i.bil, ptr %gep2993, align 1
  %i.bin = shufflevector <16 x float> %.12575, <16 x float> %.12577, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bio = shufflevector <16 x float> %.12575, <16 x float> %.12577, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bip = shufflevector <16 x float> %.12579, <16 x float> %.12581, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.biq = shufflevector <16 x float> %.12579, <16 x float> %.12581, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bir = shufflevector <16 x float> %i.bin, <16 x float> %i.bip, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bis = shufflevector <16 x float> %i.bin, <16 x float> %i.bip, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bit = shufflevector <16 x float> %i.bio, <16 x float> %i.biq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.biu = shufflevector <16 x float> %i.bio, <16 x float> %i.biq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.biv = fadd <16 x float> %i.bir, %i.bis
  %i.biw = fadd <16 x float> %i.bit, %i.biu
  %i.bix = fadd <16 x float> %i.biv, %i.biw       ; 4 uses
  %i.biy = shufflevector <16 x float> %i.bix, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.biz = shufflevector <16 x float> %i.bix, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bja = shufflevector <16 x float> %i.bix, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bjb = shufflevector <16 x float> %i.bix, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bjc = fadd <4 x float> %i.biy, %i.biz
  %i.bjd = fadd <4 x float> %i.bja, %i.bjb
  %i.bje = fadd <4 x float> %i.bjc, %i.bjd
  %i.bjf = fmul <4 x float> %i.awn, %i.bje
  %i.bjg = mul nsw i64 %.pre-phi3510, %9
  %gep2995 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.bjg
  store <4 x float> %i.bjf, ptr %gep2995, align 1
  %i.bjh = add nuw nsw i64 %.132996, 2            ; 3 uses
  %i.bji = icmp slt i64 %i.bjh, %i.i
  br i1 %i.bji, label %.lr.ph2981, label %.preheader2647, !llvm.loop !59

.lr.ph3003:                                       ; preds = %bb.af, %.preheader2644.lr.ph
  %.143012 = phi i64 [ %.13.lcssa, %.preheader2644.lr.ph ], [ %i.blf, %bb.af ] ; 4 uses
  %i.bjj = mul nsw i64 %.143012, %7
  %i.bjk = getelementptr [4 x i8], ptr %6, i64 %i.bjj
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph3003, %bb.ad
  %.1624113002 = phi i64 [ 0, %.lr.ph3003 ], [ %i.bjz, %bb.ad ] ; 6 uses
  %.025263001 = phi <16 x float> [ zeroinitializer, %.lr.ph3003 ], [ %i.bjy, %bb.ad ]
  %.025283000 = phi <16 x float> [ zeroinitializer, %.lr.ph3003 ], [ %i.bjx, %bb.ad ]
  %.025302999 = phi <16 x float> [ zeroinitializer, %.lr.ph3003 ], [ %i.bjw, %bb.ad ]
  %.025322998 = phi <16 x float> [ zeroinitializer, %.lr.ph3003 ], [ %i.bjv, %bb.ad ]
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.bfn, i64 %.1624113002
  %i.bjm = load <16 x float>, ptr %i.bjl, align 1, !tbaa !8
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bfq, i64 %.1624113002
  %i.bjo = load <16 x float>, ptr %i.bjn, align 1, !tbaa !8
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bft, i64 %.1624113002
  %i.bjq = load <16 x float>, ptr %i.bjp, align 1, !tbaa !8
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bfw, i64 %.1624113002
  %i.bjs = load <16 x float>, ptr %i.bjr, align 1, !tbaa !8
  %i.bjt = getelementptr [4 x i8], ptr %i.bjk, i64 %.1624113002
  %i.bju = load <16 x float>, ptr %i.bjt, align 1, !tbaa !8 ; 4 uses
  %i.bjv = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjm, <16 x float> %i.bju, <16 x float> %.025322998) ; 3 uses
  %i.bjw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjo, <16 x float> %i.bju, <16 x float> %.025302999) ; 3 uses
  %i.bjx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjq, <16 x float> %i.bju, <16 x float> %.025283000) ; 3 uses
  %i.bjy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjs, <16 x float> %i.bju, <16 x float> %.025263001) ; 3 uses
  %i.bjz = add nuw nsw i64 %.1624113002, 16       ; 2 uses
  %i.bka = icmp samesign ult i64 %i.bjz, %10
  br i1 %i.bka, label %bb.ad, label %._crit_edge3004, !llvm.loop !60

._crit_edge3004:                                  ; preds = %bb.ad
  br i1 %.not2604, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge3004
  %i.bkb = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bfx, <16 x i1> %i.axi, <16 x float> zeroinitializer)
  %i.bkc = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bfy, <16 x i1> %i.axi, <16 x float> zeroinitializer)
  %i.bkd = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bfz, <16 x i1> %i.axi, <16 x float> zeroinitializer)
  %i.bke = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bga, <16 x i1> %i.axi, <16 x float> zeroinitializer)
  %i.bkf = mul nsw i64 %.143012, %7
  %gep3762.a = getelementptr [4 x i8], ptr %invariant.gep3761.a, i64 %i.bkf
  %i.bkg = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3762.a, <16 x i1> %i.axi, <16 x float> zeroinitializer) ; 4 uses
  %i.bkh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkb, <16 x float> %i.bkg, <16 x float> %i.bjv)
  %i.bki = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkc, <16 x float> %i.bkg, <16 x float> %i.bjw)
  %i.bkj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkd, <16 x float> %i.bkg, <16 x float> %i.bjx)
  %i.bkk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bke, <16 x float> %i.bkg, <16 x float> %i.bjy)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge3004
  %.12533 = phi <16 x float> [ %i.bkh, %bb.ae ], [ %i.bjv, %._crit_edge3004 ] ; 2 uses
  %.12531 = phi <16 x float> [ %i.bki, %bb.ae ], [ %i.bjw, %._crit_edge3004 ] ; 2 uses
  %.12529 = phi <16 x float> [ %i.bkj, %bb.ae ], [ %i.bjx, %._crit_edge3004 ] ; 2 uses
  %.12527 = phi <16 x float> [ %i.bkk, %bb.ae ], [ %i.bjy, %._crit_edge3004 ] ; 2 uses
  %i.bkl = shufflevector <16 x float> %.12533, <16 x float> %.12531, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bkm = shufflevector <16 x float> %.12533, <16 x float> %.12531, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bkn = shufflevector <16 x float> %.12529, <16 x float> %.12527, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bko = shufflevector <16 x float> %.12529, <16 x float> %.12527, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bkp = shufflevector <16 x float> %i.bkl, <16 x float> %i.bkn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bkq = shufflevector <16 x float> %i.bkl, <16 x float> %i.bkn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bkr = shufflevector <16 x float> %i.bkm, <16 x float> %i.bko, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bks = shufflevector <16 x float> %i.bkm, <16 x float> %i.bko, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bkt = fadd <16 x float> %i.bkp, %i.bkq
  %i.bku = fadd <16 x float> %i.bkr, %i.bks
  %i.bkv = fadd <16 x float> %i.bkt, %i.bku       ; 4 uses
  %i.bkw = shufflevector <16 x float> %i.bkv, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bkx = shufflevector <16 x float> %i.bkv, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bky = shufflevector <16 x float> %i.bkv, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bkz = shufflevector <16 x float> %i.bkv, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bla = fadd <4 x float> %i.bkw, %i.bkx
  %i.blb = fadd <4 x float> %i.bky, %i.bkz
  %i.blc = fadd <4 x float> %i.bla, %i.blb
  %i.bld = fmul <4 x float> %i.awn, %i.blc
  %i.ble = mul nsw i64 %.143012, %9
  %gep3011 = getelementptr [4 x i8], ptr %invariant.gep2962, i64 %i.ble
  store <4 x float> %i.bld, ptr %gep3011, align 1
  %i.blf = add nuw nsw i64 %.143012, 1            ; 2 uses
  %exitcond3353.not = icmp eq i64 %i.blf, %1
  br i1 %exitcond3353.not, label %._crit_edge3013, label %.lr.ph3003, !llvm.loop !61

._crit_edge3013:                                  ; preds = %bb.af, %.preheader2647
  %i.blg = add nuw nsw i64 %.33015, 4             ; 3 uses
  %indvars.iv.next3355 = add nuw nsw i64 %indvars.iv3354, 4 ; 2 uses
  %i.blh = icmp slt i64 %i.blg, %i.d
  br i1 %i.blh, label %.preheader2649, label %.preheader2643.loopexit, !llvm.loop !62

.preheader2642:                                   ; preds = %.preheader2642.lr.ph, %._crit_edge3071
  %indvars.iv3358 = phi i64 [ %i.ayc, %.preheader2642.lr.ph ], [ %indvars.iv.next3359, %._crit_edge3071 ] ; 7 uses
  %.43073 = phi i64 [ %.3.lcssa, %.preheader2642.lr.ph ], [ %i.btf, %._crit_edge3071 ] ; 2 uses
  %invariant.gep3038 = getelementptr [4 x i8], ptr %8, i64 %.43073 ; 4 uses
  br i1 %i.aya, label %.preheader2639.lr.ph, label %.preheader2641

.preheader2639.lr.ph:                             ; preds = %.preheader2642
  %i.bli = mul nuw nsw i64 %2, %indvars.iv3358
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bli ; 2 uses
  %i.blk = or disjoint i64 %indvars.iv3358, 1
  %i.bll = mul nuw nsw i64 %2, %i.blk
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bll ; 2 uses
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.ayb
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.blm, i64 %i.ayb
  br label %.lr.ph3027

.preheader2636.loopexit:                          ; preds = %._crit_edge3071
  %i.blp = trunc nuw i64 %indvars.iv.next3359 to i32
  br label %.preheader2636

.preheader2636:                                   ; preds = %.preheader2636.loopexit, %.preheader2643
  %.12524.lcssa = phi i32 [ %.02523.lcssa, %.preheader2643 ], [ %i.blp, %.preheader2636.loopexit ]
  %.4.lcssa = phi i64 [ %.3.lcssa, %.preheader2643 ], [ %i.btf, %.preheader2636.loopexit ] ; 2 uses
  %i.blq = icmp slt i64 %.4.lcssa, %0
  br i1 %i.blq, label %.preheader2635.lr.ph, label %._crit_edge3118

.preheader2635.lr.ph:                             ; preds = %.preheader2636
  %i.blr = icmp sgt i64 %1, 3
  %i.bls = and i64 %2, 9223372036854775792        ; 10 uses
  %i.blt = zext i32 %.12524.lcssa to i64
  %i.blu = and i64 %2, 15                         ; 2 uses
  %.not2596 = icmp eq i64 %i.blu, 0
  %notmask2597 = shl nsw i64 -1, %i.blu
  %i.blv = trunc nsw i64 %notmask2597 to i16
  %i.blw = xor i16 %i.blv, -1
  %i.blx = bitcast i16 %i.blw to <16 x i1>        ; 5 uses
  %invariant.gep3777.a = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %invariant.gep3779.a = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %invariant.gep3781.a = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %invariant.gep3783.a = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %i.bly = and i64 %2, 15                         ; 2 uses
  %.not2594 = icmp eq i64 %i.bly, 0
  %notmask2595 = shl nsw i64 -1, %i.bly
  %i.blz = trunc nsw i64 %notmask2595 to i16
  %i.bma = xor i16 %i.blz, -1
  %i.bmb = bitcast i16 %i.bma to <16 x i1>        ; 3 uses
  %invariant.gep3785 = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %invariant.gep3787 = getelementptr [4 x i8], ptr %6, i64 %i.bls
  %i.bmc = and i64 %2, 15                         ; 2 uses
  %.not2592 = icmp eq i64 %i.bmc, 0               ; 3 uses
  %notmask2593 = shl nsw i64 -1, %i.bmc
  %i.bmd = trunc nsw i64 %notmask2593 to i16
  %i.bme = xor i16 %i.bmd, -1
  %i.bmf = bitcast i16 %i.bme to <16 x i1>        ; 6 uses
  %invariant.gep3789 = getelementptr [4 x i8], ptr %6, i64 %i.bls ; 3 uses
  br label %.preheader2635

.preheader2641:                                   ; preds = %bb.ai, %.preheader2642
  %.15.lcssa = phi i64 [ 0, %.preheader2642 ], [ %i.bqe, %bb.ai ] ; 3 uses
  %i.bmg = icmp slt i64 %.15.lcssa, %i.i
  br i1 %i.bmg, label %.preheader2638.lr.ph, label %.preheader2640

.preheader2638.lr.ph:                             ; preds = %.preheader2641
  %i.bmh = mul nuw nsw i64 %2, %indvars.iv3358
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bmh ; 2 uses
  %i.bmj = or disjoint i64 %indvars.iv3358, 1
  %i.bmk = mul nuw nsw i64 %2, %i.bmj
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bmk ; 2 uses
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bmi, i64 %i.ayb
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.bml, i64 %i.ayb
  br label %.lr.ph3047

.lr.ph3027:                                       ; preds = %bb.ai, %.preheader2639.lr.ph
  %.153040 = phi i64 [ 0, %.preheader2639.lr.ph ], [ %i.bqe, %bb.ai ] ; 10 uses
  %i.bmo = mul nsw i64 %.153040, %7
  %i.bmp = getelementptr [4 x i8], ptr %6, i64 %i.bmo
  %i.bmq = or disjoint i64 %.153040, 1
  %i.bmr = mul nsw i64 %i.bmq, %7
  %i.bms = getelementptr [4 x i8], ptr %6, i64 %i.bmr
  %i.bmt = or disjoint i64 %.153040, 2
  %i.bmu = mul nsw i64 %i.bmt, %7
  %i.bmv = getelementptr [4 x i8], ptr %6, i64 %i.bmu
  %i.bmw = or disjoint i64 %.153040, 3
  %i.bmx = mul nsw i64 %i.bmw, %7
  %i.bmy = getelementptr [4 x i8], ptr %6, i64 %i.bmx
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph3027, %bb.ag
  %.1724123026 = phi i64 [ 0, %.lr.ph3027 ], [ %i.bnt, %bb.ag ] ; 7 uses
  %.025063025 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bns, %bb.ag ]
  %.025083024 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnr, %bb.ag ]
  %.025103023 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnq, %bb.ag ]
  %.025123022 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnp, %bb.ag ]
  %.025143021 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bno, %bb.ag ]
  %.025163020 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnn, %bb.ag ]
  %.025183019 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnm, %bb.ag ]
  %.025203018 = phi <16 x float> [ zeroinitializer, %.lr.ph3027 ], [ %i.bnl, %bb.ag ]
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %.1724123026
  %i.bna = load <16 x float>, ptr %i.bmz, align 1, !tbaa !8 ; 4 uses
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.blm, i64 %.1724123026
  %i.bnc = load <16 x float>, ptr %i.bnb, align 1, !tbaa !8 ; 4 uses
  %i.bnd = getelementptr [4 x i8], ptr %i.bmp, i64 %.1724123026
  %i.bne = load <16 x float>, ptr %i.bnd, align 1, !tbaa !8 ; 2 uses
  %i.bnf = getelementptr [4 x i8], ptr %i.bms, i64 %.1724123026
  %i.bng = load <16 x float>, ptr %i.bnf, align 1, !tbaa !8 ; 2 uses
  %i.bnh = getelementptr [4 x i8], ptr %i.bmv, i64 %.1724123026
  %i.bni = load <16 x float>, ptr %i.bnh, align 1, !tbaa !8 ; 2 uses
  %i.bnj = getelementptr [4 x i8], ptr %i.bmy, i64 %.1724123026
  %i.bnk = load <16 x float>, ptr %i.bnj, align 1, !tbaa !8 ; 2 uses
  %i.bnl = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bna, <16 x float> %i.bne, <16 x float> %.025203018) ; 3 uses
  %i.bnm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnc, <16 x float> %i.bne, <16 x float> %.025183019) ; 3 uses
  %i.bnn = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bna, <16 x float> %i.bng, <16 x float> %.025163020) ; 3 uses
  %i.bno = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnc, <16 x float> %i.bng, <16 x float> %.025143021) ; 3 uses
  %i.bnp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bna, <16 x float> %i.bni, <16 x float> %.025123022) ; 3 uses
  %i.bnq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnc, <16 x float> %i.bni, <16 x float> %.025103023) ; 3 uses
  %i.bnr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bna, <16 x float> %i.bnk, <16 x float> %.025083024) ; 3 uses
  %i.bns = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnc, <16 x float> %i.bnk, <16 x float> %.025063025) ; 3 uses
  %i.bnt = add nuw nsw i64 %.1724123026, 16       ; 2 uses
  %i.bnu = icmp samesign ult i64 %i.bnt, %10
  br i1 %i.bnu, label %bb.ag, label %._crit_edge3028, !llvm.loop !63

._crit_edge3028:                                  ; preds = %bb.ag
  br i1 %.not2602, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge3028
  %i.bnv = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bln, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 4 uses
  %i.bnw = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.blo, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 4 uses
  %i.bnx = mul nsw i64 %.153040, %7
  %gep3764.a = getelementptr [4 x i8], ptr %invariant.gep3763.a, i64 %i.bnx
  %i.bny = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3764.a, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 2 uses
  %i.bnz = or disjoint i64 %.153040, 1
  %i.boa = mul nsw i64 %i.bnz, %7
  %gep3766.a = getelementptr [4 x i8], ptr %invariant.gep3765.a, i64 %i.boa
  %i.bob = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3766.a, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 2 uses
  %i.boc = or disjoint i64 %.153040, 2
  %i.bod = mul nsw i64 %i.boc, %7
  %gep3768.a = getelementptr [4 x i8], ptr %invariant.gep3767.a, i64 %i.bod
  %i.boe = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3768.a, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 2 uses
  %i.bof = or disjoint i64 %.153040, 3
  %i.bog = mul nsw i64 %i.bof, %7
  %gep3770.a = getelementptr [4 x i8], ptr %invariant.gep3769.a, i64 %i.bog
  %i.boh = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3770.a, <16 x i1> %i.ayg, <16 x float> zeroinitializer) ; 2 uses
  %i.boi = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnv, <16 x float> %i.bny, <16 x float> %i.bnl)
  %i.boj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnw, <16 x float> %i.bny, <16 x float> %i.bnm)
  %i.bok = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnv, <16 x float> %i.bob, <16 x float> %i.bnn)
  %i.bol = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnw, <16 x float> %i.bob, <16 x float> %i.bno)
  %i.bom = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnv, <16 x float> %i.boe, <16 x float> %i.bnp)
  %i.bon = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnw, <16 x float> %i.boe, <16 x float> %i.bnq)
  %i.boo = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnv, <16 x float> %i.boh, <16 x float> %i.bnr)
  %i.bop = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnw, <16 x float> %i.boh, <16 x float> %i.bns)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge3028
  %.12521 = phi <16 x float> [ %i.boi, %bb.ah ], [ %i.bnl, %._crit_edge3028 ] ; 2 uses
  %.12519 = phi <16 x float> [ %i.boj, %bb.ah ], [ %i.bnm, %._crit_edge3028 ] ; 2 uses
  %.12517 = phi <16 x float> [ %i.bok, %bb.ah ], [ %i.bnn, %._crit_edge3028 ] ; 2 uses
  %.12515 = phi <16 x float> [ %i.bol, %bb.ah ], [ %i.bno, %._crit_edge3028 ] ; 2 uses
  %.12513 = phi <16 x float> [ %i.bom, %bb.ah ], [ %i.bnp, %._crit_edge3028 ] ; 2 uses
  %.12511 = phi <16 x float> [ %i.bon, %bb.ah ], [ %i.bnq, %._crit_edge3028 ] ; 2 uses
  %.12509 = phi <16 x float> [ %i.boo, %bb.ah ], [ %i.bnr, %._crit_edge3028 ] ; 2 uses
  %.12507 = phi <16 x float> [ %i.bop, %bb.ah ], [ %i.bns, %._crit_edge3028 ] ; 2 uses
  %i.boq = shufflevector <16 x float> %.12521, <16 x float> %.12517, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bor = shufflevector <16 x float> %.12521, <16 x float> %.12517, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bos = shufflevector <16 x float> %.12513, <16 x float> %.12509, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bot = shufflevector <16 x float> %.12513, <16 x float> %.12509, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bou = shufflevector <16 x float> %i.boq, <16 x float> %i.bos, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bov = shufflevector <16 x float> %i.boq, <16 x float> %i.bos, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bow = shufflevector <16 x float> %i.bor, <16 x float> %i.bot, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.box = shufflevector <16 x float> %i.bor, <16 x float> %i.bot, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.boy = fadd <16 x float> %i.bou, %i.bov
  %i.boz = fadd <16 x float> %i.bow, %i.box
  %i.bpa = fadd <16 x float> %i.boy, %i.boz       ; 4 uses
  %i.bpb = shufflevector <16 x float> %i.bpa, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpc = shufflevector <16 x float> %i.bpa, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bpd = shufflevector <16 x float> %i.bpa, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bpe = shufflevector <16 x float> %i.bpa, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bpf = fadd <4 x float> %i.bpb, %i.bpc
  %i.bpg = fadd <4 x float> %i.bpd, %i.bpe
  %i.bph = fadd <4 x float> %i.bpf, %i.bpg
  %i.bpi = fmul <4 x float> %i.awn, %i.bph
  %i.bpj = mul nsw i64 %.153040, %9
  %gep3039 = getelementptr [4 x i8], ptr %invariant.gep3038, i64 %i.bpj ; 2 uses
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %gep3039, <4 x i1> splat (i1 true), <4 x i32> %i.awt, <4 x float> %i.bpi, i32 4)
  %i.bpk = shufflevector <16 x float> %.12519, <16 x float> %.12515, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpl = shufflevector <16 x float> %.12519, <16 x float> %.12515, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bpm = shufflevector <16 x float> %.12511, <16 x float> %.12507, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bpn = shufflevector <16 x float> %.12511, <16 x float> %.12507, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bpo = shufflevector <16 x float> %i.bpk, <16 x float> %i.bpm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bpp = shufflevector <16 x float> %i.bpk, <16 x float> %i.bpm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bpq = shufflevector <16 x float> %i.bpl, <16 x float> %i.bpn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bpr = shufflevector <16 x float> %i.bpl, <16 x float> %i.bpn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bps = fadd <16 x float> %i.bpo, %i.bpp
  %i.bpt = fadd <16 x float> %i.bpq, %i.bpr
  %i.bpu = fadd <16 x float> %i.bps, %i.bpt       ; 4 uses
  %i.bpv = shufflevector <16 x float> %i.bpu, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpw = shufflevector <16 x float> %i.bpu, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bpx = shufflevector <16 x float> %i.bpu, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bpy = shufflevector <16 x float> %i.bpu, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bpz = fadd <4 x float> %i.bpv, %i.bpw
  %i.bqa = fadd <4 x float> %i.bpx, %i.bpy
  %i.bqb = fadd <4 x float> %i.bpz, %i.bqa
  %i.bqc = fmul <4 x float> %i.awn, %i.bqb
  %i.bqd = getelementptr i8, ptr %gep3039, i64 4
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %i.bqd, <4 x i1> splat (i1 true), <4 x i32> %i.awt, <4 x float> %i.bqc, i32 4)
  %i.bqe = add nuw nsw i64 %.153040, 4            ; 3 uses
  %i.bqf = icmp slt i64 %i.bqe, %i.h
  br i1 %i.bqf, label %.lr.ph3027, label %.preheader2641, !llvm.loop !64

.preheader2640:                                   ; preds = %bb.al, %.preheader2641
  %.16.lcssa = phi i64 [ %.15.lcssa, %.preheader2641 ], [ %i.bse, %bb.al ] ; 2 uses
  %i.bqg = icmp slt i64 %.16.lcssa, %1
  br i1 %i.bqg, label %.preheader2637.lr.ph, label %._crit_edge3071

.preheader2637.lr.ph:                             ; preds = %.preheader2640
  %i.bqh = mul nuw nsw i64 %2, %indvars.iv3358
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bqh ; 2 uses
  %i.bqj = or disjoint i64 %indvars.iv3358, 1
  %i.bqk = mul nuw nsw i64 %2, %i.bqj
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bqk ; 2 uses
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %i.ayb
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bql, i64 %i.ayb
  br label %.lr.ph3063

.lr.ph3047:                                       ; preds = %bb.al, %.preheader2638.lr.ph
  %.163058 = phi i64 [ %.15.lcssa, %.preheader2638.lr.ph ], [ %i.bse, %bb.al ] ; 7 uses
  %i.bqo = mul nsw i64 %.163058, %7
  %i.bqp = getelementptr [4 x i8], ptr %6, i64 %i.bqo
  %i.bqq = add nuw nsw i64 %.163058, 1
  %i.bqr = mul nsw i64 %i.bqq, %7
  %i.bqs = getelementptr [4 x i8], ptr %6, i64 %i.bqr
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph3047, %bb.aj
  %.1824133046 = phi i64 [ 0, %.lr.ph3047 ], [ %i.brf, %bb.aj ] ; 5 uses
  %.024673045 = phi <16 x float> [ zeroinitializer, %.lr.ph3047 ], [ %i.bre, %bb.aj ]
  %.024693044 = phi <16 x float> [ zeroinitializer, %.lr.ph3047 ], [ %i.brd, %bb.aj ]
  %.024713043 = phi <16 x float> [ zeroinitializer, %.lr.ph3047 ], [ %i.brc, %bb.aj ]
  %.024733042 = phi <16 x float> [ zeroinitializer, %.lr.ph3047 ], [ %i.brb, %bb.aj ]
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bmi, i64 %.1824133046
  %i.bqu = load <16 x float>, ptr %i.bqt, align 1, !tbaa !8 ; 2 uses
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bml, i64 %.1824133046
  %i.bqw = load <16 x float>, ptr %i.bqv, align 1, !tbaa !8 ; 2 uses
  %i.bqx = getelementptr [4 x i8], ptr %i.bqp, i64 %.1824133046
  %i.bqy = load <16 x float>, ptr %i.bqx, align 1, !tbaa !8 ; 2 uses
  %i.bqz = getelementptr [4 x i8], ptr %i.bqs, i64 %.1824133046
  %i.bra = load <16 x float>, ptr %i.bqz, align 1, !tbaa !8 ; 2 uses
  %i.brb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqu, <16 x float> %i.bqy, <16 x float> %.024733042) ; 3 uses
  %i.brc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqw, <16 x float> %i.bqy, <16 x float> %.024713043) ; 3 uses
  %i.brd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqu, <16 x float> %i.bra, <16 x float> %.024693044) ; 3 uses
  %i.bre = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqw, <16 x float> %i.bra, <16 x float> %.024673045) ; 3 uses
  %i.brf = add nuw nsw i64 %.1824133046, 16       ; 2 uses
  %i.brg = icmp samesign ult i64 %i.brf, %10
  br i1 %i.brg, label %bb.aj, label %._crit_edge3048, !llvm.loop !65

._crit_edge3048:                                  ; preds = %bb.aj
  br i1 %.not2600, label %._crit_edge3048._crit_edge, label %bb.ak

._crit_edge3048._crit_edge:                       ; preds = %._crit_edge3048
  %.pre3511 = add nuw nsw i64 %.163058, 1
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge3048
  %i.brh = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bmm, <16 x i1> %i.ayk, <16 x float> zeroinitializer) ; 2 uses
  %i.bri = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bmn, <16 x i1> %i.ayk, <16 x float> zeroinitializer) ; 2 uses
  %i.brj = mul nsw i64 %.163058, %7
  %gep3772.a = getelementptr [4 x i8], ptr %invariant.gep3771.a, i64 %i.brj
  %i.brk = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3772.a, <16 x i1> %i.ayk, <16 x float> zeroinitializer) ; 2 uses
  %i.brl = add nuw nsw i64 %.163058, 1            ; 2 uses
  %i.brm = mul nsw i64 %i.brl, %7
  %gep3774.a = getelementptr [4 x i8], ptr %invariant.gep3773.a, i64 %i.brm
  %i.brn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3774.a, <16 x i1> %i.ayk, <16 x float> zeroinitializer) ; 2 uses
  %i.bro = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brh, <16 x float> %i.brk, <16 x float> %i.brb)
  %i.brp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bri, <16 x float> %i.brk, <16 x float> %i.brc)
  %i.brq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.brh, <16 x float> %i.brn, <16 x float> %i.brd)
  %i.brr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bri, <16 x float> %i.brn, <16 x float> %i.bre)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge3048._crit_edge, %bb.ak
  %.pre-phi3512 = phi i64 [ %.pre3511, %._crit_edge3048._crit_edge ], [ %i.brl, %bb.ak ]
  %.12474 = phi <16 x float> [ %i.brb, %._crit_edge3048._crit_edge ], [ %i.bro, %bb.ak ]
  %.12472 = phi <16 x float> [ %i.brc, %._crit_edge3048._crit_edge ], [ %i.brp, %bb.ak ]
  %.12470 = phi <16 x float> [ %i.brd, %._crit_edge3048._crit_edge ], [ %i.brq, %bb.ak ]
  %.12468 = phi <16 x float> [ %i.bre, %._crit_edge3048._crit_edge ], [ %i.brr, %bb.ak ]
  %i.brs = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12474)
  %i.brt = mul nsw i64 %.163058, %9
  %gep3055 = getelementptr [4 x i8], ptr %invariant.gep3038, i64 %i.brt
  %i.bru = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12472)
  %i.brv = insertelement <2 x float> poison, float %i.brs, i64 0
  %i.brw = insertelement <2 x float> %i.brv, float %i.bru, i64 1
  %i.brx = fmul <2 x float> %i.ayq, %i.brw
  store <2 x float> %i.brx, ptr %gep3055, align 4, !tbaa !50
  %i.bry = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12470)
  %i.brz = mul nsw i64 %.pre-phi3512, %9
  %gep3057 = getelementptr [4 x i8], ptr %invariant.gep3038, i64 %i.brz
  %i.bsa = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12468)
  %i.bsb = insertelement <2 x float> poison, float %i.bry, i64 0
  %i.bsc = insertelement <2 x float> %i.bsb, float %i.bsa, i64 1
  %i.bsd = fmul <2 x float> %i.ayq, %i.bsc
  store <2 x float> %i.bsd, ptr %gep3057, align 4, !tbaa !50
  %i.bse = add nuw nsw i64 %.163058, 2            ; 3 uses
  %i.bsf = icmp slt i64 %i.bse, %i.i
  br i1 %i.bsf, label %.lr.ph3047, label %.preheader2640, !llvm.loop !66

.lr.ph3063:                                       ; preds = %bb.ao, %.preheader2637.lr.ph
  %.173070 = phi i64 [ %.16.lcssa, %.preheader2637.lr.ph ], [ %i.bte, %bb.ao ] ; 4 uses
  %i.bsg = mul nsw i64 %.173070, %7
  %i.bsh = getelementptr [4 x i8], ptr %6, i64 %i.bsg
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph3063, %bb.am
  %.1924143062 = phi i64 [ 0, %.lr.ph3063 ], [ %i.bsq, %bb.am ] ; 4 uses
  %.024553061 = phi <16 x float> [ zeroinitializer, %.lr.ph3063 ], [ %i.bsp, %bb.am ]
  %.024573060 = phi <16 x float> [ zeroinitializer, %.lr.ph3063 ], [ %i.bso, %bb.am ]
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %.1924143062
  %i.bsj = load <16 x float>, ptr %i.bsi, align 1, !tbaa !8
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.bql, i64 %.1924143062
  %i.bsl = load <16 x float>, ptr %i.bsk, align 1, !tbaa !8
  %i.bsm = getelementptr [4 x i8], ptr %i.bsh, i64 %.1924143062
  %i.bsn = load <16 x float>, ptr %i.bsm, align 1, !tbaa !8 ; 2 uses
  %i.bso = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bsj, <16 x float> %i.bsn, <16 x float> %.024573060) ; 3 uses
  %i.bsp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bsl, <16 x float> %i.bsn, <16 x float> %.024553061) ; 3 uses
  %i.bsq = add nuw nsw i64 %.1924143062, 16       ; 2 uses
  %i.bsr = icmp samesign ult i64 %i.bsq, %10
  br i1 %i.bsr, label %bb.am, label %._crit_edge3064, !llvm.loop !67

._crit_edge3064:                                  ; preds = %bb.am
  br i1 %.not2598, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge3064
  %i.bss = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bqm, <16 x i1> %i.ayo, <16 x float> zeroinitializer)
  %i.bst = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bqn, <16 x i1> %i.ayo, <16 x float> zeroinitializer)
  %i.bsu = mul nsw i64 %.173070, %7
  %gep3776.a = getelementptr [4 x i8], ptr %invariant.gep3775.a, i64 %i.bsu
  %i.bsv = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3776.a, <16 x i1> %i.ayo, <16 x float> zeroinitializer) ; 2 uses
  %i.bsw = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bss, <16 x float> %i.bsv, <16 x float> %i.bso)
  %i.bsx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bst, <16 x float> %i.bsv, <16 x float> %i.bsp)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge3064
  %.12458 = phi <16 x float> [ %i.bsw, %bb.an ], [ %i.bso, %._crit_edge3064 ]
  %.12456 = phi <16 x float> [ %i.bsx, %bb.an ], [ %i.bsp, %._crit_edge3064 ]
  %i.bsy = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12458)
  %i.bsz = mul nsw i64 %.173070, %9
  %gep3069 = getelementptr [4 x i8], ptr %invariant.gep3038, i64 %i.bsz
  %i.bta = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12456)
  %i.btb = insertelement <2 x float> poison, float %i.bsy, i64 0
  %i.btc = insertelement <2 x float> %i.btb, float %i.bta, i64 1
  %i.btd = fmul <2 x float> %i.ays, %i.btc
  store <2 x float> %i.btd, ptr %gep3069, align 4, !tbaa !50
  %i.bte = add nuw nsw i64 %.173070, 1            ; 2 uses
  %exitcond3357.not = icmp eq i64 %i.bte, %1
  br i1 %exitcond3357.not, label %._crit_edge3071, label %.lr.ph3063, !llvm.loop !68

._crit_edge3071:                                  ; preds = %bb.ao, %.preheader2640
  %i.btf = add nuw nsw i64 %.43073, 2             ; 3 uses
  %indvars.iv.next3359 = add nuw nsw i64 %indvars.iv3358, 2 ; 2 uses
  %i.btg = icmp slt i64 %i.btf, %i.e
  br i1 %i.btg, label %.preheader2642, label %.preheader2636.loopexit, !llvm.loop !69

.preheader2635:                                   ; preds = %.preheader2635.lr.ph, %._crit_edge3115.a
  %indvars.iv3362 = phi i64 [ %i.blt, %.preheader2635.lr.ph ], [ %indvars.iv.next3363, %._crit_edge3115.a ] ; 4 uses
  %.53117 = phi i64 [ %.4.lcssa, %.preheader2635.lr.ph ], [ %i.bzl, %._crit_edge3115.a ] ; 2 uses
  %invariant.gep3088 = getelementptr [4 x i8], ptr %8, i64 %.53117 ; 6 uses
  br i1 %i.blr, label %.preheader2632.lr.ph, label %.preheader2634

.preheader2632.lr.ph:                             ; preds = %.preheader2635
  %i.bth = mul nuw nsw i64 %2, %indvars.iv3362
  %i.bti = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bth ; 2 uses
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bls
  br label %.lr.ph3081

.preheader2634:                                   ; preds = %bb.ar, %.preheader2635
  %.18.lcssa = phi i64 [ 0, %.preheader2635 ], [ %i.bvz, %bb.ar ] ; 3 uses
  %i.btk = icmp slt i64 %.18.lcssa, %i.i
  br i1 %i.btk, label %.preheader2631.lr.ph, label %.preheader2633

.preheader2631.lr.ph:                             ; preds = %.preheader2634
  %i.btl = mul nuw nsw i64 %2, %indvars.iv3362
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.btl ; 2 uses
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.bls
  br label %.lr.ph3095

.lr.ph3081:                                       ; preds = %bb.ar, %.preheader2632.lr.ph
  %.183090 = phi i64 [ 0, %.preheader2632.lr.ph ], [ %i.bvz, %bb.ar ] ; 10 uses
  %i.bto = mul nsw i64 %.183090, %7
  %i.btp = getelementptr [4 x i8], ptr %6, i64 %i.bto
  %i.btq = or disjoint i64 %.183090, 1
  %i.btr = mul nsw i64 %i.btq, %7
  %i.bts = getelementptr [4 x i8], ptr %6, i64 %i.btr
  %i.btt = or disjoint i64 %.183090, 2
  %i.btu = mul nsw i64 %i.btt, %7
  %i.btv = getelementptr [4 x i8], ptr %6, i64 %i.btu
  %i.btw = or disjoint i64 %.183090, 3
  %i.btx = mul nsw i64 %i.btw, %7
  %i.bty = getelementptr [4 x i8], ptr %6, i64 %i.btx
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph3081, %bb.ap
  %.2024153080 = phi i64 [ 0, %.lr.ph3081 ], [ %i.bun, %bb.ap ] ; 6 uses
  %.024413079 = phi <16 x float> [ zeroinitializer, %.lr.ph3081 ], [ %i.bum, %bb.ap ]
  %.024433078 = phi <16 x float> [ zeroinitializer, %.lr.ph3081 ], [ %i.bul, %bb.ap ]
  %.024453077 = phi <16 x float> [ zeroinitializer, %.lr.ph3081 ], [ %i.buk, %bb.ap ]
  %.024473076 = phi <16 x float> [ zeroinitializer, %.lr.ph3081 ], [ %i.buj, %bb.ap ]
  %i.btz = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %.2024153080
  %i.bua = load <16 x float>, ptr %i.btz, align 1, !tbaa !8 ; 4 uses
  %i.bub = getelementptr [4 x i8], ptr %i.btp, i64 %.2024153080
  %i.buc = load <16 x float>, ptr %i.bub, align 1, !tbaa !8
  %i.bud = getelementptr [4 x i8], ptr %i.bts, i64 %.2024153080
  %i.bue = load <16 x float>, ptr %i.bud, align 1, !tbaa !8
  %i.buf = getelementptr [4 x i8], ptr %i.btv, i64 %.2024153080
  %i.bug = load <16 x float>, ptr %i.buf, align 1, !tbaa !8
  %i.buh = getelementptr [4 x i8], ptr %i.bty, i64 %.2024153080
  %i.bui = load <16 x float>, ptr %i.buh, align 1, !tbaa !8
  %i.buj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bua, <16 x float> %i.buc, <16 x float> %.024473076) ; 3 uses
  %i.buk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bua, <16 x float> %i.bue, <16 x float> %.024453077) ; 3 uses
  %i.bul = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bua, <16 x float> %i.bug, <16 x float> %.024433078) ; 3 uses
  %i.bum = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bua, <16 x float> %i.bui, <16 x float> %.024413079) ; 3 uses
  %i.bun = add nuw nsw i64 %.2024153080, 16       ; 2 uses
  %i.buo = icmp samesign ult i64 %i.bun, %10
  br i1 %i.buo, label %bb.ap, label %._crit_edge3082, !llvm.loop !70

._crit_edge3082:                                  ; preds = %bb.ap
  br i1 %.not2596, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge3082
  %i.bup = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.btj, <16 x i1> %i.blx, <16 x float> zeroinitializer) ; 4 uses
  %i.buq = mul nsw i64 %.183090, %7
  %gep3778.a = getelementptr [4 x i8], ptr %invariant.gep3777.a, i64 %i.buq
  %i.bur = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3778.a, <16 x i1> %i.blx, <16 x float> zeroinitializer)
  %i.bus = or disjoint i64 %.183090, 1
  %i.but = mul nsw i64 %i.bus, %7
  %gep3780.a = getelementptr [4 x i8], ptr %invariant.gep3779.a, i64 %i.but
  %i.buu = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3780.a, <16 x i1> %i.blx, <16 x float> zeroinitializer)
  %i.buv = or disjoint i64 %.183090, 2
  %i.buw = mul nsw i64 %i.buv, %7
  %gep3782.a = getelementptr [4 x i8], ptr %invariant.gep3781.a, i64 %i.buw
  %i.bux = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3782.a, <16 x i1> %i.blx, <16 x float> zeroinitializer)
  %i.buy = or disjoint i64 %.183090, 3
  %i.buz = mul nsw i64 %i.buy, %7
  %gep3784.a = getelementptr [4 x i8], ptr %invariant.gep3783.a, i64 %i.buz
  %i.bva = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3784.a, <16 x i1> %i.blx, <16 x float> zeroinitializer)
  %i.bvb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bup, <16 x float> %i.bur, <16 x float> %i.buj)
  %i.bvc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bup, <16 x float> %i.buu, <16 x float> %i.buk)
  %i.bvd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bup, <16 x float> %i.bux, <16 x float> %i.bul)
  %i.bve = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bup, <16 x float> %i.bva, <16 x float> %i.bum)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge3082
  %.12448 = phi <16 x float> [ %i.bvb, %bb.aq ], [ %i.buj, %._crit_edge3082 ] ; 2 uses
  %.12446 = phi <16 x float> [ %i.bvc, %bb.aq ], [ %i.buk, %._crit_edge3082 ] ; 2 uses
  %.12444 = phi <16 x float> [ %i.bvd, %bb.aq ], [ %i.bul, %._crit_edge3082 ] ; 2 uses
  %.12442 = phi <16 x float> [ %i.bve, %bb.aq ], [ %i.bum, %._crit_edge3082 ] ; 2 uses
  %i.bvf = shufflevector <16 x float> %.12448, <16 x float> %.12446, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bvg = shufflevector <16 x float> %.12448, <16 x float> %.12446, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bvh = shufflevector <16 x float> %.12444, <16 x float> %.12442, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bvi = shufflevector <16 x float> %.12444, <16 x float> %.12442, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bvj = shufflevector <16 x float> %i.bvf, <16 x float> %i.bvh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bvk = shufflevector <16 x float> %i.bvf, <16 x float> %i.bvh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bvl = shufflevector <16 x float> %i.bvg, <16 x float> %i.bvi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bvm = shufflevector <16 x float> %i.bvg, <16 x float> %i.bvi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bvn = fadd <16 x float> %i.bvj, %i.bvk
  %i.bvo = fadd <16 x float> %i.bvl, %i.bvm
  %i.bvp = fadd <16 x float> %i.bvn, %i.bvo       ; 4 uses
  %i.bvq = shufflevector <16 x float> %i.bvp, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvr = shufflevector <16 x float> %i.bvp, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvs = shufflevector <16 x float> %i.bvp, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bvt = shufflevector <16 x float> %i.bvp, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bvu = fadd <4 x float> %i.bvq, %i.bvr
  %i.bvv = fadd <4 x float> %i.bvs, %i.bvt
  %i.bvw = fadd <4 x float> %i.bvu, %i.bvv
  %i.bvx = fmul <4 x float> %i.awn, %i.bvw
  %i.bvy = mul nsw i64 %.183090, %9
  %gep3089 = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bvy
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %gep3089, <4 x i1> splat (i1 true), <4 x i32> %i.awt, <4 x float> %i.bvx, i32 4)
  %i.bvz = add nuw nsw i64 %.183090, 4            ; 3 uses
  %i.bwa = icmp slt i64 %i.bvz, %i.h
  br i1 %i.bwa, label %.lr.ph3081, label %.preheader2634, !llvm.loop !71

.preheader2633:                                   ; preds = %bb.aw, %.preheader2634
  %.19.lcssa = phi i64 [ %.18.lcssa, %.preheader2634 ], [ %i.byb, %bb.aw ] ; 8 uses
  %i.bwb = icmp slt i64 %.19.lcssa, %1
  br i1 %i.bwb, label %.preheader2630.lr.ph, label %._crit_edge3115.a

.preheader2630.lr.ph:                             ; preds = %.preheader2633
  %i.bwc = mul nuw nsw i64 %2, %indvars.iv3362
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.bwc ; 4 uses
  %i.bwe = getelementptr inbounds nuw [4 x i8], ptr %i.bwd, i64 %i.bls ; 3 uses
  %i.bwf = sub i64 %1, %.19.lcssa
  %.neg = add i64 %.19.lcssa, 1
  %xtraiter4158 = and i64 %i.bwf, 1
  %lcmp.mod4159.not = icmp eq i64 %xtraiter4158, 0
  br i1 %lcmp.mod4159.not, label %.lr.ph3108.prol.loopexit, label %.lr.ph3108.prol

.lr.ph3108.prol:                                  ; preds = %.preheader2630.lr.ph
  %i.bwg = mul nsw i64 %.19.lcssa, %7
  %i.bwh = getelementptr [4 x i8], ptr %6, i64 %i.bwg
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph3108.prol
  %.223107.prol = phi i64 [ 0, %.lr.ph3108.prol ], [ %i.bwn, %bb.as ] ; 3 uses
  %.024163106.prol = phi <16 x float> [ zeroinitializer, %.lr.ph3108.prol ], [ %i.bwm, %bb.as ]
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.bwd, i64 %.223107.prol
  %i.bwj = load <16 x float>, ptr %i.bwi, align 1, !tbaa !8
  %i.bwk = getelementptr [4 x i8], ptr %i.bwh, i64 %.223107.prol
  %i.bwl = load <16 x float>, ptr %i.bwk, align 1, !tbaa !8
  %i.bwm = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwj, <16 x float> %i.bwl, <16 x float> %.024163106.prol) ; 3 uses
  %i.bwn = add nuw nsw i64 %.223107.prol, 16      ; 2 uses
  %i.bwo = icmp samesign ult i64 %i.bwn, %10
  br i1 %i.bwo, label %bb.as, label %._crit_edge3109.prol, !llvm.loop !72

._crit_edge3109.prol:                             ; preds = %bb.as
  br i1 %.not2592, label %.lr.ph3108.prol.loopexit.unr-lcssa, label %bb.at

bb.at:                                            ; preds = %._crit_edge3109.prol
  %i.bwp = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bwe, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.bwq = mul nsw i64 %.19.lcssa, %7
  %gep3790.prol = getelementptr [4 x i8], ptr %invariant.gep3789, i64 %i.bwq
  %i.bwr = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3790.prol, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.bws = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwp, <16 x float> %i.bwr, <16 x float> %i.bwm)
  br label %.lr.ph3108.prol.loopexit.unr-lcssa

.lr.ph3108.prol.loopexit.unr-lcssa:               ; preds = %bb.at, %._crit_edge3109.prol
  %.12417.prol = phi <16 x float> [ %i.bws, %bb.at ], [ %i.bwm, %._crit_edge3109.prol ]
  %i.bwt = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12417.prol)
  %i.bwu = fmul float %5, %i.bwt
  %i.bwv = mul nsw i64 %.19.lcssa, %9
  %gep3113.prol = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bwv
  store float %i.bwu, ptr %gep3113.prol, align 4, !tbaa !50
  %i.bww = add nuw nsw i64 %.19.lcssa, 1
  br label %.lr.ph3108.prol.loopexit

.lr.ph3108.prol.loopexit:                         ; preds = %.lr.ph3108.prol.loopexit.unr-lcssa, %.preheader2630.lr.ph
  %.203114.unr = phi i64 [ %.19.lcssa, %.preheader2630.lr.ph ], [ %i.bww, %.lr.ph3108.prol.loopexit.unr-lcssa ]
  %i.bwx = icmp eq i64 %1, %.neg
  br i1 %i.bwx, label %._crit_edge3115.a, label %.lr.ph3108

.lr.ph3095:                                       ; preds = %bb.aw, %.preheader2631.lr.ph
  %.193104 = phi i64 [ %.18.lcssa, %.preheader2631.lr.ph ], [ %i.byb, %bb.aw ] ; 7 uses
  %i.bwy = mul nsw i64 %.193104, %7
  %i.bwz = getelementptr [4 x i8], ptr %6, i64 %i.bwy
  %i.bxa = add nuw nsw i64 %.193104, 1
  %i.bxb = mul nsw i64 %i.bxa, %7
  %i.bxc = getelementptr [4 x i8], ptr %6, i64 %i.bxb
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph3095, %bb.au
  %.213094 = phi i64 [ 0, %.lr.ph3095 ], [ %i.bxl, %bb.au ] ; 4 uses
  %.024183093 = phi <16 x float> [ zeroinitializer, %.lr.ph3095 ], [ %i.bxk, %bb.au ]
  %.024203092 = phi <16 x float> [ zeroinitializer, %.lr.ph3095 ], [ %i.bxj, %bb.au ]
  %i.bxd = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %.213094
  %i.bxe = load <16 x float>, ptr %i.bxd, align 1, !tbaa !8 ; 2 uses
  %i.bxf = getelementptr [4 x i8], ptr %i.bwz, i64 %.213094
  %i.bxg = load <16 x float>, ptr %i.bxf, align 1, !tbaa !8
  %i.bxh = getelementptr [4 x i8], ptr %i.bxc, i64 %.213094
  %i.bxi = load <16 x float>, ptr %i.bxh, align 1, !tbaa !8
  %i.bxj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxe, <16 x float> %i.bxg, <16 x float> %.024203092) ; 3 uses
  %i.bxk = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxe, <16 x float> %i.bxi, <16 x float> %.024183093) ; 3 uses
  %i.bxl = add nuw nsw i64 %.213094, 16           ; 2 uses
  %i.bxm = icmp samesign ult i64 %i.bxl, %10
  br i1 %i.bxm, label %bb.au, label %._crit_edge3096, !llvm.loop !73

._crit_edge3096:                                  ; preds = %bb.au
  br i1 %.not2594, label %._crit_edge3096._crit_edge, label %bb.av

._crit_edge3096._crit_edge:                       ; preds = %._crit_edge3096
  %.pre3513 = add nuw nsw i64 %.193104, 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge3096
  %i.bxn = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.btn, <16 x i1> %i.bmb, <16 x float> zeroinitializer) ; 2 uses
  %i.bxo = mul nsw i64 %.193104, %7
  %gep3786 = getelementptr [4 x i8], ptr %invariant.gep3785, i64 %i.bxo
  %i.bxp = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3786, <16 x i1> %i.bmb, <16 x float> zeroinitializer)
  %i.bxq = add nuw nsw i64 %.193104, 1            ; 2 uses
  %i.bxr = mul nsw i64 %i.bxq, %7
  %gep3788 = getelementptr [4 x i8], ptr %invariant.gep3787, i64 %i.bxr
  %i.bxs = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3788, <16 x i1> %i.bmb, <16 x float> zeroinitializer)
  %i.bxt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxn, <16 x float> %i.bxp, <16 x float> %i.bxj)
  %i.bxu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxn, <16 x float> %i.bxs, <16 x float> %i.bxk)
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge3096._crit_edge, %bb.av
  %.pre-phi3514 = phi i64 [ %.pre3513, %._crit_edge3096._crit_edge ], [ %i.bxq, %bb.av ]
  %.12421 = phi <16 x float> [ %i.bxj, %._crit_edge3096._crit_edge ], [ %i.bxt, %bb.av ]
  %.12419 = phi <16 x float> [ %i.bxk, %._crit_edge3096._crit_edge ], [ %i.bxu, %bb.av ]
  %i.bxv = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12421)
  %i.bxw = fmul float %5, %i.bxv
  %i.bxx = mul nsw i64 %.193104, %9
  %gep3101 = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bxx
  store float %i.bxw, ptr %gep3101, align 4, !tbaa !50
  %i.bxy = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12419)
  %i.bxz = fmul float %5, %i.bxy
  %i.bya = mul nsw i64 %.pre-phi3514, %9
  %gep3103 = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bya
  store float %i.bxz, ptr %gep3103, align 4, !tbaa !50
  %i.byb = add nuw nsw i64 %.193104, 2            ; 3 uses
  %i.byc = icmp slt i64 %i.byb, %i.i
  br i1 %i.byc, label %.lr.ph3095, label %.preheader2633, !llvm.loop !74

.lr.ph3108:                                       ; preds = %.lr.ph3108.prol.loopexit, %bb.bb
  %.203114 = phi i64 [ %i.bzk, %bb.bb ], [ %.203114.unr, %.lr.ph3108.prol.loopexit ] ; 5 uses
  %i.byd = mul nsw i64 %.203114, %7
  %i.bye = getelementptr [4 x i8], ptr %6, i64 %i.byd
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph3108, %bb.ax
  %.223107 = phi i64 [ 0, %.lr.ph3108 ], [ %i.byk, %bb.ax ] ; 3 uses
  %.024163106 = phi <16 x float> [ zeroinitializer, %.lr.ph3108 ], [ %i.byj, %bb.ax ]
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %i.bwd, i64 %.223107
  %i.byg = load <16 x float>, ptr %i.byf, align 1, !tbaa !8
  %i.byh = getelementptr [4 x i8], ptr %i.bye, i64 %.223107
  %i.byi = load <16 x float>, ptr %i.byh, align 1, !tbaa !8
  %i.byj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.byg, <16 x float> %i.byi, <16 x float> %.024163106) ; 3 uses
  %i.byk = add nuw nsw i64 %.223107, 16           ; 2 uses
  %i.byl = icmp samesign ult i64 %i.byk, %10
  br i1 %i.byl, label %bb.ax, label %._crit_edge3109, !llvm.loop !72

._crit_edge3109:                                  ; preds = %bb.ax
  br i1 %.not2592, label %.lr.ph3108.1, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge3109
  %i.bym = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bwe, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.byn = mul nsw i64 %.203114, %7
  %gep3790 = getelementptr [4 x i8], ptr %invariant.gep3789, i64 %i.byn
  %i.byo = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3790, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.byp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bym, <16 x float> %i.byo, <16 x float> %i.byj)
  br label %.lr.ph3108.1

.lr.ph3108.1:                                     ; preds = %bb.ay, %._crit_edge3109
  %.12417 = phi <16 x float> [ %i.byp, %bb.ay ], [ %i.byj, %._crit_edge3109 ]
  %i.byq = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12417)
  %i.byr = fmul float %5, %i.byq
  %i.bys = mul nsw i64 %.203114, %9
  %gep3113 = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bys
  store float %i.byr, ptr %gep3113, align 4, !tbaa !50
  %i.byt = add nuw nsw i64 %.203114, 1            ; 3 uses
  %i.byu = mul nsw i64 %i.byt, %7
  %i.byv = getelementptr [4 x i8], ptr %6, i64 %i.byu
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph3108.1
  %.223107.1 = phi i64 [ 0, %.lr.ph3108.1 ], [ %i.bzb, %bb.az ] ; 3 uses
  %.024163106.1 = phi <16 x float> [ zeroinitializer, %.lr.ph3108.1 ], [ %i.bza, %bb.az ]
  %i.byw = getelementptr inbounds nuw [4 x i8], ptr %i.bwd, i64 %.223107.1
  %i.byx = load <16 x float>, ptr %i.byw, align 1, !tbaa !8
  %i.byy = getelementptr [4 x i8], ptr %i.byv, i64 %.223107.1
  %i.byz = load <16 x float>, ptr %i.byy, align 1, !tbaa !8
  %i.bza = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.byx, <16 x float> %i.byz, <16 x float> %.024163106.1) ; 3 uses
  %i.bzb = add nuw nsw i64 %.223107.1, 16         ; 2 uses
  %i.bzc = icmp samesign ult i64 %i.bzb, %10
  br i1 %i.bzc, label %bb.az, label %._crit_edge3109.1, !llvm.loop !72

._crit_edge3109.1:                                ; preds = %bb.az
  br i1 %.not2592, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge3109.1
  %i.bzd = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %i.bwe, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.bze = mul nsw i64 %i.byt, %7
  %gep3790.1 = getelementptr [4 x i8], ptr %invariant.gep3789, i64 %i.bze
  %i.bzf = tail call <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %gep3790.1, <16 x i1> %i.bmf, <16 x float> zeroinitializer)
  %i.bzg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzd, <16 x float> %i.bzf, <16 x float> %i.bza)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge3109.1
  %.12417.1 = phi <16 x float> [ %i.bzg, %bb.ba ], [ %i.bza, %._crit_edge3109.1 ]
  %i.bzh = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.12417.1)
  %i.bzi = fmul float %5, %i.bzh
  %i.bzj = mul nsw i64 %i.byt, %9
  %gep3113.1 = getelementptr [4 x i8], ptr %invariant.gep3088, i64 %i.bzj
  store float %i.bzi, ptr %gep3113.1, align 4, !tbaa !50
  %i.bzk = add nuw nsw i64 %.203114, 2            ; 2 uses
  %exitcond3361.not.1 = icmp eq i64 %i.bzk, %1
  br i1 %exitcond3361.not.1, label %._crit_edge3115.a, label %.lr.ph3108, !llvm.loop !75

._crit_edge3115.a:                                ; preds = %.lr.ph3108.prol.loopexit, %bb.bb, %.preheader2633
  %i.bzl = add i64 %.53117, 1                     ; 2 uses
  %indvars.iv.next3363 = add nuw nsw i64 %indvars.iv3362, 1
  %exitcond3365.not = icmp eq i64 %i.bzl, %0
  br i1 %exitcond3365.not, label %._crit_edge3118, label %.preheader2635, !llvm.loop !76

._crit_edge3118:                                  ; preds = %._crit_edge3115.a, %.preheader2636
  tail call void @free(ptr noundef %i.asm) #2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %._crit_edge3170.us, %.preheader2626, %._crit_edge3118, %._crit_edge2901
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scattersiv4.sf(ptr, <4 x i1>, <4 x i32>, <4 x float>, i32 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #4

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
!51 = !{!"float", !6, i64 0}
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
